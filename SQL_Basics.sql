CREATE DATABASE Student_Managment;
USE Student_Managment;
CREATE TABLE Students(
Std_id INT PRIMARY KEY,
First_name VARCHAR(50),
Last_name VARCHAR(50),
Email VARCHAR(50) UNIQUE
);
CREATE TABLE Courses(
Course_id VARCHAR(50)PRIMARY KEY ,
Course_name VARCHAR(50),
Instructor VARCHAR(50),
Credits INT 
);
CREATE TABLE Enrollment(
Enrollment_id VARCHAR(50) PRIMARY KEY,
Std_id INT,
Course_id VARCHAR(50),
FOREIGN KEY(Std_id)REFERENCES Students(Std_id),
FOREIGN KEY(Course_id)REFERENCES Courses(Course_id)
);
INSERT INTO Students VALUES(1,'Sania','Imran','sania@gmail.com'),
(2,'Ayesha','Hassan','ayesha23@gmail.com'),
(3,'Zoha','Kamil','zoha@gmail.com'),
(4,'Laiba','Navaid','laiba@gmail.com');

INSERT INTO Courses VALUES('CS-451','Data Structures & Algorithm','MS Maryam',4),
('CS-453','Software Engineering fundamentals','Dr Shaista Raees',3),
('CS-455','Computer Organization & Assmbly Language','Mr Taha Bin Niaz',3),
('CS-457','Multivariable Calculus','Sana Mukhtar',3),
('CS-459','Probability & Statistics ','Ms Humera Bashir',3),
('CS-461','Urdu','MMr Salman',2);

INSERT INTO Enrollment VALUES('b2411001',1,'CS-451'),
('b2411002',2,'CS-451'),
('b2411003',3,'CS-451'),
('b2411004',4,'CS-451');

SELECT *FROM Students;
SELECT *FROM Courses;
SELECT *FROM Enrollment