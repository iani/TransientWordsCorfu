Scenes.init;
Scenes.channelCheck;
//:
Reza.start;
//:
HasanSong.plain;
//:
Levteris.start;

//:
10.5 +>.vol \m1;
//:
4.5 +>.vol \rm1;
//:
0.1 +>.width \rm1;
//:
0.01 +>.width \rm1;
//:
-0.5 +>.pos \rm1;
//:
Levteris.dance;
//:

HasanSong.plain;
//:
0.6 +>.pos \hasansong;
//:
1 +>.rate \hasansong;
//:
RezaSong.plain;
//:
RezaSong.pv;
//:
15 +>.thresh \pv;
//:
\pv release: 5;
//:

Aerodromio.start;

Aerodromio.veryfast;
//:
\veryfastlpf release: 10;

Aerodromio.hpf;
Aerodromio.lpfnoise;
Aerodromio.hpfnoise;
Aerodromio.resonznoise0;
Aerodromio.resonznoise1;

Aerodromio.veryfast1;

Aerodromio.veryfast2;

//:
Server.killAll;
//:
