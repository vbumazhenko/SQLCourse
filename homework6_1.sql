SELECT
	Students.name AS studentName,
	SUM(Courses.duration) AS sumDuration
FROM 
	Students AS Students
		LEFT JOIN Subscriptions AS Subscriptions
			LEFT JOIN Courses AS Courses
			ON Subscriptions.course_id = Courses.id
		ON Students.id = Subscriptions.student_id
GROUP BY
	studentName;