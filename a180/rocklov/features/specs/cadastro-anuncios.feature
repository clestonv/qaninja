#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastro no Rocklov que possui equipamentos musicais no
    Quero cadastro meus equipamentos
    Para que eu possa disponibilizados para locação de

    @anuncio
    Cenario: Novo equipo

        Dado que estou logadocomo "betao@yahoo.com" e "pwd123"
            E que acesso o formulario de cadastro de anuncios
            E que eu tenho o seguinte equipamento:
            | thumb     | fender-sb.jpg |      
            | nome      | Fender Strado |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ser esse item no meu Dashboard