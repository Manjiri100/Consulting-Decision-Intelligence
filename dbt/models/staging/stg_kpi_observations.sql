SELECT *, actual_value-target_value AS variance_to_target,
CASE WHEN target_value=0 THEN NULL ELSE (actual_value-target_value)/ABS(target_value)*100 END AS variance_pct
FROM read_csv_auto('data/sample/kpi_observations.csv');
