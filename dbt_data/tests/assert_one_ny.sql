SELECT sum(case when state = 'NY' then 1 else 0 end) > 1
FROM {{ ref('my_first_dbt_model') }}
