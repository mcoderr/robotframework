*** Setting ***
Library           String

*** Variables ***
${ImagePath}      ${CURDIR}\\DownloadDir\\captcha.png
${CAPTCHAID}      abcd
${CAPTCHAPassword}    PQR
${pan_no}         abcd
${name}

*** Test Cases ***
Process_Test
    Run Keyword And Ignore Error   Login    12345
    check Pan    MukundApatel
    Log   ${name}

Process Test 2
    Log    ${ImagePath}
    Log    ${CAPTCHAPassword}

*** Keyword ***
Login
    [Arguments]    ${pan_no}
    Run Keyword If    True    Log    Cams Login Error :Please check Username and Password
    Log    ${pan_no}
    Log    ${OUTPUT_FILE}
    Log    ${KEYWORD STATUS}

Check PAN
    [Arguments]    ${pan_no}
    ${data}=    Fetch From Left    ${pan_no}    A
    Log    ${data}