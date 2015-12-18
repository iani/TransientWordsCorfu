//: "--- Starting Aerodromio".postln;
'istories'.bufnum +>.buf \aerodromio;
0.4 +>.vol \aerodromio;
SF.playbuf24 ++> \aerodromio;

"(veryfast.veryfastlpf)".arlink;
//:
{ | vol = 1 | LPF.ar(Inp.ar, [400, 600]) * vol } ++> \veryfastlpf;
{  | vol = 0.05 |
	var a, p;
	a=SinOsc;p=Pulse;GVerb.ar(WhiteNoise.ar*p.ar(TChoose.kr(a.kr(2),[5,8,20,30]))
		* p.ar(16,0.1))+a.ar(97*p.ar(4),0,p.kr(5,add:1))
	* vol;
} ++> \veryfast;
//:

// { HPF.ar(Inp.ar, [400, 600]) * 1.0 } ++> \veryfastlpf;
//:
{ LPF.ar(Inp.ar, {LFNoise0.kr([2, 3]).range(1000, 2000)} ! 24) * 0.2 } ++> \veryfastlpf;
//:
{ {LPF.ar(Inp.ar, LFNoise0.kr([2, 3]).range(1000, 2000))} ! 24 * 0.2 } ++> \veryfastlpf;
//:
{ HPF.ar(Inp.ar, {LFNoise0.kr([1, 2]).range(1000, 2000)} ! 24) * 0.2 } ++> \veryfastlpf;
//:
{ {HPF.ar(Inp.ar, LFNoise0.kr([1, 2]).range(1000, 2000))} ! 24 * 0.2 } ++> \veryfastlpf;
//:
{ Resonz.ar(Inp.ar, LFNoise0.kr([3, 2]).range(1800, 2000) ! 24) * 0.2 } ++> \veryfastlpf;
//:
{ {Resonz.ar(Inp.ar, LFNoise0.kr([3, 2]).range(1800, 2000))} ! 24 * 0.2 } ++> \veryfastlpf;
//:
{ Resonz.ar(Inp.ar, LFNoise1.kr([5, 5]).range(200, 10000) ! 24) * 0.2 } ++> \veryfastlpf;
//:
{ Resonz.ar(Inp.ar, LFNoise1.kr([5, 5]).range(200, 10000) ! 24) * 0.2 } ++> \veryfastlpf;

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