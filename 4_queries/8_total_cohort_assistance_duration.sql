SELECT cohorts.name as cohort,
sum(completed_at - started_at)
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY sum(completed_at - started_at)