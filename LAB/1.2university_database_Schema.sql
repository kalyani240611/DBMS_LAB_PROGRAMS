-- Create Students table
CREATE TABLE Students (
    StudentID VARCHAR(20),
    StudentName VARCHAR(50),
    Major VARCHAR(50)
);

-- Create Courses table
CREATE TABLE Courses (
    CourseID VARCHAR(20),
    CourseName VARCHAR(50),
    Credits INT
);

-- Create Enrollments table
CREATE TABLE Enrollments (
    StudentID VARCHAR(20),
    CourseID VARCHAR(20),
    EnrollmentDate DATE
);

-- Create Instructors table
CREATE TABLE Instructors (
    InstructorID INT,
    InstructorName VARCHAR(50),
    Phone BIGINT
);

-- Create Course_Instructors table
CREATE TABLE Course_Instructors (
    CourseID VARCHAR(20),
    InstructorID INT
);