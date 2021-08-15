# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como o cliente está executando o login
  Quero executar o login do Ecommerce
  Para ele possa fazer o uso do Ecommerce para as compras

Contexto:
  Dado que o acesso ao login
    
  # Completar o cenário abaixo
  @Realizar_login
  Cenário: Realizar login
    Dado que o acesso ao login
    Quando submeto meus dados do login
    Então sou redirecionado para a tela de My account

  @login_com_falha
  # Completar o cenário abaixo
  Cenário: Login com falha
    Dado que o acesso ao login
    Quando submeto meus dados do login sem o email
    Então vejo a mensagem de alerta: There is 1 error