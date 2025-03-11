SELECT 
  s.stud_Fname AS First_Name, 
  s.stud_Sname AS Last_Name, 
  c.course_name, 
  g.grade 
FROM students s
LEFT JOIN grades g ON s.student_id = g.student_id
LEFT JOIN courses c ON g.course_id = c.course_id;
