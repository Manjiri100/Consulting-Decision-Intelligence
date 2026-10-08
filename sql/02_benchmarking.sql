-- Compare business-unit KPI performance with enterprise benchmarks
SELECT o.business_unit_id,o.kpi_id,o.period,o.actual_value,b.benchmark_value,
o.actual_value-b.benchmark_value AS benchmark_gap,
CASE WHEN b.benchmark_value=0 THEN NULL ELSE (o.actual_value-b.benchmark_value)/ABS(b.benchmark_value)*100 END AS benchmark_gap_pct
FROM kpi_observations o JOIN benchmark b ON o.kpi_id=b.kpi_id AND b.benchmark_group='Enterprise';
