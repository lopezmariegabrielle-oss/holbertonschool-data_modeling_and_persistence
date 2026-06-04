SELECT students.name AS student_name, courses.title AS course_title
FROM students
JOIN registrations ON students.id = registrations.student_id
JOIN courses ON registrations.course_id = courses.id
ORDER BY student_name ASC, course_title ASC;