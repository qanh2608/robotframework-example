*** Settings ***
Library    AppiumLibrary
#Library    Selenium2Library

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

#Header Bar
${Header LIVE}                       //android.widget.LinearLayout[@elementId="00000000-0000-0cd8-ffff-ffff0000015b"]
${Header NEWS}                       //android.widget.LinearLayout[@content-desc="ニュース"]
${Header Overall}                    //android.widget.LinearLayout[@content-desc="総合トップ"]
${Header MorningSatelliteNews}       //android.widget.LinearLayout[@content-desc="モーサテ"]
${Header WBS}                        //android.widget.HorizontalScrollView[@resource-id='jp.co.tvtokyo.webapi.stg2:id/tabs']/android.widget.LinearLayout[@content-desc="WBS"]
${Header Focus}                      //android.widget.LinearLayout[@content-desc="フォーカス"]
${Header Event}                      //android.widget.LinearLayout[@content-desc="イベント"]
${Header Caster}                     //android.widget.LinearLayout[@content-desc="キャスター・解説者"]
${Header Article}                    //android.widget.LinearLayout[@content-desc="ランキング"]
${Header Ranking}                    //android.widget.LinearLayout[@content-desc="ライブ"]

#Footer Bar
${Footer HOME}                       //android.widget.FrameLayout[@resource-id='jp.co.tvtokyo.webapi.stg2:id/home']
${Footer Mylist}                     //android.widget.FrameLayout[@resource-id='jp.co.tvtokyo.webapi.stg2:id/serial']
${Footer TVShow}                     //android.widget.FrameLayout[@resource-id='jp.co.tvtokyo.webapi.stg2:id/programs']
${Footer Mypage}                     //android.widget.FrameLayout[@resource-id='jp.co.tvtokyo.webapi.stg2:id/my_page']
${Footer Other}                      //android.widget.FrameLayout[@resource-id='jp.co.tvtokyo.webapi.stg2:id/other']

#Other Setting

*** Test Cases ***
Tab LIVE
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=${ANDROID_AUTOMATION_NAME}
    ...                 devicesName=${UUID}
    ...                 platformName=${ANDROID_PLATFORM_NAME}
    ...                 platformVersion=${ANDROID_PLATFORM_VERSION}
    ...                 app=${ANDROID_APP}
    Wait Until Page Contains Element       ${Header Overall}      30s
#    Login Succses
    Scroll    ${Header Overall}    ${Header LIVE}
    Sleep     10s
    Tap       ${Header LIVE}
    Sleep     10s
    Capture Page Screenshot
    close application

#Tab NEWS
#    Login Succses
#    Scroll    ${Header Overall}    ${Header NEWS}
#    Sleep     10s
#    Tap       ${Header NEWS}
#    Sleep     10s
#    Capture Page Screenshot
#
#Tab MorningSatelliteNews
#    Login Succses
#    Scroll    ${Header Overall}    ${Header MorningSatelliteNews}
#    Sleep     10s
#    Tap       ${Header MorningSatelliteNews}
#    Sleep     10s
#    Capture Page Screenshot
#
#Tab WBS
#    Open Application    http://localhost:4723/wd/hub
#    ...                 automationName=${ANDROID_AUTOMATION_NAME}
#    ...                 devicesName=${UUID}
#    ...                 platformName=${ANDROID_PLATFORM_NAME}
#    ...                 platformVersion=${ANDROID_PLATFORM_VERSION}
#    ...                 app=${ANDROID_APP}
#    Wait Until Page Contains Element       ${Header Overall}      60s
##    Login Succses
#    Scroll    ${Header Overall}    ${Header WBS}
#    Sleep     10s
#    Tap       ${Header WBS}
#    Sleep     10s
#    Capture Page Screenshot

#Tab Focus
#    Login Succses
#    Scroll    ${Header Overall}    ${Header Focus}
#    Sleep     10s
#    Tap       ${Header Focus}
#    Sleep     10s
#    Capture Page Screenshot
#
#Tab Event
#    Login Succses
#    Scroll    ${Header Overall}    ${Header Event}
#    Sleep     10s
#    Tap       ${Header Event}
#    Sleep     10s
#    Capture Page Screenshot
#
#Tab Caster
#    Login Succses
#    Scroll    ${Header Overall}    ${Header Caster}
#    Sleep     10s
#    Tap       ${Header Caster}
#    Sleep     10s
#    Capture Page Screenshot
#
#Tab Article
#    Login Succses
#    Scroll    ${Header Overall}    ${Header Article}
#    Sleep     10s
#    Tap       ${Header Article}
#    Sleep     10s
#    Capture Page Screenshot
#
#Tab Ranking
#    Login Succses
#    Scroll    ${Header Overall}    ${Header Ranking}
#    Sleep     10s
#    Tap       ${Header Ranking}
#    Sleep     10s
#    Capture Page Screenshot

*** Keywords ***
Login Succses
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=${ANDROID_AUTOMATION_NAME}
    ...                 devicesName=${UUID}
    ...                 platformName=${ANDROID_PLATFORM_NAME}
    ...                 platformVersion=${ANDROID_PLATFORM_VERSION}
    ...                 app=${ANDROID_APP}
    Wait Until Page Contains Element       ${FOOTER_OTHER}      10s
    Tap         ${FOOTER_OTHER}
    Wait Until Page Contains Element       ${BTN_LOGIN}     10s
    Tap         ${BTN_LOGIN}
    Sleep       5s
    Input Text  ${ACC}  suj_testuser_010
    Input Text  ${PW}   fd276b32
    Wait Until Page Contains Element       ${SUBMIT_LOGIN}      10s
    Tap         ${SUBMIT_LOGIN}
    Sleep       5s
    Page Should Not Contain Text   ゲスト



