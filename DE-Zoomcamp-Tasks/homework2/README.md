# Module 2

### Q1: uncompressed file size of yellow_tripdata_2020-12.csv after extraction?
* Ans: 128.3 MiB
* <img width="995" height="180" alt="image" src="https://github.com/user-attachments/assets/e0e41d2a-da6c-4277-b55e-f641a88a21f7" />
### Q2: rendered value of the variable file?
* Ans: green_tripdata_2020-04.csv
* <img width="995" height="180" alt="image" src="https://github.com/user-attachments/assets/e0e41d2a-da6c-4277-b55e-f641a88a21f7" />
* Explanation: Actually we checking the size of the rendered file to which is render(vars.file), it is rendered as file name in later stages. 

---

### Module 2

#### Q1: What is the uncompressed file size of `yellow_tripdata_2020-12.csv` after extraction?
**Answer:** 128.3 MiB  
![Uncompressed file size](https://github.com/user-attachments/assets/e0e41d2a-da6c-4277-b55e-f641a88a21f7)
---

#### Q2: What is the rendered value of the variable `file`?
**Answer:** `green_tripdata_2020-04.csv`
![Rendered variable value](https://github.com/user-attachments/assets/e0e41d2a-da6c-4277-b55e-f641a88a21f7)
**Explanation:**  
The variable `file` is defined in a templated context (e.g., in a workflow like Prefect or Jinja). When rendered using `render(vars.file)`, it resolves to the filename `green_tripdata_2020-04.csv`, which is then used in subsequent steps.

---
