# **Expense Tracker**: Log expenses by category and set budgets.


**Expense Tracker Project Plan**

---

**Overview:**
The Expense Tracker is a desktop application designed to help users manage their expenses efficiently by categorizing them and setting budgets. The app uses SQL for data storage, ensuring reliable and structured data handling.

**Database Structure:**
- **Expenses Table:** Tracks each expense with details like date, description, amount, category, and user.
  - Columns: ID, Date, Description, Amount, CategoryID, UserID
- **Categories Table:** Manages expense categories with associated budgets.
  - Columns: ID, Name, Budget, UserID

**Features and Time Allocation:**

1. **Adding Expenses**
   - **User Story:** Users can log expenses with necessary details.
   - **Acceptance Criteria:** 
     - Required fields (date, description, amount, category).
     - Validation for positive amounts and correct date formats.
     - Data saved correctly; errors with clear messages.
   - **Time Estimate:** 45 minutes

2. **Setting Budgets**
   - **User Story:** Users can define monthly budgets per category.
   - **Acceptance Criteria:**
     - Positive amount entry, budget association with categories.
     - Errors handled gracefully.
   - **Time Estimate:** 30 minutes

3. **Generating Reports**
   - **User Story:** Users view monthly expenses by category and budget status.
   - **Acceptance Criteria:**
     - Grouped data, accurate calculations, visual representation (charts), budget comparison, print/export option.
   - **Time Estimate:** 45 minutes

4. **Dark Mode Toggle**
   - **User Story:** Users can switch between themes for comfort.
   - **Acceptance Criteria:**
     - Consistent UI colors, contrast, preference saving, smooth transition.
   - **Time Estimate:** 30 minutes

**Total Time Allocation:** 2.5 hours (150 minutes)

---

**Considerations and Approach:**

- **Database Setup:** Efficiently integrated once for use across features, reducing redundancy.
- **UI Frameworks:** Utilize existing tools for dark mode to save time.
- **Testing:** Conduct early testing to catch issues, ensuring smooth user experience without compromising on functionality.
- **Sub-tasks:** Break down tasks into smaller parts (e.g., form UI first, then validations) for better management.

**Conclusion:**
With careful planning and focused execution, the project is achievable within 4 hours. Emphasizing core functionalities and efficient use of tools will help meet the timeframe while delivering a robust application.
