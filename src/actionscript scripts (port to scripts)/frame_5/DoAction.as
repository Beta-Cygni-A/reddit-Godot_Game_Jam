stop();
stopAllSounds();
attachMovie("menu","menu",level2);
setProperty("menu", _X, 325);
setProperty("menu", _Y, 200);
level2++;
_root.wavelevel = _root.wavelevel + 1;
nextlevel = "LEVEL " + _root.wavelevel;
