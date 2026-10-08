# Consulting Decision Intelligence

Enterprise decision-intelligence platform designed to transform fragmented performance data into **trusted KPIs, comparable business-unit insights, root-cause analysis, and prioritised management actions**.

<img src="https://github.com/user-attachments/assets/21c276dc-2b42-4b7e-b87f-bce7c0f5598f" width="100%">

## Business Problem

Enterprise leadership teams often receive KPI data from multiple systems and business units. Inconsistent definitions, unreliable benchmarks, hidden data-quality issues, and disconnected operational information can make performance investigation slow and decision-making difficult.

This project establishes a repeatable framework to move from **performance measurement to evidence-based management action**.

## Analytical Flow

**Source Data → Data Quality → KPI Standardisation → Benchmarking → Root-Cause Analysis → Decision Intelligence → Executive Action**

## Key Capabilities

* **KPI Standardisation** — consistent definitions and measurement logic
* **Benchmarking** — business-unit performance against enterprise benchmarks
* **Root-Cause Analysis** — investigation of operational drivers behind performance gaps
* **Data Trust** — validation of completeness, consistency, and analytical reliability
* **Decision Prioritisation** — identification of areas requiring management intervention
* **Executive Analytics** — decision-focused Power BI dashboard design

## Technology

**SQL | Python | Pandas | dbt | Power BI | DuckDB | GitHub Actions**

## Data & Scale

The repository contains compact synthetic sample data for GitHub usability.

`scripts/generate_data.py` supports configurable **enterprise-scale synthetic KPI datasets**, including millions of observations, without committing large generated files to the repository.

## Repository Structure

```text
data/       → Sample and generated datasets
sql/        → KPI, benchmarking, root-cause & decision analysis
dbt/        → Staging, analytical models & tests
scripts/    → Enterprise-scale data generation
powerbi/    → Executive dashboard specification
docs/       → Architecture, business story & validation
.github/    → Automated quality workflow
```

## Outcome

The project demonstrates how enterprise analytics can move beyond **reporting what happened** to establishing a structured process for determining:

**What changed → Where → Why → How confident are we → What should happen next**

## Data Disclaimer

All data is synthetic and created for portfolio demonstration purposes. No client, employer, confidential, or personally identifiable data is used.

## Data

All data is synthetic and created for portfolio demonstration purposes. No client or confidential enterprise data is used.
