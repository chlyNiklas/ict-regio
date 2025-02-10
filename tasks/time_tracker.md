# Time Tracking Application: Feature Document

## Overview of Features

The Time Tracking Application is a desktop application designed to help users track time spent on various tasks. The primary goal is to allow users to log, manage, and report on their task activities efficiently. This project will be implemented using a SQL database for data storage.

Key features include:
- User registration and login
- Task creation and tracking
- Project management
- Time reporting
- Data export

## Requirements

### Database and Tables

The application will use a SQL database with the following tables:

1. **Users**
   - Fields: user_id (Primary Key), username, password_hash, email

2. **Projects**
   - Fields: project_id (Primary Key), user_id (Foreign Key), name, description

3. **Tasks**
   - Fields: task_id (Primary Key), project_id (Foreign Key), name, description, start_time, end_time, status (Active/Completed)

4. **Export History**
   - Fields: export_id (Primary Key), user_id (Foreign Key), export_time, file_path

## Features

### Feature 1: User Registration & Login
#### User Story:
As a new user, I want to register an account and log in securely so that I can access the time tracking application.

#### Acceptance Criteria:
- Users can create accounts with unique usernames.
- Passwords are stored as hashed values for security.
- Existing users can log in using their credentials.
- Failed login attempts are tracked and limited.

#### Time Estimation:
1 hour

### Feature 2: Task Creation & Tracking
#### User Story:
As a user, I want to create tasks, start tracking time on them, and stop the timer when I'm done so that I can keep track of how much time I spend on each task.

#### Acceptance Criteria:
- Users can create new tasks with name and description.
- Tasks can be started (start_time recorded) and stopped (end_time recorded).
- Task status can be marked as Active or Completed.
- Users can view all their tasks in a list.

#### Time Estimation:
40 minutes

### Feature 3: Project Management
#### User Story:
As a user, I want to organize my tasks into projects so that I can manage related tasks together and see how much time I've spent on each project overall.

#### Acceptance Criteria:
- Users can create new projects with name and description.
- Tasks are linked to a specific project.
- Users can view all their projects and the total time spent on each.

#### Time Estimation:
30 minutes

### Feature 4: Time Reporting
#### User Story:
As a user, I want to generate reports on how much time I've spent on tasks so that I can review my productivity and provide reports to stakeholders.

#### Acceptance Criteria:
- Users can generate daily/weekly/monthly reports.
- Reports show total time spent per task and per project.
- Reports can be exported in PDF format.

#### Time Estimation:
1 hour

### Feature 5: Export Data
#### User Story:
As a user, I want to export my data so that I can use it outside of the application or backup my records.

#### Acceptance Criteria:
- Users can export their task and project data.
- Data is exported in CSV format.
- The export history is recorded in the database.

#### Time Estimation:
25 minutes

## Summary
This feature document outlines the key functionalities required for a time tracking application. The estimated development time for all features combined is approximately 3 hours and 35 minutes, which is within the 3.5-hour constraint.
