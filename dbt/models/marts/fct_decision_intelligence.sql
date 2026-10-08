SELECT *, CASE WHEN data_quality_score<90 THEN 'Validate Data' WHEN ABS(variance_pct)>=15 THEN 'Immediate Intervention' WHEN ABS(variance_pct)>=5 THEN 'Management Review' ELSE 'Monitor' END AS decision_priority
FROM {{ ref('stg_kpi_observations') }}
