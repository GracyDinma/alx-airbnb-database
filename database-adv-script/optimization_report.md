# Identify any inefficiencies
In Analyzing Query Performance

- The execution plan shows multiple Sequential Scans instead of Index Scans.

- The query scans entire tables for User, Property, Booking and Payment, which slows down performance.

- Some joins are redundant if certain columns aren't used in output

- No filter (WHERE clause), so it retrieves data unnecessarily.

## Refactoring and Optimization
To improve performance:
- Add Indexes to columns frequently used in JOINS

 - Reduce unnecessary joins

 - Filter data if applicable

 - Select only required columns
