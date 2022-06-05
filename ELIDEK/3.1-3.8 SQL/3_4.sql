SELECT DISTINCT a.organization_abbreviation
FROM(
	SELECT r1.organization_abbreviation,count(r1.organization_abbreviation) AS c1,r1.years
	FROM (
		SELECT DISTINCT r.project_title, 										r.organization_abbreviation,r.begining,r.ending,YEAR(r.begining) AS years
		FROM project r) AS r1
	GROUP BY r1.organization_abbreviation,r1.years) AS a,
	(SELECT r1.organization_abbreviation,count(r1.organization_abbreviation) AS c1,r1.years
	FROM
		(SELECT DISTINCT 												r.project_title,r.organization_abbreviation,r.begining,r.ending,YEAR(r.begining) AS 			years
		FROM project r) AS r1
GROUP BY r1.organization_abbreviation,r1.years) AS b
WHERE ( a.c1=b.c1
	AND a.organization_abbreviation = b.organization_abbreviation 
	AND a.years=b.years+1);