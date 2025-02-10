# Grocery List Planner Project Document  

## Overview of Features  
The **Grocery List Planner** is a desktop application designed to help users efficiently plan their weekly groceries. The app will include the following features:  
1. User registration and login system.  
2. Ability to add, edit, and categorize grocery items.  
3. Expiration date tracking for each item.  
4. Weekly grocery list planning with quantities.  
5. Export functionality for the generated grocery list.  

The application will use a SQL database to store all user data, ensuring persistence between sessions.  

---

## Requirements  

### Database and Its Tables  
The database schema will include the following tables:  
1. **Users**  
   - Columns: `user_id` (Primary Key), `username`, `password_hash`, `email`.  
2. **Categories**  
   - Columns: `category_id` (Primary Key), `category_name`, `user_id` (Foreign Key).  
3. **GroceryItems**  
   - Columns: `item_id` (Primary Key), `item_name`, `category_id` (Foreign Key), `expiration_date`, `quantity`, `purchase_date`, `is_on_list` (Boolean).  
4. **WeeklyPlanner**  
   - Columns: `plan_id` (Primary Key), `week_start_date`, `user_id` (Foreign Key), `item_id` (Foreign Key), `quantity_needed`.  

---

## Feature Breakdown  

### Feature 1: User Registration and Login  
#### User Story  
As a user, I want to create an account and log in so that I can securely access my grocery list data.  

#### Acceptance Criteria  
- Users can register with a username, password, and email.  
- Users can log in using their credentials.  
- The application stores passwords securely (e.g., hashed).  
- Invalid login attempts are rejected.  

#### Time Estimation  
**30 minutes**  

---

### Feature 2: Adding/Editting Grocery Items  
#### User Story  
As a user, I want to add and edit grocery items so that I can maintain an updated list of my groceries.  

#### Acceptance Criteria  
- Users can add new grocery items with details like name, category, expiration date, and quantity.  
- Users can edit existing items.  
- The application validates input (e.g., non-empty fields, correct date format).  

#### Time Estimation  
**1 hour**  

---

### Feature 3: Categorizing Grocery Items  
#### User Story  
As a user, I want to categorize my grocery items so that I can organize them efficiently.  

#### Acceptance Criteria  
- Users can create and manage categories (e.g., Dairy, Fruits, Vegetables).  
- Users can assign categories to grocery items.  
- The application displays items grouped by category.  

#### Time Estimation  
**20 minutes**  

---

### Feature 4: Weekly Grocery List Planning  
#### User Story  
As a user, I want to plan my weekly groceries so that I can efficiently shop and track expiration dates.  

#### Acceptance Criteria  
- Users can select items from their grocery list for the current week.  
- Users can specify quantities needed for each item.  
- The application generates a weekly grocery list with all selected items.  

#### Time Estimation  
**1 hour**  

---

### Feature 5: Exporting Grocery List  
#### User Story  
As a user, I want to export my grocery list so that I can print or share it.  

#### Acceptance Criteria  
- Users can export the weekly grocery list in a readable format (e.g., CSV, PDF).  
- The exported file includes item names, quantities, and categories.  

#### Time Estimation  
**20 minutes**  

---

## Total Estimated Time  
The sum of all feature time estimations is **3 hours**, which fits within the 3.5-hour constraint.
