# **Inventory Management System**: Manage stock items and generate reports.


## Overview of Features  
The **Inventory Management System** is a desktop application designed to help users manage stock items and generate reports. The system will include the following features:  
1. Add new products to the inventory.  
2. Update inventory levels for existing products.  
3. Generate reports on current stock levels and product details.  
4. Manage suppliers associated with the products.  

The application will use a SQL database to store all data, ensuring persistence and efficient querying.  

---

## Requirements  

### Database Structure  
The system will use the following tables:  
1. **Products**  
   - `ProductID` (Primary Key)  
   - `ProductName`  
   - `Description`  
   - `Price`  
   - `QuantityInStock`  
   - `ReorderLevel`  
   - `SupplierID` (Foreign Key to Suppliers table)  

2. **Suppliers**  
   - `SupplierID` (Primary Key)  
   - `SupplierName`  
   - `ContactPerson`  
   - `Phone`  
   - `Email`  

3. **InventoryLogs**  
   - `LogID` (Primary Key)  
   - `ProductID` (Foreign Key to Products table)  
   - `QuantityChanged`  
   - `DateOfChange`  

---

## Feature 1: Add New Product  

### User Story  
As a user, I want to add new products to the inventory so that I can keep track of all items in stock.  

### Acceptance Criteria  
- The application should provide a form for entering product details (name, description, price, quantity in stock, reorder level).  
- The user should be able to select or enter a supplier for the product.  
- Upon saving, the product should be added to the Products table and associated with its supplier.  

### Time Estimation  
**30 minutes**  

---

## Feature 2: Update Inventory Levels  

### User Story  
As a user, I want to update the inventory levels of existing products so that I can reflect changes in stock accurately.  

### Acceptance Criteria  
- The application should display a list of all products with their current quantity in stock.  
- The user should be able to select a product and update its quantity.  
- Changes should be recorded in both the Products table and the InventoryLogs table.  

### Time Estimation  
**45 minutes**  

---

## Feature 3: Generate Reports  

### User Story  
As a user, I want to generate reports on my inventory so that I can analyze stock levels and product performance.  

### Acceptance Criteria  
- The application should provide options to generate reports (e.g., total stock value, items below reorder level).  
- Reports should display relevant data in a clear format.  
- Users should be able to save the report as a PDF or print it directly.  

### Time Estimation  
**60 minutes**  

---

## Feature 4: Manage Suppliers  

### User Story  
As a user, I want to manage suppliers so that I can track which products are supplied by whom.  

### Acceptance Criteria  
- The application should allow users to add, edit, and delete supplier records.  
- Suppliers should be linked to their respective products in the database.  
- Users should be able to search for suppliers by name or contact details.  

### Time Estimation  
**30 minutes**  

---

## Summary of Time Estimates  
| Feature                  | Time Estimate |  
|--------------------------|---------------|  
| Add New Product          | 30 mins       |  
| Update Inventory Levels   | 45 mins       |  
| Generate Reports         | 60 mins       |  
| Manage Suppliers         | 30 mins       |  
| **Total**                | **2.75 hours**|  

The remaining time will be allocated for database setup, integration of features, and testing.
