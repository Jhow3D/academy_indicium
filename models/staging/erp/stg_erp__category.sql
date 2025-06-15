with 

source as (

    select * from {{ source('erp', 'category') }}

),

renamed as (

    select
        cast(id as int) as category_pk
        , cast(categoryname as varchar) as category_nome
        , cast(description as varchar) as category_descricao

    from source

)

select * from renamed
