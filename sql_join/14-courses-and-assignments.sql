SELECT courses.title, assignments.title AS assignment_title
FROM courses
LEFT JOIN assignments ON courses.id = assignments.course_id
ORDER BY courses.title ASC, assignment.title ASC;