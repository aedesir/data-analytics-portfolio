-- Financial Reconciliation Schema
-- Tool: PostgreSQL 18
-- Author: Alexandra Desir

CREATE TABLE general_ledger (
    gl_id SERIAL PRIMARY KEY,
    transaction_date DATE,
    account_code VARCHAR(20),
    account_name VARCHAR(100),
    department VARCHAR(50),
    amount NUMERIC(12,2),
    entry_type VARCHAR(10)
);

CREATE TABLE invoices (
    invoice_id SERIAL PRIMARY KEY,
    invoice_date DATE,
    vendor_name VARCHAR(100),
    department VARCHAR(50),
    amount NUMERIC(12,2),
    status VARCHAR(20)
);

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    invoice_id INT REFERENCES invoices(invoice_id),
    payment_date DATE,
    amount_paid NUMERIC(12,2),
    payment_method VARCHAR(50)
);
