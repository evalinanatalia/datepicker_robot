*** Setting ***
Library		Selenium2Library
*** Variable ***
${browser}	Chrome
${url}		https://testautomationpractice.blogspot.com/
${date_picker}	datepicker
${next_button}	//*[@id="ui-datepicker-div"]/div/a[2]
${back_button}	//*[@id="ui-datepicker-div"]/div/a[1]

*** Test Cases ***
Start Automation
	Launch browser
	Test Datepicker
	Exit Browser
	

*** Keywords ***
Launch Browser
	Open Browser	${url}	${browser}
	Maximize Browser Window
	Execute Javascript	window.scrollTo(0, 254)
	
Test Datepicker
	Click Element	${date_picker}
	Click Back Month
	Click Element	//*[@id="ui-datepicker-div"]/table/tbody/tr[3]/td[6]/a
	${value}=	Get Element Attribute	${date_picker}		value
	Should Be Equal		${value}	07/16/2021
	Sleep	2
		

Click Back Month
	Wait Until Element Is Visible	${back_button}
	Click Element	${back_button}
	
Click Next Month
	Wait Until Element Is Visible	${next_button}
	Click Element	${next_button}
	
Exit Browser
	Close Browser