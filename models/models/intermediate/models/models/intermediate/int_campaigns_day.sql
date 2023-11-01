
    SELECT
        date_date AS data_date,  -- Renaming the column to "data_date"
        SUM(ads_cost) as total_ads_cost,
        SUM(impression) as total_impressions,
        SUM(click) as total_clicks
    FROM {{ ref('int_campaigns') }}
    GROUP BY date_date
