SELECT title AS course_title
FROM courses
LEFT JOIN enrollments ON courses.id = enrollments.course_id
GROUP BY courses.id, title
HAVING COUNT(enrollments.student_id) > (
    SELECT COUNT(*) FROM enrollments
) / (
    SELECT COUNT(*) FROM courses
)
ORDER BY course_title;
