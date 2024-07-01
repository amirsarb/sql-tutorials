SELECT student_id, course_id,
ELT(
CASE grade
WHEN 'A+' THEN 1
WHEN 'A' THEN 2
WHEN 'B+' THEN 3
WHEN 'B' THEN 4
WHEN 'C' THEN 5
ELSE 6
END,
'SUPER', 'EXCELLENT', 'GOOD', 'SATISFACTORY', 'NEEDS IMPROVEMENT', 'POOR'
) AS grade_remarks
FROM EXAM;