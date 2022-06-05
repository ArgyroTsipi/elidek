SELECT 
CONCAT(researcher.researcher_firstname, ' ' , researcher.researcher_lastname) AS Researcher_Name, 
COUNT(works_on_project.project_title) AS Total_Projects 
FROM researcher INNER JOIN works_on_project 
ON researcher.researcher_id = works_on_project.researcher_id 
INNER JOIN project ON works_on_project.project_title = project.project_title 
LEFT JOIN deliverable ON project.project_title = deliverable.project_title  
WHERE deliverable.delivery_date_from_project IS NULL 
GROUP BY Researcher_Name ASC 
HAVING Total_Projects >= 5;