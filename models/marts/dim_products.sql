with
    int_products as (
        SELECT *
        FROM {{ ref('int_products__enriched') }}
    )

select * 
from int_products
