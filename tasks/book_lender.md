# Book lender

You are given a task to develop a book lending system where users can add books to their collection and lend them to friends. The goal is to create a user-friendly interface with basic CRUD operations, notifications for due dates, and export functionality.

### Approach
The solution will be broken down into five main features, each addressing specific functionalities:

1. **Adding and Managing Books**: Users can input book details and edit existing entries.
2. **Lending Books**: Users can lend books to friends with specified due dates.
3. **Returning Books**: Users can mark lent books as returned.
4. **Notifications**: The system sends alerts when books are due or overdue.
5. **Exporting Data**: Users can export their book collection data.

### Solution Code
Below is a high-level pseudocode outline of the solution:

```python
# Define Book class with attributes: title, author, isbn, status (available/lent), due_date
class Book:
    def __init__(self, title, author, isbn):
        self.title = title
        self.author = author
        self.isbn = isbn
        self.status = "available"
        self.due_date = None

# Define User class with attributes: name, email, borrowed_books (list of Book objects)
class User:
    def __init__(self, name, email):
        self.name = name
        self.email = email
        self.borrowed_books = []

# Function to add a new book to the collection
def add_book(books_list, title, author, isbn):
    new_book = Book(title, author, isbn)
    books_list.append(new_book)

# Function to edit an existing book's details
def edit_book(books_list, index, title=None, author=None, isbn=None):
    if 0 <= index < len(books_list):
        if title is not None:
            books_list[index].title = title
        # Similarly update other attributes

# Function to lend a book to a user
def lend_book(user, book, due_date):
    if book.status == "available":
        book.status = "lent"
        book.due_date = due_date
        user.borrowed_books.append(book)

# Function to return a book
def return_book(user, book):
    if book in user.borrowed_books:
        book.status = "available"
        book.due_date = None
        user.borrowed_books.remove(book)

# Function to check for due or overdue books and notify users
def send_notifications(users_list):
    for user in users_list:
        for book in user.borrowed_books:
            if is_due(book) or is_overdue(book):
                # Send email notification

# Helper functions to check due dates
def is_due(book):
    today = get_current_date()
    return book.due_date == today

def is_overdue(book):
    today = get_current_date()
    return book.due_date < today

# Function to export collection to a CSV file
def export_to_csv(books_list, filename):
    with open(filename, 'w') as f:
        writer = csv.writer(f)
        writer.writerow(["Title", "Author", "ISBN", "Status", "Due Date"])
        for book in books_list:
            writer.writerow([book.title, book.author, book.isbn, book.status, str(book.due_date)])
```

### Explanation
- **Adding and Managing Books**: Users can add new books with essential details. They can also edit existing entries to correct or update information.
- **Lending Books**: When a user lends a book, they specify the due date. The system updates the book's status and tracks it under the borrower’s account.
- **Returning Books**: Upon returning, the book is marked as available again, and the borrower is updated accordingly.
- **Notifications**: Daily checks ensure users are alerted when books are due or overdue, using email notifications for reminders.
- **Exporting Data**: Users can export their entire collection into a CSV file for backup or sharing purposes.

This approach ensures that all functionalities are covered efficiently, providing a comprehensive solution for managing a book lending system.
