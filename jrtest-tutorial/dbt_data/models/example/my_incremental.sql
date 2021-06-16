{{ config(materialized='incremental', unique_key='updated_at') }}

select *
from {{ ref('my_first_dbt_model') }}
where id <= 4

{% if is_incremental() %}
  and updated_at > (select max(updated_at) from {{ this }})
{% endif %}

