SELECT
	c.type AS type,
	AVG(t.salary) AS avgSalary
FROM
	Courses c
		LEFT JOIN Teachers t
		ON c.teacher_id = t.id
GROUP BY type;
