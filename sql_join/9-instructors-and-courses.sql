SELECT courses.title AS course_title, instructors.name AS instructor_name
FROM instructors
LEFT JOIN courses ON instructors.id = courses.instructor_id
ORDER BY instructor_name ASC, course_title ASC;
