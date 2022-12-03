on(release){
   if(_root.resources <= 5000 and this._alpha == 100)
   {
      _root.phasercharger = 2;
      _root.resources -= 5000;
      setProperty("phasercharger", _alpha, 0);
   }
}
