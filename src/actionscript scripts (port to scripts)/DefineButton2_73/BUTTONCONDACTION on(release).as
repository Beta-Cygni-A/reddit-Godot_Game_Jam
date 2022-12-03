on(release){
   if(_root.resources >= 500 and timer == undefined)
   {
      _root.resources -= 500;
      i = 0;
      while(i <= _root.totenemies)
      {
         if(_root.enemyslot[i] != undefined)
         {
            x1 = _X;
            y1 = _Y;
            x2 = getProperty("../" add _root.enemyslot[i], _X);
            y2 = getProperty("../" add _root.enemyslot[i], _Y);
            if(Math.abs(x1 - x2) < 200 and Math.abs(y1 - y2) < 200)
            {
               setProperty("barback", _alpha, 100);
               setProperty("chargebar", _alpha, 100);
               _root.target = _root.enemyslot[i];
               _root.myorigin = myname;
               _root.firetractor();
               set("../" add _root.enemyslot[i] add ":slow",100);
            }
         }
         i++;
      }
      timer = 200;
      timertot = timer;
   }
}
