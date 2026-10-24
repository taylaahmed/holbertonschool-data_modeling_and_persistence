SELECT courses.title AS course_title, students.name AS student_name
FROM enrollments
LEFT JOIN courses ON enrollments.course_id = courses.id
LEFT JOIN students ON enrollments.student_id = students.id
ORDER BY course_title ASC, student_name ASC;