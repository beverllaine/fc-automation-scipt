** Settings **
Documentation    Test End to End Onboarding Prequalification flow via API
Default Tags     api-onboarding-prequalification    test
Resource         src/resources/common/global_setup.robot
Resource         ${API_KEYWORDS_FILEPATH}api_onboarding_prequalification_keywords.robot
Suite Setup      Generate Onboarding Prequalification Test Data

*** Test Cases ***
Fill Out Onboarding Prequalification "Step-1" Form With Valid Data
    When Customer Fills Out Prequalification "Step-1" Form With Valid Data
