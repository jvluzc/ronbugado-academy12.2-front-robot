*** Settings ***
Library            SeleniumLibrary
Documentation      Keywords relacionadas a feature de LOGIN


*** Variables ***
${baseURL}          https://automacao.qacoders.dev.br/login
${email_imput}      id=email
${senha_imput}      id=password
${entrar_button}    id=login

*** Keywords ***
Abrir Navegador
  # pra abir o navegador é só substituir a primeira linha abaixo por = Open Browser  browser=chrome
  # pra não abir o navegador é só substituir a primeira linha abaixo por = Open Browser    ${baseURL}    headlesschrome
  Open Browser    headlesschrome
  Maximize Browser Window

Fechar Navegador
  Close Browser

Acessar tela de login
  Go To    url=${baseURL}
  Wait Until Element Is Visible    locator=${email_imput}
  Capture Page Screenshot
  
Digitar e-mail e senha
  [Arguments]    ${email}    ${senha}
  Wait Until Element Is Visible    locator=${email_imput}
  Input Text                       locator=${email_imput}    text=${email}
  Input Password                   locator=${senha_imput}    password=${senha}
  Capture Page Screenshot
  
Clicar no botão ENTRAR
  Wait Until Element Is Visible    locator=${email_imput}
  Click Button                     locator=${entrar_button}
  
Validar login com sucesso no sistema 
  Wait Until Element Is Visible    xpath=//button[text()='Logout']
  Capture Page Screenshot

Validar mensagem de erro de e-mail inválido
  Wait Until Element Is Visible    xpath=//p[contains(text(), 'Digite um email válido')]
  Capture Page Screenshot

Validar alerta de erro de email/senha errado
  Wait Until Element Is Visible    xpath=//div[@role='alert']
  Capture Page Screenshot

Validar mensagem de e-mail obrigatório
  Wait Until Element Is Visible    xpath=//p[contains(text(), 'O email é obrigatório')]
  Capture Page Screenshot

Validar mensagem de senha obrigatório
  Wait Until Element Is Visible    xpath=//p[contains(text(), 'A senha é obrigatória')]
  Capture Page Screenshot

Validar redirecionamento para página "Esqueci minha senha"
  Wait Until Element Is Visible    locator=${email_imput}
  Click Link                       xpath=//a[contains(text(), 'Esqueci minha senha')]
  Sleep    5
  Capture Page Screenshot
  ${url_atual}=    Get Location
  Should Not Be Equal    ${url_atual}    ${baseURL}
  

Validar redirecionamento para página "Primeiro acesso / Acesse aqui"
  Wait Until Element Is Visible    locator=${email_imput}
  Click Link                       xpath=//a[contains(text(), 'Acesse aqui')]
  Sleep    5
  Capture Page Screenshot
  ${url_atual}=    Get Location
  Should Not Be Equal    ${url_atual}    ${baseURL}