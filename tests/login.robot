*** Settings ***
Resource        ../resources/keywords_login.resource
Test Setup      Abrir Navegador
Test Teardown   Fechar Navegador


*** Test Cases ***
[CT1] - Login de usuário administrador com sucesso
    Acessar tela de login
    Digitar e-mail e senha    
    ...    sysadmin@qacoders.com    
    ...    1234@Test
    Clicar no botão ENTRAR
    Validar login com sucesso no sistema

[CT2] - Login com e-mail inválido e senha válida
    Acessar tela de login
    Digitar e-mail e senha   
    ...    sysadmin qacoders.com    
    ...    1234@Test
    Clicar no botão ENTRAR
    Validar mensagem de erro de e-mail inválido

[CT3] - Login com e-mail válido e senha inválida
    Acessar tela de login
    Digitar e-mail e senha    
    ...    sysadmin@qacoders.com    
    ...    1 1 1 1
    Clicar no botão ENTRAR
    Validar alerta de erro de email/senha errado

[CT4] - Login com os campos e-mail e senha vazios
    Acessar tela de login
    Digitar e-mail e senha   
    ...    
    ...    
    Clicar no botão ENTRAR
    Validar mensagem de e-mail obrigatório
    Validar mensagem de senha obrigatório

[CT5] - Login com e-mail no formato válido mas não cadastrado
    Acessar tela de login
    Digitar e-mail e senha   
    ...    teste123gsdad1@qacoders.com    
    ...    1234@Test
    Clicar no botão ENTRAR
    Validar alerta de erro de email/senha errado

# [CT6] - Validar link "Esqueci minha senha" 
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Validar redirecionamento para página "Esqueci minha senha"

# [CT7] - Validar link "Primeiro Acesso?/ acesse aqui"
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Validar redirecionamento para página "Primeiro acesso / Acesse aqui"

#Executar os testes:
  #1. robot .\tests                               isso vai executar todos os arquivos de testes que estiverem dentro da pasta "tests".
  #2. robot -d results .\tests\                   vai criar uma pasta chamada "results" e guardar o resultado de cada execução de testes na pasta que foi criada.
  #3. robot -d results .\tests\login.robot        vai executar apenas os testes que estiverem dentro do arquivo "login.robot" e guaradr os resultados na pasta "results".