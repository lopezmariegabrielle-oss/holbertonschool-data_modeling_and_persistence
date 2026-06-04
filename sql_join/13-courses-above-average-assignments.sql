SELECT courses.title
FROM courses
INNER JOIN assignments ON courses.id = assignments.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(assignments.id) > (
    SELECT AVG(total_assignments)
    FROM (
        SELECT COUNT(id) AS total_assignments
        FROM assignments
        GROUP BY course_id
    ) AS subquery
)
ORDER BY courses.title ASC;