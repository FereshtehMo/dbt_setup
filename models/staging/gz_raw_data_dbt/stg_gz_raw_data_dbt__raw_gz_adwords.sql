with 

source as (

    select * from {{ source('gz_raw_data_dbt', 'raw_gz_adwords') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name,
        ads_cost,
        impression,
        click

    from source

)

select * from renamed