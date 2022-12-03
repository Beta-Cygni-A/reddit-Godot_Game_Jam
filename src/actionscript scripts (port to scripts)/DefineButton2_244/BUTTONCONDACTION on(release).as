on(release){
   if(_root.station1timer == undefined and _root.resources >= 8000)
   {
      _root.resources -= 8000;
      _root.station1timer = 150;
      _root.station1timertot = 150;
      _root.station1type = 2;
      setProperty("chargebar", _xscale, 0);
      setProperty("barback2", _alpha, 100);
      setProperty("chargebar", _alpha, 100);
   }
}
