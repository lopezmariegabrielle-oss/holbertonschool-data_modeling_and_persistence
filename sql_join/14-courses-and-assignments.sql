SELECT courses.title AS courses_title, assignments.title AS assignment_title
FROM courses
LEFT JOIN assignments ON courses.id = assignments.course_id
ORDER BY courses_title ASC, assignment_title ASC;