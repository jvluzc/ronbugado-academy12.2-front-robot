*** Settings ***
Library            SeleniumLibrary
Documentation      Keywords relacionadas a feature de USERS


*** Variables ***
${baseURL}                https://automacao.qacoders.dev.br/login
${usuarios_select}        id=Usuários
${novoCadastro_button}    id=Novo Cadastro
${modal_NovoCadastro}     css=.css-1gibqcr
${input_NomeCompleto}     id=fullName
${input_Email}            id=mail
${input_perfilDeAcesso}   id=accessProfile
${input_CPF}              id=cpf
${input_Senha}            id=password
${input_ConfirmarSenha}   id=confirmPassword
${button_Salvar}          id=save
${button_Cancelar}        id=cancel


*** Keywords ***
Acessar tela de Usuários
  Wait Until Element Is Visible       css=.css-11z55jn        timeout=50s
  Capture Page Screenshot
  Click Element                       css=.css-11z55jn
  Wait Until Element Is Visible       locator=${usuarios_select}    timeout=50s
  Capture Page Screenshot
  Click Element                       locator=${usuarios_select}
  Sleep    2
  Capture Page Screenshot
  ${url_atual}=                    Get Location
  Should Be Equal                  ${url_atual}    https://automacao.qacoders.dev.br/user

Cadastrar Novo Usuário
  [Arguments]    ${nomeCompleto}   ${email}    ${perfilAcesso}    ${cpf}    ${senha}    ${confirmarSenha}
  Wait Until Element Is Visible     ${novoCadastro_button}
  Click Element                     ${novoCadastro_button}
  Wait Until Element Is Visible     ${modal_NovoCadastro}
  Execute JavaScript                document.body.style.zoom='80%'
  Capture Page Screenshot
  Input Text                        ${input_NomeCompleto}     text=${nomeCompleto}
  Clear Element Text                ${input_Email}
  Input Text                        ${input_Email}            text=${email}
  Input Text                        ${input_perfilDeAcesso}   text=${perfilAcesso}
  Input Text                        ${input_CPF}              text=${cpf}
  Clear Element Text                ${input_Senha}
  Input Text                        ${input_Senha}            text=${senha}
  Input Text                        ${input_ConfirmarSenha}   text=${confirmarSenha}
  Capture Page Screenshot

Selecionar o botão "SALVAR"
  Wait Until Element Is Visible     ${button_Salvar}
  Scroll Element Into View          ${button_Salvar}
  Execute JavaScript                document.body.style.zoom='80%'
  Sleep    2
  Execute JavaScript                document.getElementById('save').click()
  Sleep    2
  Capture Page Screenshot

Validar redirecionamento para Tela de Cadastro de Usuários
  ${url_atual}=    Get Location
  Should Be Equal                  ${url_atual}    https://automacao.qacoders.dev.br/user

Selecionar o botão "CANCELAR"
  Wait Until Element Is Visible            ${button_Cancelar}
  Capture Page Screenshot
  Click Button                     locator=${button_Cancelar}
  Sleep    2
  Capture Page Screenshot

Mensagem de ERRO: 'Nome Completo' Obrigatório
  Wait Until Element Is Visible     xpath=//p[text()='O campo nome completo é obrigatório']
  Capture Page Screenshot

Alerta de ERRO: campo Nome Completo
  Wait Until Element Is Visible     xpath=//div[text()='Informe o nome e sobrenome com as iniciais em letra maiúscula e sem caracteres especiais.']
  Capture Page Screenshot                               

Alerta de ERRO: campo deve ter no máximo 100 caracteres
  Wait Until Element Is Visible     xpath=//div[text()='O nome completo deve ter no máximo 100 caracteres.']
  Capture Page Screenshot

Alerta de ERRO: O campo nome completo não deve conter números
  Wait Until Element Is Visible     xpath=//div[text()='O campo nome completo não deve conter números']
  Capture Page Screenshot

Mensagem de ERRO: 'E-mail' Obrigatório
  Wait Until Element Is Visible     xpath=//p[text()='O campo email é obrigatório']
  Capture Page Screenshot

Mensagem de ERRO: 'E-mail' Inválido
  Wait Until Element Is Visible     xpath=//p[text()='Email inválido']
  Capture Page Screenshot

Mensagem de ERRO: 'Perfil de Acesso' Obrigatório
  Wait Until Element Is Visible     xpath=//p[text()='O campo perfil de acesso é obrigatório']
  Capture Page Screenshot

Mensagem de ERRO: 'Perfil de Acesso' inválido
  Wait Until Element Is Visible     xpath=//div[text()='O campo perfil de acesso deve ser preenchido de acordo com o seu cargo exemplo: ADMIN.']
  Capture Page Screenshot

Alerta de ERRO: campo CPF deve ter 11 digitos
  Wait Until Element Is Visible     xpath=//div[text()='Deve preencher o CPF com 11 dígitos']
  Capture Page Screenshot

Alerta de ERRO: campo CPF deve conter apenas numeros
  Wait Until Element Is Visible     xpath=//div[text()='Campo CPF deve conter apenas números']
  Capture Page Screenshot

Alerta de ERRO: CPF já cadastrado
  Wait Until Element Is Visible     xpath=//div[text()='O cpf informado já existe em nossa base de dados.']
  Capture Page Screenshot

Armazenar valor inserido no campo CPF
  Wait Until Element Is Visible   locator=${input_CPF}
  ${armazenaCPF}=    Get Value    locator=${input_CPF}
  Capture Page Screenshot
  RETURN    ${armazenaCPF}


Mensagem de ERRO: campo 'Senha' é obrigatório
  Wait Until Element Is Visible     xpath=//div[text()='O campo senha é obrigatório']
  Capture Page Screenshot


Mensagem de ERRO: campo 'Senha' deve ter entre 8-12 caracteres
  Wait Until Element Is Visible     xpath=//div[text()='Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.']
  Capture Page Screenshot

Mensagem de ERRO: campo 'Senha' deve ter letras maiusculas, minusculas, numeros e caracteres especiais
  Wait Until Element Is Visible     xpath=//div[text()='Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.']
  Capture Page Screenshot


Mensagem de ERRO: campo 'Confirmar Senha' é obrigatório
  Wait Until Element Is Visible     xpath=//div[text()='O campo de confirmação de senha é obrigatório.']
  Capture Page Screenshot


Mensagem de ERRO: campo 'Senha' e 'Confirmar Senha' não conferem
  Wait Until Element Is Visible     xpath=//div[text()='As senhas não conferem.']
  Capture Page Screenshot