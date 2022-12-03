on(release){
   if(_root.station2timer == undefined and _root.resources >= 1000)
   {
      _root.resources -= 1000;
      _root.station2timer = 70;
      _root.station2timertot = 70;
      _root.station2type = 3;
      setProperty("chargebar", _xscale, 0);
      setProperty("barback", _alpha, 100);
      setProperty("chargebar", _alpha, 100);
   }
}
