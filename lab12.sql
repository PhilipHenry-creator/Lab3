

-- 1. Concatenate Course Name and Semester:
SELECT 
    course_name || ' - ' || semester AS course_info
FROM 
    courses;

-- 2. Find Courses with Labs on Fridays:
SELECT 
    course_id, 
    course_name, 
    lab_time
FROM 
    courses
WHERE 
    lab_time LIKE '%Friday%';

-- 3. Upcoming Assignments:
SELECT 
    *
FROM 
    assignments
WHERE 
    due_date > DATE('now');

-- 4. Count Assignments by Status:
SELECT 
    status, 
    COUNT(*) AS assignment_count
FROM 
    assignments
GROUP BY 
    status;

--5. Longest Course Name:
SELECT 
    course_name, 
    LENGTH(course_name) AS name_length
FROM 
    courses
ORDER BY 
    name_length DESC
LIMIT 1;

-- 6. Uppercase Course Names:
SELECT 
    UPPER(course_name) AS course_name_uppercase
FROM 
    courses;

-- 7. Assignments Due in September:
SELECT 
    title
FROM 
    assignments
WHERE 
    due_date LIKE '%-09-%';

-- 8. Assignments with Missing Due Dates:
SELECT 
    *
FROM 
    assignments
WHERE 
    due_date IS NULL;

-- Optional Tasks:

-- 1. Total Assignments per Course:
SELECT 
    courses.course_id, 
    COUNT(assignments.id) AS total_assignments
FROM 
    courses
LEFT JOIN 
    assignments 
ON 
    courses.course_id = assignments.course_id
GROUP BY 
    courses.course_id;

-- 2. Courses Without Assignments:
SELECT 
    courses.course_id, 
    courses.course_name
FROM 
    courses
LEFT JOIN 
    assignments 
ON 
    courses.course_id = assignments.course_id
WHERE 
    assignments.id IS NULL;



