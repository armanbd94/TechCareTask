# TechCareTask

## Tech Stack
- Laravel: v10.10
- Vue: v3.3.3
- MySQLi: v5.2
- PHP: v8.1.7
- Other libraries and tools
  
## Installation
Instructions on how to install and set up the project.

```bash
# Clone the repository
git clone https://github.com/armanbd94/TechCareTask.git

# Change to the project directory
cd TechCareTask 

# Change to the project backend directory
cd backend

# Install dependencies for laravel 10
composer install

# Rename .env.example to .env then run
php artisan key:generate

# Generate JWT Secret Key
php artisan jwt:secret

# Install dependencies for vue 3
cd frontend
npm install

# Create a database like tech_care and then import the database from database folder
