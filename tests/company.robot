*** Settings ***
Resource        ../resources/keywords_login.resource
Resource        ../resources/keywords_company.resource
Resource        ../resources/keywords_randomico.resource
# Test Setup      Abrir Navegador
# Test Teardown   Fechar Navegador

Documentation   Tests Cases de CADASTRO, EDIÇÃO (Dados e Endereço) e PESQUISA de empresas

*** Test Cases ***

# Tests Cases - Cadastro de Empresa

[CT2] - Cadastrar empresa com o campo "Razão Social" vazio.
    ${nomeFantasia}=              Gerar Nome Fantasia
    ${email}=            Gerar E-mail Randômico (@company.com)
    ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
    Acessar tela de login
    Digitar e-mail e senha    
     ...    sysadmin@qacoders.com    
     ...    1234@Test
    Clicar no botão ENTRAR
    Validar login com sucesso no sistema
    Acessar tela de Empresas
    Cadastrar Empresa - Dados
     ...    
     ...    ${nomeFantasia}
     ...    ${email}    
     ...    ${numeroCNPJ}
     ...    01234567891234
     ...    descricaoServicoTeste    
     ...    Responsavel Teste    
    Cadastrar Empresa - Endereco    
     ...    12345678
     ...    Brasil
     ...    Sao Paulo
     ...    SP
     ...    Rochedalle
     ...    Rua dos Testes
     ...    103
     ...    Apto 534
    Selecionar o botão "SALVAR" - Empresa
    Mensagem de campo vazio no Modal


[CT3] - Cadastrar empresa com o campo "Razão Social" com caracteres inválidos (especiais)
    ${nomeFantasia}=              Gerar Nome Fantasia
    ${email}=            Gerar E-mail Randômico (@company.com)
    ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
    Acessar tela de login
    Digitar e-mail e senha    
     ...    sysadmin@qacoders.com    
     ...    1234@Test
    Clicar no botão ENTRAR
    Validar login com sucesso no sistema
    Acessar tela de Empresas
    Cadastrar Empresa - Dados
     ...    @%$%# ¨%$##
     ...    ${nomeFantasia}
     ...    ${email}    
     ...    ${numeroCNPJ}
     ...    01234567891234
     ...    descricaoServicoTeste    
     ...    Responsavel Teste    
    Cadastrar Empresa - Endereco    
     ...    12345678
     ...    Brasil
     ...    Sao Paulo
     ...    SP
     ...    Rochedalle
     ...    Rua dos Testes
     ...    103
     ...    Apto 534
    Selecionar o botão "SALVAR" - Empresa
    Alerta de Erro ao Preencher campo no Modal


# [CT4] - Cadastrar empresa com o campo "Razão Social" com 101 caracteres (alfanumérico)
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi11
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT5] - Cadastrar empresa com o campo "Nome Fantasia" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de campo vazio no Modal



# [CT6] - Cadastrar empresa com o campo "Nome Fantasia" com 101 caracteres (alfanumérico)
#     ${razaoSocial}=     Gerar Razao Social
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi11
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de erro no campo do Modal


# [CT7] - Cadastrar empresa com o campo "Nome Fantasia" com caracteres inválidos (especiais)
#     ${razaoSocial}=      Gerar Razao Social
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    $#@!%
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal

# [CT8] - Cadastrar empresa com o campo "E-mail" vazio.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...       
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de campo vazio no Modal


# [CT9] - Cadastrar empresa com o campo "E-mail" em formato inválido.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    testeinvalido...dominio.com   
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de erro no campo do Modal


# [CT10] - Cadastrar empresa com o campo "CNPJ" vazio.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de campo vazio no Modal


# [CT11] - Cadastrar empresa com o campo "CNPJ" com 15 numeros (inválido).
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    012345678901234
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT12] - Cadastrar empresa com o campo "CNPJ" contendo caracteres inválidos (Letras e Especiais)
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    gaf#$%%%%ghad
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT13] - Cadastrar empresa com o campo "Telefone" vazio.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de campo vazio no Modal


# [CT14] - Cadastrar empresa com o campo "Telefone" com caracteres inválidos (letras e especiais).
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    sfggsa$#@
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT15] - Cadastrar empresa com o campo "Telefone" com 16 caracteres válidos (numeros)
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    1234567890123456
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT16] - Cadastrar empresa com o campo "Descrição do serviço" vazio.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT17] - Cadastrar empresa com o campo "Descrição do serviço" caracteres inválidos (especiais).
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricao%$#@Teste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT18] - Cadastrar empresa com o campo "Nome do Responsável" vazio.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...       
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de campo vazio no Modal


# [CT19] - Cadastrar empresa com o campo "Nome do Responsável" contendo caracteres inválidos (números e especiais).
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    $#@1234 %$#FF 
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT20] - Cadastrar empresa com o campo "Nome do Responsável" com 101 caracteres (letras)
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    abcdefghijabcdefghijabcdefghijabcdefghi jabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghija
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de erro no campo do Modal


