SELECT title AS course_title
FROM courses
LEFT JOIN enrollments ON courses.id = enrollments.course_id
GROUP BY courses.id, title
HAVING COUNT(enrollments.student_id) > (
    SELECT AVG(total_students)
    FROM (
        SELECT COUNT(student_id) AS total_students
        FROM enrollments
        GROUP BY course_id
    ) AS subquery
)
ORDER BY course_title;
