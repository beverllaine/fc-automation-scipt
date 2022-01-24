*** Settings ***
Resources    ${COMMON_FIRSTCIRCLE_VARIABLE_HELPER_FILEPATH}
Resources    ${COMMON_FIRSTCIRCLE_KEYWORD_HELPER_FILEPATH}
Resources    ${COMMON_API_KEYWORD_HELPER_FILEPATH}

*** Keywords ***
#===============
#    WHEN
#===============
Customer Fills Out Prequalification "Step-1" Form With Valid Data

#===============
#    THEN
#===============
