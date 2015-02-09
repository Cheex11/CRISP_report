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
			
		<cfif !isdefined('this_lskin')>
			<cfset this_lskin = 55>
		</cfif>

		<cfif !isdefined('c_r_s_or_p_score')>
			<Cfset c_r_s_or_p_score = 'connect_score'>
		</cfif>
	</cfif>










					<div class="scroll-list">
						<div class="left-arrow">
							<a href="" onclick="return false;"><img src="../images/redux/arrow-left.png"></a>
						</div><div class="options">
							<h3></h3>
						</div><div class="right-arrow">
							<a href="" onclick="return false;"><img src="../images/redux/arrow-right.png"></a>
						</div>
					</div>

					<ul class="dealer-list">
						<li class="dealer-list-labels-row">
							<div class="list-block column-1 name" style="background-color: rgba(0,0,0,0);">
									<p class="dealer-label-1">Dealership Name</p>
							</div><div class="list-block column-2 sorted" style="background-color: rgba(0,0,0,0);">
								<a class="list-label" href="" onclick="return false;">
									<p class="dealer-label-2">Connect</p><img class="sorted" src="../images/redux/performance-report-cw/list-label-arrow.png"/>
								</a>
							</div><div class="list-block column-3" style="background-color: rgba(0,0,0,0);">
								<a class="list-label" href="" onclick="return false;">
									<p class="dealer-label-3">Request/Invite</p><img src="../images/redux/performance-report-cw/list-label-arrow.png"/>
								</a>
							</div><div class="list-block column-4" style="background-color: rgba(0,0,0,0);">
								<a class="list-label" href="" onclick="return false;">
									<p class="dealer-label-4">Set</p><img src="../images/redux/performance-report-cw/list-label-arrow.png"/>
								</a>
							</div><div class="list-block column-5" style="background-color: rgba(0,0,0,0);">
								<a class="list-label" href="" onclick="return false;">
									<p class="dealer-label-5">Pursue</p><img src="../images/redux/performance-report-cw/list-label-arrow.png"/>
								</a>
							</div>


					<Cfloop query='pull_top_5'>

						<cfswitch expression="#currentrow#">
							<Cfcase value = 1>
								</li><li class="dealer-list-row">
									<div class="list-block column-1"><p class="dealer-name">1. Midway Nissan</p>
									</div><div class="list-block column-2 data-cell sorted"><div class="num-holder"><div class="percent">94%</div></div>
									</div><div class="list-block column-3 data-cell"><div class="num-holder"><div class="percent">96%</div></div>
									</div><div class="list-block column-4 data-cell"><div class="num-holder"><div class="percent">92%</div></div>
									</div><div class="list-block column-5 data-cell"><div class="num-holder"><div class="percent">81%</div></div>
									</div>
								</li><li class="dealer-list-row">
									<div class="list-block column-1"><p class="dealer-name">2. Showcase Honda</p>
									</div><div class="list-block column-2 data-cell sorted"><div class="num-holder"><div class="percent">93%</div></div>
									</div><div class="list-block column-3 data-cell"><div class="num-holder"><div class="percent">95%</div></div>
									</div><div class="list-block column-4 data-cell"><div class="num-holder"><div class="percent">93%</div></div>
									 </div><div class="list-block column-5 data-cell"><div class="num-holder"><div class="percent">89%</div></div>
									</div>
								</li><li class="dealer-list-row">
									<div class="list-block column-1"><p class="dealer-name">3. Wesley Honda</p>
									</div><div class="list-block column-2 data-cell sorted"><div class="num-holder"><div class="percent">93%</div></div>
									</div><div class="list-block column-3 data-cell"><div class="num-holder"><div class="percent">95%</div></div>
									</div><div class="list-block column-4 data-cell"><div class="num-holder"><div class="percent">93%</div></div>
									 </div><div class="list-block column-5 data-cell"><div class="num-holder"><div class="percent">84%</div></div>
									</div>
								</li><li class="dealer-list-row">
									<div class="list-block column-1"><p class="dealer-name">4. Nissan of McKinney</p>
									</div><div class="list-block column-2 data-cell sorted"><div class="num-holder"><div class="percent">93%</div></div>
									</div><div class="list-block column-3 data-cell"><div class="num-holder"><div class="percent">95%</div></div>
									</div><div class="list-block column-4 data-cell"><div class="num-holder"><div class="percent">93%</div></div>
									 </div><div class="list-block column-5 data-cell"><div class="num-holder"><div class="percent">89%</div></div>
									</div>
								</li><li class="dealer-list-row">
									<div class="list-block column-1"><p class="dealer-name">5. Vandergriff Toyota</p>
									</div><div class="list-block column-2 data-cell sorted"><div class="num-holder"><div class="percent">93%</div></div>
									</div><div class="list-block column-3 data-cell"><div class="num-holder"><div class="percent">95%</div></div>
									</div><div class="list-block column-4 data-cell"><div class="num-holder"><div class="percent">93%</div></div>
									 </div><div class="list-block column-5 data-cell"><div class="num-holder"><div class="percent">82%</div></div>
									</div>
								</li>
							</Cfcase>
						</cfswitch>
						

					</ul>
					<ul class="dealership-single">
						<li class="your-dealership">
							<div class="list-block column-1"><p class="dealer-name">56. Your Dealership</p>
							</div><div class="list-block column-2 data-cell sorted"><div class="num-holder"><div class="percent">23%</div></div>
							</div><div class="list-block column-3 data-cell"><div class="num-holder"><div class="percent">25%</div></div>
							</div><div class="list-block column-4 data-cell"><div class="num-holder"><div class="percent">33%</div></div>
							 </div><div class="list-block column-5 data-cell"><div class="num-holder"><div class="percent">24%</div></div>
							</div>
						</li>
					</ul>


					</Cfloop>

<script>


	// ---top dealerships scroll option ---
	var dealershipOptions = ["Top 5 Dealerships","Top Nissan Dealers","Top Mazda Dealers"];
	var optionsIndex = 0;
	$('.scroll-list div a').click(function() {
		if($(this).parent('div').hasClass("left-arrow")) {
			optionsIndex = (optionsIndex + dealershipOptions.length -1) % (dealershipOptions.length);
			$('.scroll-list div.options h3').text(dealershipOptions[optionsIndex]);
		}
		else if ($(this).parent('div').hasClass("right-arrow")) {
			optionsIndex = (optionsIndex + 1) % (dealershipOptions.length);
			$('.scroll-list div.options h3').text(dealershipOptions[optionsIndex]);
		}
	});
	$('.scroll-list div.options h3').text(dealershipOptions[0]);

</script>





	<cfcatch>
		<cfdump var="#cfcatch#">
	</cfcatch>
</cftry>