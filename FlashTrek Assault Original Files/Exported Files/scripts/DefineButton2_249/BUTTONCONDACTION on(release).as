on(release){
   if(_root.station3timer == undefined and _root.resources >= 5000)
   {
      _root.resources -= 5000;
      _root.station3timer = 125;
      _root.station3timertot = 125;
      _root.station3type = 1;
      setProperty("chargebar", _xscale, 0);
      setProperty("barback2", _alpha, 100);
      setProperty("chargebar", _alpha, 100);
   }
}
