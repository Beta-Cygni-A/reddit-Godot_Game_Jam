onClipEvent(enterFrame){
   num = 15;
   if(_root.wavelevel > 5)
   {
      num = 10;
   }
   if(_root.wavelevel > 10)
   {
      num = 5;
   }
   if(random(num) == 1 and _root.wave > 0)
   {
      _root.createbadguy();
      _root.updatebars();
   }
   if(_root.phaser <= 0)
   {
      _root.phaser = 0;
      if(timer == undefined)
      {
         timer = _root.phaserrecharge / _root.phasercharger;
      }
      timer -= 1;
      setProperty("../phaserbar", _xscale, 100 - timer / (_root.phaserrecharge / _root.phasercharger) * 100);
      set("../phaserbar:mytype",2);
      if(timer < 0)
      {
         timer = undefined;
         _root.phaser = _root.totphaser;
         _root.updatebars();
      }
   }
   if(hit > 0)
   {
      while(hit > 0)
      {
         hit--;
         _root.hit();
      }
   }
   if(random(40) == 1 and _root.auto == 1)
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
            if(Math.abs(x1 - x2) < 150 and Math.abs(y1 - y2) < 100)
            {
               _root.target = _root.enemyslot[i];
               _root.myorigin = "station2";
               _root.firephaser();
               set("../" add _root.enemyslot[i] add ":hit",_root.phaserpower);
               break;
            }
         }
         i++;
      }
   }
}
