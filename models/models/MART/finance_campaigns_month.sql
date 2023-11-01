SELECT
        DATE_TRUNC (date_date, MONTH) AS datemonth,  -- Extracting month and year from the date
        SUM(ads_cost) as total_ads_cost,
        SUM (ads_cost) as ads_margin,   -- Assuming average of ads_cost represents "ads_margin"
        AVG(impression) as average_impression,  -- This is a placeholder; adjust as needed
        AVG(click) as average_click   -- This is a placeholder; adjust as needed
        -- Add other aggregations here as required (e.g., average_basket)
    FROM {{ ref('int_campaigns') }}
    GROUP BY datemonth

    ORDER BY datemonth