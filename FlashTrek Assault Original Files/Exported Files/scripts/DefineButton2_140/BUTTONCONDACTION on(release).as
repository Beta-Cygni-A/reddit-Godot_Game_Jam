on(release){
   if(_root.resources >= 2000 and this._alpha == 100)
   {
      _root.resources -= 2000;
      _root.plasma = 1;
      setProperty("plasma", _alpha, 0);
   }
}
