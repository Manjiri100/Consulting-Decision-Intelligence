-- Standardise KPI performance and identify material gaps
WITH base AS (
 SELECT *, actual_value-target_value AS variance_to_target,
 CASE WHEN target_value=0 THEN NULL ELSE (actual_value-target_value)/ABS(target_value)*100 END AS variance_pct
 FROM kpi_observations
)
SELECT *, CASE WHEN data_quality_score<90 THEN 'DQ Risk' WHEN ABS(variance_pct)>=15 THEN 'Material Gap' WHEN ABS(variance_pct)>=5 THEN 'Watch' ELSE 'On Track' END AS performance_status
FROM base;
