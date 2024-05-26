* Settings *
Library         AppiumLibrary
Library         BuiltIn
Library         OperatingSystem
Library         DateTime
Library         BuiltIn

* Variables *
${GLOBAL_TIMEOUT}       25
${APP_OS}               "android"
${ENVIRONMENT}          "local"
${CI}                   "ci_false"

* Keywords *

Abrir App Local Android
    Open Application    127.0.0.1:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Moto G
    ...                 app=${EXECDIR}/app/android/yodapp-beta.apk
    ...                 udid=RX8N30137ZL
    ...                 appPackage=com.qaxperience.yodapp
    ...                 appActivity=com.qaxperience.yodapp.components.base.SplashActivity
    ...                 autoGrantPermissions=true
    ...                 strict_ssl=False
    Start Screen Recording

Fechar App
    ${DATE} =       Get Current Date    result_format=%m.%d.%Y
    Stop Screen Recording    filename=${EXECDIR}\\output\\${DATE}-${TEST_STATUS}
    Capture Page Screenshot
    Close Application