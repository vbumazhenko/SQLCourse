SELECT
	Courses.type AS type,
	AVG(Teachers.salary) AS avgSalary
FROM
	Courses AS Courses
		LEFT JOIN Teachers AS Teachers
		ON Courses.teacher_id = Teachers.id
GROUP BY type;
