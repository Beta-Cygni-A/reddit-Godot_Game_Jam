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
            setProperty("barback", _alpha, 100);
            setProperty("chargebar", _alpha, 100);
            _root.target = _root.enemyslot[i];
            _root.myorigin = myname;
            _root.firephaser();
            set("../" add _root.enemyslot[i] add ":hit",_root.phaserpower);
         }
         i++;
      }
      timer = 300;
      timertot = timer;
   }
}
