
{{ config(materialized='view', alias='my_view') }}

select *
from {{ ref('my_ephemeral') }}
where id is not null
