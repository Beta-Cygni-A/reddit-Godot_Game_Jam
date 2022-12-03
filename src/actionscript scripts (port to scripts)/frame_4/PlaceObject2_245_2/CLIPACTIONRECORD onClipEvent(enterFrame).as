onClipEvent(enterFrame){
   if(random(40) == 1 and timer == undefined and _root.sov == 1)
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
               _root.myorigin = "station1";
               _root.firephaser();
               set("../" add _root.enemyslot[i] add ":hit",_root.phaserpower);
               break;
            }
         }
         i++;
      }
   }
}
