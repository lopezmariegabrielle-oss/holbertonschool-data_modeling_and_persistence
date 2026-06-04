SELECT DISTINCT students.name AS student_name
FROM students
INNER JOIN registrations ON registrations.student_id = students.id
ORDER BY student_name ASC;
