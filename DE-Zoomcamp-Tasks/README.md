```markdown
# DE-ZoomCamp Tasks

## Overview
This repository contains solutions to the Module 1 tasks of the Data Engineering Zoomcamp (DE-ZoomCamp). The tasks cover Docker usage, PostgreSQL networking, SQL queries on NYC taxi trip data, and basic Terraform commands.

---

## Module 1

### Q1: Docker & pip Version
To explore the Python environment used in the course:

- Run the container interactively:
  ```bash
  docker run -it --entrypoint=bash python:3.13
  ```

- Check the installed `pip` version inside the container:
  ```bash
  pip --version
  ```

- **Output observed:**
  ```
  pip 25.3 from /usr/local/lib/python3.13/site-packages/pip (python 3.13)
  ```

---

### Q2: Network Connectivity
When connecting to a PostgreSQL database:

- **Same Docker network**: Connect directly to the internal port  
  → `postgres:5432`
- **Different network (e.g., host)**: Use the externally mapped port  
  → `postgres:5433`

---

## Usage & Examples

### Q3: Count Short Trips in November 2025
**Question:** How many green taxi trips in November 2025 had a trip distance of 1 mile or less?

**Answer:** `8,007`

**SQL Query:**
```sql
SELECT COUNT(1)
FROM green_taxi_trips
WHERE 
  lpep_pickup_datetime >= '2025-11-01' 
  AND lpep_pickup_datetime < '2025-12-01'
  AND trip_distance <= 1;
```

---

### Q4: Date with Highest Trip Distance (Under 100 Miles)
**Question:** On which date in November 2025 was the longest trip (under 100 miles) recorded?

**Answer:** `2025-11-14`

**SQL Query:**
```sql
SELECT 
  DATE(lpep_pickup_datetime) AS pickup_date,
  MAX(trip_distance) AS high_distance
FROM green_taxi_trips
WHERE trip_distance < 100
GROUP BY pickup_date
ORDER BY MAX(trip_distance) DESC
LIMIT 1;
```

![Q4 Result](https://github.com/user-attachments/assets/c89640b1-90d9-4f8b-9733-02a8187af242)

---

### Q5: Zone with Highest Total Amount on 2025-11-18
**Question:** Which pickup zone generated the highest total fare amount on November 18, 2025?

**Answer:** `East Harlem North`

**SQL Query:**
```sql
SELECT
  z."Zone" AS zone_data,
  SUM(total_amount) AS total_amt
FROM
  green_taxi_trips g
  JOIN zones z ON g."PULocationID" = z."LocationID"
WHERE
  DATE(lpep_pickup_datetime) = '2025-11-18'
GROUP BY z."Zone"
ORDER BY total_amt DESC
LIMIT 1;
```

![Q5 Result](https://github.com/user-attachments/assets/e2c98264-3b3d-4ee3-9e4f-78debec139aa)

---

### Q6: Drop-off Zone for Highest Tip from East Harlem North
**Question:** For trips originating in *East Harlem North* during November 2025, which drop-off zone received the highest tip?

**Answer:** `Yorkville West`

**SQL Query:**
```sql
SELECT z1."Zone"
FROM (
  SELECT
    g."DOLocationID",
    g."tip_amount"
  FROM
    green_taxi_trips g
    JOIN zones z ON g."PULocationID" = z."LocationID"
  WHERE 
    lpep_pickup_datetime >= '2025-11-01' 
    AND lpep_pickup_datetime < '2025-12-01'
    AND z."Zone" = 'East Harlem North'
  ORDER BY g."tip_amount" DESC
  LIMIT 1
) t
JOIN zones z1 ON t."DOLocationID" = z1."LocationID";
```

![Q6 Result](https://github.com/user-attachments/assets/006d262d-07fe-4eca-889a-7129f9c48dc8)

---

### Q7: Terraform Commands
Basic workflow for provisioning infrastructure using Terraform:

```bash
terraform init
terraform apply -auto-approve
terraform destroy
```
```
