
with issues as (
    select
        customer_id
    from {{ ref('customers') }}
    where number_of_orders >= 5
)

select
    'Customers with too many orders' as test_name,
    case 
        when count(*) > 0 THEN 'FAILED'
        else 'PASSED'
    END as test_result,
    'Number of customers = ' || count(*) as test_details
from issues

