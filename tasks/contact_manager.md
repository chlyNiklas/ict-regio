# **Contact Management Application**: Simplified CRM for managing contacts.


## Overview of Features
The Contact Management Application is a desktop application designed to help users manage their contacts efficiently. The application will include the following core features:
1. **Add/Edit/Delete Contacts**: Users can create, modify, and delete contact entries.
2. **Search/Filter Contacts**: Users can search for contacts by name, email, or phone number, and filter contacts based on specific criteria like tags or categories.
3. **Birthday Reminders**: The application will notify users of upcoming birthdays.
4. **Export Contacts**: Users can export their contact list to a CSV file.

The application will use an SQLite database to store contact information and other relevant data.

---

## Requirements

### Database and Its Tables
The application will use the following database schema:

- **contacts** (table)
  - `contact_id` (Primary Key, Integer)
  - `first_name` (Text)
  - `last_name` (Text)
  - `email` (Text)
  - `phone_number` (Text)
  - `address` (Text)
  - `birthday` (Date)

- **notes** (table)
  - `note_id` (Primary Key, Integer)
  - `contact_id` (Foreign Key to contacts.contact_id)
  - `content` (Text)
  - `date_added` (Date)

- **tags** (table)
  - `tag_id` (Primary Key, Integer)
  - `name` (Text)

- **contact_tags** (table)
  - `contact_id` (Foreign Key to contacts.contact_id)
  - `tag_id` (Foreign Key to tags.tag_id)

---

## Feature-1: Add/Edit/Delete Contacts

### User Story
As a user, I want to add, edit, and delete contact entries so that I can manage my contacts effectively.

### Acceptance Criteria
1. Users can input new contact details.
2. Users can modify existing contact details.
3. Users can delete contacts.
4. The application saves all changes to the database immediately.

### Time Estimation
**Time: 60 minutes**

---

## Feature-2: Search/Filter Contacts

### User Story
As a user, I want to search and filter my contacts so that I can quickly find specific contacts.

### Acceptance Criteria
1. Users can search for contacts by name, email, or phone number.
2. Users can filter contacts by tags (e.g., "Work," "Family").
3. The application displays the filtered results in real-time as users input their search criteria.

### Time Estimation
**Time: 45 minutes**

---

## Feature-3: Birthday Reminders

### User Story
As a user, I want to receive reminders for upcoming birthdays so that I can remember important dates.

### Acceptance Criteria
1. The application checks the database daily for upcoming birthdays.
2. The application displays a notification (e.g., pop-up) when a contact's birthday is within 7 days.
3. Notifications do not repeat more than once per birthday.

### Time Estimation
**Time: 45 minutes**

---

## Feature-4: Export Contacts

### User Story
As a user, I want to export my contacts so that I can back up or transfer them to another system.

### Acceptance Criteria
1. Users can export the entire contact list to a CSV file.
2. The exported file includes all contact details and tags.
3. The application prompts the user to choose a save location for the CSV file.

### Time Estimation
**Time: 45 minutes**

---

## Total Time Estimation
- Feature-1: 60 minutes  
- Feature-2: 45 minutes  
- Feature-3: 45 minutes  
- Feature-4: 45 minutes  

**Total: 3 hours**
