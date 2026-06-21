# SQL Financial Reconciliation Project

## Overview
This project simulates an Accounts Payable reconciliation workflow using PostgreSQL.
It mirrors real FP&A and financial operations work: identifying outstanding invoices,
flagging payment variances, summarizing spend by department, and aging open items for
escalation.

## Business Questions Answered
- Which invoices have no corresponding payment?
- Where do invoice amounts and payments not match?
- What is total spend and outstanding balance by department?
- Which open items are at risk based on days outstanding?

## Tools Used
- PostgreSQL 18
- pgAdmin 4

## Files
- `schema.sql` -- Table creation scripts
- `data.sql` -- Mock data inserts
- `reconciliation_queries.sql` -- Analysis queries

## Key Findings (Mock Data)
- $75,750 in unreconciled invoices across 3 departments
- Finance department carrying the largest open item at $45,000 (Deloitte)
- Oldest outstanding invoice: 885 days (Iron Mountain, Compliance)
- IT and Operations fully reconciled
