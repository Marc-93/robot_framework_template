*** Settings ***
Documentation   FEATURE
Resource        ../hooks/setup.robot
Resource        ../hooks/teardown.robot
Resource        ../../steps/steps_template.robot
Test Setup      Setup actions
Test Teardown   Teardown actions

*** Test Cases ***
Test case name
    [Tags]              FILTERS
    [Documentation]     Test case documentation
    GIVEN Step template GIVEN
    WHEN Step template WHEN
    THEN Step template THEN
    Log                 Environment: ${url}