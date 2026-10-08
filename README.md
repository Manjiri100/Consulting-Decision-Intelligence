# Consulting Decision Intelligence

Enterprise decision-intelligence analytics platform designed to move fragmented enterprise performance data into trusted, comparable and actionable management decisions.

## Business Problem

Enterprise leadership teams often receive KPI results from different systems and business units. Definitions vary, benchmarks are inconsistent, data-quality issues are hidden, and root-cause analysis is slow.

This project creates a repeatable analytical framework for KPI standardisation, business-unit benchmarking, root-cause analysis, data trust, and management action prioritisation.

## Technology

SQL, Python, Pandas, dbt, Power BI, DuckDB-compatible analytical SQL, GitHub Actions.

## Analytical Flow

Source Data -> Data Quality -> KPI Standardisation -> Benchmarking -> Root Cause -> Decision Intelligence -> Executive Action

## Scale Design

The repository contains compact sample data for GitHub usability. `scripts/generate_data.py` supports configurable enterprise-scale synthetic KPI observations, allowing millions of records to be generated locally without committing large generated files to Git.

## Core Questions

1. Which business units are materially below benchmark?
2. Which KPIs are deteriorating fastest?
3. What operational factors are associated with performance gaps?
4. Which data-quality issues could undermine management decisions?
5. Which areas should receive intervention first?
6. What evidence supports each recommended action?

## Data

All data is synthetic and created for portfolio demonstration purposes. No client or confidential enterprise data is used.
