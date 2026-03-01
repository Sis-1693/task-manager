# 🗂 Task & Project Management System

Full Stack Technical Assignment Implementation

---

## 🔥 Tech Stack

- Laravel 11 (Backend API)
- Laravel Sanctum (Authentication)
- MySQL
- Django (Overdue Task Service)
- React JS (Frontend)
- Postman Collection Included

---

# 👥 Roles

### 👨‍💼 Admin
- Create Projects
- Create & Assign Tasks
- View All Tasks
- Mark Overdue Tasks as DONE
- Close Overdue Tasks

### 👤 User
- Login
- View Only Assigned Tasks
- Update Task Status (TODO → IN_PROGRESS → DONE)
- Cannot revert OVERDUE to IN_PROGRESS

---

# 🔐 Authentication

Using Laravel Sanctum (Bearer Token)

Login API returns token which must be used in:

Authorization Header:
Bearer {token}

---

# ⚙️ Setup Instructions (Laravel Backend)

## 1️⃣ Clone Repository

git clone <your-repo-url>
cd task-manager-backend

## 2️⃣ Install Dependencies

composer install

## 3️⃣ Environment Setup

cp .env.example .env
php artisan key:generate

Update database credentials inside .env file

## 4️⃣ Run Migrations

php artisan migrate

## 5️⃣ Start Server

php artisan serve --port=8001

Backend URL:
http://127.0.0.1:8001

---

# 🐍 Django Overdue Service

Location:
overdue_service/

## Run Django Server

cd overdue_service
python manage.py runserver

Overdue API:
GET http://127.0.0.1:8000/update-overdue/

Logic:
- If due_date < today AND status != DONE → mark OVERDUE
- OVERDUE cannot revert to IN_PROGRESS
- Only Admin can close OVERDUE tasks

---

# ⚛️ React Frontend

Location:
task-manager-frontend/

Run:

npm install
npm start

Frontend URL:
http://localhost:3000

---

# 📬 API Documentation

Postman Collection included:

task-manager.postman_collection.json

Import this file into Postman to test all APIs.

---

# 🧪 Test Credentials

### Admin
Email: admin@test.com  
Password: 123456  

### User
Email: user@test.com  
Password: 123456  

---

# 📦 Features Implemented

- Sanctum Authentication
- Role Based Access Control
- Project Management
- Task Assignment
- Task Status Rules
- Overdue Logic via Django
- Eager Loading
- Proper Validation
- Consistent JSON Response
- Postman Collection Included

---

# 🚀 Deployment

Backend: (Add deployed backend URL here if available)  
Frontend: (Add deployed frontend URL here if available)

---

# 📌 Assignment Notes

This project follows clean controller structure, proper validation,
role-based access control, and overdue task business rules
as defined in the assignment.

---

# 📄 License

Created for Full Stack Technical Assignment Evaluation.