# Note Taking Application: Create, Edit, and Search Notes with Tags

## Overview of Features
The Note Taking Application will allow users to:
- **Create** new notes with titles, content, and tags.
- **Edit** existing notes by modifying their title, content, and tags.
- **Search** for notes using keywords in the title, content, or tags.
- **Tag** notes for easier organization and retrieval.
- **Export** notes to a file format (e.g., text or PDF).

The application will use a SQL database to store all notes and their associated metadata.

## Requirements

### Database
- **Tables:**
  - `Notes` table:
    - `id` (Primary Key, Integer)
    - `title` (String)
    - `content` (Text)
    - `created_at` (Timestamp)
    - `last_modified` (Timestamp)
    - `tags` (JSON Array of Strings)
  
  - `Tags` table (optional for efficient searching):
    - `id` (Primary Key, Integer)
    - `tag_name` (String)
    - `note_id` (Foreign Key to Notes.id)

---

### Feature-1: Create Note
**User Story:**  
As a user, I want to create a new note with a title and content so that I can save my ideas.

**Acceptance Criteria:**
- The application should provide a form for entering the note's title, content, and tags.
- Upon submission, the note should be saved in the database with the current timestamp.
- After saving, the user should see confirmation that the note was created successfully.

**Time Estimation:** 30 minutes

---

### Feature-2: Edit Note
**User Story:**  
As a user, I want to edit an existing note so that I can update or correct its content.

**Acceptance Criteria:**
- The application should display a list of notes with their titles and creation dates.
- When a note is selected, the application should load its title, content, and tags into a form for editing.
- After making changes and submitting, the updated note should be saved in the database with an updated `last_modified` timestamp.

**Time Estimation:** 30 minutes

---

### Feature-3: Search Notes
**User Story:**  
As a user, I want to search for notes by keywords so that I can quickly find specific notes.

**Acceptance Criteria:**
- The application should provide a search bar where users can enter keywords.
- The search should look for matches in the note's title, content, and tags.
- Results should be displayed as a list of matching notes with their titles and snippets of content.

**Time Estimation:** 1 hour

---

### Feature-4: Add/Remove Tags
**User Story:**  
As a user, I want to add or remove tags from my notes so that I can organize them better.

**Acceptance Criteria:**
- When creating or editing a note, the application should allow users to add new tags or select existing ones.
- Users should be able to remove tags from a note before saving it.
- Tags should be stored in the database and displayed alongside the note when viewing or searching.

**Time Estimation:** 30 minutes

---

### Feature-5: Export Notes
**User Story:**  
As a user, I want to export my notes so that I can back them up or share them with others.

**Acceptance Criteria:**
- The application should provide an option to export all notes or selected notes.
- The exported file should include the note's title, content, tags, and timestamps.
- The export format should be user-friendly (e.g., plain text or PDF).

**Time Estimation:** 1 hour

---

## Time Summary
| Feature         | Time Estimate |
|-----------------|---------------|
| Create Note     | 30 minutes    |
| Edit Note       | 30 minutes    |
| Search Notes    | 1 hour        |
| Add/Remove Tags | 30 minutes    |
| Export Notes    | 1 hour        |
| **Total**       | **3.5 hours** |

This project is designed to be completed within the given time frame while delivering a functional and user-friendly note-taking application.
