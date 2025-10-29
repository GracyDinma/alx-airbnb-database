# Normalization of Database to 3NF

## Objective
To pply normalization principles to ensure the database is in the third normal form (3NF)

## Reviewing of schema and identifying any potential reundancies or violations of normalization principles.
The initial schema consists of six entities:
**Users**
**Property**
**Booking**
**Payment**
**Review**
**Message**

Each table includes a primary key (UUID) and foreign keys where relationship exists.

## Explanation of normalization steps
## First Normal Form (1NF)
**Rule:** Eliminating repeating groups and ensure atomic values.

- All attributes hold single values.
- Each table has a unique primary key.
Therefore, Database is in 1NF

## Second Normal Form (2NF)
**Rule:** Eliminate partial dependencies - all non-key attributes must depend on the whole primary key.

- Each table has a single-column primary key (UUID).
- No attributes depend on part of a composite key.
Database is in 2NF

## Third Normal Form (3NF)
**Rule:** Eliminate transitive dependencies - non-key attributes should not depend on other non-key attributes.

**User:** All attributes depend only on user_id.
**Property:** host_id references User.user_id; no redundancy.
**Booking:** All fields depend on booking_id.
**Payment:** All attributes depend only on payment_id.
**Review:** Unique constraint added (property_id, user_id)
**Message:** No redundant or derived fields.

Database is in Third Normal Form (3NF).

**Conclusion:**
The database schema now satisfies the requirements of the Third Normal Form (3NF), ensuring consistent, efficient and scalable data management.
