SELECT title AS course_title
FROM courses
LEFT JOIN enrollments ON courses.id = enrollments.course_id
GROUP BY courses.id, title
HAVING COUNT(enrollments.student_id) > (
    SELECT AVG(enrolled_count)
    FROM (
        SELECT COUNT(enrollments.student_id) AS enrolled_count
        FROM courses
        LEFT JOIN enrollments ON courses.id = enrollments.course_id
        GROUP BY courses.id
    ) AS sous_requete
)
ORDER BY course_title;
