SELECT project.project_title, scientific_field.scientific_field_name, researcher.researcher_firstname, researcher.researcher_lastname FROM scientific_field
INNER JOIN project_scientific_field
	ON scientific_field.scientific_field_name = project_scientific_field.scientific_field_name
INNER JOIN project
	ON project.project_title = project_scientific_field.project_title
INNER JOIN works_on_project
	ON project.project_title = works_on_project.project_title
INNER JOIN researcher
	ON researcher.researcher_ID = works_on_project.researcher_ID
WHERE project.ending > 2022-06-04
ORDER BY scientific_field.scientific_field_name;