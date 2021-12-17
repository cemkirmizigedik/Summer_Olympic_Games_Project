--Cleansed data set for me 
SELECT [ID]
	,[Name] AS [Competitor Name]
	,CASE 
		WHEN [Sex] = 'M'
			THEN 'Male'
		ELSE 'Female'
		END AS SEX
	,[Age]
	,CASE 
		WHEN [Age] < 18
			THEN '18-'
		WHEN [Age] BETWEEN 18
				AND 25
			THEN '18-25'
		WHEN [Age] BETWEEN 25
				AND 30
			THEN '25-30'
		WHEN [Age] > 30
			THEN '30+'
		END AS [Age Grouping]
	,[Height]
	,[Weight]
	,[NOC] AS [Nation Code]
	,CHARINDEX(' ', Games) - 1 AS Example_1
	,CHARINDEX(' ', REVERSE(Games)) - 1 AS Example_2
	,LEFT(Games, CHARINDEX(' ', Games, 1)) AS Yearr
	,[Games]
	,[City]
	,[Sport]
	,[Event]
	,CASE 
		WHEN Medal = 'NA'
			THEN 'Not registered'
		ELSE Medal
		END AS Medal
FROM athletes_event_results
WHERE RIGHT(Games, CHARINDEX(' ',REVERSE(Games)) - 1 )  = 'Summer'

