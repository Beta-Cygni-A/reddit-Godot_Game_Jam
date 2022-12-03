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
