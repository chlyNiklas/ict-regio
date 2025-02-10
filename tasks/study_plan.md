# Study Planner Project Document

## Overview of Features
The Study Planner desktop application allows users to organize study sessions, track their progress, and manage courses effectively. The key features include:
- **User Authentication**: Secure registration and login for personalized access.
- **Course Management**: Add, edit, or delete courses with details like name and description.
- **Study Sessions**: Create, view, modify, or delete study sessions linked to specific courses, including duration and date/time.
- **Progress Tracking**: Log time spent studying each course and visualize progress through a simple chart.
- **Export Functionality**: Export progress data in CSV or PDF format for review or sharing.

## Database Design
The application uses an SQLite database with the following tables:

### Users Table
| Column | Type     | Description           |
|--------|----------|-----------------------|
| id     | INTEGER  | Primary Key           |
| username | TEXT   | Unique user identifier |
| password | TEXT   | Hashed user password  |

### Courses Table
| Column      | Type    | Description               |
|-------------|---------|---------------------------|
| id          | INTEGER | Primary Key               |
| course_name | TEXT    | Name of the course        |
| description | TEXT    | Detailed course information |

### StudySessions Table
| Column       | Type     | Description                     |
|--------------|----------|---------------------------------|
| id           | INTEGER  | Primary Key                     |
| user_id      | INTEGER  | Foreign Key to Users table      |
| course_id    | INTEGER  | Foreign Key to Courses table    |
| duration     | INTEGER  | Duration in minutes             |
| date         | DATE    | Date of the study session       |
| time         | TIME    | Start time of the session       |

### Progress Table
| Column      | Type     | Description                     |
|-------------|----------|---------------------------------|
| id          | INTEGER  | Primary Key                     |
| user_id     | INTEGER  | Foreign Key to Users table      |
| course_id   | INTEGER  | Foreign Key to Courses table    |
| time_spent  | INTEGER  | Total minutes studied            |
| date        | DATE    | Date of the study session       |

## Feature Descriptions

### Feature-1: User Authentication
**User Story:**  
As a user, I want to register and log in securely so that I can access my personalized study planner.

**Acceptance Criteria:**
1. New users can create an account with a username and password.
2. Registered users can log in using their credentials.
3. Passwords are stored as hashed values for security.
4. Session management ensures only logged-in users access features.

**Time Estimation:** 0.5 hours

### Feature-2: Course Management
**User Story:**  
As a student, I need to manage my courses so that I can organize my study sessions effectively.

**Acceptance Criteria:**
1. Users can add new courses with names and descriptions.
2. Existing courses can be edited or deleted.
3. All courses are listed in an organized manner for easy access.

**Time Estimation:** 1 hour

### Feature-3: Study Sessions
**User Story:**  
As a student, I want to plan my study sessions so that I can manage my time effectively.

**Acceptance Criteria:**
1. Users can create new study sessions linked to specific courses.
2. Each session includes duration, date, and time.
3. Users can view, modify, or delete existing sessions.
4. Notifications remind users of upcoming sessions.

**Time Estimation:** 0.75 hours

### Feature-4: Progress Tracking
**User Story:**  
As a student, I want to track my study progress so that I can monitor my productivity.

**Acceptance Criteria:**
1. Users can log time spent on each course.
2. A summary of total time per course is available.
3. Visual representation (chart) shows weekly study distribution.

**Time Estimation:** 0.5 hours

### Feature-5: Export Functionality
**User Story:**  
As a student, I want to export my progress data so that I can review or share it elsewhere.

**Acceptance Criteria:**
1. Progress data can be exported in CSV format.
2. PDF reports include study time and session details.
3. Exported files contain clear headers and formatted data.

**Time Estimation:** 0.33 hours

## Total Time Estimate
The sum of all feature time estimations is **3 hours**, fitting within the project's 4-hour constraint, leaving room for testing and final adjustments.
