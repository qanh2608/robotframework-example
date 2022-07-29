*** Settings ***
Library    AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                /Users/apple/Documents/Python/auto_test_mobile/app/bond-staging-debug.apk
${UUID}                       emulator-5554
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   12.0
${FOOTER_OTHER}               //android.widget.FrameLayout[@resource-id='jp.co.tvtokyo.webapi.stg2:id/other']
${BTN_LOGIN}                  //android.widget.TextView[@resource-id='jp.co.tvtokyo.webapi.stg2:id/other_login']
${ACC}                        //android.widget.EditText[@resource-id='jp.co.tvtokyo.webapi.stg2:id/loginId']
${PW}                         //android.widget.EditText[@resource-id='jp.co.tvtokyo.webapi.stg2:id/password']
${SUBMIT_LOGIN}               //android.widget.Button[@resource-id='jp.co.tvtokyo.webapi.stg2:id/loginButton']
*** Test Cases ***
tcname
    open application    http://127.0.0.1:4723/wd/hub
    ...                 automationName=${ANDROID_AUTOMATION_NAME}
    ...                 devicesName=${UUID}
    ...                 platformName=${ANDROID_PLATFORM_NAME}
    ...                 platformVersion=${ANDROID_PLATFORM_VERSION}
    ...                 app=${ANDROID_APP}
    sleep       30s
    tap         ${FOOTER_OTHER}
    sleep       5s
    tap         ${BTN_LOGIN}
    sleep       5s
    input text  ${ACC}  suj_testuser_010
    input text  ${PW}   fd276b321
    sleep       5s
    tap         ${SUBMIT_LOGIN}
