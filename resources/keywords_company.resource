*** Settings ***
Library            SeleniumLibrary
Documentation      Keywords relacionadas a feature de COMPANY


*** Variables ***
${baseURL}                 https://automacao.qacoders.dev.br/login
${empresa_select}          id=Empresa
${novoCadastro_button}     id=Novo Cadastro
${modal_NovaEmpresa}       css=.css-1gibqcr

# Dados da Empresa - Modal
${input_RazaoSocial}       id=companyName
${input_NomeFantasia}      id=fantasyName
${input_Email}             id=companyMail
${input_cnpj}              id=matriz
${input_telefone}          id=telephone
${input_descricaoServico}  id=serviceDescription
${input_NomeResponsável}   id=fullName

# Endereço da Empresa - Modal
${input_cep}               id=zipCode
${input_pais}              id=country
${input_cidade}            id=city
${input_estado}            id=state
${input_bairro}            id=district
${input_rua}               id=street
${input_numeroDoImovel}    id=number
${input_complemento}       id=complement

# Botões do Modal - Cadastro de Empresas
${button_salvarNovo}       id=save
${button_cancelar}         id=cancel

# Modal Editar Empresa
${button_EditarEmpresa}    xpath=(//*[@id='edit'])[1]
${modal_editarCadastro}    css=.css-1gibqcr




*** Keywords ***
Acessar tela de Empresas
  Wait Until Element Is Visible       locator=.css-11z55jn        timeout=50s
  Capture Page Screenshot
  Click Element                       locator=.css-11z55jn
  Wait Until Element Is Visible       locator=${empresa_select}      timeout=50s
  Capture Page Screenshot
  Click Element                       locator=${empresa_select}
  Sleep    2
  Capture Page Screenshot
  ${url_atual}=                    Get Location
  Should Be Equal                  ${url_atual}    https://automacao.qacoders.dev.br/company


Cadastrar Empresa - Dados
  [Arguments]    
  ...    ${razaoSocial}
  ...    ${nomeFantasia}
  ...    ${email}
  ...    ${cnpj}  
  ...    ${telefone}
  ...    ${descricaoDoServico}
  ...    ${NomeResponsável}
  Wait Until Element Is Visible     ${novoCadastro_button}
  Click Element                     ${novoCadastro_button}
  Wait Until Element Is Visible     ${modal_NovaEmpresa}
  Execute JavaScript                document.body.style.zoom='80%'
  Capture Page Screenshot
  Input Text                        ${input_RazaoSocial}        text=${razaoSocial}
  Input Text                        ${input_NomeFantasia}       text=${nomeFantasia}
  Input Text                        ${input_Email}              text=${email}
  Input Text                        ${input_cnpj}               text=${cnpj}
  Input Text                        ${input_telefone}           text=${telefone}
  Input Text                        ${input_descricaoServico}   text=${descricaoDoServico}
  Input Text                        ${input_NomeResponsável}    text=${NomeResponsável}
  Capture Page Screenshot


Cadastrar Empresa - Endereco
  [Arguments]    
  ...    ${cep}
  ...    ${pais}
  ...    ${cidade}
  ...    ${estado} 
  ...    ${bairro}
  ...    ${rua}
  ...    ${numeroDoImovel}
  ...    ${complemento}
  Capture Page Screenshot
  Wait Until Element Is Visible     ${input_cep}
  Input Text                        ${input_cep}                text=${cep}
  Input Text                        ${input_pais}               text=${pais}
  Input Text                        ${input_cidade}             text=${cidade}
  Input Text                        ${input_estado}             text=${estado}
  Input Text                        ${input_bairro}             text=${bairro}
  Input Text                        ${input_rua}                text=${rua}
  Input Text                        ${input_numeroDoImovel}     text=${numeroDoImovel}
  Input Text                        ${input_complemento}        text=${complemento}
  Capture Page Screenshot


Selecionar o botão "SALVAR" - Empresa
  Wait Until Element Is Visible     ${button_salvarNovo}
  Scroll Element Into View          ${button_salvarNovo}
  Execute JavaScript                document.body.style.zoom='80%'
  Sleep    2
  Execute JavaScript                document.getElementById('save').click()
  Sleep    2
  Capture Page Screenshot


Selecionar o botão "CANCELAR" - Empresa
  Wait Until Element Is Visible            ${button_cancelar}
  Capture Page Screenshot
  Click Button                     ${button_cancelar}
  Sleep    2
  Capture Page Screenshot


Validar redirecionamento para Tela de Cadastro de Empresa
  ${url_atual}=    Get Location
  Should Be Equal                  ${url_atual}    https://automacao.qacoders.dev.br/company


Editar Empresa - Dados
  [Arguments]    
  ...    ${razaoSocial}
  ...    ${nomeFantasia}
  ...    ${email}
  ...    ${cnpj}  
  ...    ${telefone}
  ...    ${descricaoDoServico}
  ...    ${NomeResponsável}
  Wait Until Element Is Visible     ${button_EditarEmpresa}
  Click Element                     ${button_EditarEmpresa}
  Wait Until Element Is Visible     ${modal_editarCadastro}
  Execute JavaScript                document.body.style.zoom='80%'
  Capture Page Screenshot
  Clear Element Text                ${input_RazaoSocial}
  Input Text                        ${input_RazaoSocial}        text=${razaoSocial}
  Clear Element Text                ${input_NomeFantasia}
  Input Text                        ${input_NomeFantasia}       text=${nomeFantasia}
  Clear Element Text                ${input_Email}
  Input Text                        ${input_Email}              text=${email}
  Clear Element Text                ${input_cnpj}
  Input Text                        ${input_cnpj}               text=${cnpj}
  Clear Element Text                ${input_telefone}
  Input Text                        ${input_telefone}           text=${telefone}
  Clear Element Text                ${input_descricaoServico}
  Input Text                        ${input_descricaoServico}   text=${descricaoDoServico}
  Clear Element Text                ${input_NomeResponsável}
  Input Text                        ${input_NomeResponsável}    text=${NomeResponsável}
  Capture Page Screenshot



Editar Empresa - Endereco
  [Arguments]    
  ...    ${cep}
  ...    ${pais}
  ...    ${cidade}
  ...    ${estado} 
  ...    ${bairro}
  ...    ${rua}
  ...    ${numeroDoImovel}
  ...    ${complemento}
  Wait Until Element Is Visible     ${button_EditarEmpresa}
  Click Element                     ${button_EditarEmpresa}
  Wait Until Element Is Visible     ${modal_editarCadastro}
  Execute JavaScript                document.body.style.zoom='80%'
  Capture Page Screenshot
  Clear Element Text                ${input_cep}
  Input Text                        ${input_cep}                text=${cep}
  Clear Element Text                ${input_pais} 
  Input Text                        ${input_pais}               text=${pais}
  Clear Element Text                ${input_cidade}
  Input Text                        ${input_cidade}             text=${cidade}
  Clear Element Text                ${input_estado}
  Input Text                        ${input_estado}             text=${estado}
  Clear Element Text                ${input_bairro} 
  Input Text                        ${input_bairro}             text=${bairro}
  Clear Element Text                ${input_rua} 
  Input Text                        ${input_rua}                text=${rua}
  Clear Element Text                ${input_numeroDoImovel}
  Input Text                        ${input_numeroDoImovel}     text=${numeroDoImovel}
  Clear Element Text                ${input_complemento}
  Input Text                        ${input_complemento}        text=${complemento}
  Capture Page Screenshot


#Validações Cadastro de Empresa
Mensagem de erro no campo do Modal
  Wait Until Element Is Visible       css=.css-bbipig
  Capture Page Screenshot


Alerta de Erro ao Preencher campo no Modal
  Wait Until Element Is Visible       xpath=//div[@role='alert']
  Capture Page Screenshot


Mensagem de campo vazio no Modal
  Wait Until Element Is Visible       css=.css-bbipig
  Capture Page Screenshot



#Keywords PBI Listagem de Empresas
Pesquisar no campo de Busca
  [Arguments]    
  ...    ${busca}
  Execute JavaScript                  document.body.style.zoom='70%'
  Wait Until Element Is Visible       xpath=//input[contains(@class, 'MuiInputBase-input')]
  Input Text                          xpath=//input[contains(@class, 'MuiInputBase-input')]    text=${busca}
  Press Keys                          xpath=//input[contains(@class, 'MuiInputBase-input')]    ENTER

Validar Não Retorno no Grid
  Page Should Not Contain Element    css=.css-iatckd


Validar Retorno no Grid
  Wait Until Element Is Visible       xpath=//p[text()='Prime Technologies']


Validar Colunas do Grid [Nome, Email, Telefone e CNPJ]
  Wait Until Element Is Visible       xpath=//div[text()='Nome']
  Wait Until Element Is Visible       xpath=//div[text()='Email']
  Wait Until Element Is Visible       xpath=//div[text()='Telefone']
  Wait Until Element Is Visible       xpath=//div[text()='CNPJ']


Validar botão 'Novo Cadastro'
  Wait Until Element Is Visible       ${novoCadastro_button}


Validar botão 'Editar'
  Wait Until Element Is Visible       ${button_EditarEmpresa} 