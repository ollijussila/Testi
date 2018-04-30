*** Settings ***
Library           ExtendedSelenium2Library
Library           OperatingSystem
Library           AutoItLibrary
Library           DatabaseLibrary
Library           String

*** Variables ***
${käyttäjätunnus}    käyttäjätunnus
${salasana}       salasana    # Kirjautumisessa käytettävä arvo
${tietokannan_osoite}    tietokannan_osoite    # Kirjautumisessa käytettävä arvo
${tietokannan_käyttäjätunnus}    tietokannan_käyttäjätunnus    # Tietokantaan mentäessä käytettävä arvo
${tietokannan_salasana}    tietokannan_salasana    # Tietokantaan mentäessä käytettävä arvo

*** Keywords ***
Avainsana joka haluaa 3 argumenttia
    [Arguments]    ${Testi_argumentti_1}    ${Testi_argumentti_2}    ${Testi_argumentti_3}
    [Documentation]    Avainsanan sisäinen dokumentaatio
    Wait Until Page Contains Element    ${Testi_argumentti_1}
    Click Element    ${Testi_argumentti_1}
    sleep    3s
    Page Should Not Contain Image    ${Testi_argumentti_2}
    Click Element    xpath = //*[@name="Tapaus_${Testi_argumentti_3}"]
