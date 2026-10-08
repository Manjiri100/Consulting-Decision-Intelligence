-- Prioritise management actions
SELECT business_unit_id,kpi_id,period,performance_status,ABS(variance_pct) AS gap_magnitude,data_quality_score,
CASE WHEN data_quality_score<90 THEN 'Validate Data' WHEN ABS(variance_pct)>=15 THEN 'Immediate Intervention' WHEN ABS(variance_pct)>=5 THEN 'Management Review' ELSE 'Monitor' END AS decision_priority
FROM kpi_performance ORDER BY gap_magnitude DESC;
