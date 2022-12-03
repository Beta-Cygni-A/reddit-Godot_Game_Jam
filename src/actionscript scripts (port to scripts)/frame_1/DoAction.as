_root.bytesLoaded = _root.getBytesLoaded();
_root.bytesTotal = _root.getBytesTotal();
_root.percentLoaded = Math.round(100 * (_root.bytesLoaded / _root.bytesTotal));
setProperty("percentloadedbox", _xscale, 100 - _root.percentLoaded);
