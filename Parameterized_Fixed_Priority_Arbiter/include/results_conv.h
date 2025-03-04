
/*
 *
 * Author:  Mark A. Indovina
 *          Rochester, NY, USA
 *
 */

`define NO_DIGIT 0	// no digit flag
`define R_697	0	// frequency bin 697Hz
`define R_770	1	// frequency bin 770Hz
`define R_852	2	// frequency bin 852Hz
`define R_941	3	// frequency bin 941Hz
`define R_1209	4	// frequency bin 1209Hz
`define R_1336	5	// frequency bin 1336Hz
`define R_1477	6	// frequency bin 1477Hz
`define R_1633	7	// frequency bin 1633Hz
`define GO_FLAG	8	// dummy register,
`define V_697	2'd0
`define V_770	2'd1
`define V_852	2'd2
`define V_941	2'd3
`define V_1209	2'd0
`define V_1336	2'd1
`define V_1477	2'd2
`define V_1633	2'd3
// 4x4 keypad key index
parameter key_1     = {`V_697, `V_1209} ;
parameter key_2     = {`V_697, `V_1336} ;
parameter key_3     = {`V_697, `V_1477} ;
parameter key_a     = {`V_697, `V_1633} ;
parameter key_4     = {`V_770, `V_1209} ;
parameter key_5     = {`V_770, `V_1336} ;
parameter key_6     = {`V_770, `V_1477} ;
parameter key_b     = {`V_770, `V_1633} ;
parameter key_7     = {`V_852, `V_1209} ;
parameter key_8     = {`V_852, `V_1336} ;
parameter key_9     = {`V_852, `V_1477} ;
parameter key_c     = {`V_852, `V_1633} ;
parameter key_star  = {`V_941, `V_1209} ;
parameter key_0     = {`V_941, `V_1336} ;
parameter key_pound = {`V_941, `V_1477} ;
parameter key_d     = {`V_941, `V_1633} ;

// resolved key ascii representation
parameter val_key_1     = "1" ;
parameter val_key_2     = "2" ;
parameter val_key_3     = "3" ;
parameter val_key_a     = "a" ;
parameter val_key_4     = "4" ;
parameter val_key_5     = "5" ;
parameter val_key_6     = "6" ;
parameter val_key_b     = "b" ;
parameter val_key_7     = "7" ;
parameter val_key_8     = "8" ;
parameter val_key_9     = "9" ;
parameter val_key_c     = "c" ;
parameter val_key_star  = "*" ;
parameter val_key_0     = "0" ;
parameter val_key_pound = "#" ;
parameter val_key_d     = "d" ;

//State definitions
`define	IDLE		5'h0
`define	F1			5'h1
`define	F2			5'h2
`define	F3			5'h3
`define	F4			5'h4
`define	F5			5'h5
`define	F6			5'h6
`define	F7			5'h7
`define	F8			5'h8
`define	CHECK		5'h9
`define	OK			5'ha
`define	CHARACTER	5'hb
`define	P1			5'hc
`define	P2			5'hd
`define	P3			5'he
`define	GT_WAIT		5'h10
`define	GT_FINISH	5'h11
`define	CT_WAIT		5'h12
`define	CT_FINISH	5'h13

`define	GT_IDLE		3'h0
`define	GEN_B		3'h1
`define	GEN_C		3'h2
`define	GEN_D		3'h3
`define	GT			3'h4
`define	GT_DONE		3'h5
`define	GT_CLEAR	3'h6

`define	CT_IDLE		3'h0
`define	GEN_F		3'h1
`define	GEN_R		3'h2
`define	CT			3'h3
`define	CT_DONE		3'h4
`define	CT_CLEAR	3'h5
