with 
    source as (
        select * 
        from {{ source('erp', 'suppliers') }} 
    )
    , renamed as(
    select     
        cast(ID as varchar) as suppliers_pk
        , cast(COMPANYNAME as varchar) as suppliers_name
        -- , cast(CONTACTNAME as varchar) as suppliers_
        -- , cast(CONTACTTITLE as varchar) as suppliers_
        -- , cast(ADDRESS as varchar) as suppliers_
        , cast(CITY as varchar) as suppliers_city
        , cast(REGION as varchar) as suppliers_region
        -- , cast(POSTALCODE as varchar) as suppliers_
        , cast(COUNTRY as varchar) as suppliers_country
        -- , cast(PHONE as varchar) as suppliers_
        -- , cast(FAX as varchar) as suppliers_
        -- , cast(HOMEPAGE as varchar) as suppliers_
    from source
    )

select *
from renamed