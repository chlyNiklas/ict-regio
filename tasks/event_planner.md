# Event Planning Tool Project Document  

## Overview of Features  
The **Event Planning Tool** is a desktop application designed to help users organize events by managing tasks, budgets, and guest lists. The tool will include the following core features:  
1. **Event Management**: Create, edit, and delete events with details like event name, date, location, and description.  
2. **Task Management**: Add and track tasks related to each event, including task description, due date, and status (e.g., incomplete, in progress, complete).  
3. **Budget Management**: Track expenses for each event by adding budget items with categories, amounts, and descriptions.  
4. **Guest List Management**: Maintain a guest list with details like name, contact information, attendance status, and dietary restrictions.  
5. **Data Export**: Export event data (tasks, budgets, and guest lists) in CSV or PDF format for sharing or backup purposes.  

## Requirements  

### Database Design  
The application will use an SQL database with the following tables:  
1. `events` table: Stores event details like event ID, name, date, location, description, and status (e.g., planning, ongoing, completed).  
2. `tasks` table: Stores task details like task ID, event ID (foreign key), title, description, due date, status, and priority.  
3. `budgets` table: Stores budget items with item ID, event ID (foreign key), category, amount, date, and description.  
4. `guests` table: Stores guest information including guest ID, event ID (foreign key), name, email, phone number, attendance status, and dietary restrictions.  
5. `export_logs` table: Tracks export activities with log ID, event ID (foreign key), export type, file path, and timestamp.  

### Feature 1: Event Management  

#### User Story  
As an event planner, I want to create, edit, and delete events so that I can manage multiple events efficiently.  

#### Acceptance Criteria  
- Users can add a new event with all required details (name, date, location, description).  
- Users can view a list of existing events.  
- Users can edit an event’s details.  
- Users can delete an event.  
- The application validates input data to prevent invalid entries (e.g., future dates only for event creation).  

#### Time Estimation: 40 minutes  

### Feature 2: Task Management  

#### User Story  
As an event planner, I want to add and track tasks related to each event so that I can ensure all preparations are completed on time.  

#### Acceptance Criteria  
- Users can create a new task for an existing event with details like title, description, due date, status, and priority.  
- Tasks are displayed in a list view grouped by their associated events.  
- Users can update the status of tasks (e.g., mark as complete).  
- The application sorts tasks by due date or priority upon user request.  

#### Time Estimation: 35 minutes  

### Feature 3: Budget Management  

#### User Story  
As an event planner, I want to track expenses for each event so that I can stay within budget and monitor spending.  

#### Acceptance Criteria  
- Users can add budget items with categories (e.g., venue, catering, decorations) and amounts.  
- The application calculates the total expense for each category and displays it in a summary view.  
- Users can edit or delete existing budget items.  
- The application highlights overspending if the total exceeds the allocated budget.  

#### Time Estimation: 30 minutes  

### Feature 4: Guest List Management  

#### User Story  
As an event planner, I want to maintain a guest list for each event so that I can manage invitations and attendance efficiently.  

#### Acceptance Criteria  
- Users can add guests with details like name, email, phone number, attendance status, and dietary restrictions.  
- The application allows users to mark guests as attending or not attending.  
- Guests can be filtered by their attendance status or dietary needs.  
- A summary of the total number of guests (attending, not attending) is displayed.  

#### Time Estimation: 35 minutes  

### Feature 5: Data Export  

#### User Story  
As an event planner, I want to export event data so that I can share it with others or create backups.  

#### Acceptance Criteria  
- Users can export tasks, budgets, and guest lists for a specific event in CSV format.  
- The application generates a PDF report summarizing the event’s key details (tasks, budget, guest count).  
- Exported files are saved to a specified directory on the user's device.  
- The application tracks export activities in an export log table.  

#### Time Estimation: 20 minutes  

## Total Estimated Time: **160 minutes**
