*** Settings ***
Documentation       Common steps
Library             ../utilities/phone_generator.py

*** Keywords ***
Create random phone
    ${phone}=           generate_phone_by_country
    Set Test Variable   ${phone}

Create phone by country
    [Arguments]         ${iso_country}
    ${phone}=           generate_phone_by_country   ${iso_country}
    Set Test Variable   ${phone}