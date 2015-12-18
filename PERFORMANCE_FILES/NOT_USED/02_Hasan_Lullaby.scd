
HasanSong.plain;
HasanSong.plain2;
HasanSong.plain3;
HasanSong.plain4;
0.2 +>.vol \hasansong;
0.1 +>.vol \hasansong2;
0.1 +>.vol \hasansong3;
0.4 +>.vol \hasansong4;
0.05 +>.vol \hasansong4;

////////////////////////////////////////////////////////////////

0.1 +>.pos \hasansong;
0.2 +>.pos \hasansong;
0.3 +>.pos \hasansong;
0.4 +>.pos \hasansong;
0.5 +>.pos \hasansong;
0.6 +>.pos \hasansong;
0.7 +>.pos \hasansong;
0.8 +>.pos \hasansong;
0.9 +>.pos \hasansong;
1.0 +>.pos \hasansong;
-0.1 +>.pos \hasansong;
-0.2 +>.pos \hasansong;
-0.3 +>.pos \hasansong;
-0.4 +>.pos \hasansong;
0.1 +>.width \hasansong;
0.2 +>.width \hasansong;
0.3 +>.width \hasansong;
0.4 +>.width \hasansong;
0.5 +>.width \hasansong;
0.7 +>.width \hasansong;
1.0 +>.width \hasansong;

0.9 +>.vol \hasansong;

////////////////////////////////////////////////////////////////

0.1 +>.pos \hasansong2;
0.2 +>.pos \hasansong2;
0.3 +>.pos \hasansong2;
0.4 +>.pos \hasansong2;
0.5 +>.pos \hasansong2;
0.6 +>.pos \hasansong2;
0.7 +>.pos \hasansong2;
0.8 +>.pos \hasansong2;
0.9 +>.pos \hasansong2;
1.0 +>.pos \hasansong2;
-0.1 +>.pos \hasansong2;
-0.2 +>.pos \hasansong2;
-0.3 +>.pos \hasansong2;
-0.4 +>.pos \hasansong2;
0.1 +>.width \hasansong2;
0.2 +>.width \hasansong2;
0.3 +>.width \hasansong2;
0.4 +>.width \hasansong2;
0.5 +>.width \hasansong2;
0.7 +>.width \hasansong2;
1.0 +>.width \hasansong2;

0.3 +>.vol \hasansong2;

////////////////////////////////////////////////////////////////

0.1 +>.pos \hasansong3;
0.2 +>.pos \hasansog3;
0.3 +>.pos \hasansog3;
0.4 +>.pos \hasansog3;
0.5 +>.pos \hasansog3;
0.6 +>.pos \hasansog3;
0.7 +>.pos \hasansog3;
0.8 +>.pos \hasansog3;
0.9 +>.pos \hasansog3;
1.0 +>.pos \hasansog3;
-0.1 +>.pos \hasansog3;
-0.2 +>.pos \hasansog3;
-0.3 +>.pos \hasansog3;
-0.4 +>.pos \hasansog3;
0.1 +>.width \hasansog3;
0.2 +>.width \hasansog3;
0.3 +>.width \hasansog3;
0.4 +>.width \hasansog3;
0.5 +>.width \hasansog3;
0.7 +>.width \hasansog3;
1.0 +>.width \hasansog3;

0.3 +>.vol \hasansong3;
0.2 +>.vol \hasansong3;
0.1 +>.vol \hasansong3;

////////////////////////////////////////////////////////////////

0.1 +>.pos \hasansong4;
0.2 +>.pos \hasansong4;
0.3 +>.pos \hasansong4;
0.4 +>.pos \hasansong4;
0.5 +>.pos \hasansong4;
0.6 +>.pos \hasansong4;
0.7 +>.pos \hasansong4;
0.8 +>.pos \hasansong4;
0.9 +>.pos \hasansong4;
1.0 +>.pos \hasansong4;
-0.1 +>.pos \hasansong4;
-0.2 +>.pos \hasansong4;
-0.3 +>.pos \hasansong4;
-0.4 +>.pos \hasansong4;
0.1 +>.width \hasansong4;
0.2 +>.width \hasansong4;
0.3 +>.width \hasansong4;
0.4 +>.width \hasansong4;
0.5 +>.width \hasansong4;
0.7 +>.width \hasansong4;
1.0 +>.width \hasansong4;

