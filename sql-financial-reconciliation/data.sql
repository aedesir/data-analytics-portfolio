-- Mock Data: Financial Reconciliation Project
-- Author: Alexandra Desir

-- Invoice Data
INSERT INTO invoices (invoice_date, vendor_name, department, amount, status) VALUES
('2024-01-05', 'Dell Technologies', 'IT', 12500.00, 'PAID'),
('2024-01-12', 'Staples Business', 'Operations', 3200.00, 'PAID'),
('2024-01-18', 'Iron Mountain', 'Compliance', 8750.00, 'PENDING'),
('2024-02-02', 'Salesforce Inc', 'Sales', 15000.00, 'PAID'),
('2024-02-14', 'WeWork', 'Facilities', 22000.00, 'DISPUTED'),
('2024-02-20', 'Oracle Corp', 'IT', 18500.00, 'PAID'),
('2024-03-01', 'FedEx', 'Operations', 4100.00, 'PAID'),
('2024-03-15', 'Deloitte', 'Finance', 45000.00, 'PENDING'),
('2024-03-22', 'AT&T', 'IT', 6800.00, 'PAID'),
('2024-04-01', 'WeWork', 'Facilities', 22000.00, 'PAID');

-- Payment Data
INSERT INTO payments (invoice_id, payment_date, amount_paid, payment_method) VALUES
(1, '2024-01-20', 12500.00, 'ACH'),
(2, '2024-01-25', 3200.00, 'Check'),
(4, '2024-02-15', 15000.00, 'ACH'),
(6, '2024-03-01', 18500.00, 'Wire'),
(7, '2024-03-18', 4100.00, 'ACH'),
(9, '2024-04-01', 6800.00, 'Check'),
(10, '2024-04-15', 22000.00, 'ACH');

-- General Ledger Data
INSERT INTO general_ledger (transaction_date, account_code, account_name, department, amount, entry_type) VALUES
('2024-01-20', 'AP-1001', 'Accounts Payable', 'IT', 12500.00, 'DEBIT'),
('2024-01-25', 'AP-1001', 'Accounts Payable', 'Operations', 3200.00, 'DEBIT'),
('2024-02-15', 'AP-1001', 'Accounts Payable', 'Sales', 15000.00, 'DEBIT'),
('2024-03-01', 'AP-1001', 'Accounts Payable', 'IT', 18500.00, 'DEBIT'),
('2024-03-18', 'AP-1001', 'Accounts Payable', 'Operations', 4100.00, 'DEBIT'),
('2024-04-01', 'AP-1001', 'Accounts Payable', 'IT', 6800.00, 'DEBIT'),
('2024-04-15', 'AP-1001', 'Accounts Payable', 'Facilities', 22000.00, 'DEBIT');
