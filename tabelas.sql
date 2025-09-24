-- ==============================================
-- Projeto: Sistema de Biblioteca Universitária
-- Esquema físico em PostgreSQL
-- ==============================================

-- Enums
CREATE TYPE book_copy_status AS ENUM (
    'DISPONÍVEL',
    'EMPRESTADO',
    'RESERVADO',
    'PERDIDO',
    'EM_ANDAMENTO'
);

CREATE TYPE loan_status AS ENUM (
    'EMPRESTADO',
    'DEVOLVIDO',
    'ATRASADO'
);

CREATE TYPE reservation_status AS ENUM (
    'PENDENTE',
    'DISPONÍVEL',
    'CANCELADO',
    'RETIRADA'
);

-- ==============================================
-- Tabelas principais
-- ==============================================
CREATE DATABASE sistema_biblioteca;
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(125) NOT NULL,
    last_name VARCHAR(125) NOT NULL,    
    email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    address TEXT,
    membership_start DATE NOT NULL DEFAULT now(),
    membership_end DATE NOT NULL DEFAULT now()
);

CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(125) NOT NULL,
    last_name VARCHAR(125) NOT NULL,
    biography TEXT       
);

CREATE TABLE publishers (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) UNIQUE NOT NULL,
    address TEXT,
    phone_number VARCHAR(20),
    created_at DATE NOT NULL DEFAULT now(),
    updated_at DATE NOT NULL DEFAULT now()
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(500) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    publication_year INTEGER,
    quantity_available INTEGER NOT NULL DEFAULT 0,
    total_quantity INTEGER NOT NULL DEFAULT 0,
    publisher_id INTEGER NOT NULL REFERENCES publishers(id),
    category_id INTEGER NOT NULL REFERENCES categories(id),
    author_id INTEGER NOT NULL REFERENCES authors(id)    
);

CREATE TABLE libraries (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) UNIQUE NOT NULL,
    address TEXT,
    phone_number VARCHAR(20),
    created_at DATE NOT NULL DEFAULT now(),
    updated_at DATE NOT NULL DEFAULT now()
);

CREATE TABLE librarians (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(125) NOT NULL,
    last_name VARCHAR(125) NOT NULL,
    employee_id VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    created_at DATE NOT NULL DEFAULT now(),
    updated_at DATE NOT NULL DEFAULT now(),
    library_id INTEGER NOT NULL REFERENCES libraries(id)
);

CREATE TABLE book_copies (
    id SERIAL PRIMARY KEY,
    status book_copy_status NOT NULL DEFAULT 'DISPONÍVEL',    
    book_id INTEGER NOT NULL REFERENCES books(id) ON DELETE CASCADE,
    library_id INTEGER NOT NULL REFERENCES libraries(id),    
    CONSTRAINT unique_book_copy_per_library UNIQUE (book_id, library_id)
);

CREATE TABLE loans (
    id SERIAL PRIMARY KEY,
    loan_date DATE NOT NULL DEFAULT now(),
    due_date DATE NOT NULL,
    return_date DATE NULL,
    status loan_status NOT NULL DEFAULT 'EMPRESTADO',
    created_at DATE NOT NULL DEFAULT now(),
    updated_at DATE NOT NULL DEFAULT now(),
    student_id INTEGER NOT NULL REFERENCES students(id),
    book_copy_id INTEGER NOT NULL REFERENCES book_copies(id)
);

CREATE TABLE reservations (
    id SERIAL PRIMARY KEY,
    reservation_date DATE NOT NULL DEFAULT now(),
    expiration_date DATE,
    status reservation_status NOT NULL DEFAULT 'PENDENTE',
    created_at DATE NOT NULL DEFAULT now(),
    updated_at DATE NOT NULL DEFAULT now(),
    student_id INTEGER NOT NULL REFERENCES students(id),
    book_copy_id INTEGER REFERENCES book_copies(id)
);
