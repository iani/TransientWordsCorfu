//:
Server.killAll;
//:
var base;
base = nil.asTarget;
{
	ReplaceOut.ar (0,
		[
			In.ar (0), // 1
			In.ar (1), // 2
			In.ar (2), // 3
			In.ar (3), // 4
			In.ar (4), // 5
			In.ar (5), // 6
			In.ar (6), // 7
			In.ar (7), // 8
			Silent.ar (), // 9
			Silent.ar (),  // 10
			Silent.ar (),
			Silent.ar (),			
			In.ar (8), // 9
			In.ar (9), // 10
			In.ar (10), // 11
			In.ar (11), // 12
			In.ar (12), // 13
			In.ar (13), // 14
			In.ar (14), // 15
			Silent.ar (),
			In.ar (15), // 16
			In.ar (16), // 17
			In.ar (17), // 18
			In.ar (18), // 19
			In.ar (19), // 20
			In.ar (20), // 21
			In.ar (21) // 22
		]
	)
}.play (base)


//:
"(m1.rm1)(m2.rm2)".arlink;
{ | vol = 0.5, pos = 0, width = 0 |
	var src;
	src = Mix (Resonz.ar (Inp.ar, 100 * [1, 1.2, 1.25, 1.8, 2, 3],
		XLine.kr (1, 0.0005, 30)))
	* XLine.kr (1, 15, 60);
	PanAz.ar (22, src * vol, pos, 1, width * 22 + 2);
	// src;
} ++> \rm1;

\levteris_speaks.bufnum +>.buf \m1;
273.8 +>.startPos \m1;
1 +>.rate \m1;
1 +>.loop \m1;
SF.playbuf ++> \m1;
//:
5 +>.vol \m1;
//:
0.5 +>.width \rm1;
//:
3 +>.fadeTime \rm1;
3 +>.fadeTime \rm2;
3 +>.fadeTime \rm3;
3 +>.fadeTime \pm1;		

// Initial harmony (chord resonance) fades in within ca 60 seconds
// Initial harmony stays for an extra 10 seconds before moving to the next one. 

// Sea video enters at the first change of harmony (ca 70 seconds after start of Ma)


//:
{ | vol = 1 |
	 Resonz.ar (Inp.ar, 150 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		 0.001)
	 * vol * 10
} ++> \rm1;
//:

{| vol = 1 |
	Resonz.ar (Inp.ar, 200 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.001)
	* vol * 10
} ++> \rm1;
//:
{| vol = 1 |
	Resonz.ar (Inp.ar, 250 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0001)
	* vol * 150
} ++> \rm1;
//:

{| vol = 1 |
	Resonz.ar (Inp.ar, 300 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0001)
	* vol * 100
} ++> \rm1;

//:
{| vol = 1 |
	Resonz.ar (Inp.ar, 1000 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0001)
	* vol * 50
} ++> \rm1;
//:

{| vol = 1 |
	Resonz.ar (Inp.ar, 90 * [0.25, 0.5, 0.75, 1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0005)
	* vol * 20 
} ++> \rm1

//:
{| vol = 1 |
	Resonz.ar (Inp.ar, 50 * [0.25, 0.5, 0.75, 1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0005)
	* vol * 100 
} ++> \rm1
//: *r1_25 
{| vol = 1 |
	Resonz.ar (Inp.ar, 25 * [0.25, 0.5, 0.75, 1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0005)
	* vol * 100
} ++> \rm1

//: *r1_25cluster

{| vol = 1 |
	Resonz.ar (Inp.ar, 25 * (1, 1.1 .. 3.1).scramble, 0.0005) * vol * 120} ++> \rm1
//:

{| vol = 1 |
	Resonz.ar (Inp.ar, 250 * (1, 1.1 .. 3.1).scramble, 0.0005) * vol * 10
} ++> \rm1
//: *r1_1000cluster
{| vol = 1 |
	Resonz.ar (Inp.ar, 1000 * (1, 1.1 .. 3.1).scramble, 0.0005) * vol * 20
} ++> \rm1
//: *r1_2500cluster

{| vol = 1 |
	Resonz.ar (Inp.ar, 2500 * (1, 1.1 .. 3.1).scramble, 0.0005) * vol * 2 
} ++> \rm1;

//: *r1_2500gliss 
{| vol = 1, dur = 35 |
	Resonz.ar (Inp.ar, XLine.kr (20, 12500, dur) * (1, 1.1 .. 3.1), 0.0005) * vol * 15
} ++> \rm1;

//: *r1_rgliss | dur = 5 |
{| vol = 1 dur = 1.5 |
	Resonz.ar (Inp.ar,
		XLine.kr (50 rrand: 2500, 50 rrand: 2500, dur)
		* [0.25, 0.5, 0.75, 1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5].scramble,
		0.0005)
	* vol * 5
} ++> \rm1

//: *r1_2500cluster + LFNoise
{| vol = 1 |
	Resonz.ar (Inp.ar, LFNoise1.kr(5).range(2000, 2500)
		* (1, 1.1 .. 3.1).scramble, 0.0005) * vol * 2 
} ++> \rm1;
//:
// ================================================================
 
//:

\rm1 release: 10;
// \rm1.free;
//: fade out to silence: Aerodromio follows
\m1 release: 10;
//:
(1, 1.1 .. 3.1).size;