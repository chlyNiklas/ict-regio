# Plant Care Assistant Project Document

## Overview of Features
The Plant Care Assistant is a desktop application designed to help users manage plant care routines efficiently. It includes features such as adding and editing plant details, scheduling watering times, tracking the last watering date, setting reminders, and exporting plant data.

## Requirements

### Database and Its Tables
- **Database Name:** PlantCareDB
- **Tables:**
  - **Plant (id, name, species, water_frequency, last_watered)**
    - Tracks plant details including name, species, water frequency, and the last watering date.
  - **WateringSchedule (id, plant_id, schedule_time, reminder_status)**
    - Manages watering schedules with timestamps and reminder settings for each plant.

## Features

### Feature 1: Add/Edit Plants
- **User Story:** As a user, I want to add new plants or edit existing ones to keep track of their care needs.
- **Acceptance Criteria:**
  - Users can input plant details (name, species, water frequency).
  - Edit functionality allows updating any plant information.
  - Delete option removes a plant from the system.
- **Time Estimation:** 30 minutes

### Feature 2: Schedule Watering
- **User Story:** As a user, I want to schedule regular watering times for my plants.
- **Acceptance Criteria:**
  - Users can set specific dates and times for watering each plant.
  - The schedule displays all future watering events for review.
- **Time Estimation:** 30 minutes

### Feature 3: Track Last Watered Date
- **User Story:** As a user, I need to know when I last watered my plants to avoid overwatering.
- **Acceptance Criteria:**
  - The system records and displays the most recent watering date for each plant.
- **Time Estimation:** 20 minutes

### Feature 4: Reminder System
- **User Story:** As a user, I want reminders so I don't forget to water my plants.
- **Acceptance Criteria:**
  - Notifications alert users when it's time to water based on the schedule.
- **Time Estimation:** 45 minutes

### Feature 5: Export Data
- **User Story:** As a user, I want to export my plant data for backup or sharing purposes.
- **Acceptance Criteria:**
  - Users can export plant details and schedules into a CSV file.
- **Time Estimation:** 20 minutes

## Total Time Estimate
The total estimated time is 3.5 hours, fitting within the project constraints.

This structured approach ensures all necessary features are included with clear user stories, acceptance criteria, and manageable time allocations.
