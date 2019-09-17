SELECT count(assistance_requests.*) as total_assistances, students.name as name
FROM assistance_requests
JOIN students ON students.id = student_id
GROUP BY students.name
HAVING name = 'Elliot Dickinson';