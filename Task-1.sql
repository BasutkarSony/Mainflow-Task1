# Creating a Database.
create database studentmanagement;

# Creating a table students
create table students(
studentId Integer Primary Key auto_increment Not NULL,
Name varchar(50),
Gender varchar(1),
Age integer,
Grade varchar(10),
MathScore integer,
ScienceScore integer,
EnglishScore integer
);

# Inserting Data to table students
Insert into students (studentid, Name, Gender, Age, Grade, Mathscore, ScienceScore, EnglishScore)values
(1,'Varun', 'M', 15, 'A', 90, 85, 88),
(2,'Alekhya', 'F', 14, 'B', 75, 80, 72),
(3,'Sony', 'F', 16, 'A', 85, 89, 91),
(4,'Sudeep', 'M', 15, 'C', 60, 65, 70),
(5,'Navoday', 'M', 14, 'B', 78, 74, 80),
(6,'Lahari', 'F', 17, 'A', 95, 92, 89),
(7,'Vamshi', 'M', 16, 'B', 82, 79, 84),
(8,'Varshitha', 'F', 15, 'C', 67, 70, 73),
(9,'Abhishek', 'M', 14, 'D', 50, 55, 60),
(10,'Soumya', 'F', 16, 'A', 88, 90, 87);

# Displaying all students and their details
select * from students;

# Calculating the average scores for each subject
select
avg(MathScore) AS AvgMathScore,
avg(ScienceScore) AS AvgScienceScore,
avg(EnglishScore) AS AvgEnglishScore
From students;

# Finding the students with the highest total score
select 
studentId,
Name, (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
order by TotalScore desc;

# Counting the number of students in each grade
select
Grade,
count(*) AS StudentCount
From students
group by Grade
order by Grade;

# Finding the average score for male and female students
select
avg(MathScore) AS AvgMathScore,
avg(ScienceScore) AS AvgScienceScore,
avg(EnglishScore) AS AvgEnglishScore
From students
GROUP BY Gender;

# Identifying students with a Math score above 80
select
Name, MathScore
From students
where MathScore>80;

# Updating the grade of a student with a specific Student ID
update students
set Grade='B'
where studentID=9;
