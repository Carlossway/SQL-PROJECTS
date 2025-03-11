CREATE TABLE grades (
  grade_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT,
  course_id INT,
  grade DECIMAL(5,2),
  FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
SHOW TABLES;