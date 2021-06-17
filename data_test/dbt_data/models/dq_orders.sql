
with gift_issue as (
    select
        order_id
    from {{ ref('orders') }}
    where gift_card_amount >=30
),
coupon_issue as (
    select
        order_id
    from {{ ref('orders') }}
    where coupon_amount >= 25
)

SELECT
    'Gift card amount too high' as test_name,
    CASE 
        WHEN count(*) > 0 THEN 'FAILED'
        ELSE 'PASSED'
    END as test_result,
    'Number of orders = ' || count(*) as test_details
FROM gift_issue
UNION
SELECT
    'Coupon amount too high' as test_name,
    CASE 
        WHEN count(*) > 0 THEN 'FAILED'
        ELSE 'PASSED'
    END as test_result,
    'Number of orders = ' || count(*) as test_details
FROM coupon_issue
