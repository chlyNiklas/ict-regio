# Vehicle Maintenance Log Project Document

## Overview of Features

The Vehicle Maintenance Log application allows users to efficiently track and manage their vehicle's maintenance records. Key features include:

1. **Add/Edit Maintenance Entries**: Record details such as date, mileage, description, cost, next due date, and notes.
2. **View All Maintenance Logs**: Display all entries in an organized table format, sortable by date or mileage.
3. **Search/Filter Logs**: Quickly find specific entries using keywords, date ranges, or cost criteria.
4. **Export Data**: Backup data by exporting logs into a CSV file for external analysis.
5. **Settings Management**: Maintain vehicle details and preferences in one accessible location.

## Requirements

### Database Structure

The application uses an SQLite database with the following table:

- **Table Name**: `vehicle_maintenance`
  - Columns:
    - `id` (INTEGER, PRIMARY KEY AUTOINCREMENT)
    - `date` (DATE)
    - `mileage` (INTEGER)
    - `description` (TEXT)
    - `cost` (DECIMAL(10,2))
    - `next_due` (DATE)
    - `notes` (TEXT)

## Features

### Feature 1: Add/Edit Maintenance Entries

**User Story**:  
As a car owner, I want to add and edit maintenance details so I can keep track of all vehicle services.

**Acceptance Criteria**:
- Users can input new entries with fields: date, mileage, description, cost, next due date, notes.
- An "Edit" option allows modifying existing entries.
- Changes are saved upon clicking the save button.

**Time Estimation**: 45 minutes

### Feature 2: View All Maintenance Logs

**User Story**:  
As a car owner, I want to view all maintenance logs in a table for easy tracking.

**Acceptance Criteria**:
- Display all entries in a sortable and searchable table.
- Fields include date, mileage, description, cost, next due date (excluding notes).
- Entries are sorted by date or mileage.

**Time Estimation**: 30 minutes

### Feature 3: Search/Filter Logs

**User Story**:  
As a car owner, I want to search and filter logs quickly for specific entries.

**Acceptance Criteria**:
- A search bar filters logs based on keywords in description or notes.
- Filter options include date range and cost ranges.

**Time Estimation**: 45 minutes

### Feature 4: Export Data

**User Story**:  
As a car owner, I want to export data for backup or analysis elsewhere.

**Acceptance Criteria**:
- An option to export all logs as CSV.
- CSV includes headers and fields: date, mileage, description, cost, next due, notes.

**Time Estimation**: 30 minutes

### Feature 5: Settings Management

**User Story**:  
As a car owner, I want to manage vehicle details in one place.

**Acceptance Criteria**:
- A settings window with fields for make/model and units (miles/kilometers).
- Save button updates the information.
- Test adding and editing settings.

**Time Estimation**: 15 minutes

## Total Time Allocation: 2.75 hours

This structured approach ensures all features are covered within a manageable timeframe, providing a comprehensive solution for vehicle maintenance tracking.
