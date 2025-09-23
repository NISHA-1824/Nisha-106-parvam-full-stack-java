-- NORMALIZATION --

CREATE TABLE Students_1NF (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50)
);

CREATE TABLE StudentCourses_1NF (
    Student_ID INT,
    Course_Name VARCHAR(50),
    Instructor_Name VARCHAR(50),
    PRIMARY KEY (Student_ID, Course_Name)  
);

INSERT INTO Students_1NF VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Alex Brown');

select * from Students_1NF

INSERT INTO StudentCourses_1NF VALUES
(1, 'Math',      'Mr. Alan'),
(1, 'Physics',   'Mrs. Smith'),
(2, 'Math',      'Mr. Alan'),
(3, 'Physics',   'Mrs. Smith'),
(3, 'Chemistry', 'Dr. White');

CREATE TABLE Courses_2NF (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Instructor_Name VARCHAR(50)
);

INSERT INTO Courses_2NF VALUES
(101, 'Math', 'Mr. Alan'),
(102, 'Physics', 'Mrs. Smith'),
(103, 'Chemistry', 'Dr. White');

CREATE TABLE StudentCourses_2NF (
    Student_ID INT,
    Course_ID INT,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students_1NF(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses_2NF(Course_ID)
);

INSERT INTO StudentCourses_2NF VALUES
(1, 101),
(1, 102),
(2, 101),
(3, 102),
(3, 103);

CREATE TABLE Instructors_3NF (
    Instructor_ID INT PRIMARY KEY,
    Instructor_Name VARCHAR(50)
);

INSERT INTO Instructors_3NF VALUES
(1, 'Mr. Alan'),
(2, 'Mrs. Smith'),
(3, 'Dr. White');

CREATE TABLE Courses_3NF (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Instructor_ID INT,
    FOREIGN KEY (Instructor_ID) REFERENCES Instructors_3NF(Instructor_ID)
);

INSERT INTO Courses_3NF VALUES
(101, 'Math', 1),
(102, 'Physics', 2),
(103, 'Chemistry', 3);
