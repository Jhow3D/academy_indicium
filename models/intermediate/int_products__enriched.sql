with 
    -- import models
    products as (
        select *
        from {{ ref('stg_erp_products') }}
    )
    , suppliers as (
        select *
        from {{ ref('stg_erp_suppliers') }}
    )
    , categories as (
        select *
        from {{ ref('stg_erp__category') }}
    )
    , joined as (
        select 
            products.product_pk
            , products.product_name
            , products.quantity_per_unit
            , products.unit_price
            , products.units_in_stock
            , products.units_on_order
            , products.reorder_level
            , products.is_discontinued
            , suppliers.suppliers_name 
            , suppliers.suppliers_city
            , suppliers.suppliers_country
            , categories.category_nome

        from products
        left join suppliers on products.supplier_fk = suppliers.suppliers_pk
        left join categories on products.category_fk = categories.category_pk            
    )

select *
from joined