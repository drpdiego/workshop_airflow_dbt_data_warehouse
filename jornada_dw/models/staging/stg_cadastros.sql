with source as (
    select * from {{ref('cadastros')}}
),

transformado as (
    select
        -- Chaves
        id as id_cliente,
        cpf,

        -- Dados Pessoais
        nome,
        data_nascimento as data_nascimento,
        genero,

        -- Dados de Contato
        email,
        telefone,

        -- Endereço
        cep,
        cidade,
        estado,
        pais,

        -- Datas
        data_cadastro as dt_cadastro,

        -- Metadados
        current_timestamp as etl_inserted_at

    from source
)

select * from transformado