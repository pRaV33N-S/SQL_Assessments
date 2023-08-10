CREATE DATABASE OurExerciseDB
ON(NAME='OurExercise', FILENAME='D:\Raven\Practice Exercise\Phase02\Day01\OurExercise.mdf',
Size=24MB, FileGrowth=8MB)
LOG ON(NAME='OurExerciseLog', FILENAME='D:\Raven\Practice Exercise\Phase02\Day01\OurExerciseLog.ldf');

use OurExerciseDB;

CREATE TABLE studentData
(studentId INT,studentName NVARCHAR(50),courseCode NVARCHAR(50),RegistrationDate DATE,PRIMARY KEY(studentId,courseCode));

INSERT INTO studentData (studentId, studentName, courseCode, RegistrationDate) VALUES
(101, 'Karthik Kumar', 'ENG101', '2023-08-01'),
(102, 'Priya Rajan', 'MAT202', '2023-08-02'),
(103, 'Arjun Raman', 'SCI105', '2023-08-03'),
(104, 'Sneha Iyer', 'COM101', '2023-08-04'),
(105, 'Rajesh Kapoor', 'HIS202', '2023-08-05');

SELECT * From studentData;


