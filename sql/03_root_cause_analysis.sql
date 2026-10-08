-- Connect material KPI gaps to operational events
SELECT k.business_unit_id,k.period,k.kpi_id,k.variance_pct,e.event_type,e.severity,e.event_count,e.estimated_impact
FROM kpi_performance k LEFT JOIN operational_events e ON k.business_unit_id=e.business_unit_id AND k.period=e.period
WHERE ABS(k.variance_pct)>=10 ORDER BY ABS(k.variance_pct) DESC,e.estimated_impact DESC;
