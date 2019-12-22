SELECT
	name
FROM (SELECT name FROM Students ORDER BY age LIMIT 3) AS YoungStudents

UNION

SELECT
	name
FROM (SELECT name FROM Teachers ORDER BY age DESC LIMIT 3) AS OldTeachers

UNION

SELECT
	name
FROM (SELECT name FROM Courses ORDER BY duration DESC LIMIT 3) AS LongCourses;
