<cfquery name="check_phonedamentals" datasource="callmeasurement">
	WITH master_cte (total_88,total_89,total_90,total_91,total_92,total_93,total_94,total_95,total_96,total_97) 
	     AS 
	     (
	select 
		case when (
			sum(case when metric_were_analyzing_git = 88 then 1 else 0 end)) > 0 then 1 else 0 end as total_88,
		case when (
			sum(case when metric_were_analyzing_git = 89 then 1 else 0 end)
				) > 0 then 1 else 0 end as total_89,
		case when (
			sum(case when metric_were_analyzing_git = 90 then 1 else 0 end)
				) > 0 then 1 else 0 end as total_90,
		case when (
			sum(case when metric_were_analyzing_git = 91 then 1 else 0 end)
				) > 0 then 1 else 0 end as total_91,
		case when (
			sum(case when metric_were_analyzing_git = 92 then 1 else 0 end)
				) > 0 then 1 else 0 end as total_92,
		case when (
			sum(case when metric_were_analyzing_git = 93 then 1 else 0 end)
				) > 0 then 1 else 0 end as total_93,
		case when (
			sum(case when metric_were_analyzing_git = 94 then 1 else 0 end)
				) > 0 then 1 else 0 end as total_94,
		case when (
			sum(case when metric_were_analyzing_git = 95 then 1 else 0 end)
				) > 0 then 1 else 0 end as total_95,
		case when (
			sum(case when metric_were_analyzing_git = 96 then 1 else 0 end)
				) > 0 then 1 else 0 end as total_96,
		case when (
			sum(case when metric_were_analyzing_git = 97 then 1 else 0 end)
				) > 0 then 1 else 0 end as total_97
		
		from HD
		where account_number_git in (#session_account_number_git#) )
		select 
			case when (
				total_88 + total_89 + total_90 + total_91 + total_92 + 
				total_93 + total_94 + total_95 + total_96 + total_97 ) = 10 then 'yes'
				else 'no' end as participating
			FROM   master_cte 
</cfquery>

<cfquery name="pull_staff_master" datasource='callmeasurement'>
	SELECT 
		distinct pc.phonecodeid as phonecode_master, pc.phonedigit_staff_user_name_git, pc.pc_avatar,
		COUNT(DISTINCT CASE WHEN xch.metric_git IN (88161) THEN xc.callid END) AS caller_name_yes,
		COUNT(DISTINCT CASE WHEN xch.metric_git IN (88162) THEN xc.callid END) AS caller_name_no,
		COUNT(DISTINCT CASE WHEN xch.metric_git IN (88610) THEN xc.callid END) AS vehicle_pref_yes,
		COUNT(DISTINCT CASE WHEN xch.metric_git IN (88612) THEN xc.callid END) AS vehicle_pref_no,
		COUNT(DISTINCT CASE WHEN xch.metric_git IN (88613) THEN xc.callid END) AS perfect_car_yes,
		COUNT(DISTINCT CASE WHEN xch.metric_git IN (88614) THEN xc.callid END) AS perfect_car_no,
		Round(
			CASE 
				WHEN ( COUNT(DISTINCT CASE WHEN xch.metric_git IN (88162) THEN xc.callid END)
					 + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88612) THEN xc.callid END)
					 + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88614) THEN xc.callid END)
					 ) = 0 
				THEN 0 
	        ELSE ( 
	       			( 
	       				Cast(
	       						( 
	       							COUNT(DISTINCT CASE WHEN xch.metric_git IN (88161) THEN xc.callid END)
	       						  + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88610) THEN xc.callid END) 
	       						  + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88613) THEN xc.callid END)
	       						 )
	       			 AS NUMERIC) / 
	                	Cast(
	                			( 
	                				COUNT(DISTINCT CASE WHEN xch.metric_git IN (88162) THEN xc.callid END) 
	                			  + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88612) THEN xc.callid END)
	                			  + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88614) THEN xc.callid END)
	                			  + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88161) THEN xc.callid END)
	       						  + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88610) THEN xc.callid END) 
	       						  + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88613) THEN xc.callid END)
	                			)
	                 AS NUMERIC) 

	                ) * 100
	            )   END , 2)                                AS current_connect_score,
	  Count(DISTINCT CASE WHEN xch.metric_git IN ( 88618 ) THEN xc.callid END) AS two_appts_yes, 
	  Count(DISTINCT CASE WHEN xch.metric_git IN ( 88619 ) THEN xc.callid END) AS two_appts_no,
	  Round(
	    CASE 
	      WHEN ( Count(DISTINCT CASE WHEN xch.metric_git IN ( 88619 ) THEN xc.callid END)
	         ) = 0 
	      THEN 0 
	        ELSE ( 
	            ( 
	              Cast(
	                  ( 
	                Count(DISTINCT CASE WHEN xch.metric_git IN ( 88618 ) THEN xc.callid END)
	                   )
	             AS NUMERIC) / 
	                  Cast(
	                      ( 
	                Count(DISTINCT CASE WHEN xch.metric_git IN ( 88618 ) THEN xc.callid END)
	                + Count(DISTINCT CASE WHEN xch.metric_git IN ( 88619 ) THEN xc.callid END)
	                      )
	                 AS NUMERIC) 
	                ) * 100
	            )   END , 2)                                AS current_request_score,
	  COUNT(DISTINCT CASE WHEN xch.metric_git IN (88624) THEN xc.callid END) AS instructions_provided,
	  COUNT(DISTINCT CASE WHEN xch.metric_git IN (88625) THEN xc.callid END) AS no_instructions_provided,
	  COUNT(DISTINCT CASE WHEN xch.metric_git IN (88626) THEN xc.callid END) AS clear_flexibility,
	  COUNT(DISTINCT CASE WHEN xch.metric_git IN (88627) THEN xc.callid END) AS no_clear_flexibility,
	  Round(
	    CASE 
	      WHEN ( COUNT(DISTINCT CASE WHEN xch.metric_git IN (88625) THEN xc.callid END)
	         + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88627) THEN xc.callid END)
	         ) = 0 
	      THEN 0 
	        ELSE ( 
	            ( 
	              Cast(
	                  ( 
	                    COUNT(DISTINCT CASE WHEN xch.metric_git IN (88624) THEN xc.callid END)
	                    + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88626) THEN xc.callid END)
	                   )
	             AS NUMERIC) / 
	                  Cast(
	                      ( 
	                        COUNT(DISTINCT CASE WHEN xch.metric_git IN (88625) THEN xc.callid END) 
	                        + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88627) THEN xc.callid END)
	                        + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88626) THEN xc.callid END)
	                        + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88624) THEN xc.callid END)
	                      )
	                 AS NUMERIC) 

	                ) * 100
	            )   END , 2)                                AS current_set_score,
	  COUNT(DISTINCT CASE WHEN xch.metric_git IN (88622) THEN xc.callid END) AS expectations_set,
	  COUNT(DISTINCT CASE WHEN xch.metric_git IN (88623) THEN xc.callid END) AS no_expectations_set,
	  COUNT(DISTINCT CASE WHEN xch.metric_git IN (88630) THEN xc.callid END) AS permission_asked,
	  COUNT(DISTINCT CASE WHEN xch.metric_git IN (88631) THEN xc.callid END) AS no_permission_asked,
	  COUNT(DISTINCT CASE WHEN xch.metric_git IN (88620) THEN xc.callid END) AS confirmed_callback,
	  COUNT(DISTINCT CASE WHEN xch.metric_git IN (88621) THEN xc.callid END) AS no_confirmed_callback,
	  Round(
	    CASE 
	      WHEN ( COUNT(DISTINCT CASE WHEN xch.metric_git IN (88623) THEN xc.callid END)
	         + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88631) THEN xc.callid END)
	         + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88621) THEN xc.callid END)
	         ) = 0 
	      THEN 0 
	        ELSE ( 
	            ( 
	              Cast(
	                  ( 
	                    COUNT(DISTINCT CASE WHEN xch.metric_git IN (88622) THEN xc.callid END)
	                    + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88630) THEN xc.callid END) 
	                    + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88620) THEN xc.callid END)
	                   )
	             AS NUMERIC) / 
	                  Cast(
	                      ( 
	                        COUNT(DISTINCT CASE WHEN xch.metric_git IN (88623) THEN xc.callid END) 
	                        + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88631) THEN xc.callid END)
	                        + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88621) THEN xc.callid END)
	                        + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88622) THEN xc.callid END)
	                    + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88630) THEN xc.callid END) 
	                    + COUNT(DISTINCT CASE WHEN xch.metric_git IN (88620) THEN xc.callid END)
	                      )
	                 AS NUMERIC) 

	                ) * 100
	            )   END , 2)                                AS current_pursue_score
	FROM phone_table_git d
	  INNER JOIN #thetable# xc ON xc.phone_table_id_git = d.frn_phone_table_id_GIT
	  INNER JOIN #thetable#_hcat xch2 ON xch2.frn_callid_GIT = xc.callid_GIT
	  INNER JOIN #thetable#_hcat xch ON xch2.frn_callid_GIT = xch.frn_callid_GIT
	  INNER JOIN phonecode pc ON xc.frn_phonedigitid_GIT = pc.phonedigitid
	where d.this_account_git in  (#session_account_number_git#)
	    and pc.isactive = 1
		AND pc.phonedigit_staff_user_name_git NOT LIKE '%hangup%'
	    AND xc.the_date_git > CONVERT(DATE, DATEADD(ww,-2,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+1),GETDATE())))
	    and xc.the_date_git <= CONVERT(DATE,DATEADD(dd,(DATEPART(dw,GETDATE()+6)*(-1)+1), GETDATE()+6))
	GROUP BY pc.phonedigit_GIT, pc.phonedigit_staff_user_name_git, pc.pc_avatar
	order by current_connect_score desc, pc.phonedigit_GIT desc, pc.phonedigit_staff_user_name_git
