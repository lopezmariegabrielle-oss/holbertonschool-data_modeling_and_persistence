SELECT instructors.name, courses.title
FROM instructors
LEFT JOIN courses ON instructors.id = courses.instructor_id
ORDER BY instructor.name ASC, course.title ASC;
