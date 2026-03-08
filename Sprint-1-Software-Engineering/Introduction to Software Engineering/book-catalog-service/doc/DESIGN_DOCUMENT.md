# Design Document: Book Catalog Service API

---

## 1. Software Development Lifecycle (SDLC) Model

**Selected Model:** Agile

### Justification

The Agile model is selected because:

- It allows iterative and incremental development.
- Requirements can evolve during implementation.
- Testing and feedback happen continuously.
- A Minimum Viable Product (MVP) can be delivered early and improved over time.
- Risks can be identified and mitigated early through short development cycles.

---

## 2. System Architecture Overview

The system follows a layered architecture to ensure separation of concerns and maintainability.

### Layers:

- **Client Layer** – Sends HTTP requests (Web or Mobile client).
- **API Layer (Controller)** – Handles incoming requests and returns HTTP responses.
- **Service Layer** – Contains business logic and validation rules.
- **Database Layer** – Stores and retrieves book records.

This architectural approach improves scalability, maintainability, and testability by clearly separating responsibilities between components.

---

## 3. Core API Endpoints

### 3.1 GET /api/v1/books

**Description:** Retrieve all books from the catalog.

#### Response (200 OK)

```json
[
  {
    "isbn": "978-3-16-148410-0",
    "title": "The Great Gatsby",
    "author": "F. Scott Fitzgerald",
    "published_year": 1925
  }
]
```

---

### 3.2 POST /api/v1/books

**Description:** Add a new book to the catalog.

#### Request Body

```json
{
  "isbn": "978-0-14-243723-0",
  "title": "Don Quixote",
  "author": "Miguel de Cervantes",
  "published_year": 1605
}
```

#### Response (201 Created)

```json
{
  "message": "Book added successfully",
  "book_id": "978-0-14-243723-0"
}
```

#### Error Response (400 Bad Request)

```json
{
  "error": "Invalid Data",
  "message": "ISBN is required and must be unique."
}
```