Feature: Botões de Ajuda
    A funcionalidade são os botões de ajuda e os cenários de testes incluem
    testes de eventos do botão, redirecionamento e também a compatibilidade
    dos botões em outros dispositivos e navegadores.

    Scenario: Botão de Dúvidas
        Given que acesso a página de contato
        And eu tenho uma dúvida 
        And eu clico no botão de dúvidas
        Then eu vejo uma tela com uma mensagem sobre quais são as dúvidas do usuário

    Scenario: Botão de Problemas
        Given que acesso a página de contato
        And eu tenho um problema
        And eu clico no botão de problemas
        Then eu vejo uma tela com uma mensagem sobre quais são os problemas do usuário

    Scenario: Botão de Sugestão
        Given que acesso a página de contato
        And eu tenho uma sugestão
        And eu clico no botão de sugestão
        Then eu vejo uma tela com uma mensagem sobre que tipo de sugestão o usuário tem

    Scenario: Botão de Outros
        Given que acesso a página de contato
        And eu tenho um opção de outros
        And eu clico no botão de outros
        Then eu vejo uma tela com uma mensagem sobre outras opções de ajuda

    Scenario: Compatibilidade dos botões de ajuda
        Given que eu acesso a página de contato pelo celular
        And acesso em outro navegador
        And eu acesso a área de botões de ajuda
        Then eu vejo todos os botões responsivos de acordo com o tamanho do dispositivo



