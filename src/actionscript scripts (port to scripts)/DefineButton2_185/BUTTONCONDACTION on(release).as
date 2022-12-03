on(release){
   if(_root.station2timer == undefined and _root.resources >= 3000)
   {
      _root.resources -= 3000;
      _root.station2timer = 150;
      _root.station2timertot = 150;
      _root.station2type = 4;
      setProperty("chargebar", _xscale, 0);
      setProperty("barback", _alpha, 100);
      setProperty("chargebar", _alpha, 100);
   }
}
