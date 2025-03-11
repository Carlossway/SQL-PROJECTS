SELECT 
  s.stud_Fname AS First_Name, 
  s.stud_Sname AS Last_Name, 
  c.course_name, 
  g.grade 
FROM courses c
RIGHT JOIN grades g ON c.course_id = g.course_id
RIGHT JOIN students s ON g.student_id = s.student_id;
