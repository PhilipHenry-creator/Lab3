

-- 1. Assignments for a Specific Course
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234'

--2. Earliest Assignment Due Date
SELECT MIN(due_date) AS earliest_due_date 
FROM assignments;

--3. Latest Assignment Due Date
SELECT MAX(due_date) AS latest_due_date 
FROM assignments;

--4. Assignments Due on a Specific Date
SELECT title, course_id 
FROM assignments 
WHERE due_date = '2024-10-08';

--5. Find All Assignments Due in October
SELECT title, due_date 
FROM assignments 
WHERE due_date LIKE '2024-10%';

--6 Find the Most Recent Completed Assignment
SELECT MAX(due_date) AS most_recent_completed 
FROM assignments 
WHERE status = 'Completed';


--Optional Tasks

--Count of "Not Started" Assignments
SELECT COUNT(*) AS not_started_count 
FROM assignments 
WHERE status = 'Not Started';

--Write a Query that Joins the Two TablesSQL 
SELECT courses.course_id, courses.course_name, assignments.title, assignments.due_date 
FROM courses 
JOIN assignments 
  ON courses.course_id = assignments.course_id;

