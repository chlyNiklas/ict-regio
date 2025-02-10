# **Recipe Organizer**: Store recipes with ingredients and categories.

## Overview
The Recipe Organizer is a desktop application designed to help users manage their recipes efficiently. The app allows storing recipes along with their ingredients and categorization. Key features include adding, viewing, editing, and deleting recipes, managing categories, and searching for recipes.

## Requirements
- **Database**: A SQL database will be used.
  - **Tables**:
    - `Recipes`: Fields include RecipeID (PK), Name, Description, PrepTime, CookTime, CategoryID (FK).
    - `Categories`: Fields include CategoryID (PK), Name.
    - `Ingredients`: Fields include IngredientID (PK), Name, Quantity.
    - `RecipeIngredients`: Join table with RecipeID (FK) and IngredientID (FK).

## Features

### Feature 1: Adding a New Recipe
- **User Story**: As a user, I want to add new recipes so that they can be stored for future use.
- **Acceptance Criteria**:
  - A form is available with fields for recipe details.
  - Categories are selectable from a dropdown.
  - Recipes are saved correctly in the database.
- **Time Estimation**: 60 minutes.

### Feature 2: Viewing All Recipes
- **User Story**: As a user, I want to view all stored recipes to easily access them.
- **Acceptance Criteria**:
  - Display a list of recipes with search functionality.
  - Clicking on a recipe shows its details in a new window.
- **Time Estimation**: 45 minutes.

### Feature 3: Editing a Recipe
- **User Story**: As a user, I want to edit existing recipes to update their details.
- **Acceptance Criteria**:
  - A form pre-filled with the selected recipe's data is displayed.
  - Changes are saved correctly in the database.
- **Time Estimation**: 30 minutes.

### Feature 4: Deleting a Recipe
- **User Story**: As a user, I want to delete recipes no longer needed.
- **Acceptance Criteria**:
  - Confirmation before deletion.
  - The recipe is removed from the database.
- **Time Estimation**: 15 minutes.

## Total Time Estimate: 2.5 hours

This plan ensures all core functionalities are covered within a manageable timeframe, allowing for any unforeseen issues or testing needs.
