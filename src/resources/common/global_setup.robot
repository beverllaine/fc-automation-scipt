*** Settings ***
Library     SeleniumLibrary    timeout=60s
Library     String
Library     Process
Library     Datetime
Library     FakerLibrary
Library     JSONLibrary
Library     Collections
Library     OperatingSystem
#Library    REST    https://${ENV_APP}.app.firstcircle.ph
Resource     ${GLOBAL_FILE_PATH}
Resource    keywords\\firstcircle_api_helper.robot
Resource    keywords\\firstcircle_keyword_helper.robot
Resource    variables\\url_extension_variables.robot


** Variables **
${mirror_onboarding_cookie}          EMc9AiYhMRiMbupgrdd9m7BDpjZDUTK7SouajJY0PDgXaeYxRCozEOSk0MME1smUYUqp%2B%2FQ3LmF%2FZg16F8ewtHRwZgated%2FoZ3yzNnb0fnNcyPCHiYdyvLw%2FLPvCEJiAFlvI9jP3Jzur%2FGaDvvD37j9H6DplFvjTPo9kk0srxItvcvMjxmB%2BXVgL0pf%2FKfa7lY1056wbHGW51bXXK09G1BvNuk%2Bs6pEP1rbz6uMr6cazHBYEOCVF8wfnizeDf1amKtIemtcxuRjTjOhp8QsOfnUMD6LoAzbddBRMuIJHxl5KCeSnbz6P7D0BiG1SdJp1UQytUCgMNWCijPLzu%2FC4Kk%2FO5cDrlx%2FZ3mipuXlfl%2F8xd%2BUkHjTM55WlXaNOF3Dlhn8%2BLYDK3vtdBLKX45eSX7NeB0KMSxcQacuZIIzD9aN7pRyuaBTV%2Bws4F2OC--bOYU8%2BQOZSaC0RYR--P6wV5tqyqb0RaInxW2n5Hw%3D%3D

** Keywords **
Test
    log    123