# MetaTrade2NodeJS  
Connect your MQL experts with and external API. In this Example based on Express.js  
 
## Setup  
- execute **"npm install"** inside the project directory  
- start the server using **"npm start"**  
- copy **TradingAPI.mq4** to your other experts (somewhere under AppData)  
- use the **strategietester** or add the expert to a chart and you should see the following  
  
![alt text](https://raw.githubusercontent.com/XC3S/MetaTrade2NodeJS/master/docs/Node.PNG)  
  
![alt text](https://raw.githubusercontent.com/XC3S/MetaTrade2NodeJS/master/docs/MetaTrader.PNG)  
  
## Troubleshoting  
  
### Error 4060  
Allow your Expert to connect with your URL  
_MetaTrader -> Extras -> Optionen -> Experten_  
_1. allow Webrequests_  
_2. add "http://localhost"_  
