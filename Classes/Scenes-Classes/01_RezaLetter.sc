Reza {
	*start {
		"--- Starting Reza".postln;
		"reza".arlink;
		'reza1'.bufnum +>.buf \reza;
		0.8 +>.vol \reza;
		SF.playbuf24 ++> \reza;
	}
}