{{ config(
    database = 'DEMO_DB',
    severity = 'error',
    store_failure = true,
    schema = 'public',
    alias = 'invalid_Enddate'
) }}
SELECT * FROM demo_db.public.Gen_Tst_customers where CREATED_AT = '9999-12-31'