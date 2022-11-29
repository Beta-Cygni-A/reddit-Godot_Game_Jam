on(release){
   if(_root.station2timer == undefined and _root.resources >= 300)
   {
      _root.resources -= 300;
      _root.station2timer = 30;
      _root.station2timertot = 30;
      _root.station2type = 1;
      setProperty("chargebar", _xscale, 0);
      setProperty("barback", _alpha, 100);
      setProperty("chargebar", _alpha, 100);
   }
}
