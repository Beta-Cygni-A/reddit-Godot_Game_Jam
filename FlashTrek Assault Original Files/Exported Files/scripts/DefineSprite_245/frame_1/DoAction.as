if(_root.station1timer != undefined)
{
   _root.station1timer -= 1;
   setProperty("chargebar", _xscale, 100 - _root.station1timer / _root.station1timertot * 100);
   if(_root.station1timer < 0)
   {
      if(_root.station1type == 1)
      {
         _root.shiptype = 7;
         _root.createship();
      }
      if(_root.station1type == 2)
      {
         _root.shiptype = 3;
         _root.createship();
      }
      _root.station1timer = undefined;
      setProperty("barback2", _alpha, 0);
      setProperty("chargebar", _alpha, 0);
   }
}
