SELECT name AS student_name, title AS course_title
FROM students
INNER JOIN enrollments ON students.id =  enrollments.student_id
INNER JOIN courses ON courses.id = enrollments.course_id
ORDER BY student_name, course_title;
