//: "--- Starting Aerodromio".postln;
'istories'.bufnum +>.buf \aerodromio;
0.4 +>.vol \aerodromio;
SF.playbuf22 ++> \aerodromio;

"(veryfast.veryfastlpf)".arlink;
//:
2 +>.fadeTime \veryfast;
2 +>.fadeTime \veryfastlpf;
//:
0.2 +>.fadeTime \veryfast;
0.2 +>.fadeTime \veryfastlpf;
//:

0.1 +>.pos \aerodromio;
0.2 +>.pos \aerodromio;
0.3 +>.pos \aerodromio;
0.4 +>.pos \aerodromio;
0.5 +>.pos \aerodromio;
0.6 +>.pos \aerodromio;
0.7 +>.pos \aerodromio;
0.8 +>.pos \aerodromio;
0.9 +>.pos \aerodromio;

-0.1 +>.pos \aerodromio;
-0.2 +>.pos \aerodromio;
-0.3 +>.pos \aerodromio;
-0.4 +>.pos \aerodromio;
-0.5 +>.pos \aerodromio;
-0.6 +>.pos \aerodromio;
-0.7 +>.pos \aerodromio;
-0.8 +>.pos \aerodromio;
-0.9 +>.pos \aerodromio;

2 +>.width \aerodromio;
3 +>.width \aerodromio;
4 +>.width \aerodromio;
5 +>.width \aerodromio;
6 +>.width \aerodromio;
7 +>.width \aerodromio;
8 +>.width \aerodromio;
9 +>.width \aerodromio;
10 +>.width \aerodromio;
12 +>.width \aerodromio;
13 +>.width \aerodromio;
14 +>.width \aerodromio;
15 +>.width \aerodromio;
16 +>.width \aerodromio;
17 +>.width \aerodromio;
18 +>.width \aerodromio;
19 +>.width \aerodromio;

//:
{ | vol = 1 | LPF.ar(Inp.ar, [400, 600]) * vol } ++> \veryfastlpf;
{  | vol = 0.05 |
	var a, p;
	a=SinOsc;p=Pulse;GVerb.ar(WhiteNoise.ar*p.ar(TChoose.kr(a.kr(4),[5,8,20,30]))
		* p.ar(16,0.1))+a.ar(97*p.ar(1),0,p.kr(0.5,add:1))
	* vol;
} ++> \veryfast;
//:

// { HPF.ar(Inp.ar, [400, 600]) * 1.0 } ++> \veryfastlpf;
//:
{ LPF.ar(Inp.ar, {LFNoise0.kr([2, 3].choose).range(1000, 2000)} ! 22) * 0.2 } ++> \veryfastlpf;
//:
{ {LPF.ar(Inp.ar, LFNoise0.kr([2, 3].choose).range(1000, 2000))} ! 22 * 0.5 } ++> \veryfastlpf;
//:
{ HPF.ar(Inp.ar, {LFNoise0.kr([1, 2].choose).range(1000, 2000)} ! 22) * 0.2 } ++> \veryfastlpf;
//:
{ {HPF.ar(Inp.ar, LFNoise0.kr([1, 2].choose).range(1000, 2000))} ! 22 * 0.2 } ++> \veryfastlpf;
//:
{ Resonz.ar(Inp.ar, {LFNoise0.kr([3, 2].choose).range(1800, 2000)} ! 22) * 0.5 } ++> \veryfastlpf;
//:
{ {Resonz.ar(Inp.ar, LFNoise0.kr([3, 2].choose).range(1800, 2000))} ! 22 * 0.2 } ++> \veryfastlpf;
//:
{ Resonz.ar(Inp.ar, {LFNoise1.kr([5, 5].choose).range(200, 10000)} ! 22) * 0.2 } ++> \veryfastlpf;
//:
{ Resonz.ar(Inp.ar, {LFNoise1.kr([5, 5].choose).range(200, 10000)} ! 22) * 0.3 } ++> \veryfastlpf;

////////////////////////////////////////////////////////////////
//:
{ PinkNoise.ar(Decay.kr(Dust.kr(10))) } ++> \veryfast;
//:
{ GrayNoise.ar(Decay.kr(Dust.kr(20))) } ++> \veryfast;
//:
{ GrayNoise.ar(Decay.kr(Impulse.kr(7))) } ++> \veryfast;
//:
{ GrayNoise.ar(0.1) } ++> \veryfast;
//:
{ BrownNoise.ar(0.1) } ++> \veryfast;
//:
{ PinkNoise.ar(0.1) } ++> \veryfast;
//:
////////////////////////////////////////////////////////////////
//:
{
	LPF.ar(Inp.ar,
		{LFNoise0.kr([2, 3].choose).range(1000, 2000)} ! 22,
		{LFNoise1.kr(1).range(0.0, 0.5) } ! 22
	)
} ++> \veryfastlpf;
//:
{
	HPF.ar(Inp.ar,
		{LFNoise0.kr([2, 3].choose).range(100, 2000)} ! 22,
		{LFNoise1.kr(1).range(0.0, 0.5 } ! 22
	)
} ++> \veryfastlpf;
//:
{
	Resonz.ar(Inp.ar,
		{LFNoise0.kr([3, 2].choose).range(1800, 2000)} ! 22,
		mul: {LFNoise1.kr(1).range(0.0, 0.1) } ! 22
	)
} ++> \veryfastlpf;
//:

//:
{ Resonz.ar(Inp.ar,
	{LFNoise1.kr([5, 5]).range(200, 10000)} ! 22,
	bwr: {LFNoise1.kr (0.005, 0.1)} ! 22,
	mul: {LFNoise1.kr(1).range(0.0, 0.1) } ! 22
) * 0.2 } ++> \veryfastlpf;

//:
{ var a, p;
	a=SinOsc;p=Pulse;GVerb.ar(
		WhiteNoise.ar*p.ar(
			TChoose.kr(a.kr(2),[5,8,20,30]))
		*p.ar(16,0.1))+a.ar(97*p.ar(4),0,p.kr(5,add:1))
	* 0.1
} ++> \veryfast;
//:
{ var a, p;
	a=SinOsc;p=Pulse;GVerb.ar(
		WhiteNoise.ar*p.ar(
			TChoose.kr(a.kr(3),[5,8,20,30]))*p.ar(
				LFNoise1.ar(0.2).range(4, 20)
				,0.1))+a.ar(97*p.ar(4),0,p.kr(5,add:1))
	* 0.1
} ++> \veryfast;
//:
{ var a, p;
	a=SinOsc;p=Pulse;GVerb.ar(
		WhiteNoise.ar*p.ar(
			TChoose.kr(a.kr(3),[5,8,20,30]))*p.ar(
				LFNoise1.ar(0.2).range(4, 20)
				,0.1))+a.ar(97*p.ar(4),0,p.kr(5,add:1))
	* 0.1
} ++> \veryfast;

//:
\veryfast.release (3);
q//:
\aerodromio.release (15);