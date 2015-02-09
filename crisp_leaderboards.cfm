<cftry>
	<cfset five_sundays = ArrayNew(1)>
	<cfset five_sundays_ODBC = ArrayNew(1)>
	
	<cfloop index="i" from="1" to ="5" step="1">
		<cfset dtLastWeek = (Fix( Now() ) - (7*(i-1))) />
		<cfset objLastWeek = StructNew() />
		<cfset objLastWeek.Start = DateFormat(dtLastWeek - DayOfWeek( dtLastWeek ) + 1) />
		<cfset objLastWeek.End = DateFormat( objLastWeek.Start + 6 ) />
		<cfset five_sundays[i] = #objlastweek.start#>
		<cfset five_sundays_ODBC[6-i] = #CreateODBCDate(objlastweek.start)#>
	</cfloop>

	<cfif isdefined("cody")>
		<cfif !isdefined('this_start')>
			<cfset this_start = '2015-02-01'>
		</cfif>
			
		<cfif !isdefined('this_end')>
			<cfset this_end = '2015-02-01'>
		</cfif>
			
		<cfif !isdefined('this_account_number_git')>
			<cfset this_account_number_git = 55>
		</cfif>

		<cfif !isdefined('c_r_s_or_p_score')>
			<Cfset c_r_s_or_p_score = 'connect_score'>
		</cfif>
	</cfif>
		
	<cfquery name='CRISP_ranks_this_dealership' datasource='callmeasurement'>
		WITH current_week_cte (account_info_GIT, Sunday,
								 pursue_under_10, connect_under_10, no_employee_reached, tried_for_appt, 
								 promised_follow_up, no_appt_attempt, appt_set, appt_soft, appt_declined, 
								 sales_opportunity, connect_11to29, connect_30to60, connect_slow, 
								 pursue_11to29, pursue_30to60, pursue_slow)
		     AS 
		     (SELECT account_info_GIT, 
					DATEADD(dd,(DATEPART(dw,ah.the_date_GIT)*(-1)+8),ah.the_date_GIT) AS sunday,
		     		Sum(CASE WHEN measured_metric_git = 6 THEN callcount 
		     	     	   ELSE 0 END) AS pursue_under_10, 
		             Sum(CASE WHEN measured_metric_git = 9 THEN callcount 
		                   ELSE 0 END) AS connect_under_10, 
		             Sum(CASE WHEN measured_metric_git = 10 THEN callcount 
		                   ELSE 0 END) AS no_employee_reached,
		             Sum(CASE WHEN measured_metric_git = 13 THEN callcount 
		                   ELSE 0 END) AS tried_for_appt, 
		             Sum(CASE WHEN measured_metric_git = 16 THEN callcount 
		                   ELSE 0 END) AS promised_follow_up, 
		             Sum(CASE WHEN measured_metric_git = 17 THEN callcount 
		                   ELSE 0 END) AS no_appt_attempt,  
		             Sum(CASE WHEN measured_metric_git = 31 THEN callcount 
		                   ELSE 0 END) AS appt_set, 
		             Sum(CASE WHEN measured_metric_git = 32 THEN callcount 
		                   ELSE 0 END) AS appt_soft, 
		             Sum(CASE WHEN measured_metric_git = 33 THEN callcount 
		                   ELSE 0 END) AS appt_declined, 
		             Sum(CASE WHEN measured_metric_git = 60 THEN callcount 
		                   ELSE 0 END) AS sales_opportunity,
		             Sum(CASE WHEN measured_metric_git = 171 THEN callcount 
		                   ELSE 0 END) AS connect_11to29, 
		             Sum(CASE WHEN measured_metric_git = 172 THEN callcount 
		                   ELSE 0 END) AS connect_30to60, 
		             Sum(CASE WHEN measured_metric_git = 173 THEN callcount 
		                   ELSE 0 END) AS connect_slow, 
		             Sum(CASE WHEN measured_metric_git = 38823 THEN callcount 
		                   ELSE 0 END) AS pursue_11to29, 
		             Sum(CASE WHEN measured_metric_git = 38824 THEN callcount 
		                   ELSE 0 END) AS pursue_30to60,
		             Sum(CASE WHEN measured_metric_git = 38825 THEN callcount 
		                   ELSE 0 END) AS pursue_slow
		      FROM   where_we_count_git ah 
		             INNER JOIN account_number_group_join_git lgj 
		                     ON lgj.frn_account_info_GIT = ah.account_info_GIT 
	      WHERE  lgj.frn_account_info_GIT = #this_account_number_git#
		             AND ah.the_date_GIT > CONVERT(DATE, DATEADD(ww,-5,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+1),GETDATE())))
		             AND ah.the_date_GIT <= CONVERT(DATE, DATEADD(ww,-1,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+7),GETDATE())))
		      GROUP  BY account_info_GIT, DATEADD(dd,(DATEPART(dw,ah.the_date_GIT)*(-1)+8),ah.the_date_GIT)) 
		SELECT account_info_GIT, sunday,
		       CASE 
			        WHEN ( connect_under_10 + connect_11to29 + connect_30to60 + 
			        	connect_slow + no_employee_reached ) = 0 THEN 0 
			        ELSE ( ( 
			        		Cast(( connect_under_10 + connect_11to29 )AS NUMERIC) / 
							Cast(( connect_under_10 + connect_11to29 + connect_30to60 + 
		                    		connect_slow + no_employee_reached )AS NUMERIC) 
							) * 100 ) 
		       		END AS connect_score,	       
			   CASE 
		      		WHEN ( tried_for_appt + promised_follow_up + no_appt_attempt ) = 0 THEN 0 
		       		ELSE ( ( Cast(( tried_for_appt )AS NUMERIC) / 
		            		 Cast(( tried_for_appt + promised_follow_up + no_appt_attempt )AS NUMERIC) ) * 100 )
		       		END AS request_score,
		       CASE 
		         	WHEN ( appt_set + appt_soft + appt_declined ) = 0 THEN 0 
		         	ELSE ( ( Cast(( appt_set )AS NUMERIC) / 
		                     Cast(( appt_set + appt_soft + appt_declined )AS NUMERIC) ) * 100 )
		            END AS set_score,
		       CASE 
		         	WHEN ( sales_opportunity ) = 0 THEN 0 
		         	ELSE Cast((( Cast(pursue_under_10 + pursue_11to29 + pursue_30to60 + 
		         					  pursue_slow + sales_opportunity AS NUMERIC) ) / 
		                       ( Cast(sales_opportunity AS NUMERIC) )) AS NUMERIC)   END  AS pursue_score
		FROM   current_week_cte
		ORDER BY #c_r_s_or_p_score# desc
	</cfquery>




	<cfif isdefined('cody')>
		<Cfabort>
	</cfif>


					<div class="line-chart-holder-large">
						<ul class="chart-key">
							<li><div class="key-color" style="background-color: #323232;"></div><p class="key-label">Top 5 Dealerships</p>
							</li><li><div id="key-color" class="key-color" style="background-color: #007def;"></div><p class="key-label">Your Dealership</p>
							</li>
						</ul>
						<canvas id="line-chart-top" width="680" height="300"></canvas>
						<script>

							<cfoutput>
								#ToScript(five_sundays, "five_sundays")#
							</cfoutput>
		// YOUR DEALERSHIP SCORES

							var stepWidth = 50;	//divide by four to get the steps
							var connectedData = [0,0,0,0,0];
							var requestData = [0,0,0,0,0];
							var setData = [0,0,0,0,0];
							var pursueData = [0,0,0,0,0];

							<cfloop index='i' from="1" to ="5" step="1">
								<cfoutput query="CRISP_ranks_this_dealership">
									<cfif #CreateODBCDate(sunday)# EQ five_sundays_odbc[#i#]>
										<cfswitch expression="#c_r_s_or_p_score#">
											<cfcase value = "connect_score">
												connectedData[#i#-1] = #Round(connect_score)#
												var currentData = connectedData;
												var linecolor = "##007def"
												var stepWidth = 15
											</cfcase>
											<cfcase value = "request_score">
												requestData[#i#-1] = #Round(request_score)#
												var currentData = requestData;
												var linecolor = "##f4ca57"
											</cfcase>
											<cfcase value = "set_score">
												setData[#i#-1] = #Round(set_score)#
												var currentData = setData;
												var linecolor = "##71ca6f"
											</cfcase>
											<cfcase value = "pursue_score">
												pursueData[#i#-1] = #Round(pursue_score)#
												var currentData = pursueData;
												var linecolor = "##e56d64"
											</cfcase>
										</cfswitch>
									</cfif>
								</cfoutput>
							</cfloop>


							

							var lineData = {
								labels : [five_sundays[4], five_sundays[3], five_sundays[2],five_sundays[1],five_sundays[0]],
								datasets : [
									{
										fillColor : "#323232",
										strokeColor : "#323232",
										pointColor : "#323232",
										pointStrokeColor : "##ffffff",
										data: [18,0,0,0,18]
									},
									{	
										fillColor : linecolor,
										strokeColor : linecolor,
										pointColor : linecolor,
										pointStrokeColor : "#ffffff",
										data : currentData
									}
								]
							}

							<cfloop array="#five_sundays#" index="sunday">
								<cfquery name="average_top_5" datasource="callmeasurement" maxrows="5">
									WITH current_week_cte (account_info_GIT, Sunday,
															 pursue_under_10, connect_under_10, no_employee_reached, tried_for_appt, 
															 promised_follow_up, no_appt_attempt, appt_set, appt_soft, appt_declined, 
															 sales_opportunity, connect_11to29, connect_30to60, connect_slow, 
															 pursue_11to29, pursue_30to60, pursue_slow)
									     AS 
									     (SELECT account_info_GIT, 
												DATEADD(dd,(DATEPART(dw,ah.the_date_GIT)*(-1)+8),ah.the_date_GIT) AS sunday,
									     		Sum(CASE WHEN measured_metric_git = 6 THEN callcount 
									     	     	   ELSE 0 END) AS pursue_under_10, 
									             Sum(CASE WHEN measured_metric_git = 9 THEN callcount 
									                   ELSE 0 END) AS connect_under_10, 
									             Sum(CASE WHEN measured_metric_git = 10 THEN callcount 
									                   ELSE 0 END) AS no_employee_reached,
									             Sum(CASE WHEN measured_metric_git = 13 THEN callcount 
									                   ELSE 0 END) AS tried_for_appt, 
									             Sum(CASE WHEN measured_metric_git = 16 THEN callcount 
									                   ELSE 0 END) AS promised_follow_up, 
									             Sum(CASE WHEN measured_metric_git = 17 THEN callcount 
									                   ELSE 0 END) AS no_appt_attempt,  
									             Sum(CASE WHEN measured_metric_git = 31 THEN callcount 
									                   ELSE 0 END) AS appt_set, 
									             Sum(CASE WHEN measured_metric_git = 32 THEN callcount 
									                   ELSE 0 END) AS appt_soft, 
									             Sum(CASE WHEN measured_metric_git = 33 THEN callcount 
									                   ELSE 0 END) AS appt_declined, 
									             Sum(CASE WHEN measured_metric_git = 60 THEN callcount 
									                   ELSE 0 END) AS sales_opportunity,
									             Sum(CASE WHEN measured_metric_git = 171 THEN callcount 
									                   ELSE 0 END) AS connect_11to29, 
									             Sum(CASE WHEN measured_metric_git = 172 THEN callcount 
									                   ELSE 0 END) AS connect_30to60, 
									             Sum(CASE WHEN measured_metric_git = 173 THEN callcount 
									                   ELSE 0 END) AS connect_slow, 
									             Sum(CASE WHEN measured_metric_git = 38823 THEN callcount 
									                   ELSE 0 END) AS pursue_11to29, 
									             Sum(CASE WHEN measured_metric_git = 38824 THEN callcount 
									                   ELSE 0 END) AS pursue_30to60,
									             Sum(CASE WHEN measured_metric_git = 38825 THEN callcount 
									                   ELSE 0 END) AS pursue_slow
										      FROM   where_we_count_git ah 
										             INNER JOIN account_number_group_join_git lgj 
										                     ON lgj.frn_account_info_GIT = ah.account_info_GIT 
										      WHERE  lgj.where_we_join_metric_account_GIT = 56
										             AND ah.the_date_GIT > CONVERT(DATE, DATEADD(ww,-5,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+1),GETDATE())))
										             AND ah.the_date_GIT <= CONVERT(DATE, DATEADD(ww,-1,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+7),GETDATE())))
										      GROUP  BY account_info_GIT, DATEADD(dd,(DATEPART(dw,ah.the_date_GIT)*(-1)+8),ah.the_date_GIT)) 
										SELECT account_info_GIT, sunday,
										       CASE 
											        WHEN ( connect_under_10 + connect_11to29 + connect_30to60 + 
											        	connect_slow + no_employee_reached ) = 0 THEN 0 
											        ELSE ( ( 
											        		Cast(( connect_under_10 + connect_11to29 )AS NUMERIC) / 
															Cast(( connect_under_10 + connect_11to29 + connect_30to60 + 
										                    		connect_slow + no_employee_reached )AS NUMERIC) 
															) * 100 ) 
										       		END AS connect_score,
							       			   CASE 
							       		      		WHEN ( tried_for_appt + promised_follow_up + no_appt_attempt ) = 0 THEN 0 
							       		       		ELSE ( ( Cast(( tried_for_appt )AS NUMERIC) / 
							       		            		 Cast(( tried_for_appt + promised_follow_up + no_appt_attempt )AS NUMERIC) ) * 100 )
							       		       		END AS request_score,
							       		       CASE 
							       		         	WHEN ( appt_set + appt_soft + appt_declined ) = 0 THEN 0 
							       		         	ELSE ( ( Cast(( appt_set )AS NUMERIC) / 
							       		                     Cast(( appt_set + appt_soft + appt_declined )AS NUMERIC) ) * 100 )
							       		            END AS set_score,
							       		       CASE 
							       		         	WHEN ( sales_opportunity ) = 0 THEN 0 
							       		         	ELSE Cast((( Cast(pursue_under_10 + pursue_11to29 + pursue_30to60 + 
							       		         					  pursue_slow + sales_opportunity AS NUMERIC) ) / 
							       		                       ( Cast(sales_opportunity AS NUMERIC) )) AS NUMERIC)   END  AS pursue_score
										FROM   current_week_cte
										WHERE sunday = #CreateODBCDate(sunday)#
										ORDER BY #c_r_s_or_p_score# desc
								</cfquery>




								<cfswitch expression="#c_r_s_or_p_score#">
									<cfcase value = "connect_score">
										<cfloop query="average_top_5">
											<cfloop index="i" from="1" to="5" step="1">
												<cfif #sunday# eq #five_sundays_ODBC[i]#>
													<cfoutput>lineData.datasets[0].data[#i-1#] = #average_top_5.connect_score#</cfoutput>;
												</cfif>
											</cfloop>
										</cfloop>
									</cfcase>
									<cfcase value = "request_score">
										<cfloop query="average_top_5">
											<cfloop index="i" from="1" to="5" step="1">
												<cfif #sunday# eq #five_sundays_ODBC[i]#>
													<cfoutput>lineData.datasets[0].data[#i-1#] = #average_top_5.request_score#</cfoutput>;
												</cfif>
											</cfloop>
										</cfloop>
									</cfcase>
									<cfcase value = "set_score">
										<cfloop query="average_top_5">
											<cfloop index="i" from="1" to="5" step="1">
												<cfif #sunday# eq #five_sundays_ODBC[i]#>
													<cfoutput>lineData.datasets[0].data[#i-1#] = #average_top_5.set_score#</cfoutput>;
												</cfif>
											</cfloop>
										</cfloop>
									</cfcase>
									<cfcase value = "pursue_score">
										<cfloop query="average_top_5">
											<cfloop index="i" from="1" to="5" step="1">
												<cfif #sunday# eq #five_sundays_ODBC[i]#>
													<cfoutput>lineData.datasets[0].data[#i-1#] = #average_top_5.pursue_score#</cfoutput>;
												</cfif>
											</cfloop>
										</cfloop>
									</cfcase>
								</cfswitch>

							</cfloop>

							var lineOptions = {
								//Boolean - If we show the scale above the chart data
								scaleOverlay : false,
								//Boolean - If we want to override with a hard coded scale
								scaleOverride : true,
								//** Required if scaleOverride is true **
								//Number - The number of steps in a hard coded scale
								scaleSteps : 2,
								scaleLabel: "<%=value%>%",
								//Number - The value jump in the hard coded scale
								scaleStepWidth : stepWidth,
								//Number - The scale starting value
								scaleStartValue : 0,
								//String - Colour of the scale line
								scaleLineColor : "rgba(0,0,0,.1)",
								//Number - Pixel width of the scale line
								scaleLineWidth : 1,
								//Boolean - Whether to show labels on the scale
								scaleShowLabels : true,
								//Number - Scale label font size in pixels
								scaleFontSize : 12,
								//String - Scale label font colour
								scaleFontColor : "#666",
								///Boolean - Whether grid lines are shown across the chart
								scaleShowGridLines : true,
								//String - Colour of the grid lines
								scaleGridLineColor : "rgba(0,0,0,.05)",
								//Number - Width of the grid lines
								scaleGridLineWidth : 1,
								//Boolean - Whether the line is curved between points
								bezierCurve : false,
								//Boolean - Whether to show a dot for each point
								pointDot : true,
								//Number - Radius of each point dot in pixels
								pointDotRadius : 6,
								//Number - Pixel width of point dot stroke
								pointDotStrokeWidth : 3,
								//Boolean - Whether to show a stroke for datasets
								datasetStroke : false,
								//Number - Pixel width of dataset stroke
								datasetStrokeWidth : 3,
								//Boolean - Whether to fill the dataset with a colour
								datasetFill : false,
								//Boolean - Whether to animate the chart
								animation : false,

							}

							var chart= document.getElementById("line-chart-top").getContext("2d");
							new Chart(chart).Line(lineData, lineOptions);

						</script>
					</div>


	<cfcatch>
		<cfdump var="#cfcatch#">
	</cfcatch>
</cftry>