Server.default.options.outDevice = 2;
Server.default.options.numOutputBusChannels = 22;
Server.default.options.memSize = 8192 * 8;

Server.default.waitForBoot ({
	{
		BufferList.loadFolder;
		"================================================================".postln;
		"WIRING SYNTHS".postln;
		"([m1.m2.m3.m4][e1.e2.e3.e4])".arlink;
		Server.default.scope.window.bounds = Rect (0, 0, 200, 900);
		"------------------- READY TO GO !!!!!!! ---------------".postln;
		
	}.defer (1);
});