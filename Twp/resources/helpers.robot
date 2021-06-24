***Settings***

Documentation       Aqui teremos as keywords helpers 

***Variables***
${START}                    COMEÇAR  
${HAMBURGUER}               xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]      
${NAVVIEW}                  id=io.qaninja.android.twp:id/navView 

**Keywords***
Get Started 
    Wait Until Page Contains        ${START}                    
    Click Text                      ${START} 
Open Nav 
    Wait Until Element Is Visible           ${HAMBURGUER}   
    Click Element                           ${HAMBURGUER}                          
    Wait Until Element Is Visible           ${NAVVIEW}                                                                                             
 
Go To Radion Button 
    Open Nav 

    Click Text                      INPUTS 
    Wait Until Page Contains        INPUTS
    Click Text                      BOTÕES DE RÁDIO
    Wait Until Page Contains        Escolha sua linguagem preferida
Go To Checkbox
    Open Nav 

    Click Text                      INPUTS 
    Wait Until Page Contains        INPUTS
    Click Text                      CHECKBOX
    Wait Until Page Contains        Marque as techs que usam Appium