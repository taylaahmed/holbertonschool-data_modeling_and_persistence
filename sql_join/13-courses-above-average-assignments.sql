SELECT courses.title AS course_title
FROM courses
INNER JOIN assignments ON assignments.course_id = courses.id
GROUP BY courses.id, courses.title
HAVING COUNT(assignments.id) > (
    SELECT AVG(number_assignments)
    FROM (
        SELECT COUNT(assignments.id) AS number_assignments
        FROM courses
        INNER JOIN assignments ON assignments.course_id = courses.id
        GROUP BY courses.id
    ))
ORDER BY course_title ASC;