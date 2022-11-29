if(hit > 0)
{
   myenergy -= hit;
   set("energybar:myenergy",myenergy / 50 * 100);
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
   myenergy = 50;
}
set("enemy:myname",myname);
set("enemy:myenergy",myenergy);
if(_X < 450)
{
   _X = _X + 0.5 / slow;
}
if(_X >= 450)
{
   if(random(50) == 1 and fire == undefined)
   {
      fire = 1;
      x1 = _X;
      y1 = _Y;
      if(y1 <= 150)
      {
         _root.target = "station1";
      }
      if(y1 > 150 and y1 < 250)
      {
         _root.target = "station2";
      }
      if(y1 >= 250)
      {
         _root.target = "station3";
      }
      _root.myorigin = myname;
      _root.fireassimilate();
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
      _root.resources += 1000 * _root.refinery;
      _root.nextlevel();
      gotoAndPlay(22);
   }
}
