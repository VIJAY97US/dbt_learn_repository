{{ config(
    materialized='incremental',
    incremental_strategy='append',
    database='demo_db',
    schema='public'
) }}

SELECT
    TXN_ID,
    ACCOUNT_ID,
    TXN_DATE,
    TXN_TYPE,
    AMOUNT,
    CREATED_AT
FROM DEMO_DB.PUBLIC.BANK_TRANSACTIONS_RAW