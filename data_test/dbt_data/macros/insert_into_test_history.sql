{% macro insert_into_test_history(test_table, target_table) %}

INSERT INTO {{target.schema}}.{{ target_table }} (run_date, table_name, test_name, test_result, test_details)
with test_data as (
    select * from {{target.schema}}.{{ test_table }}
)
SELECT
    NOW() as run_date,
    '{{ test_table }}' as test_table,
    test_data.test_name,
    test_data.test_result,
    test_data.test_details
FROM test_data
;

{% endmacro %}
