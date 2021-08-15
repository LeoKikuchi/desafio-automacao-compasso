# language: pt

Funcionalidade: Compras no Ecommerce Fake
    Como o cliente está adicionando produtos no carrinho
    Quero adicionar produtos no carrinho
    Para ele possa fazer compras dn Ecommerce 

Contexto:
    Dado que esteja na tela inicial para compras
      
    @adicionar_produto
    Cenário: clico em Add to Cart no produto       
        Quando clico em Add to Cart no produto
        Então deve adicionar o produto no carrinho
