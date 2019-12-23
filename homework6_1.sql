SELECT
	s.name AS studentName,
	SUM(c.duration) AS sumDuration
FROM 
	Students s
		LEFT JOIN Subscriptions sub
			LEFT JOIN Courses c
			ON sub.course_id = c.id
		ON s.id = sub.student_id
GROUP BY
	studentName;