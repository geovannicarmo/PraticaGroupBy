--1 
SELECT COUNT(experiences."endDate") AS currentExperiences
FROM experiences ;

--2
SELECT educations."userId" AS id, COUNT("courseId") AS educations
FROM educations

GROUP BY "userId";

--3
SELECT users.name, count(testimonials.id)
FROM testimonials
JOIN users
ON users.id = testimonials."writerId"

WHERE users.id = 435
GROUP BY users.name;

--4
SELECT  MAX(salary) AS maximumSalary, roles.name AS role
FROM jobs
JOIN roles
ON roles.id = jobs."roleId"

GROUP BY roles.name
ORDER BY maximumSalary ASC;

--Bônus
select  schools.name AS school, courses.name AS course, 
COUNT(educations."userId") AS studentsCount, 
status AS role
FROM educations
JOIN schools
ON schools.id = educations."schoolId"
JOIN courses
ON courses.id = educations."courseId"

WHERE status = 'ongoing' OR  status = 'finished'
GROUP BY courses.name, schools.name, status 
ORDER BY studentsCount DESC
LIMIT 3;
