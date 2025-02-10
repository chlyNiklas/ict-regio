# Fitness Tracker Project Document

## Overview of Features

The Fitness Tracker desktop application allows users to log their workouts and track their progress over time. The following features are included:

1. **User Authentication**: Users can create an account, login, and logout.
2. **Workout Logging**: Users can record details about their workouts, including type, duration, calories burned, and notes.
3. **Progress Tracking**: Users can view a history of their past workouts and track changes over time.
4. **Workout Types Management**: Users can add, edit, or delete workout types (e.g., cardio, strength training).
5. **Export Feature**: Users can export their workout data in CSV format for backup or further analysis.

## Requirements

### Database
- The application uses a SQL database to store user and workout information.
- Tables:
  - `users`: Stores user details (username, password, email, date_of_birth).
  - `workout_types`: Stores predefined workout types (e.g., cardio, strength training).
  - `workout_log`: Logs each workout session with details such as type, duration, calories burned, and notes.
  - `progress_notes`: Tracks additional progress-related comments or goals.

## Feature Breakdown

### Feature-1: User Authentication
**User Story:** As a user, I want to create an account so that I can securely access my fitness data.

**Acceptance Criteria:**
- Users can register with a username, password, email, and date of birth.
- The application validates inputs (e.g., ensuring the password meets complexity requirements).
- Users are redirected to the main dashboard upon successful login.

**Time Estimation:** 20 minutes

---

### Feature-2: Workout Logging
**User Story:** As a user, I want to log my workouts so that I can keep track of my exercise routine.

**Acceptance Criteria:**
- Users can select a workout type from predefined options or add a new type.
- The application captures details such as date, duration (in minutes), calories burned, weight lifted (optional), reps, sets, and notes.
- Workout data is stored in the `workout_log` table.

**Time Estimation:** 45 minutes

---

### Feature-3: Viewing Workout History
**User Story:** As a user, I want to view my workout history so that I can track my progress over time.

**Acceptance Criteria:**
- Users can view a list of past workouts sorted by date.
- Each entry displays details such as workout type, duration, calories burned, and notes.
- The application allows users to filter or sort the workout history (e.g., by date or workout type).

**Time Estimation:** 30 minutes

---

### Feature-4: Workout Types Management
**User Story:** As a user, I want to manage workout types so that I can categorize my workouts effectively.

**Acceptance Criteria:**
- Users can view a list of existing workout types.
- Users can add new workout types (e.g., "yoga," "cycling").
- Users can edit or delete existing workout types.
- Changes are reflected in the `workout_types` table and in the workout logging interface.

**Time Estimation:** 35 minutes

---

### Feature-5: Export Workout Data
**User Story:** As a user, I want to export my workout data so that I can backup or analyze it outside of the application.

**Acceptance Criteria:**
- Users can export their workout history in CSV format.
- The exported file includes all relevant details such as date, workout type, duration, calories burned, and notes.
- The application provides a button or menu option to trigger the export functionality.

**Time Estimation:** 20 minutes

---

## Total Time Estimation: 3.5 hours
