*** Settings ***
Documentation   User management: create edit and deleate
Resource        ../hooks/setup.robot
Resource        ../hooks/teardown.robot
Resource        ../../steps/user_management.robot
Resource        ../../steps/common_steps.robot
Test Setup      Setup actions
Test Teardown   Teardown actions

*** Test Cases ***
Regristration of new user
    [Tags]              regression
    [Documentation]     Sign up spanish user
    Given Create random phone
    WHEN Create user    ${phone}