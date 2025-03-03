USE `UniversityDB`;

-- Step 1: Insert data into courses table
INSERT INTO `Courses` (`CourseName`)
VALUES
   ('Introduction to Computer Science'),
   ('Calculus I'),
   ('Modern World History'),
   ('English Literature'),
   ('Data Structures');
USE `UniversityDB`;

-- Step 2: Insert data into enrollments table
INSERT INTO `Enrollments` (`StudentID`, `CourseID`, `EnrollmentDate`)
VALUES
   (1, 1, '2023-09-01'),
   (2, 2, '2023-09-01'),
   (1, 3, '2023-09-01'),
   (2, 4, '2023-09-02'),
   (2, 5, '2023-09-03');

USE `UniversityDB`;

-- Step 3: Select all columns from Students
SELECT * FROM `Students`;
USE `UniversityDB`;

-- Step 4: Select FirstName and LastName for students enrolled on '2023-09-01'
SELECT `FirstName`, `LastName`
FROM `Students`
WHERE `EnrollmentDate` = '2023-09-01';
USE `UniversityDB`;

-- Step 5: Join Students and Enrollments to list student enrollments
SELECT `s`.`FirstName`, `s`.`LastName`, `e`.`EnrollmentDate`, `c`.`CourseName`  -- Include CourseName
FROM `Students` AS `s`
INNER JOIN `Enrollments` AS `e` ON `s`.`StudentID` = `e`.`StudentID`
INNER JOIN `Courses` AS `c` ON `e`.`CourseID` = `c`.`CourseID`; -- Join with Courses table

-- Alternative (older, implicit join syntax - less preferred):
-- SELECT s.FirstName, s.LastName, e.EnrollmentDate, c.CourseName
-- FROM Students s, Enrollments e, Courses c
-- WHERE s.StudentID = e.StudentID AND e.CourseID = c.CourseID;
