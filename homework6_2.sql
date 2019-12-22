SELECT
	Teachers.name AS nameTeacher,
	AVG(COALESCE(Students.age, 0)) AS avgAgeStudents
FROM
	Teachers AS Teachers
		LEFT JOIN Courses AS Courses
			LEFT JOIN Subscriptions AS Subscriptions
				LEFT JOIN Students AS Students
				ON Subscriptions.student_id = Students.id
			ON Courses.id = Subscriptions.course_id
		ON Courses.teacher_id = Teachers.id
GROUP BY nameTeacher;
