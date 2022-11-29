if(_root.station2timer != undefined)
{
   _root.station2timer -= 1;
   setProperty("chargebar", _xscale, 100 - _root.station2timer / _root.station2timertot * 100);
   if(_root.station2timer < 0)
   {
      if(_root.station2type == 1)
      {
         _root.createmine();
      }
      if(_root.station2type == 2)
      {
         _root.shiptype = 1;
         _root.createship();
      }
      if(_root.station2type == 3)
      {
         _root.createphaserpod();
      }
      if(_root.station2type == 4)
      {
         _root.shiptype = 5;
         _root.createship();
      }
      if(_root.station2type == 5)
      {
         _root.shields = _root.totshields;
         _root.updatebars();
      }
      _root.station2timer = undefined;
      setProperty("barback", _alpha, 0);
      setProperty("chargebar", _alpha, 0);
   }
}
if(_root.shields < 0)
{
   gotoAndPlay(3);
}
