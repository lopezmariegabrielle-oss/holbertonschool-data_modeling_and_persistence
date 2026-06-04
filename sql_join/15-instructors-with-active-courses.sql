SELECT DISTINCT instructors.name
FROM instructors
LEFT JOIN courses ON instructors.id = courses.instructor_id
LEFT JOIN registrations ON courses.id = registrations.course_id
ORDER BY instructors.name ASC;