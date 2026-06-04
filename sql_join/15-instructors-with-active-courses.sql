SELECT registrations.id AS registration_id, students.name AS student_name, course.title AS course_title
FROM registrations
LEFT JOIN students ON registrations.student_id = students.id
LEFT JOIN courses ON registrations.course_id = courses.id
ORDER BY registration_id ASC;
