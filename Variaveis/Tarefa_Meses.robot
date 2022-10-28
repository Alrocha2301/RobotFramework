*** Variables ***
@{MESES}    Janeiro
...         Fevereiro
...         Março
...         Abril
...         Maio
...         Junho
...         Julho
...         Agosto
...         Setembro
...         Outubro
...         Novembro
...         Dezembro

*** Test Cases ***
Caso 1
    Imprima o primeiro mês

*** Keywords ***
Imprima o primeiro mês
    Log    ${MESES[0]}
