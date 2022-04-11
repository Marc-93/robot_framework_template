*** Settings ***
Documentation       Steps to create, edit and delete users
Library             ../utilities/headers_generator.py
Library             ../utilities/request_generator.py
Library             ../utilities/token_generator.py
Library             ../data/user/create_user.py

*** Keywords ***
Create user
    [Arguments]         ${phone}
    ${device_id}=       uuid_generator
    ${headers}=         X_Auth_ContentType  ${device_id}
    ${payload}=         create_user_phone   ${phone}
    ${response}=        request_generator   POST    ${HOST}/api/token/v3/signup   ${headers}  ${payload}