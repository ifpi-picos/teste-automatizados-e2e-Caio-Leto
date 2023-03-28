Feature: Botão de Enviar 
    A funcionalidade é o botão de enviar, e os cenários de testes incluem teste de redirecionamento
    da página, dados envidados corretamente, dados inválidos e também a compatibilidade
    do botão em outros dispositivos e navegadores

    Scenario: Botão de Enviar visível 
        Dado que eu acesso a página de contato
        E acesso a área do formulário
        E preencho os campos do formulário
        Então eu vejo o botão de enviar localizado logo abaixo do formulário

    Scenario: Mensagem de Confirmação
        Given que eu acesso a página de contato
        And acesso a área do formulário 
        And preencho os campos do formulário com dados válidos
        And clico no botão de enviar
        Then eu vejo uma mensagem de confirmação do envio dos dados

    Scenario: Mensagem de Erro
        Given que eu acesso a página de contato
        And acesso a área do formulário
        And preencho os campos do formulário com dados inválidos
        And clico no botão enviar
        Then eu vejo uma mensagem de erro de envio dos dados

    Scenario: Compatibilidade do botão de enviar
        Given que eu acesso a página de contato pelo celular
        And acesso em outro navegador
        And eu acesso a área do formulário
        And eu preencho os campos do formulário
        Then eu vejo o botão de enviar responsivo de acordo com o tamanho do dispositivo



