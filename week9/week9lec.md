
# Shiny:Interactive Web apps and RSelinium 
- RSelinium is the R toolbox to interact with Selinium (originally in Java)
# WebScraping in R
- automatically scrape the web (web harvesting or web data extraction) is data scraping used for extracting data from websites.
<img width="363" alt="image" src="https://user-images.githubusercontent.com/48233453/130371061-0261972d-f830-4807-b9f9-250d99474a48.png">

-- will give you all the chrome drivers installed on your computer
- chrome good because built in features to detect xpath in html code
- 
<img width="450" alt="image" src="https://user-images.githubusercontent.com/48233453/130370954-9a9634e1-d094-4594-b6cc-92b61e8c1a7d.png">
<img width="464" alt="image" src="https://user-images.githubusercontent.com/48233453/130370974-fc2c8f3e-ec5c-4043-a0f6-4d143cc55e5e.png">
<img width="446" alt="image" src="https://user-images.githubusercontent.com/48233453/130371009-6c4229f0-dda8-4abc-b1c6-7e77c530b3b8.png">

- google-chrome-83-0-4103-61

83.0.4103.39

% has a client side and server side, will access the client side
% binman::list_versions("chromedriver")
%rD = rsDriver(browser="chrome", chromever="83.0.4103.39", port=4590L)
% rmDr = rd$client
% points to current session of the browser = to access session, use remDr

% navigate to a url
% remDr$navigate('https:www.google.com')
% pointing to that page in browser

% identifier of this search box in the source code using inspect

% use id or name tag which is unique in the webpage
% is called q

% find the search box
webElem = remDr$findElement(using = 'name', 'q')

% send some text ot the search box
webElem$sendKeysToElement(list('How old is Biden?\n'))

% press enter using \n 

% click on images, find the unique id for the images tab, rich click and inspect, 
% to find the unique identifier, copy XPath, which is a unique street address for element in a webpage, can always use XPATH instead of id or name
% chrome is advantage since XPATH is easily available
% right click on the href for that element


webElem = remDr$findElement(using = 'xpath', 'WHAT WAS COPIED FROM GOOGLE')

webElem$clickElement()

remDr is the current webpage on the browser

remDr$getCurrentUrl()

to go back and forward

remDr$goForward()
remDr$goBack()

can read all the info in a webpage or table and save it to the csv file


<img width="303" alt="image" src="https://user-images.githubusercontent.com/48233453/130372399-fd8eb97d-a69c-48dd-b4ec-39eb64d91615.png">


to run in a loop
for(i in 1:100)
<img width="311" alt="image" src="https://user-images.githubusercontent.com/48233453/130372403-8cc9ed61-3fb3-41ca-b1b4-d4074a8eebe4.png">



% chromeVersions=binman::list_versions(
