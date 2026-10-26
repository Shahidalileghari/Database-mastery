CREATE TABLE departments (
    department_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    department_name TEXT NOT NULL UNIQUE
);

CREATE TABLE employees (
    employee_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    department_id BIGINT REFERENCES departments(department_id),
    email TEXT NOT NULL UNIQUE,
    full_name TEXT NOT NULL,
    salary NUMERIC(12, 2) NOT NULL CHECK (salary >= 0),
    hired_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- A nullable foreign key allows an employee without an assigned department.
-- Add NOT NULL if the business rule requires a department.
