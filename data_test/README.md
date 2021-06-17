# data_test

Play with how tests work in dbt

Using model from dbt jaffle shop example to kick start it
https://github.com/fishtown-analytics/jaffle_shop.git


The target/run_results.json is a source of tests from `dbt test`


There other way is to do it as models. See

* models/dq_customers.sql
* models/dq_orders.sql
* macros/insert_into_test_history.sql
* dbt_project.yml `on-run-start` and `on-run-end`