</cfquery>

<cfquery name='dealership_CRISP_scores' datasource='callmeasurement'>
	WITH current_week_cte (account_number_git, Sunday,
							 pursue_under_10, connect_under_10, no_employee_reached, tried_for_appt, 
							 promised_follow_up, no_appt_attempt, appt_set, appt_soft, appt_declined, 
							 sales_opportunity, connect_11to29, connect_30to60, connect_slow, 
							 pursue_11to29, pursue_30to60, pursue_slow)
	     AS 
	     (SELECT account_number_git, 
				DATEADD(dd,(DATEPART(dw,ah.the_date_git)*(-1)+1),ah.the_date_git) AS sunday,
	     		Sum(CASE WHEN hcat_optionid = 6 THEN callcount 
	     	     	   ELSE 0 END) AS pursue_under_10, 
	             Sum(CASE WHEN hcat_optionid = 9 THEN callcount 
	                   ELSE 0 END) AS connect_under_10, 
	             Sum(CASE WHEN hcat_optionid = 10 THEN callcount 
	                   ELSE 0 END) AS no_employee_reached,
	             Sum(CASE WHEN hcat_optionid = 13 THEN callcount 
	                   ELSE 0 END) AS tried_for_appt, 
	             Sum(CASE WHEN hcat_optionid = 16 THEN callcount 
	                   ELSE 0 END) AS promised_follow_up, 
	             Sum(CASE WHEN hcat_optionid = 17 THEN callcount 
	                   ELSE 0 END) AS no_appt_attempt,  
	             Sum(CASE WHEN hcat_optionid = 31 THEN callcount 
	                   ELSE 0 END) AS appt_set, 
	             Sum(CASE WHEN hcat_optionid = 32 THEN callcount 
	                   ELSE 0 END) AS appt_soft, 
	             Sum(CASE WHEN hcat_optionid = 33 THEN callcount 
	                   ELSE 0 END) AS appt_declined, 
	             Sum(CASE WHEN hcat_optionid = 60 THEN callcount 
	                   ELSE 0 END) AS sales_opportunity,
	             Sum(CASE WHEN hcat_optionid = 171 THEN callcount 
	                   ELSE 0 END) AS connect_11to29, 
	             Sum(CASE WHEN hcat_optionid = 172 THEN callcount 
	                   ELSE 0 END) AS connect_30to60, 
	             Sum(CASE WHEN hcat_optionid = 173 THEN callcount 
	                   ELSE 0 END) AS connect_slow, 
	             Sum(CASE WHEN hcat_optionid = 38823 THEN callcount 
	                   ELSE 0 END) AS pursue_11to29, 
	             Sum(CASE WHEN hcat_optionid = 38824 THEN callcount 
	                   ELSE 0 END) AS pursue_30to60,
	             Sum(CASE WHEN hcat_optionid = 38825 THEN callcount 
	                   ELSE 0 END) AS pursue_slow
	      FROM   aggregate_lskin_hco ah 
	             INNER JOIN lskin_group_join lgj 
	                     ON lgj.account_number_git = ah.account_number_git 
	      WHERE  account_number_git = #session_account_number_git#
	             AND ah.the_date_git > CONVERT(DATE, DATEADD(ww,-5,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+1),GETDATE())))
	             AND ah.the_date_git <= CONVERT(DATE, DATEADD(ww,-1,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+7),GETDATE())))
	      GROUP  BY account_number_git, DATEADD(dd,(DATEPART(dw,ah.the_date_git)*(-1)+1),ah.the_date_git)) 
	SELECT account_number_git, sunday,
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
	order by connect_score
