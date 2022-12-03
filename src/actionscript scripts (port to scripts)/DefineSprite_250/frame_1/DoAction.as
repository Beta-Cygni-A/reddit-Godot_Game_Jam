if(myenergy == undefined)
{
   myenergy = 50;
}
if(hit > 0)
{
   myenergy -= 1;
   setProperty("energybar", _xscale, myenergy / 50 * 100);
   set("energybar:timer",10);
   set("barback:timer",10);
   hit = 0;
}
if(myenergy < 0)
{
   gotoAndPlay(3);
}
if(_root.station3timer != undefined)
{
   _root.station3timer -= 1;
   setProperty("chargebar", _xscale, 100 - _root.station3timer / _root.station3timertot * 100);
   if(_root.station3timer < 0)
   {
      if(_root.station3type == 1)
      {
         _root.shiptype = 9;
         _root.createship();
      }
      _root.station3timer = undefined;
      setProperty("barback2", _alpha, 0);
      setProperty("chargebar", _alpha, 0);
   }
}
