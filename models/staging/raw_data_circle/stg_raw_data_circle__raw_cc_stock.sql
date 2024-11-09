with 

source as (

    select * from {{ source('raw_data_circle', 'raw_cc_stock') }}

),

renamed as (

    select
        CONCAT(model, '_', color, '_', IFNULL(size, 'no_size'))
        model,
        model_name,
        color,
        color_name,
        size,
        forecast_stock,
        stock,
        price

    from source

)

select * from renamed
