on(release){
   if(_root.phaser > 0)
   {
      _root.target = myname;
      _root.myorigin = "station2";
      _root.firephaser();
      set("../:myenergy",myenergy - _root.phaserpower);
      myenergy -= _root.phaserpower;
      set("../energybar:myenergy",myenergy / 20 * 100);
      set("../energybar:timer",10);
      set("../barback:timer",10);
   }
}
