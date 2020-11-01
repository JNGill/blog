DROP TABLE IF EXISTS turnaroundexample
;

SELECT ipe.StartDate AS 'RequestedDate'
		,ipe.EndDate AS 'CompletedDate'
		,DATEDIFF(day, ipe.StartDate, ipe.EndDate) AS 'Turnaround (calendar days)'
		
INTO turnaroundexample
FROM episode ipe
