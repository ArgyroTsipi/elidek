SELECT  DISTINCT program_name
FROM program;

SELECT DISTINCT project.project_title, CONCAT(researcher_firstname, ' ' , researcher_lastname) AS researcher
FROM project
INNER JOIN works_on_project ON project.project_title = works_on_project.project_title
INNER JOIN researcher ON 
researcher.researcher_ID = works_on_project.researcher_ID;

SELECT DISTINCT CONCAT(researcher_firstname, ' ' , researcher_lastname) AS Full_Name, 
project.project_title AS Working_On,
begining AS Working_Since, 
duration AS Project_Duration_In_Days, 
executive.executive_name AS Funded_By
FROM 
researcher 
INNER JOIN works_on_project
	ON researcher.researcher_ID = works_on_project.researcher_ID
INNER JOIN project 
	ON project.project_title = works_on_project.project_title
INNER JOIN executive 
	ON executive.executive_name = project.executive_name;