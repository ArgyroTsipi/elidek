SELECT researcher_ID, COUNT(researcher_ID) AS totalprojects 
FROM(
    SELECT r.researcher_ID,w.project_title 
    FROM researcher AS r 
	JOIN works_on_project AS w 
		ON r.researcher_ID = w.researcher_ID 
    WHERE r.birthday>'1982-01-01') AS s
WHERE (project_title) in (
SELECT DISTINCT p.project_title 
FROM works_on_project as w 
	JOIN project AS p 
    ON w.project_title=p.project_title AND p.ending<>'0000-00-00'
)
GROUP BY researcher_ID
ORDER BY totalprojects desc
limit 6;
