"""Generate configurable enterprise-scale synthetic KPI observations."""
import argparse, os
import numpy as np
import pandas as pd

p=argparse.ArgumentParser()
p.add_argument('--rows', type=int, default=2000000)
p.add_argument('--output', default='data/generated')
p.add_argument('--seed', type=int, default=42)
a=p.parse_args()
rng=np.random.default_rng(a.seed)
os.makedirs(a.output, exist_ok=True)
n=a.rows
df=pd.DataFrame({
 'observation_id':np.arange(1,n+1),
 'business_unit_id':[f'BU{x:06d}' for x in rng.integers(1,250001,n)],
 'kpi_id':[f'KPI{x:03d}' for x in rng.integers(1,31,n)],
 'period':rng.choice(pd.period_range('2025-01','2026-12',freq='M').astype(str),n),
 'actual_value':np.round(rng.normal(100,10,n),2),
 'target_value':np.round(rng.normal(100,5,n),2),
 'data_quality_score':np.round(np.clip(rng.normal(97,3,n),60,100),2)
})
df.to_csv(os.path.join(a.output,'kpi_observations_large.csv'),index=False)
print(f'Generated {len(df):,} observations')
