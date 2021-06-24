***Settings***
Resource        base.robot

Test Setup          Nova Sessão 
Test Teardown       Encerra Sessão 

***Test Cases***
Login com Sucesso 
    Go To                       ${url}/login
    Login With                  stark       jarvis!

    Should See Logged User      Tony Stark 
    

Senha Invalida 
    [tags]                          login_error
    Go To                           ${url}/login
    Login With                      stark       jarvi!
    Should contain login Alert      Senha é invalida!    

Usuario não Existe 
    [tags]                          login_user404
    Go To                           ${url}/login
    Login With                      papito     123456!
    Should contain login Alert      O usuario informado não está cadastrado!    

***Keywords***
Login With 
    [Arguments]   ${uname}    ${pass}

    Input Text           css:input[name=username]        ${uname}
    Input Text           css:input[name=password]        ${pass}
    Click Element        class:btn-login
    
Should contain login Alert
    [Arguments]     ${expect_message} 
    ${message}=                 Get Element                     id:flash
    Should Contain              ${message.text}                 ${expect_message}

Should See Logged User 
    [Arguments]     ${full_name}   
    Should contain login Alert         Olá, ${full_name}. Você acessou a área logada!