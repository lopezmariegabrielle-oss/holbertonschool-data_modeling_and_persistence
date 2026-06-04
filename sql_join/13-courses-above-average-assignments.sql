SELECT courses.title
FROM courses
INNER JOIN assignments ON courses.id = assignments.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(assignments.id) > (
    SELECT COUNT(assignments.id) * 1.0 / COUNT(DISTINCT courses.id) 
    FROM courses 
    LEFT JOIN assignments ON courses.id = assignments.course_id
)
ORDER BY courses.title ASC;