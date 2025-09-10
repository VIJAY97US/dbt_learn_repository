WITH base AS (
    SELECT * FROM DBTPRACTICE.STAGING.STG_EXPENSES
),

dq_check AS (
    SELECT *,
        
        CASE
            WHEN claimed_amount > 10000 AND expense_type IN ('TRAVEL', 'HOTEL') THEN 'VIOLATION'
            ELSE 'OK'
        END AS policy_violation_flag
    FROM base
)

SELECT
    claim_id,
    employee_id,
    claim_date,
    expense_type,
    claimed_amount,
    currency,
    approval_status,
    approver_id,
    policy_violation_flag
FROM dq_check