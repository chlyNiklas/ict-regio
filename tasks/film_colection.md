# Film Collection Manager Project Document

## Overview of Features
The **Film Collection Manager** is a desktop application designed to help users manage their personal film collections and track their viewing history. The application will allow users to:

- Add, edit, and delete films from their collection.
- Track when they watched each film and optionally add comments about the viewing experience.
- Organize films by genres or years.
- Export their entire collection or viewing history in a standard format (e.g., CSV).

The application will use an SQLite database to store all data, ensuring persistence and easy access.

---

## Requirements

### Database Structure
The database will consist of two tables:

1. **films**:
   - `film_id` (Primary Key)
   - `title` (Text)
   - `year` (Integer)
   - `genre` (Text)
   - `rating` (Float)
   - `description` (Text)

2. **viewing_history**:
   - `history_id` (Primary Key)
   - `film_id` (Foreign Key to films.film_id)
   - `date_watched` (Date)
   - `comments` (Text)

---

## Feature Breakdown

### Feature 1: Add Films
#### User Story
As a user, I want to add new films to my collection so that I can keep track of all the movies I own or plan to watch.

#### Acceptance Criteria
- The application must provide a form to input film details (title, year, genre, rating, description).
- The form must validate inputs (e.g., year must be an integer, rating between 0 and 5).
- After submission, the new film should be saved in the `films` table.

#### Time Estimation
**30 minutes**

---

### Feature 2: Add Viewing History
#### User Story
As a user, I want to record when I watch a film and optionally add comments so that I can track my viewing history over time.

#### Acceptance Criteria
- The application must provide a dropdown or list of films from the collection.
- Users should be able to select a date (current date by default) and add optional comments.
- After submission, the new entry should be saved in the `viewing_history` table with the corresponding `film_id`.

#### Time Estimation
**30 minutes**

---

### Feature 3: Organize Films by Genre or Year
#### User Story
As a user, I want to filter and organize my film collection by genre or year so that I can easily browse films based on these criteria.

#### Acceptance Criteria
- The application must display all films with the ability to filter by genre (dropdown) or year.
- The filtered results should update dynamically as the user changes the filter options.

#### Time Estimation
**20 minutes**

---

### Feature 4: Export Film Collection
#### User Story
As a user, I want to export my film collection or viewing history in a standard format so that I can back up my data or use it elsewhere.

#### Acceptance Criteria
- The application must provide an option to export the entire film collection as a CSV file.
- The exported file should include all fields from the `films` table and any relevant metadata (e.g., date of export).

#### Time Estimation
**30 minutes**

---

### Feature 5: Edit Films
#### User Story
As a user, I want to edit film details so that I can correct or update information about films in my collection.

#### Acceptance Criteria
- The application must allow users to select a film from the list and modify its details (title, year, genre, rating, description).
- Changes should be saved back to the `films` table without affecting existing viewing history entries.

#### Time Estimation
**25 minutes**

---

## Total Time Estimate
The sum of all feature time estimations is **135 minutes (2.25 hours)**, leaving ample time for testing and any additional tasks within the 4-hour project window.
