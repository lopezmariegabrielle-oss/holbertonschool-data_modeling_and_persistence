SELECT title AS course_title, name AS student_name
FROM courses
LEFT JOIN enrollments ON courses.id = enrollments.course_id
LEFT JOIN students ON students.id = enrollments.student_id
ORDER BY course_title, student_name;
