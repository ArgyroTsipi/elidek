CREATE VIEW Project_per_Researcher AS   
SELECT researcher_firstname, researcher_lastname, project.project_title AS Working_On 
FROM researcher 
LEFT JOIN works_on_project 
	ON researcher.researcher_ID = works_on_project.researcher_ID
LEFT JOIN project 
	ON project.project_title = works_on_project.project_title;


CREATE VIEW Phones_per_Organizations AS   
SELECT phoneno, organizations.organization_name AS Phones_Org 
FROM telephone 
INNER JOIN organizations 
	ON telephone.organization_abbreviation = organizations.organization_abbreviation