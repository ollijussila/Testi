*** Settings ***
Resource          Test resource.robot

*** Test Cases ***
Google
    Open Browser    https://www.google.fi/    gc
    Wait Until Page Contains Element    q
    Close Browser

Test case
    [Documentation]    Testitapauksen ylläpidettävyyttä ja hallintaa auttava dokumentaatio
    [Setup]    Testin alussa suoritettava avainsana tai avainsanat
    [Timeout]    10 seconds
    Connect To Database    moduulin nimi    ${tietokannan_osoite}    ${tietokannan_käyttäjätunnus}    ${tietokannan_salasana}
    ${Tietokannan_arvo}    Query    select column from table where id=1
    ${Testitapauksesta_riippuja_dynaaminen_arvo}    get text    testi_tunniste
    Avainsana joka haluaa 3 argumenttia    Vakio arvo    ${Testitapauksesta_riippuja_dynaaminen_arvo}    ${Tietokannan_arvo}
    [Teardown]    Testin päätteeksi suoritettava avainsana tai avainsanat
