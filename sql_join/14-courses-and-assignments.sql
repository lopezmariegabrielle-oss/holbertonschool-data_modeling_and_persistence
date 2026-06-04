SELECT courses.title AS courses_title, assignment.title AS assignment_title
FROM courses
LEFT JOIN assignements ON courses.id = assignments.course_id
ORDER BY course_title ASC, assignment_title ASC;