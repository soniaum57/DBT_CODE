{{ config(
    materialized="incremental",
    incremental_strategy="append",
) }}

select * from {{source('datafeed_shared_schema','STG_ORDERS')}} where id in(97, 98, 99)
