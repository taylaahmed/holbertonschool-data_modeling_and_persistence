SELECT courses.title AS course_title
FROM courses
INNER JOIN registrations ON registrations.course_id = courses.id
GROUP BY course_title
HAVING COUNT(registrations.student_id) > (
    SELECT AVG(enrollment_count)
    FROM (
        SELECT COUNT(*) AS enrollment_count
        FROM registrations
        GROUP BY course_id
    ))
ORDER BY course_title ASC;