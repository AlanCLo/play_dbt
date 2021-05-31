
{{ config(materialized='table', alias='first_model') }}

with source_data as (

    select null as id, 'CT' as state, '2020-01-01 00:00:00.000' as updated_at
    union all
    select 1 as id, 'NY' as state, '2020-01-02 00:00:00.000' as updated_at
    union all
    select 2 as id, 'VT' as state, '2020-01-03 00:00:00.000' as updated_at
    union all
    select 3 as id, 'VT' as state, '2020-01-04 00:00:00.000' as updated_at
    union all
    select 4 as id, 'VT' as state, '2020-01-05 00:00:00.000' as updated_at
    union all
    select 5 as id, 'VT' as state, '2100-01-01 00:00:00.000' as updated_at

)

select *
from source_data
