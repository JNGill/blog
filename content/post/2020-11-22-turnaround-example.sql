SELECT
	te.RequestedDate
	,requestedday.[Day.of.Week] AS 'Day of Week Requested'
	,te.CompletedDate
	,completedday.[Day.of.Week] AS 'Day of Week Completed'
	,te.[Turnaround (calendar days)]
	,(SELECT COUNT(*)
	FROM lkp_calendar dy
	WHERE dy.[Working.Day] = 1 --working days only
	AND dy.[Date] > te.RequestedDate
	AND dy.[Date] < te.CompletedDate)
		AS 'Turnaround (working days)'

FROM turnaroundexample te
LEFT JOIN lkp_calendar requestedday
	ON CAST(te.RequestedDate AS date) = requestedday.[Date]
LEFT JOIN lkp_calendar completedday
	ON CAST(te.completedDate AS date) = completedday.[Date]

WHERE te.RequestedDate >= '2020 MAR 01'
AND te.RequestedDate < '2020 MAR 08'

ORDER BY te.RequestedDate