//:
2 +>.fadeTime \thalassa;
2 +>.fadeTime \thalassa2;

//:
\thalassa.release;
\thalassa2 release: 10;
//:
{ WhiteNoise.ar ([0.01, 0.01]) } ++> \thalassa;


{ WhiteNoise.ar ([0.01, 0.01]) } ++> \thalassa;


{ WhiteNoise.ar ([0.05, 0.05]) } ++> \thalassa;
{ WhiteNoise.ar ([0.1, 0.1]) } ++> \thalassa;
{ PinkNoise.ar ([0.09, 0.09]) } ++> \thalassa;
{ BrownNoise.ar ([0.09, 0.09]) } ++> \thalassa;
{ GrayNoise.ar ([0.09, 0.09]) } ++> \thalassa;

{ GrayNoise.ar (0.001 ! 8) } ++> \thalassa;

{ GrayNoise.ar ({ LFNoise0.kr (1).range (0.001, 0.01 )} ! 8) } ++> \thalassa;

{ GrayNoise.ar (LFNoise0.kr (1).range (0.01, 0.1).dup) } ++> \thalassa;
{ GrayNoise.ar (LFNoise0.kr (1).range (0.01, 0.1).dup) } ++> \thalassa;
{ PinkNoise.ar (LFNoise1.kr (0.5).range (0.01, 0.2).dup) } ++> \thalassa;
{ BrownNoise.ar (LFNoise1.kr (1.5).range (0.01, 0.04).dup) } ++> \thalassa2;
//:
{ BrownNoise.ar (LFNoise1.kr (5.5).range (0.01, 0.04).dup) } ++> \thalassa2;

//:
{ Resonz.ar (
	BrownNoise.ar (Decay2.kr (Dust.kr (4), 0.3, 1)),
	LFNoise0.kr ([15, 15]).range (1500, 5000),
	2
) } ++> \thalassa2;

//:
{ Resonz.ar (
	0.15 *
	PinkNoise.ar (Decay2.kr (Dust.kr (10), 0.3, 1)),
	LFNoise2.kr ([15, 15]).range (1000, 14000),
    4
) } ++> \thalassa;

//:
\thalassa release: 10;
\thalassa2 release: 5;