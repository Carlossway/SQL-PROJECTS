SELECT 
  s.stud_Fname AS First_Name, 
  s.stud_Sname AS Last_Name, 
  c.course_name, 
  g.grade 
FROM grades g
JOIN students s ON g.student_id = s.student_id
JOIN courses c ON g.course_id = c.course_id;
