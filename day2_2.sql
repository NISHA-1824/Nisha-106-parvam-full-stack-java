-- 2NF --

show tables;

CREATE TABLE Courses_2NF (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Instructor_Name VARCHAR(50)
);

desc courses_2nf;

INSERT INTO Courses_2NF VALUES
(101, 'Math', 'Mr. Alan'),
(102, 'Physics', 'Mrs. Smith'),
(103, 'Chemistry', 'Dr. White');

select * from courses_2nf;

CREATE TABLE StudentCourses_2NF (
    Student_ID INT,
    Course_ID INT,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students_1NF(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses_2NF(Course_ID)
);

desc StudentCourses_2NF;

INSERT INTO StudentCourses_2NF VALUES
(1, 101),
(1, 102),
(2, 101),
(3, 102),
(3, 103);

select * from StudentCourses_2NF;

show tables;