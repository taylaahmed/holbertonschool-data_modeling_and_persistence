SELECT courses.title AS course_title, count(course_id)
FROM courses
LEFT JOIN enrollments on enrollments.course_id = courses.id
GROUP BY course_title
ORDER BY count(course_id) DESC, course_title ASC