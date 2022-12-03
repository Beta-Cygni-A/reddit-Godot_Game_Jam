on(release){
   if(_root.station1timer == undefined and _root.resources >= 10000)
   {
      _root.resources -= 10000;
      _root.station1timer = 200;
      _root.station1timertot = 200;
      _root.station1type = 1;
      setProperty("chargebar", _xscale, 0);
      setProperty("barback2", _alpha, 100);
      setProperty("chargebar", _alpha, 100);
   }
}
