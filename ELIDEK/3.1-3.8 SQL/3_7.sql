SELECT samecapitals, executive_name
FROM project 
JOIN company 
ON project.organization_abbreviation = company.organization_abbreviation
order by samecapitals desc
limit 5;