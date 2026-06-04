SELECT courses.title
FROM courses
INNER JOIN assignments ON courses.id = assignments.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(assignments.id) > (
    SELECT COUNT(id) / COUNT(DISTINCT course_id) 
    FROM assignments
)
ORDER BY courses.title ASC;