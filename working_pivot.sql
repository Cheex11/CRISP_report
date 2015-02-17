	DECLARE @columns NVARCHAR(MAX), @sql NVARCHAR(MAX);
	set @columns = N'';
	with master_cte (name_git_secret,sunday)
	AS (
		SELECT 
		pc.name_git_secret,
		DATEADD(dd,(DATEPART(dw,xc.generic_date_GIT)*(-1)+1),xc.generic_date_GIT) AS sunday
		FROM xdnis d
		INNER JOIN call_log_database_GIT xc ON xc.cf_frn_dnisid = d.dnisid
		INNER JOIN call_log_database_GIT_secret_word xch2 ON xch2.frn_callid = xc.callid
		INNER JOIN call_log_database_GIT_secret_word xch ON xch2.frn_callid = xch.frn_callid
		INNER JOIN phone_git_secret_word pc ON xc.frn_phonecodeid = pc.phonecodeid
		where d.add_lskinid = 24
			and pc.isactive = 1
			AND pc.name_git_secret NOT LIKE '%hangup%'
			AND xc.generic_date_GIT > CONVERT(DATE, DATEADD(ww,-4,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+1),GETDATE())))
			and xc.generic_date_GIT <= CONVERT(DATE,DATEADD(dd,(DATEPART(dw,GETDATE()+6)*(-1)+1), GETDATE()+6))
		GROUP BY DATEADD(dd,(DATEPART(dw,xc.generic_date_GIT)*(-1)+1),xc.generic_date_GIT), pc.name_git_secret, pc.thing_i_need_git
	)
	select @columns+=N', p.' + QUOTENAME(sunday)
		FROM 
			(SELECT distinct sunday
			FROM master_cte as mstr) as m
			order by sunday desc
	SET @sql = N'
	SELECT phonecodedbid, 
	' + STUFF(@columns, 1, 2, '') + '
	FROM 
	(
		SELECT 
		phonecodedbid,
		DATEADD(dd,(DATEPART(dw,xc.generic_date_GIT)*(-1)+1),xc.generic_date_GIT) AS sunday,
		Round(
		CASE 
			WHEN ( COUNT(DISTINCT CASE WHEN xch.frn_secret_word_optionid IN (88625) THEN xc.callid END)
				+ COUNT(DISTINCT CASE WHEN xch.frn_secret_word_optionid IN (88627) THEN xc.callid END)
				) = 0 
			THEN 0 
			ELSE ( 
				( 
					Cast(
						( 
						COUNT(DISTINCT CASE WHEN xch.frn_secret_word_optionid IN (88624) THEN xc.callid END)
						+ COUNT(DISTINCT CASE WHEN xch.frn_secret_word_optionid IN (88626) THEN xc.callid END)
						)
					AS NUMERIC) / 
						Cast(
							( 
							COUNT(DISTINCT CASE WHEN xch.frn_secret_word_optionid IN (88625) THEN xc.callid END) 
							+ COUNT(DISTINCT CASE WHEN xch.frn_secret_word_optionid IN (88627) THEN xc.callid END)
							+ COUNT(DISTINCT CASE WHEN xch.frn_secret_word_optionid IN (88626) THEN xc.callid END)
							+ COUNT(DISTINCT CASE WHEN xch.frn_secret_word_optionid IN (88624) THEN xc.callid END)
							)
						AS NUMERIC) 

					) * 100
				)   END , 2)                                AS set_score
		FROM xdnis d
		INNER JOIN call_log_database_GIT xc ON xc.cf_frn_dnisid = d.dnisid
		INNER JOIN call_log_database_GIT_secret_word xch2 ON xch2.frn_callid = xc.callid
		INNER JOIN call_log_database_GIT_secret_word xch ON xch2.frn_callid = xch.frn_callid
		INNER JOIN phone_git_secret_word pc ON xc.frn_phone_git_secret_wordid = pc.phone_git_secret_wordid
		where d.add_lskinid = 24
			and pc.isactive = 1
			AND xc.generic_date_GIT > CONVERT(DATE, DATEADD(ww,-4,DATEADD(dd,(DATEPART(dw,GETDATE())*(-1)+1),GETDATE())))
			and xc.generic_date_GIT <= CONVERT(DATE,DATEADD(dd,(DATEPART(dw,GETDATE()+6)*(-1)+1), GETDATE()+6))
		GROUP BY DATEADD(dd,(DATEPART(dw,xc.generic_date_GIT)*(-1)+1),xc.generic_date_GIT), phone_git_secret_worddbid
	) as j
	PIVOT
	(
		max(set_score) FOR sunday IN (' + STUFF(REPLACE(@columns, ', p.[', ',['), 1, 1, '') + ')
	) AS p;';
	PRINT @sql;
	EXEC sp_executesql @sql;