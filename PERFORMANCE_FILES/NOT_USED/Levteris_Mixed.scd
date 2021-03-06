
Levteris.start;

Levteris.dance;

Levteris.noiseresonz;

1.5 +>.vol \lpf;
0.05 +>.vol \lpf;

3 +>.vol \lpf;
\levteris release: 5;
\lpf release: 5;
\tickly release: 3;


\m1 release: 5;
// version 2

//:
"([m1.m2.m3.m4][rm1.rm2.rm3]pm1)".arlink;
{ | vol = 0.5 pos = 0 width = 0.8 |
	var src;
	src = Mix (Resonz.ar (Inp.ar, 100 * [1, 1.2, 1.25, 1.8, 2, 3],
		XLine.kr (1, 0.0005, 30)))
	* XLine.kr (1, 15, 60);
	//	PanAz.ar (43, src * vol, pos, 1, width * 43 + 2);
	src;
} ++> \rm1;
{ | vol = 0.5 pos = 0 width = 0.8 |
	var src;
	src = Inp.ar;
	Pan2.ar (src * vol, Lag.kr (pos, 0.5));
} ++> \pm1;
\levteris_speaks.bufnum +>.buf \m1;
273.8 +>.startPos \m1;
1 +>.rate \m1;
1 +>.loop \m1;
SF.playbuf ++> \m1;
//:
2 +>.vol \m1;

//:
2 +>.vol \pm1;
//:

3 +>.fadeTime \rm1;
3 +>.fadeTime \rm2;
3 +>.fadeTime \rm3;
1 +>.fadeTime \pm1;		

//:
{ | vol = 1 |
	 Mix (Resonz.ar (Inp.ar, 150 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		 0.001))
	 * vol * 10
} ++> \rm1;
//:

{| vol = 1 |
	Mix (Resonz.ar (Inp.ar, 200 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.001))
	* vol * 10
} ++> \rm1;
//:
{| vol = 1 |
	Mix (Resonz.ar (Inp.ar, 250 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0001))
	* vol * 10
} ++> \rm1;
//:

{| vol = 1 |
	Mix (Resonz.ar (Inp.ar, 300 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0001))
	* vol * 10
} ++> \rm1;

//:
{| vol = 1 |
	Mix (Resonz.ar (Inp.ar, 1000 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.005))
	* vol * 10
} ++> \rm1;
//:

{| vol = 1 |
	Mix (Resonz.ar (Inp.ar, 90 * [0.25, 0.5, 0.75, 1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.005))
	* vol * 10

} ++> \rm1

//:
{| vol = 1 |
	Mix (Resonz.ar (Inp.ar, 50 * [0.25, 0.5, 0.75, 1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.005))
	* vol * 10

} ++> \rm1
//: *r1_25 
{| vol = 1 |
	Mix (Resonz.ar (Inp.ar, 25 * [0.25, 0.5, 0.75, 1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0005))
	* vol * 10
	
} ++> \rm1

//: *r1_25cluster

{| vol = 1 |
	Mix (Resonz.ar (Inp.ar, 25 * (1, 1.1 .. 3.3),
		0.0005))
	* vol * 20
	
} ++> \rm1
//:

{| vol = 1 |
	Mix (Resonz.ar (Inp.ar, 250 * (1, 1.1 .. 3.3),
		0.0005))
	* vol * 2
	
} ++> \rm1
//: *r1_1000cluster
{| vol = 1 |
	Mix (Resonz.ar (Inp.ar, 1000 * (1, 1.1 .. 3.3),
		0.0005))
	* vol * 2
	
} ++> \rm1
//: *r1_2500cluster

{| vol = 1 |
	Mix (Resonz.ar (Inp.ar, 2500 * (1, 1.1 .. 3.3),
		0.0005))
	* vol * 2
	
} ++> \rm1
//: *r1_2500gliss 

{| vol = 1, dur = 5 |
	Mix (Resonz.ar (Inp.ar,

		XLine.kr (50, 2500, dur)

		* (1, 1.1 .. 3.3),
		0.0005))
	* vol * 2
} ++> \rm1

//: *r1_rgliss | dur = 5 |
{| vol = 1 dur = 5 |
	Mix (Resonz.ar (Inp.ar,
		XLine.kr (50 rrand: 2500, 50 rrand: 2500, dur)
		* [0.25, 0.5, 0.75, 1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0005))
	* vol * 5
} ++> \rm1

//:

