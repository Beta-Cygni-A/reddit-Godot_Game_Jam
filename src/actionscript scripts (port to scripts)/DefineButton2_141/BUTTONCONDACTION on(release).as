on(release){
   if(_root.resources >= 5000 and this._alpha == 100)
   {
      _root.resources -= 5000;
      _root.pulse = 1;
      setProperty("pulse", _alpha, 0);
   }
}
