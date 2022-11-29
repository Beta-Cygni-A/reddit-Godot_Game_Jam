on(release){
   if(_root.resources >= 10000 and this._alpha == 100)
   {
      _root.resources -= 10000;
      _root.lance = 1;
      setProperty("lance", _alpha, 0);
   }
}
