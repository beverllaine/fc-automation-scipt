*** Settings ***
Resources    ${COMMON_FIRSTCIRCLE_VARIABLE_HELPER_FILEPATH}
Resources    ${COMMON_FIRSTCIRCLE_KEYWORD_HELPER_FILEPATH}
Resources    ${COMMON_API_KEYWORD_HELPER_FILEPATH}

*** Keywords ***
#===============
#    WHEN
#===============
Customer Fills Out Prequalification "Step-1" Form With Valid Data
    ${json_file} =    load json from    ${API_JSON_FILEPATH}onboarding_prequalification_step1.json
    ${json_file} =    update value to json    ${json_file}    $.first_name    ${g_OB_FIRST_NAME}  
    ${json_file} =    update value to json    ${json_file}    $.mobile_number    ${g_OB_MOBILE_NAME}  
    ${json_file} =    update value to json    ${json_file}    $.email_address    ${g_OB_EMAIL}
    ${json_file} =    update value to json    ${json_file}    $.email_address    ${g_OB_EMAIL}
    ${json_file} =    update value to json    ${json_file}    $.token            ${${ENV_ONBOARDING}_onboarding_cookie}
    SET HEADERS    {"Referer": "https://${ENV_ONBOARDING_API}.onboarding.firstcircle.ph/"}
    POST    https://${ENV_ONBOARDING_API}.api.onboarding.firstcircle.ph/leads    ${son_file}
    ${response}    Output

#===============
#    THEN
#===============
New Record With Prequaification "Step-1" Details Should Be Saved
    Integer    response    201
    expect repsonse    ${API_JSON_FILEPATH}onboarding_prequalification_default_response.json
    clear expectations
#======================
#    INTERNAL KEYWORDS
#======================
Generate Onboarding Prequalification Test Data
    ${ob_first_name}  ${ob_last_name}  ${ob_mobile_number}  ${ob_company}  ${ob_email} =    Get Signup Test Data
    set global variable    ${g_OB_FIRST_NAME}    ${ob_first_name}
    set global variable    ${g_OB_LAST_NAME}    ${ob_last_name}
    set global variable    ${g_OB_MOBILE_NUMBER}    ${ob_mobile_number}
    set global variable    ${g_OB_COMPANY}    ${ob_company}
    set global variable    ${g_OB_EMAIL}    ${ob_email}