# [CT21] - Cadastrar empresa com o campo "Nome do Responsável" com apenas uma palavra.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel   
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT22] - Cadastrar empresa com o campo "CEP" vazio.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de campo vazio no Modal


# [CT23] - Cadastrar empresa com o campo "CEP" com caracteres inválidos (letras e especiais)..
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    hsggs432
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT24] - Cadastrar empresa com o campo "CEP" com 9 digitos
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    123456789
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT25] - Cadastrar empresa com o campo "País" vazio.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de campo vazio no Modal

# [CT26] - Cadastrar empresa com o campo "País" carcacteres inválidos (numeros e especiais).
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    123%$#@
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT27] - Cadastrar empresa com o campo "País" com 51 caracteres válidos (letras)
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    abcdefghijabcdefghijabcdefghijabcdefghijabcdefghija
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT28] - Cadastrar empresa com o campo "Cidade" vazio.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de campo vazio no Modal


# [CT29] - Cadastrar empresa com o campo "Cidade" contendo caracteres inválidos (numeros e especiais).
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    1423%$#@
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal
    


# [CT30] - Cadastrar empresa com o campo "Cidade" com 51 caracteres válidos (letras)
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    abcdefghijabcdefghijabcdefghijabcdefghijabcdefghija
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT31] - Cadastrar empresa com o campo "Estado" vazio.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de campo vazio no Modal


# [CT32] - Cadastrar empresa com o campo "Estado" com mais de 2 caracteres válidos (letras).
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SPEE
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT33] - Cadastrar empresa com o campo "Estado" com caracteres inválidos (numeros e especiais)
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    1#
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT34] - Cadastrar empresa com o campo "Bairro" vazio.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de campo vazio no Modal


# [CT35] - Cadastrar empresa com o campo "Bairro" contendo caracteres inválidos (especiais).
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    $#@!%
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT36] - Cadastrar empresa com o campo "Bairro" com 51 caracteres válidos (alfanuméricos)
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1w
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT37] - Cadastrar empresa com o campo "Rua/ Logradouro" vazio.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de campo vazio no Modal


# [CT38] - Cadastrar empresa com o campo "Rua/ Logradouro" contendo caracteres inválidos (especiais).
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua %$#@
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT39] - Cadastrar empresa com o campo "Rua/ Logradouro" com 51 caracteres válidos (alfanuméricos)
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1w
#      ...    103
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de erro no campo do Modal


# [CT40] - Cadastrar empresa com o campo "Número do imovel" vazio.
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT41] - Cadastrar empresa com o campo "Número do imovel" com caracteres inválidos (letras e especiais).
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    a%$ff
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT42] - Cadastrar empresa com o campo "Número do imovel" com 11 caracteres válidos (numeros)
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    01234567891
#      ...    Apto 534
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de erro no campo do Modal

# [CT44] - Cadastrar empresa com o campo "Complemento" com caracteres inválidos (especiais)
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    %$#@
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT45] - Cadastrar empresa com o campo "Complemento" com 81 caracteres válidos (alfanuméricos)
#     ${razaoSocial}=     Gerar Razao Social
#     ${nomeFantasia}=              Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Cadastrar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Cadastrar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1w
#     Selecionar o botão "SALVAR" - Empresa
#     Mensagem de erro no campo do Modal











# # Tests Cases - Edição de Dados de Empresa Cadastrada


# [CT2] - Editar empresa com o campo "Razão Social" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT3] - Editar empresa com o campo "Razão Social" com caracteres inválidos (especiais).
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    %$#@!
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT4] - Editar empresa com o campo "Razão Social" com 101 caracteres (alfanumérico)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1a
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT5] - Editar empresa com o campo "Nome Fantasia" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT6] - Editar empresa com o campo "Nome Fantasia" com 101 caracteres (alfanumérico)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1a
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT7] - Editar empresa com o campo "Nome Fantasia" com caracteres inválidos (especiais)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    $#@$%!
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT8] - Editar empresa com o campo "E-mail" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...        
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT9] - Editar empresa com o campo "E-mail" em formato inválido.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    testeRonBugado...gmail.com    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT10] - Editar empresa com o campo "CNPJ" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT11] - Editar empresa com o campo "CNPJ" com 15 numeros (inválido).
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    012345678912345
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT12] - Editar empresa com o campo "CNPJ" contendo caracteres inválidos (Letras e Especiais)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    svscv423v$#@$
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT13] - Editar empresa com o campo "Telefone" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal

# [CT14] - Editar empresa com o campo "Telefone" com caracteres inválidos (letras e especiais).
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    ljg$#@$sgfs
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT15] - Editar empresa com o campo "Telefone" com 16 caracteres válidos (numeros)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    0123456789123456
#      ...    descricaoServicoTeste    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT16] - Editar empresa com o campo "Descrição do serviço" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT17] - Editar empresa com o campo "Descrição do serviço" caracteres inválidos (especiais).
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    %$#!$#    
#      ...    Responsavel Teste    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT18] - Editar empresa com o campo "Nome do Responsável" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...      
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT19] - Editar empresa com o campo "Nome do Responsável" contendo caracteres inválidos (números e especiais).
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    %$#@!l T123    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT20] - Editar empresa com o campo "Nome do Responsável" com 101 caracteres (letras)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    abcdefghijabcdefghijabcdefghijabcdefghijabcdefghi jabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijy
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT21] - Editar empresa com o campo "Nome do Responsável" com apenas uma palavra.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Dados
#      ...    ${razaoSocial}
#      ...    ${nomeFantasia}
#      ...    ${email}    
#      ...    ${numeroCNPJ}
#      ...    01234567891234
#      ...    descricaoServicoTeste    
#      ...    Responsavel
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal











# # Tests Cases - Edição de Endereço de Empresa Cadastrada


# [CT2] - Editar empresa com o campo "CEP" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco
#      ...    
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT3] - Editar empresa com o campo "CEP" com caracteres inválidos (letras e especiais)..
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco  
#      ...    HD$#@@
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT4] - Editar empresa com o campo "País" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco   
#      ...    12345678
#      ...    
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT5] - Editar empresa com o campo "País" inválidos (numeros e especiais).
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco   
#      ...    12345678
#      ...    123$#@
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT6] - Editar empresa com o campo "País" com 51 caracteres válidos (letras)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco    
#      ...    12345678
#      ...    abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijj
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT7]- Editar empresa com o campo "Cidade" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT8] - Editar empresa com o campo "Cidade" contendo caracteres inválidos (numeros e especiais).
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco   
#      ...    12345678
#      ...    Brasil
#      ...    123%$@
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT9] - Editar empresa com o campo "Cidade" com 51 caracteres válidos (letras)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco  
#      ...    12345678
#      ...    Brasil
#      ...    abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijj
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT10] - Editar empresa com o campo "Estado" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco   
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT11] - Editar empresa com o campo "Estado" com mais de 2 caracteres válidos (letras).
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco   
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SPEE
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT12] - Editar empresa com o campo "Estado" com caracteres inválidos (numeros e especiais)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco  
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    1$
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT13] - Editar empresa com o campo "Bairro" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco   
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal



# [CT14] - Editar empresa com o campo "Bairro" contendo caracteres inválidos (especiais).
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    %#@@$
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT15] - Editar empresa com o campo "Bairro" com 51 caracteres válidos (alfanuméricos)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1a
#      ...    Rua dos Testes
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT16] - Editar empresa com o campo "Rua/ Logradouro" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco   
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT17] - Editar empresa com o campo "Rua/ Logradouro" contendo caracteres inválidos (especiais).
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    %$#@%%
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT18] - Editar empresa com o campo "Rua/ Logradouro" com 51 caracteres válidos (alfanuméricos)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco  
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1as
#      ...    103
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT19] - Editar empresa com o campo "Número do imovel" vazio.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco   
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT20] - Editar empresa com o campo "Número do imovel" com caracteres inválidos (letras e especiais).
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco  
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    ga$#@
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT21] - Editar empresa com o campo "Número do imovel" com 11 caracteres válidos (numeros)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco  
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    012345678912
#      ...    Apto 534    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT23] - Editar empresa com o campo "Complemento" com caracteres inválidos (especiais)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    %$#@@$$ 
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal


# [CT24] - Editar empresa com o campo "Complemento" com 81 caracteres válidos (alfanuméricos)
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Editar Empresa - Endereco    
#      ...    12345678
#      ...    Brasil
#      ...    Sao Paulo
#      ...    SP
#      ...    Rochedalle
#      ...    Rua dos Testes
#      ...    103
#      ...    abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1abcdefghi1a    
#     Selecionar o botão "SALVAR" - Empresa
#     Alerta de Erro ao Preencher campo no Modal











# # Tests Cases - Pesquisa de Empresa


# [CT3] - Validar exibição das colunas no datagrid [Nome, E-mail, Telefone e CNPJ] da empresa.
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Validar Colunas do Grid [Nome, Email, Telefone e CNPJ]


# [CT4] - Validar exibição do botão "Novo Cadastro" de regitro de empresa
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Validar botão 'Novo Cadastro'


# [CT5] - Validar exibição do botão "Editar" registro de empresa
#     ${razaoSocial}=      Gerar Razao Social
#     ${nomeFantasia}=     Gerar Nome Fantasia
#     ${email}=            Gerar E-mail Randômico (@company.com)
#     ${numeroCNPJ}=       Gerar Numero de CNPJ randômico   
#     Acessar tela de login
#     Digitar e-mail e senha    
#      ...    sysadmin@qacoders.com    
#      ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Empresas
#     Validar botão 'Editar'


# # robot -d results .\tests\company.robot