</cfquery>

<cfquery name='CRISP_ranks_dealership' datasource='callmeasurement'>
	WITH current_week_cte (account_number_git, Sunday,
							 pursue_under_10, connect_under_10, no_employee_reached, tried_for_appt, 
							 promised_follow_up, no_appt_attempt, appt_set, appt_soft, appt_declined, 
							 sales_opportunity, connect_11to29, connect_30to60, connect_slow, 
							 pursue_11to29, pursue_30to60, pursue_slow)
	     AS 
	     (SELECT account_number_git, 
				DATEADD(dd,(DATEPART(dw,ah.the_date_git)*(-1)+8),ah.the_date_git) AS sunday,
	     		Sum(CASE WHEN hcat_optionid = 6 THEN callcount 
	     	     	   ELSE 0 END) AS pursue_under_10, 
	             Sum(CASE WHEN hcat_optionid = 9 THEN callcount 
	                   ELSE 0 END) AS connect_under_10, 
	             Sum(CASE WHEN hcat_optionid = 10 THEN callcount 
	                   ELSE 0 END) AS no_employee_reached,
	             Sum(CASE WHEN hcat_optionid = 13 THEN callcount 
	                   ELSE 0 END) AS tried_for_appt, 
	             Sum(CASE WHEN hcat_optionid = 16 THEN callcount 
	                   ELSE 0 END) AS promised_follow_up, 
	             Sum(CASE WHEN hcat_optionid = 17 THEN callcount 
	                   ELSE 0 END) AS no_appt_attempt,  
	             Sum(CASE WHEN hcat_optionid = 31 THEN callcount 
	                   ELSE 0 END) AS appt_set, 
	             Sum(CASE WHEN hcat_optionid = 32 THEN callcount 
	                   ELSE 0 END) AS appt_soft, 
	             Sum(CASE WHEN hcat_optionid = 33 THEN callcount 
	                   ELSE 0 END) AS appt_declined, 
	             Sum(CASE WHEN hcat_optionid = 60 THEN callcount 
	                   ELSE 0 END) AS sales_opportunity,
	             Sum(CASE WHEN hcat_optionid = 171 THEN callcount 
	                   ELSE 0 END) AS connect_11to29, 
	             Sum(CASE WHEN hcat_optionid = 172 THEN callcount 
	                   ELSE 0 END) AS connect_30to60, 
	             Sum(CASE WHEN hcat_optionid = 173 THEN callcount 
	                   ELSE 0 END) AS connect_slow, 
	             Sum(CASE WHEN hcat_optionid = 38823 THEN callcount 
	                   ELSE 0 END) AS pursue_11to29, 
	             Sum(CASE WHEN hcat_optionid = 38824 THEN callcount 
	                   ELSE 0 END) AS pursue_30to60,
	             Sum(CASE WHEN hcat_optionid = 38825 THEN callcount 
	                   ELSE 0 END) AS pursue_slow
	      FROM   aggregate_lskin_hco ah 
	             INNER JOIN lskin_group_join lgj 
	                     ON lgj.account_number_git = ah.account_number_git 
	      WHERE  account_number_git = #session_account_number_git#
	             AND ah.the_date_git > CONVERT(DATE, DATEADD(ww,-5,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+1),GETDATE())))
	             AND ah.the_date_git <= CONVERT(DATE, DATEADD(ww,-1,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+7),GETDATE())))
	      GROUP  BY account_number_git, DATEADD(dd,(DATEPART(dw,ah.the_date_git)*(-1)+8),ah.the_date_git)) 
	SELECT account_number_git, sunday,
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
	ORDER BY connect_score
</cfquery>