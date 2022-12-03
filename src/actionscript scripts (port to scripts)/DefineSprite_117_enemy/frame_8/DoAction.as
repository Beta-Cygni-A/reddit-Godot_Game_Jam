if(hit > 0)
{
   myenergy -= hit;
   set("energybar:myenergy",myenergy / 10 * 100);
   set("energybar:timer",10);
   set("barback:timer",10);
   hit = 0;
}
if(slow == undefined)
{
   slow = 1;
}
if(myenergy == undefined)
{
   myenergy = 10;
}
set("enemy:myname",myname);
set("enemy:myenergy",myenergy);
if(_X < 450)
{
   _X = _X + 1 / slow;
}
if(_X >= 450)
{
   if(random(10) == 1)
   {
      _root.target = myname;
      _root.firetype = 9;
      _root.enemyfire();
   }
}
if(myenergy <= 0)
{
   if(timer == undefined)
   {
      timer = 1;
   }
   timer -= 1;
   if(timer < 0)
   {
      _root.enemyslot[myslot] = undefined;
      _root.resources += 150 * _root.refinery;
      _root.nextlevel();
      gotoAndPlay(22);
   }
}