//

0.5 +>.pos \hasansong;
0 +>.pos \hasansong;
0.1 +>.pos \hasansong;

0.1 +>.vol \hasansong2;



[\hasansong, \hasansong2, \hasansong3, \hasansong4] do: _.release (7);
// NOISE IN CIRCLES STARTS
//:
2 +>.fadeTime \dalwlk;
//:
{ | vol = 2.5 |
	vol * GVerb.ar(TGrains.ar(2, Pulse.ar(30),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(4s)), x, Sweep.ar(x)))
	} ++> \dalwlk;
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([30, 15, 10, 5]),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(4s)), x, Sweep.ar(x)))
	} ++> \dalwlk;
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([30, 15, 10, 5] / 10),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(4s)), x, Sweep.ar(x)))
	} ++> \dalwlk;
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([3, 1, 1, 5]),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(4s)), x, Sweep.ar(x)))
	} ++> \dalwlk;
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.3, 0.1, 0.1, 0.5]),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(4s)), x, Sweep.ar(x)))
	} ++> \dalwlk;
//: GLOBE WITH NOISE ENTERS
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.03, 0.01, 0.01, 0.05]),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(4s)), x, Sweep.ar(x)))
	} ++> \dalwlk;
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.03, 0.01, 0.01, 0.05, 0.5, 0.25, 0.2]),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(4s)), x, Sweep.ar(x)))
	} ++> \dalwlk;
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.03, 0.01, 0.01, 0.05, 0.5, 0.25, 0.2, 0.015]),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(4s)), x, Sweep.ar(x)))
	} ++> \dalwlk;
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.03, 0.01, 0.01, 0.05, 0.5, 0.25, 0.2, 0.015] * 5),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(4s)), x, Sweep.ar(x)))
	} ++> \dalwlk;
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.03, 0.01, 0.01, 0.05, 0.5, 0.25, 0.2, 0.015] * 50),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(4s)), x, Sweep.ar(x)))
	} ++> \dalwlk;
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.03, 0.01, 0.01, 0.05, 0.5, 0.25, 0.2, 0.015] * 50),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(1)), x, Sweep.ar(x)))
	} ++> \dalwlk;
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.03, 0.01, 0.01, 0.05, 0.5, 0.25, 0.2, 0.015] * 50),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(10)), x, Sweep.ar(x)))
	} ++> \dalwlk;
//:
////////////////////////////////////////////////////////////////
/*
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.003, 0.01, 0.01, 0.05, 0.5, 0.25, 0.2, 0.015] * 50),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(LFNoise1.kr (0.2).range (1, 30)), 0.001), x, -1 + Sweep.ar(x * 2)))
	} ++> \dalwlk;
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.003, 0.01, 0.01, 0.05, 0.5, 0.25, 0.2, 0.015] * 50),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(LFNoise1.kr (0.2).range (1, 30)), 0.1), x, -1 + Sweep.ar(x * 2)))
	} ++> \dalwlk;
//:
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.03, 0.01, 0.01, 0.05, 0.5, 0.25, 0.2, 0.015] * 50),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(10), 1.001), x, 1 + Sweep.ar(x * 2)))
	} ++> \dalwlk;
//:
*/
//: ////////////////////////////////////////////////////////////////
//: GLOBE WITHOUT NOISE
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.03, 0.01, 0.01, 0.05, 0.5, 0.25, 0.2, 0.015] * 50),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(10), 1.001), x, 3 + Sweep.ar(x * 2)))
	} ++> \dalwlk;
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.03, 0.01, 0.01, 0.05, 0.5, 0.25, 0.2, 0.015] * 50),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(10), 1.001), x, 5 + Sweep.ar(x * 2)))
	} ++> \dalwlk;
//:
{ | vol = 2.5 |

	vol * GVerb.ar(TGrains.ar(2, Pulse.ar([0.03, 0.01, 0.01, 0.05, 0.5, 0.25, 0.2, 0.015] * 50),
			\a11wlk01.buf.bufnum, Sweep.ar(x=Pulse.ar(10), 1.001), x, 15 + Sweep.ar(x * 2)))
	} ++> \dalwlk;
//:

//: SPHERE

//: FADEOUT to silence
\dalwlk release: 10;

//: Moon alone in silence