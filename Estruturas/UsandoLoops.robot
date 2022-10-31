*** Settings ***
Documentation   Suíte para exemplificar o uso de LOOPS nos testes
...             Os LOOPS devem ser pouco utilizados, mas tem hora que não tem jeito
...             e precisamos dele mesmo, então vamos ver como é!
...             LOOPS: use com moderação!
...             Infelizmente o Loop FOR ainda não tem uma estrutura keyword-driven
...             Mas o criador do Robot já disse que estão estudando uma solução!

*** Variable ***
@{FRUTAS}    maça  banana  uva  abacaxi

*** Test Case ***
Caso de teste exemplo 01
    Usando FOR com RANGE
    Usando FOR com LISTA
    Saindo de um FOR
    Usando a keyword REPEAT
    Usando FOR IN ENUMERATE

*** Keywords ***
Usando FOR com RANGE
    FOR    ${COUNT}    IN RANGE    1    6
        Log    Meu contador atual é: ${COUNT}. O range será de 1 a 5
        IF    ${COUNT} == 5
            Log To Console   O Loop acabou!
        END
    END

Usando FOR com LISTA
    FOR    ${ITEM}    IN    @{FRUTAS}
        Log    minha fruta é ${ITEM}
        IF    '${ITEM}' == 'abacaxi'
            Log    O Loop acabou!
        END
    END

Saindo de um FOR
    FOR    ${ITEM}    IN    @{FRUTAS}
        Log To Console    Minha fruta é '${ITEM}'
        Exit For Loop If    '${ITEM}' == 'uva'
    END

Usando a keyword REPEAT
    Repeat Keyword    4    Log    Vamos logar essa frase!

Usando FOR IN ENUMERATE
    FOR    ${index}    ${item}    IN ENUMERATE    @{FRUTAS}
        Log To Console   Na posição ${index} a fruta é ${item}
    END

