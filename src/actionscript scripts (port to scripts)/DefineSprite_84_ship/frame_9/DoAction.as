if(timer == undefined and random(10) == 1)
{
   i = 0;
   while(i <= _root.totenemies)
   {
      if(_root.enemyslot[i] != undefined)
      {
         x1 = _X;
         y1 = _Y;
         x2 = getProperty("../" add _root.enemyslot[i], _X);
         y2 = getProperty("../" add _root.enemyslot[i], _Y);
         if(Math.abs(x1 - x2) < 100 and Math.abs(y1 - y2) < 100)
         {
            timer = 25;
            timertot = timer;
            setProperty("barback", _alpha, 100);
            setProperty("chargebar", _alpha, 100);
            _root.target = _root.enemyslot[i];
            _root.myorigin = myname;
            _root.firephaser();
            set("../" add _root.enemyslot[i] add ":hit",_root.phaserpower);
            break;
         }
      }
      i++;
   }
   if(random(10) == 1)
   {
      _root.attachMovie("torp","torp" add _root.level,_root.level);
      setProperty("../torp" add _root.level, _X, x1);
      setProperty("../torp" add _root.level, _Y, y1);
      timer = 5;
      timertot = timer;
      setProperty("barback", _alpha, 100);
      setProperty("chargebar", _alpha, 100);
      _root.level = _root.level + 1;
   }
}
if(timer != undefined)
{
   timer -= 1;
   setProperty("chargebar", _xscale, 100 - timer / timertot * 100);
   if(timer < 0)
   {
      timer = undefined;
      setProperty("barback", _alpha, 0);
      setProperty("chargebar", _alpha, 0);
   }
}
