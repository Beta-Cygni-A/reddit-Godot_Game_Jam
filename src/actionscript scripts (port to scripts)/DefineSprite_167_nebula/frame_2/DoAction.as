i = 0;
while(i <= _root.totenemies)
{
   if(this.hitTest("../" add _root.enemyslot[i]) and _root.enemyslot[i] != undefined)
   {
      set("../" add _root.enemyslot[i] add ":hit",1);
   }
   i++;
}
