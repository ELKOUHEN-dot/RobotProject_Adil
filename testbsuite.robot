*** Settings ***
Library    SeleniumLibrary
Default Tags  Sanity 

*** Test Cases ***
premier test 
   [Tags]   Smoke
   # log to console    bonjour
   #Create Webdriver  chrome  C:\Users\A607482_old\OneDrive - ATOS\Documents\M2\Projects\SIPS\23R6_24R1\FLOA\JAR derniere V\webdrivers
   Open Browser  ${URL}   chrome 
 #  driver.findElement(By.name("username")).sendKeys("Admin");
   #Wait Until Element Is Visible (name=driver.findElement(By.name("username")))
   Sleep  20
   Wait Until Page Contains           Username
   LoginKW
   Sleep  5
    ${bouton}=    Get WebElement    //form//button[not(@id)]
    Click Element    ${bouton}
    Sleep  10
    #Click Element     name=Abdul Rafya sns


   #Click Button    driver.find_element(By.CSS_SELECTOR, value="Login")  
  # submit_button = driver.find_element(by=By.CSS_SELECTOR, value="button")
   # WebElement submitButton = driver.findElement(By.cssSelector("button")); 
   #Click Element    link=Login

   #Input Text  name=driver.findElement(By.name("username"))  Admin
  # Input Text  name=username  Admin
deuxieme test 
   log  je suis en deuxieme test

*** Keywords ***
LoginKW  
   Input Text    name=username    Admin
   Input Password    name=password    admin123

*** Variables ***

${URL}   https://opensource-demo.orangehrmlive.com/