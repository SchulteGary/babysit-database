# Babysit — Babysitting Appointment Database

A normalized relational database built in PostgreSQL to manage a babysitting/childcare appointment scheduling system. Designed with proper relational modeling principles to track families, children, members (caregivers/parents), and scheduled appointments.

## Overview

This project models a simple babysitting service where:
- **Members** (caregivers or parents) are grouped into families
- **Children** are also grouped by family
- **Appointments** link a specific member to a specific child for a scheduled time window

## Schema Design

The database consists of 3 tables, normalized to reduce redundancy and enforce data integrity through primary and foreign key constraints.

### `member`
| Column   | Type                | Description                |
|----------|---------------------|-----------------------------|
| memberid | integer (PK)        | Unique member identifier    |
| name     | character(32)       | Member's name                |
| email    | character varying(64)| Contact email               |
| phone    | character(16)       | Contact phone number         |
| familyid | integer             | Groups members by family     |

### `child`
| Column      | Type          | Description                 |
|-------------|---------------|------------------------------|
| childid     | integer (PK)  | Unique child identifier      |
| dateofbirth | date          | Child's date of birth        |
| familyid    | integer       | Groups children by family    |

### `appointment`
| Column     | Type                        | Description                          |
|------------|-----------------------------|----------------------------------------|
| apptid     | integer (PK)                | Unique appointment identifier          |
| start_time | timestamp without time zone | Appointment start time                 |
| end_time   | timestamp without time zone | Appointment end time                   |
| memberid   | integer (FK → member)       | Member attending the appointment       |
| childid    | integer (FK → child)        | Child associated with the appointment  |

### Entity Relationships
- `appointment.memberid` → `member.memberid` (many-to-one)
- `appointment.childid` → `child.childid` (many-to-one)

This structure normalizes the data to 3NF, avoiding duplicate storage of member or child details across multiple appointments.

## Example Queries

**Find all appointments for a specific child:**
```sql
SELECT a.apptid, a.start_time, a.end_time, m.name AS caregiver
FROM appointment a
JOIN member m ON a.memberid = m.memberid
WHERE a.childid = 4;
```

**List each member with their total number of appointments (aggregation):**
```sql
SELECT m.name, COUNT(a.apptid) AS total_appointments
FROM member m
LEFT JOIN appointment a ON m.memberid = a.memberid
GROUP BY m.name
ORDER BY total_appointments DESC;
```

**Find all appointments scheduled in a given month (filtering):**
```sql
SELECT apptid, start_time, end_time
FROM appointment
WHERE start_time >= '2023-12-01' AND start_time < '2024-01-01'
ORDER BY start_time;
```

## Tech Used
- PostgreSQL
- SQL (DDL for schema design, DML for queries)

## Files
- `babysit_schema.sql` — table definitions, primary keys, and foreign key constraints
- `babysit_data.sql` — sample (fictional) data for testing queries

## Notes
All data in this repository is fictional/placeholder data generated for testing and demonstration purposes.
