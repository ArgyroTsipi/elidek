SELECT T.scientific_field_name AS field_1 , S.scientific_field_name AS field_2, count(*) AS times 
FROM 
	   (SELECT project.project_title, scientific_field.scientific_field_name
		FROM project, project_scientific_field, scientific_field     
		WHERE project.project_title = project_scientific_field.project_title
        			AND scientific_field.scientific_field_name = 									project_scientific_field.scientific_field_name) as T,     
	   (SELECT project.project_title, scientific_field.scientific_field_name
		FROM project, project_scientific_field, scientific_field     
		WHERE project.project_title = project_scientific_field.project_title
       			AND project_scientific_field.scientific_field_name = 							scientific_field.scientific_field_name) as S
WHERE T.project_title = S.project_title AND T.scientific_field_name<>S.scientific_field_name 
group by S.scientific_field_name, T.scientific_field_name 
ORDER BY count(*) desc limit 5;
