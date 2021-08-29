#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastro no Rocklov que possui equipamentos musicais no
    Quero cadastro meus equipamentos
    Para que eu possa disponibilizados para locação

    Contexto: Login
        * Login com "betao@yahoo.com" e "pwd123"

    @anuncio
    Cenario: Novo equipo

        Dado que acesso o formulario de cadastro de anuncios
            E que eu tenho o seguinte equipamento:
            | thumb     | fender-sb.jpg |
            | nome      | Fender Strado |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ser esse item no meu Dashboard

    @temp
    Esquema do Cenario: Tentativa de cadastro de anúncios

        Dado que acesso o formulario de cadastro de anuncios
            E que eu tenho o seguinte equipamento:
            | thumb     | <foto>      |
            | nome      | <nome>      |
            | categoria | <categoria> |
            | preco     | <preco>     |
        Quando submeto o cadastro desse item
        Então deve conter a mensagem de alerta: "<saida>"

        Exemplos:
            | foto          | nome            | categoria | preco | saida                                |
            |               | Violão de Nylon | Cordas    | 150   | Adicione uma foto no seu anúncio!    |
            | clarinete.jpg |                 | Outros    | 150   | Informe a descrição do anúncio!      |
            | mic.jpg       | Microfone Shure |           | 150   | Informe a categoria                  |
            | mic.jpg       | Microfone Shure | Outros    |       | Informe o valor da diária            |
            | mic.jpg       | Microfone Shure | Outros    | asd   | O valor da diária deve ser numérico! |
            | mic.jpg       | Microfone Shure | Outros    | 50a   | O valor da diária deve ser numérico! |