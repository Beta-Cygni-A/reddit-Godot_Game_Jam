on(release){
   if(_root.resources >= 150 and timer == undefined)
   {
      _root.resources -= 150;
      i = 0;
      while(i <= _root.totenemies)
      {
         if(_root.enemyslot[i] != undefined)
         {
            set("../" add _root.enemyslot[i] add ":slow",2);
         }
         i++;
      }
      setProperty("barback", _alpha, 100);
      setProperty("chargebar", _alpha, 100);
      timer = 150;
      timertot = timer;
   }
}
