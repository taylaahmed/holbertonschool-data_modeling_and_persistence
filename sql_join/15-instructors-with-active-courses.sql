SELECT instructors.name AS instructor_name
FROM instructors
WHERE  EXISTS (
    SELECT 1
    FROM courses
    INNER JOIN registrations ON registrations.course_id = courses.id
    WHERE courses.instructor_id = instructors.id
)

ORDER BY instructor_name ASC;