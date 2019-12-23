SELECT
	t.name AS nameTeacher,
	AVG(COALESCE(s.age, 0)) AS avgAgeStudents
FROM
	Teachers t
		LEFT JOIN Courses c
			LEFT JOIN Subscriptions sub
				LEFT JOIN Students s
				ON sub.student_id = s.id
			ON c.id = sub.course_id
		ON c.teacher_id = t.id
GROUP BY nameTeacher;
