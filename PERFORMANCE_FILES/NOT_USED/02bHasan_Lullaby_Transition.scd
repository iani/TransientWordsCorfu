/*

a=c=nil;b=SinOsc;9.do{|i|a=a++"b.ar("++(99/(i+1)).asString++"*";c=c++")"};
{ | vol = 0.2 | FreeVerb.ar((a++"9"++c).interpret)!2 * \fader0.kr(1) * 2 * vol } ++> \ypochthonio;

*/
//:

a=c=nil;b=SinOsc;9.do{|i|a=a++"b.ar("++(99/(i+1)).asString++"*";c=c++")"};
{ | vol = 0.2 |
	FreeVerb.ar((a++"9"++c).interpret)! 24 * \fader0.kr(1) * 2 * vol
} ++> \ypochthonio;



//:

a=c=nil;b=SinOsc;9.do{|i|a=a++"b.ar("++(99/(i+1)).asString++"*";c=c++")"};
{ | vol = 0.2 |
	FreeVerb.ar((a++"9"++c).interpret)! 24 * vol * XLine.kr (0.001, 1, 60)
} ++> \ypochthonio;

//:
0.5 +>.vol \ypochthonio;

//:
1 +>.vol \ypochthonio;
//:
2 +>.vol \ypochthonio;