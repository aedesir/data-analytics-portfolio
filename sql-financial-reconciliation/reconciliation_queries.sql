-- Financial Reconciliation Queries
-- Author: Alexandra Desir
-- Tool: PostgreSQL 18

-- Query 1: Unpaid Invoices (no matching payment record)
SELECT 
    i.invoice_id,
    i.invoice_date,
    i.vendor_name,
    i.department,
    i.amount,
    i.status
FROM invoices i
LEFT JOIN payments p ON i.invoice_id = p.invoice_id
WHERE p.payment_id IS NULL
ORDER BY i.amount DESC;

-- Query 2: Payment vs Invoice Variance
SELECT
    i.invoice_id,
    i.vendor_name,
    i.department,
    i.amount AS invoice_amount,
    COALESCE(p.amount_paid, 0) AS amount_paid,
    i.amount - COALESCE(p.amount_paid, 0) AS variance
FROM invoices i
LEFT JOIN payments p ON i.invoice_id = p.invoice_id
ORDER BY variance DESC;

-- Query 3: Total Spend by Department
SELECT
    i.department,
    COUNT(i.invoice_id) AS total_invoices,
    SUM(i.amount) AS total_invoiced,
    SUM(COALESCE(p.amount_paid, 0)) AS total_paid,
    SUM(i.amount) - SUM(COALESCE(p.amount_paid, 0)) AS outstanding_balance
FROM invoices i
LEFT JOIN payments p ON i.invoice_id = p.invoice_id
GROUP BY i.department
ORDER BY total_invoiced DESC;

-- Query 4: Risk Flag: Disputed and Pending Invoices with Aging
SELECT
    i.invoice_id,
    i.vendor_name,
    i.department,
    i.amount,
    i.status,
    CURRENT_DATE - i.invoice_date AS days_outstanding
FROM invoices i
WHERE i.status IN ('PENDING', 'DISPUTED')
ORDER BY days_outstanding DESC;
