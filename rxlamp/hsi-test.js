//H ∈ [0, 360]
//S ∈ [0, 1]
//L ∈ [0, 1]
//Test case: HSL = (0.0, 1.0, 0.5), (120.0, 1.0, 0.5), (240.0, 1.0, 0.5)
//Yields (255, 0, 0), (0, 255, 0), (0, 0, 255)
function HSL(H,S,L) {
	var HP = H/60;
	var C = (1-Math.abs((L*2)-1))*S;
	var X = (C*(1-Math.abs(HP % 2 - 1)));
	var tR, tG, tBM
	switch (Math.floor(HP)) {
		case 0:	tR = C;	tG = X;	tB = 0; break;	//R1	G+	B0
		case 1:	tR = X;	tG = C;	tB = 0; break;	//R-	G1	B0
		case 2:	tR = 0;	tG = C;	tB = X; break;	//R0	G1	B+
		case 3:	tR = 0;	tG = X;	tB = C; break;	//R0	G-	B1
		case 4:	tR = X;	tG = 0;	tB = C; break;	//R+	G0	B1
		case 5:	tR = C;	tG = 0;	tB = X; break;	//R1	G0	B-
	}
	m = L - C/2;
	return [Math.floor(255*(tR+m)), Math.floor(255*(tG+m)), Math.floor(255*(tB+m))];
}

//H ∈ [0, 24575]
//S ∈ [0, 4095]
//L ∈ [0, 4095]
//Test case: HSL = (0, 4095, 2047), (8192, 4095, 2047), (16384, 4095, 2047)
//Should yields (4095, 0, 0), (0, 4095, 0), (0, 0, 4095)
//Yields (3070, -1024, -1024), (-1024, 3070, -1023), (-1022, -1024, 3070)
function HSL_i(H,S,L) {

	var C = ((4095-Math.abs((L<<1)-4095))*S)>>12;
	var X = (C*(4095-Math.abs((H % 0x1FFF) - 4095)))>>12;
	console.log(C, X);
	var tR, tG, tBM
	switch (H>>12) {
		case 0:	tR = C;	tG = X;	tB = 0; break;	//R1	G+	B0
		case 1:	tR = X;	tG = C;	tB = 0; break;	//R-	G1	B0
		case 2:	tR = 0;	tG = C;	tB = X; break;	//R0	G1	B+
		case 3:	tR = 0;	tG = X;	tB = C; break;	//R0	G-	B1
		case 4:	tR = X;	tG = 0;	tB = C; break;	//R+	G0	B1
		case 5:	tR = C;	tG = 0;	tB = X; break;	//R1	G0	B-
	}
	m = L - (C>>1);
	console.log(m);
	return [tR+m, tG+m, tB+m];
}