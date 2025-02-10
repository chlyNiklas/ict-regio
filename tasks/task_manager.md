# **Task Manager**: Track tasks with priorities and due dates.

## Overview
The Task Manager desktop application allows users to track tasks with priorities and due dates using an SQL database. The project is designed to be completed in 4 hours, with a focus on core functionality: adding, displaying, updating, and deleting tasks.

## Requirements
- **Database:** SQLite will be used for its simplicity and integration capabilities.
- **Features:**
  1. Add New Task
  2. Display All Tasks with Sorting and Filtering
  3. Update/Edit a Task
  4. Delete a Task

## Feature Breakdown

### Feature 1: Add New Task
**User Story:** As a user, I want to add new tasks so that I can manage my work efficiently.

**Acceptance Criteria:**
- The form includes fields for title, description, priority (high/medium/low), due date, and completion status.
- Tasks are saved in the database upon submission.

**Time Estimation:** 30 minutes

### Feature 2: Display All Tasks with Sorting
**User Story:** As a user, I want to view all my tasks so that I can manage them effectively.

**Acceptance Criteria:**
- Tasks are displayed in a table format.
- Users can sort by priority or due date and filter completed tasks.

**Time Estimation:** 30 minutes

### Feature 3: Update/Edit Task
**User Story:** As a user, I want to edit existing tasks so that I can update their details.

**Acceptance Criteria:**
- An edit form allows changing task attributes.
- Changes are saved in the database upon submission.

**Time Estimation:** 30 minutes

### Feature 4: Delete Task
**User Story:** As a user, I want to delete tasks so that my list remains current.

**Acceptance Criteria:**
- Users can select and delete tasks with confirmation.
- Deleted tasks are removed from the database.

**Time Estimation:** 30 minutes

## Approach

1. **Database Setup:** Design and create the `tasks` table with necessary columns (id, title, description, priority, due_date, completed, created_at).
2. **UI Development:**
   - Create a form for adding tasks with input fields.
   - Implement a display area with sorting options.
   - Develop edit and delete functionalities.
3. **Integration:** Ensure UI elements interact correctly with the database.
4. **Testing:** Validate each feature post-development to ensure functionality.

