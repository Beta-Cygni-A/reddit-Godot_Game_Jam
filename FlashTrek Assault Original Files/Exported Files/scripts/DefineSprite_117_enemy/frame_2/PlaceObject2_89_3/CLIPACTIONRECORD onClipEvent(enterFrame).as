onClipEvent(enterFrame){
   if(timer == undefined)
   {
      timer = 0;
   }
   if(timer <= 0 and _alpha > 0)
   {
      _alpha = 0;
   }
   if(timer > 0)
   {
      _alpha = 100;
      timer -= 1;
   }
   if(myenergy < 0)
   {
      myenergy = 0;
   }
   _xscale = myenergy;
}
