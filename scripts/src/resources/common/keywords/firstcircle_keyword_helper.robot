*** Settings ***
Resource    ${COMMON_FIRSTCIRCLE_VARIABLE_HELPER_FILEPATH}
Resource    ${COMMON_API_KEYWORD_HELPER_FILEPATH}
Resource    ${COMMON_FIRSTCIRCLE_KEYWORD_HELPER_FILEPATH}

** Keywords ***
# COMMON
Get Signup Test Data
    ${first_name} =    FakerLibrary.First Name
    ${last_name} =     FakerLibrary.Last Name
    ${random_number} =    FakerLibrary.Random Number    7    fix_len=True
    ${mobile_number} =    set variable    0900${random_number}
    ${company} =    FakerLibrary.Company
    ${company} =    remove string   ${company}    ,
    ${date_timestamp}    Generate Datetime For Unique Test Data
    [Return]    ${first_name}    ${last_name}    ${random_number}    ${mobile_number}    ${company}    ${email}

Generate Datetime For Unique Test Data
    ${date} =    Get Current Date
    ${date} =    convert date   ${date}    epoch
    ${date} =    convert to string    ${date}
    ${date} =    remove string    ${date}    .
    [Return]    ${date}