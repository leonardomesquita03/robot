***Settings***
Resource        base.robot

Test Setup          Nova Sessão 
Test Teardown       Encerra Sessão 


***Variables***
${checkThor}        id:thor
${checkIron}        css:input[value='iron-man']
${checkPantera}     Xpath://*[@id='checkboxes']/input[7]

***Test Cases***
Marcando Opção com id
    Go To                           ${url}/checkboxes
    Select checkbox                 ${checkThor}
    checkbox Should Be Selected     ${checkThor}

Marcando opção com CssSelector
    Go To                           ${url}/checkboxes
    Select checkbox                 ${checkIron}
    checkbox Should Be Selected     ${checkIron}

Marcando Opção com Xpath
    [Tags]      ironman
    Go To                           ${url}/checkboxes
    Select checkbox                 ${checkPantera}
    checkbox Should Be Selected     ${checkPantera}
    Sleep                           5

