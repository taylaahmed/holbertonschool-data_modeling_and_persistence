SELECT courses.title AS course_title, COUNT(course_id)
FROM courses
LEFT JOIN registrations on registrations.course_id = courses.id
GROUP BY course_title
ORDER BY COUNT(course_id) DESC, course_title ASC;