*** Settings ***
Resource        ../resources/keywords_login.resource
Resource        ../resources/keywords_users.resource
Resource        ../resources/keywords_randomico.resource
Test Setup      Abrir Navegador
Test Teardown   Fechar Navegador


*** Test Cases ***

[CT1] - Cadastrar usuário com dados válidos (caminho feliz)
    ${nomeCompleto}=     Gerar Nome Completo
    ${cpf}=              Gerar Numero de CPF randômico
    ${email}=            Gerar E-mail Randômico (@dominio.com.br)
    Acessar tela de login
    Digitar e-mail e senha    
    ...    sysadmin@qacoders.com    
    ...    1234@Test
    Clicar no botão ENTRAR
    Validar login com sucesso no sistema
    Acessar tela de Usuários
    Cadastrar Novo Usuário    
    ...    ${nomeCompleto}
    ...    ${email}    
    ...    ADMIN    
    ...    ${cpf}    
    ...    abcd3fgH#    
    ...    abcd3fgH#
    Selecionar o botão "SALVAR"
    Validar redirecionamento para Tela de Cadastro de Usuários

# [CT2] - Cadastrar com campo "Nome Completo" vazio
#     ${cpf}=              Gerar Numero de CPF randômico
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    
#     ...    ${email}    
#     ...    ADMIN    
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Mensagem de ERRO: 'Nome Completo' Obrigatório

# [CT3] - Cadastrar com campo "Nome Completo" contendo apenas 1 palavra
#     ${cpf}=              Gerar Numero de CPF randômico
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    testetestrrrr
#     ...    ${email}    
#     ...    ADMIN    
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Alerta de ERRO: campo Nome Completo

# [CT4] - Cadastrar com campo "Nome Completo contendo 100 caracteres"
    
#     ${cpf}=              Gerar Numero de CPF randômico
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    AbcdefghiJabcdefghiJabcdefghiJabcdefghiJabcdefghiJabcdefghiJabcdefghiJabcdefghiJabcdefghiJabcdefghiJ
#     ...    ${email}    
#     ...    ADMIN    
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Validar redirecionamento para Tela de Cadastro de Usuários

# [CT5] - Cadastrar com campo "Nome Completo contendo 101 caracteres"
#     ${cpf}=              Gerar Numero de CPF randômico
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    AbcdefghiJabcdefghiJabcdefghiJabcdefghiJabcdefghiJabcdefghiJabcdefghiJabcdefghiJabcdefghiJabcdefghiJa
#     ...    ${email}    
#     ...    ADMIN    
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Alerta de ERRO: campo deve ter no máximo 100 caracteres

# [CT6] - Cadastrar com campo "Nome Completo" contendo caracteres inválidos (Numeros)
#     ${cpf}=              Gerar Numero de CPF randômico
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    Teste T1234
#     ...    ${email}    
#     ...    ADMIN    
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Alerta de ERRO: O campo nome completo não deve conter números

# [CT7] - Cadastrar com campo "Nome Completo" contendo caracteres inválidos (Especiais)
#     ${cpf}=              Gerar Numero de CPF randômico
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    Teste T%$#@&
#     ...    ${email}    
#     ...    ADMIN    
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Alerta de ERRO: campo Nome Completo

# [CT8] - Cadastrar com campo "E-mail" vazio
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${cpf}=              Gerar Numero de CPF randômico
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...       
#     ...    ADMIN    
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Mensagem de ERRO: 'E-mail' Obrigatório

# [CT9] - Cadastrar com campo "E-mail" no formato inválido
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${cpf}=              Gerar Numero de CPF randômico
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    teste....gmail.com    
#     ...    ADMIN    
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Mensagem de ERRO: 'E-mail' Inválido

# [CT10] - Cadastrar com campo "E-mail" contendo espaços
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${cpf}=              Gerar Numero de CPF randômico
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    teste @gmail.com   
#     ...    ADMIN    
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Mensagem de ERRO: 'E-mail' Inválido

