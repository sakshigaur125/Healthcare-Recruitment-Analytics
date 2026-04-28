--1. Which roles are most in-demand?
SELECT Job_Role, COUNT(*) AS Total_Applications
FROM Applications
GROUP BY Job_Role
ORDER BY Total_Applications DESC;

--2. How many candidates are currently "Hired"?
SELECT Job_Role, COUNT(*) AS Hired_Candidates
FROM Applications
WHERE Application_status = 'Hired'
GROUP BY Job_Role;

--3. Which institutions have the most vacancies?
SELECT Institution_Name, SUM(Vacancy_Count) AS Total_Vacancies
FROM Jobs
WHERE Status = 'Open'
GROUP BY Institution_Name
ORDER BY Total_Vacancies DESC;

--4. Which candidates have the most experience?
SELECT Candidate_name, Experience_years, Specialization
FROM Candidates
ORDER BY Experience_years DESC;

--5. What is the average salary expectation per role?
SELECT Job_role, AVG(Expected_salary_package) AS Avg_Salary_Request
FROM Applications
GROUP BY Job_role;

--6. Where are your candidates located?
SELECT City, COUNT(*) AS Candidate_Count
FROM Candidates
GROUP BY City
ORDER BY Candidate_Count DESC;

--7. Which candidates have the highest expected salary?
SELECT TOP 5 Candidate_name, Expected_salary_package, Job_role
FROM Applications
ORDER BY Expected_salary_package DESC;