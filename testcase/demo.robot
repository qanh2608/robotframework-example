*** Settings ***
Library   AppiumLibrary

*** Test Cases ***
DEMO_AUTO_TEST_TV_TOKYO_APP
    Open TV Tokyo App
    wait until page contains element  jp.co.tvtokyo.webapi.stg2:id/search_button    20000s
    Click Button Search

*** Keywords ***
Open TV Tokyo App
    open application  http://localhost:4723/wd/hub	platformName=Android	platformVersion=12.0	deviceName=emulator-5554    appPackage=jp.co.tvtokyo.webapi.stg2	appActivity=jp.co.tvtokyo.webapi.v4.features.TopListActivity     fullReset=false

Click Button Search
    click button  id=jp.co.tvtokyo.webapi.stg2:id/search_button