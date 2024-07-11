create database student_details;
-- Create Students table
CREATE TABLE Students (
    StudentID VARCHAR(100) NOT NULL,
    StudentName VARCHAR(100),
    PRIMARY KEY (StudentID)
);
-- Insert values into Students table
INSERT INTO Students (StudentID, StudentName) VALUES
('S1', 'John Doe'),
('S2', 'Jane Smith'),
('S3', 'Alice Johnson');

-- Create Courses table
CREATE TABLE Courses (
    CourseID VARCHAR(100) NOT NULL,
    CourseName VARCHAR(100),
    PRIMARY KEY (CourseID)
);

-- Insert values into Courses table
INSERT INTO Courses (CourseID, CourseName) VALUES
('C1', 'Mathematics'),
('C2', 'Science'),
('C3', 'Literature');

-- Create Enrollment table with foreign keys and cascade delete
CREATE TABLE Enrollment (
    EnrollmentID VARCHAR(100) NOT NULL,
    StudentID VARCHAR(100),
    CourseID VARCHAR(100),
    PRIMARY KEY (EnrollmentID),
    CONSTRAINT fk_student FOREIGN KEY (StudentID) REFERENCES Students(StudentID) ON DELETE CASCADE,
    CONSTRAINT fk_course FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) ON DELETE CASCADE
);

-- Insert values into Enrollment table
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID) VALUES
('E1', 'S1', 'C1'),
('E2', 'S2', 'C2'),
('E3', 'S3', 'C3');

-- Verify the data
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollment;

-- Delete a student from the Students table
DELETE FROM Students WHERE StudentID = 'S1';

-- Verify the Enrollment table after delete
SELECT * FROM Enrollment;






-- any all
CREATE TABLE blood_donation (
    ID VARCHAR(100) NOT NULL,
    age VARCHAR(100),
    donated  VARCHAR(100)
);
INSERT INTO blood_donation (ID, age,donated) VALUES
('1', '35','yes'),
('2', '32','yes'),
('3', '40','yes'),
('4', '39','yes');

SELECT age FROM blood_donation WHERE donated = "yes" ORDER BY age;

CREATE TABLE address (
    ID VARCHAR(100) NOT NULL,
    age VARCHAR(100),
    city  VARCHAR(100)
);
INSERT INTO address (ID, age,city) VALUES
('1', '35','kannur'),
('2', '32','kannur'),
('3', '22','selem'),
('4', '25','selem'),
('5', '23','kannur'),
('6', '39','kannur'),
('7', '40','selem'),
('8', '45','selem');

SELECT * FROM address;
SELECT age FROM address WHERE age > ANY(32,35,39,40);
SELECT age FROM address WHERE age > ANY(SELECT age FROM blood_donation WHERE donated = "yes" ORDER BY age);

-- all
SELECT age FROM address WHERE age > ALL(SELECT age FROM blood_donation WHERE donated = "yes" ORDER BY age);