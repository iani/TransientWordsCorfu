//:
Server.killAll;
//:

{ | vol = 0.5, pos = 0, width = 0 |
	var src;
	src = Inp.ar;
	PanAz.ar (22, src * vol, pos, 1, width * 22 + 2);
	// src;
} ++> \rm2;

\levteris_speaks.bufnum +>.buf \m2;
273.8 +>.startPos \m2;
1 +>.rate \m2;
1 +>.loop \m2;
SF.playbuf ++> \m2;
//:
0.5 +>.width \rm2;

//:
{ | thresh = 0.5, amp = 0.1, decay = 1, pos = 0, width = 0 |
	var input, fft, onsets, centroid, src;
	// Get the input from the FIRST INPUT CHANNEL of your card.
	input = Inp.ar;
	// get the fft to use for various machine listening ugens:
	fft = FFT(LocalBuf (1024), input);
	// Detect onsets in the input:
	onsets = Onsets.kr (fft, thresh);
	// Make a sound whenever an onset is found:
	centroid = SpecCentroid.kr (fft);
	// WhiteNoise.ar (Decay.kr (onsets)) * 0.1;
	// Test the centroid by synthesizing a sound with it:
	src = SinOsc.ar (Lag.kr (centroid, 1) / 4, 0, Decay.kr (onsets, decay) * amp );
	PanAz.ar (22, src, pos, 1, width * 22 + 2);
} ++> \rm2;
//:
0.001 +>.thresh \rm2;
//:
0.2 +>.decay 'rm2';
//:
{ | thresh = 0.5, amp = 0.1, decay = 1, pos = 0, width = 0 |
	var input, fft, onsets, centroid, src;
	// Get the input from the FIRST INPUT CHANNEL of your card.
	input = Inp.ar;
	// get the fft to use for various machine listening ugens:
	fft = FFT(LocalBuf (1024), input);
	// Detect onsets in the input:
	onsets = Onsets.kr (fft, thresh);
	// Make a sound whenever an onset is found:
	centroid = SpecCentroid.kr (fft);
	// WhiteNoise.ar (Decay.kr (onsets)) * 0.1;
	// Test the centroid by synthesizing a sound with it:
	src = Formant.ar (Lag.kr (centroid, 1) / 4, 2000, 480, Decay.kr (onsets, decay) * amp );
	src = LPF.ar (src, 440);
	PanAz.ar (22, src, pos, 1, width * 22 + 2);
} ++> \rm2;
//:
{ | thresh = 0.5, amp = 0.1, decay = 1, pos = 0, width = 0 |
	var input, fft, onsets, centroid, src;
	// Get the input from the FIRST INPUT CHANNEL of your card.
	input = Inp.ar;
	// get the fft to use for various machine listening ugens:
	fft = FFT(LocalBuf (1024), input);
	// Detect onsets in the input:
	onsets = Onsets.kr (fft, thresh);
	// Make a sound whenever an onset is found:
	centroid = Pitch.kr (input) [0];
	// WhiteNoise.ar (Decay.kr (onsets)) * 0.1;
	// Test the centroid by synthesizing a sound with it:
	src = Formant.ar (Lag.kr (centroid, 1), 2000, 480, Decay.kr (onsets, decay) * amp );
	src = LPF.ar (src, 440);
	PanAz.ar (22, src, pos, 1, width * 22 + 2);
} ++> \rm2;
//:
{ | thresh = 0.5, amp = 0.1, decay = 1, pos = 0, width = 0 |
	var input, fft, onsets, centroid, src;
	// Get the input from the FIRST INPUT CHANNEL of your card.
	input = Inp.ar;
	// get the fft to use for various machine listening ugens:
	fft = FFT(LocalBuf (1024), input);
	// Detect onsets in the input:
	onsets = Onsets.kr (fft, thresh);
	// Make a sound whenever an onset is found:
	centroid = SpecCentroid.kr (fft);
	// WhiteNoise.ar (Decay.kr (onsets)) * 0.1;
	// Test the centroid by synthesizing a sound with it:
	src = SinOsc.ar (Lag.kr (centroid * [1, 0.5, 0.75, 1.2]) / 4, 0, Decay.kr (onsets, decay) * amp );
	PanAz.ar (22, Mix (src), pos, 1, width * 22 + 2);
} ++> \rm2;
//:
0.1 +>.thresh \rm2;

//:
{ | vol = 1 |
	 Resonz.ar (Inp.ar, 150 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		 0.001)
	 * vol * 10
} ++> \rm2;
//:

{| vol = 1 |
	Resonz.ar (Inp.ar, 200 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.001)
	* vol * 10
} ++> \rm2;
//:
{| vol = 1 |
	Resonz.ar (Inp.ar, 250 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0001)
	* vol * 150
} ++> \rm2;
//:

{| vol = 1 |
	Resonz.ar (Inp.ar, 300 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0001)
	* vol * 100
} ++> \rm2;

//:
{| vol = 1 |
	Resonz.ar (Inp.ar, 1000 * [1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0001)
	* vol * 50
} ++> \rm2;
//:

{| vol = 1 |
	Resonz.ar (Inp.ar, 90 * [0.25, 0.5, 0.75, 1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0005)
	* vol * 20 
} ++> \rm2

//:
{| vol = 1 |
	Resonz.ar (Inp.ar, 50 * [0.25, 0.5, 0.75, 1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0005)
	* vol * 100 
} ++> \rm2
//: *r1_25 
{| vol = 1 |
	Resonz.ar (Inp.ar, 25 * [0.25, 0.5, 0.75, 1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5],
		0.0005)
	* vol * 100
} ++> \rm2

//: *r1_25cluster

{| vol = 1 |
	Resonz.ar (Inp.ar, 25 * (1, 1.1 .. 3.1).scramble, 0.0005) * vol * 120} ++> \rm2
//:

{| vol = 1 |
	Resonz.ar (Inp.ar, 250 * (1, 1.1 .. 3.1).scramble, 0.0005) * vol * 10
} ++> \rm2
//: *r1_1000cluster
{| vol = 1 |
	Resonz.ar (Inp.ar, 1000 * (1, 1.1 .. 3.1).scramble, 0.0005) * vol * 20
} ++> \rm2
//: *r1_2500cluster

{| vol = 1 |
	Resonz.ar (Inp.ar, 2500 * (1, 1.1 .. 3.1).scramble, 0.0005) * vol * 2 
} ++> \rm2;

//: *r1_2500gliss 
{| vol = 1, dur = 35 |
	Resonz.ar (Inp.ar, XLine.kr (20, 12500, dur) * (1, 1.1 .. 3.1), 0.0005) * vol * 15
} ++> \rm2;

//: *r1_rgliss | dur = 5 |
{| vol = 1 dur = 1.5 |
	Resonz.ar (Inp.ar,
		XLine.kr (50 rrand: 2500, 50 rrand: 2500, dur)
		* [0.25, 0.5, 0.75, 1, 1.25, 1.3, 1,5, 1.8, 2, 2.5, 3, 3.5, 4, 4.5].scramble,
		0.0005)
	* vol * 5
} ++> \rm2

//: *r1_2500cluster + LFNoise

{| vol = 1 |
	Resonz.ar (Inp.ar, LFNoise1.kr(5).range(2000, 2500)
		* (1, 1.1 .. 3.1).scramble, 0.0005) * vol * 2 
} ++> \rm2;


// ================================================================
 
//:

\rm2 release: 10;
\rm2.free;
//: fade out to silence: Aerodromio follows
\m1 release: 10;
//:
(1, 1.1 .. 3.1).size;