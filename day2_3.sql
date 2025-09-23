-- 3 NF --

CREATE TABLE Instructors_3NF (
    Instructor_ID INT PRIMARY KEY,
    Instructor_Name VARCHAR(50)
);

desc Instructors_3NF;

INSERT INTO Instructors_3NF VALUES
(1, 'Mr. Alan'),
(2, 'Mrs. Smith'),
(3, 'Dr. White');

select * from Instructors_3NF;

CREATE TABLE Courses_3NF (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Instructor_ID INT,
    FOREIGN KEY (Instructor_ID) REFERENCES Instructors_3NF(Instructor_ID)
);

desc Courses_3NF;

INSERT INTO Courses_3NF VALUES
(101, 'Math', 1),
(102, 'Physics', 2),
(103, 'Chemistry', 3);

select * from Courses_3NF;