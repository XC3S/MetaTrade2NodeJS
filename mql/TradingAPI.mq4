#property copyright "Maximilian Geithe"
#property version   "1.00"
#property strict

int OnInit(){
   string headers;
   char post[], result[];
   int res = WebRequest("GET", "http://localhost/init?bid=" + Bid + "&ask=" + Ask, "", NULL, 1000, post, ArraySize(post), result, headers);
   if(res != 200){
      Print("Status code: " , res, ", error: ", GetLastError());   
   }
   else {
      Print("Init response: ", CharArrayToString(result));
   }
   
   return(INIT_SUCCEEDED);
}

void OnDeinit(const int reason){
   string headers;
   char post[], result[];
   int res = WebRequest("GET", "http://localhost/deinit?bid=" + Bid + "&ask=" + Ask, "", NULL, 1000, post, ArraySize(post), result, headers);
   if(res != 200){
      Print("Status code: " , res, ", error: ", GetLastError());   
   }
   else {
      Print("DeInit response: ", CharArrayToString(result));
   }
}

void OnTick(){
   string headers;
   char post[], result[];
   int res = WebRequest("GET", "http://localhost/tick?bid=" + Bid + "&ask=" + Ask, "", NULL, 1000, post, ArraySize(post), result, headers);
   if(res != 200){
      Print("Status code: " , res, ", error: ", GetLastError());   
   }
   else {
      Print("Tick response: ", CharArrayToString(result));
   }
}