# [CT11] - Cadastrar com campo "E-mail" no formato valido: usuario@email.com
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${cpf}=              Gerar Numero de CPF randômico
#     ${email}=            Gerar E-mail Randômico (@dominio.com)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    ${email}  
#     ...    ADMIN    
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Validar redirecionamento para Tela de Cadastro de Usuários

# [CT12] - Cadastrar com campo "E-mail" no formato valido: usuario@email.com.br
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${cpf}=              Gerar Numero de CPF randômico
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    ${email}  
#     ...    ADMIN    
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Validar redirecionamento para Tela de Cadastro de Usuários

# [CT13] - Cadastrar com campo "Perfil de Acesso" vazio
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${cpf}=              Gerar Numero de CPF randômico
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    ${email}    
#     ...        
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"

# [CT14] - Cadastrar com campo "Perfil de Acesso" inválido
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${cpf}=              Gerar Numero de CPF randômico
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    ${email}    
#     ...    JARDINEIROTESTE   
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Mensagem de ERRO: 'Perfil de Acesso' inválido

# [CT15] - Cadastrar com campo "Perfil de Acesso" válido
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${cpf}=              Gerar Numero de CPF randômico
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    ${email}    
#     ...    ADMIN    
#     ...    ${cpf}    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Validar redirecionamento para Tela de Cadastro de Usuários

# [CT16] - Cadastrar com "CPF" Vazio
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    ${email}    
#     ...    ADMIN    
#     ...    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"

# [CT17] - Cadastrar com "CPF" contendo 10 numeros
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    ${email}    
#     ...    ADMIN    
#     ...    1762534982    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Alerta de ERRO: campo CPF deve ter 11 digitos

# [CT18] - Cadastrar com "CPF" contendo 11 numeros
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${cpf}=              Gerar Numero de CPF randômico
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    ${email}    
#     ...    ADMIN    
#     ...    ${cpf}
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Validar redirecionamento para Tela de Cadastro de Usuários

# [CT19] - Cadastrar com "CPF" contendo 12 numeros
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    ${email}    
#     ...    ADMIN    
#     ...    872541098725    
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Alerta de ERRO: campo CPF deve ter 11 digitos

# [CT20] - Cadastrar com "CPF" contendo caracteres inválidos (Letras)
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    ${email}    
#     ...    ADMIN    
#     ...    testandocpf   
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Alerta de ERRO: campo CPF deve conter apenas numeros

# [CT21] - Cadastrar com "CPF" contendo caracteres inválidos (Especiais)
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com    
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    ${email}    
#     ...    ADMIN    
#     ...    *%$#@!&%   
#     ...    abcd3fgH#    
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Alerta de ERRO: campo CPF deve ter 11 digitos

# [CT22] - Cadastrar com "CPF" já registrado no sistema
#     ${nomeCompleto}=     Gerar Nome Completo
#     ${cpf}=              Gerar Numero de CPF randômico
#     ${email}=            Gerar E-mail Randômico (@dominio.com.br)
#     Acessar tela de login
#     Digitar e-mail e senha    
#     ...    sysadmin@qacoders.com
#     ...    1234@Test
#     Clicar no botão ENTRAR
#     Validar login com sucesso no sistema
#     Acessar tela de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    ${email}
#     ...    ADMIN
#     ...    ${cpf}
#     ...    abcd3fgH#
#     ...    abcd3fgH#
#     ${cpfArmazenado}=    Armazenar valor inserido no campo CPF
#     Selecionar o botão "SALVAR"
#     Validar redirecionamento para Tela de Cadastro de Usuários
#     Cadastrar Novo Usuário    
#     ...    ${nomeCompleto}
#     ...    ${email}
#     ...    ADMIN
#     ...    ${cpfArmazenado}
#     ...    abcd3fgH#
#     ...    abcd3fgH#
#     Selecionar o botão "SALVAR"
#     Alerta de ERRO: CPF já cadastrado


# #robot -d results .\tests\users.Cadastrar.robot