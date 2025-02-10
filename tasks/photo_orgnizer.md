# Project Document: TaskMinder - A Simple Todo List Application

## Overview of Features
TaskMinder is a desktop application designed to help users manage their tasks efficiently. The app provides features such as adding new tasks, displaying all tasks, marking tasks as completed, deleting tasks, and exporting the task list to CSV.

## Requirements

### Database and Its Tables
- **Database Name:** `tasks.db`
- **Table Name:** `tasks_table`
  - **Columns:**
    - `TaskID` (Primary Key, Auto Increment)
    - `Title` (Text, Not Null)
    - `Description` (Text)
    - `DueDate` (Date)
    - `CompletionStatus` (Boolean, Default False)
    - `Priority` (Integer, 1-5)

### Feature Breakdown

#### Feature 1: Add a New Task
- **User Story:** As a user, I want to add a new task with all necessary details.
- **Acceptance Criteria:**
  - GUI window with fields for title, description, due date, priority.
  - Save button adds the task to the database.
  - Title is mandatory; others are optional.
- **Time Estimation:** 30 minutes.

#### Feature 2: Display All Tasks
- **User Story:** As a user, I want to view all tasks in a sortable table.
- **Acceptance Criteria:**
  - Table displays all task details.
  - Sort by due date or priority.
- **Time Estimation:** 45 minutes.

#### Feature 3: Mark Task as Completed
- **User Story:** As a user, I want to mark a task as completed.
- **Acceptance Criteria:**
  - Checkbox toggles completion status in the database.
  - Visual feedback when marked.
- **Time Estimation:** 20 minutes.

#### Feature 4: Delete Task
- **User Story:** As a user, I want to delete tasks.
- **Acceptance Criteria:**
  - Select and delete one or more tasks.
  - Confirm deletion dialog.
- **Time Estimation:** 15 minutes.

#### Feature 5: Export Task List
- **User Story:** As a user, I want to export tasks to CSV.
- **Acceptance Criteria:**
  - Choose filename and location via dialog.
  - Export all task details in CSV format.
- **Time Estimation:** 30 minutes.

## Implementation Notes

### Database Setup
Create `tasks.db` with the specified table structure. Use JDBC for database operations.

### GUI Structure
- Main window displays the tasks table.
- Menu options or buttons for adding, deleting, exporting tasks.
- Dialog windows for adding/editing tasks and export settings.

### Testing Strategy
- Test each feature immediately after implementation.
- Check error handling and edge cases (e.g., empty fields, invalid inputs).

## Time Management
Allocate 4 hours as follows:
1. Database setup: 30 minutes
2. GUI structure: 45 minutes
3. Add task feature: 30 minutes
4. Display tasks: 45 minutes
5. Mark completed: 20 minutes
6. Delete task: 15 minutes
7. Export CSV: 30 minutes
8. Testing and adjustments: 30 minutes

## Conclusion
TaskMinder will be a user-friendly, efficient todo application with essential features for managing tasks. By following the outlined plan, we ensure a smooth development process within the given time frame.
