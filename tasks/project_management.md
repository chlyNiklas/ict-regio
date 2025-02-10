# Project Management Tool: Desktop Application  

## Overview of Features  
The **Project Management Tool** is a desktop application designed to help users track projects, tasks, deadlines, and progress. The main features include:  
1. Create and manage multiple projects.  
2. Add, edit, and delete tasks within each project.  
3. Set deadlines for tasks and projects.  
4. Track the progress of individual tasks and overall projects.  
5. Export project data to CSV or PDF files for reporting purposes.  

The application will use a SQL database to store all project-related information, ensuring data persistence and easy access.  

---

## Requirements  

### Database and Its Tables  
The following tables will be created in the SQL database:  
1. **Projects**  
   - `project_id` (Primary Key)  
   - `name` (Project name)  
   - `description` (Brief description of the project)  
   - `start_date` (Date when the project starts)  
   - `end_date` (Expected completion date)  

2. **Tasks**  
   - `task_id` (Primary Key)  
   - `project_id` (Foreign Key to Projects table)  
   - `name` (Task name)  
   - `description` (Brief description of the task)  
   - `deadline` (Expected completion date for the task)  
   - `status` (Current status: Not Started, In Progress, Completed)  

3. **Users**  
   - `user_id` (Primary Key)  
   - `username`  
   - `password_hash`  

4. **Progress**  
   - `progress_id` (Primary Key)  
   - `task_id` (Foreign Key to Tasks table)  
   - `percentage_complete` (Integer value from 0-100)  
   - `update_time` (Timestamp of the last progress update)  

5. **Exports**  
   - `export_id` (Primary Key)  
   - `project_id` (Foreign Key to Projects table)  
   - `file_path` (Path where the exported file is saved)  
   - `export_time` (Timestamp of the export operation)  

---

## Feature Breakdown  

### **Feature 1: Create and Manage Projects**  
#### User Story  
As a project manager, I want to create and manage multiple projects so that I can organize my work efficiently.  

#### Acceptance Criteria  
- Users can add new projects with name, description, start date, and end date.  
- Existing projects can be viewed in a list.  
- Projects can be edited or deleted as needed.  

#### Time Estimation  
45 minutes  

---

### **Feature 2: Add/Edit/Delete Tasks**  
#### User Story  
As a project manager, I want to add, edit, and delete tasks within each project so that I can keep track of the work required for each project.  

#### Acceptance Criteria  
- Users can create new tasks with name, description, deadline, and status (Not Started, In Progress, Completed).  
- Tasks can be edited or deleted as needed.  
- Tasks are linked to their respective projects via `project_id`.  

#### Time Estimation  
40 minutes  

---

### **Feature 3: Track Deadlines**  
#### User Story  
As a project manager, I want to set and track deadlines for tasks and projects so that I can ensure timely completion of work.  

#### Acceptance Criteria  
- Deadlines can be set for both projects and tasks.  
- The application displays color-coded indicators (e.g., red for overdue, yellow for approaching) for deadlines.  
- Users receive pop-up notifications when a deadline is approaching or has passed.  

#### Time Estimation  
35 minutes  

---

### **Feature 4: Track Progress**  
#### User Story  
As a project manager, I want to track the progress of tasks and projects so that I can monitor the overall status of each project.  

#### Acceptance Criteria  
- Users can update the progress percentage for each task (0-100%).  
- The application stores the history of progress updates.  
- A visual progress bar displays the completion status of each task and project.  

#### Time Estimation  
30 minutes  

---

### **Feature 5: Export Project Data**  
#### User Story  
As a project manager, I want to export project data so that I can share it with team members or create reports.  

#### Acceptance Criteria  
- Users can export project data (including tasks and deadlines) as CSV or PDF files.  
- The exported file includes all relevant information about the project.  
- The application saves the export history in the `Exports` table for future reference.  

#### Time Estimation  
25 minutes  

---

## Total Time Estimate: 175 minutes (2 hours, 55 minutes)
