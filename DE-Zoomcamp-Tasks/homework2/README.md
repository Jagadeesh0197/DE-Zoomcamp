### Module 2

#### Q1: What is the uncompressed file size of `yellow_tripdata_2020-12.csv` after extraction?
**Answer:** 128.3 MiB  
![Uncompressed file size](https://github.com/user-attachments/assets/e0e41d2a-da6c-4277-b55e-f641a88a21f7)

#### Q2: What is the rendered value of the variable `file`?
**Answer:** `green_tripdata_2020-04.csv`

**Explanation:**  
The variable `file` is defined in a templated context (e.g., in a workflow like Prefect or Jinja). When rendered using `render(vars.file)`, it resolves to the filename `green_tripdata_2020-04.csv`, which is then used in subsequent steps.
![Rendered variable value](https://github.com/user-attachments/assets/e0e41d2a-da6c-4277-b55e-f641a88a21f7)

### Q3: How many rows are there for the Yellow Taxi data for all CSV files in the year 2020?
**Answer:** 24,648,499

### Q4: How many rows are there for the Green Taxi data for all CSV files in the year 2020?
**Answer:** 1,734,051
<img width="410" height="99" alt="image" src="https://github.com/user-attachments/assets/a0b033f1-ee39-43f3-a274-ca73afe4275a" />

### Q5: How many rows are there for the Yellow Taxi data for the March 2021 CSV file?
**Answer:** 

### Q5: How would you configure the timezone to New York in a Schedule trigger?
**Answer:** Add a `timezone` property set to `America/New_York` in the `Schedule` trigger configuration





