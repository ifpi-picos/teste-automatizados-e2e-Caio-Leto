Feature: Formulário de contato
    A funcionalidade é o um formulário de contato e os cenários de teste incluem
    testes de dados preenchidos corretamente, dados inválidos, compatibilidade do
    formulário em outros navegadores e dispositivos.

    Scenario: Formulário com dados válidos
        Given que eu estou na página de contato
        And eu insiro meu nome válido “user321”
        And eu insiro meu email válido “user@email”
        And eu insiro meu número válido “3333-3333”
        And eu insiro o texto para ser enviado
        And eu clico no botão de enviar
        Then eu vejo uma mensagem alertando que o envio dos dados foi concluído com sucesso

    Scenario: Formulário com nome inválido
        Given que eu estou na página de contato
        And eu insiro meu nome inválido “usernobody”
        And eu insiro meu email válido “user@email”
        And eu insiro meu número válido “3333-3333”
        And eu clico no botão de enviar
        Then eu vejo uma mensagem de erro, indicando que o nome do usuário é inválido

    Scenario: Formulário com email inválido
        Given que eu estou na página de contato
        And eu insiro meu nome válido “user321”
        And eu insiro meu email inválido “nobody@email”
        And eu insiro meu número válido “3333-3333”
        And eu clico no botão de enviar
        Then eu vejo uma mensagem de erro, indicando que o email do usuário é inválido

    Scenario: Formulário com número inválido
        Given que eu estou na página de contato
        And eu insiro meu nome válido “user321”
        And eu insiro meu email válido “user@email”
        And eu insiro meu número inválido “4444-4444”
        And eu clico no botão de enviar
        Then eu vejo uma mensagem de erro, indicando que o número do usuário é inválido

    Scenario: Formulário compatibilidade
        Given que eu quero acessar a página de contato
        And eu acesso a página pelo meu celular
        And em outro navegador
        Then eu vejo a página sendo responsiva de acordo com o dispositivo usado

