SELECT DISTINCT instructors.name
FROM instructors
LEFT JOIN courses ON instructors.id = courses.instructor_id
LEFT JOIN registractions ON courses.id = registrations.course_id
ORDER BY instructors.name ASC;