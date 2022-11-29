on(release){
   if(_root.resources >= 600 and timer == undefined)
   {
      _root.resources -= 600;
      _root.attachMovie("nebula","nebula" add _root.level,_root.level);
      setProperty("../nebula" add _root.level, _X, 150);
      setProperty("../nebula" add _root.level, _Y, random(300) + 50);
      _root.level = _root.level + 1;
      setProperty("barback", _alpha, 100);
      setProperty("chargebar", _alpha, 100);
      timer = 500;
      timertot = timer;
   }
}
