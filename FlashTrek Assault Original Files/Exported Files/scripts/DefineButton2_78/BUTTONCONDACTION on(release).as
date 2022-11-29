on(release){
   if(_root.resources >= 800 and timer == undefined)
   {
      _root.resources -= 800;
      x = _X;
      y = _Y;
      _root.attachMovie("subspace","subspace" add _root.level,_root.level);
      setProperty("../subspace" add _root.level, _X, x);
      setProperty("../subspace" add _root.level, _Y, y);
      _root.level = _root.level + 1;
      setProperty("barback", _alpha, 100);
      setProperty("chargebar", _alpha, 100);
      timer = 500;
      timertot = timer;
   }
}
