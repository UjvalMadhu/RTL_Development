/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : O-2018.06-SP1
// Date      : Thu Dec 21 16:59:45 2023
/////////////////////////////////////////////////////////////


module results_conv_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   DIFF_16_, n6, n7, n1, n5, n4, n3, n2, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37;
  assign DIFF[16] = DIFF_16_;

  INVX1 U1 ( .A(A[3]), .Y(n6) );
  INVX1 U2 ( .A(A[1]), .Y(n7) );
  INVX1 U3 ( .A(A[13]), .Y(n1) );
  INVX1 U4 ( .A(A[5]), .Y(n5) );
  INVX1 U5 ( .A(A[7]), .Y(n4) );
  INVX1 U6 ( .A(A[9]), .Y(n3) );
  INVX1 U7 ( .A(A[11]), .Y(n2) );
  OAI21XL U8 ( .A0(A[15]), .A1(n8), .B0(n9), .Y(DIFF_16_) );
  OAI2BB1X1 U9 ( .A0N(n8), .A1N(A[15]), .B0(B[15]), .Y(n9) );
  OAI2BB2X1 U10 ( .B0(B[14]), .B1(n10), .A0N(n11), .A1N(A[14]), .Y(n8) );
  NOR2X1 U11 ( .A(A[14]), .B(n11), .Y(n10) );
  OAI22X1 U12 ( .A0(n12), .A1(n1), .B0(B[13]), .B1(n13), .Y(n11) );
  NOR2BX1 U13 ( .AN(n12), .B(A[13]), .Y(n13) );
  AOI2BB2X1 U14 ( .B0(n14), .B1(A[12]), .A0N(B[12]), .A1N(n15), .Y(n12) );
  NOR2X1 U15 ( .A(A[12]), .B(n14), .Y(n15) );
  OAI22X1 U16 ( .A0(n16), .A1(n2), .B0(B[11]), .B1(n17), .Y(n14) );
  NOR2BX1 U17 ( .AN(n16), .B(A[11]), .Y(n17) );
  AOI2BB2X1 U18 ( .B0(n18), .B1(A[10]), .A0N(B[10]), .A1N(n19), .Y(n16) );
  NOR2X1 U19 ( .A(A[10]), .B(n18), .Y(n19) );
  OAI22X1 U20 ( .A0(n20), .A1(n3), .B0(B[9]), .B1(n21), .Y(n18) );
  NOR2BX1 U21 ( .AN(n20), .B(A[9]), .Y(n21) );
  AOI2BB2X1 U22 ( .B0(n22), .B1(A[8]), .A0N(B[8]), .A1N(n23), .Y(n20) );
  NOR2X1 U23 ( .A(A[8]), .B(n22), .Y(n23) );
  OAI22X1 U24 ( .A0(n24), .A1(n4), .B0(B[7]), .B1(n25), .Y(n22) );
  NOR2BX1 U25 ( .AN(n24), .B(A[7]), .Y(n25) );
  AOI2BB2X1 U26 ( .B0(n26), .B1(A[6]), .A0N(B[6]), .A1N(n27), .Y(n24) );
  NOR2X1 U27 ( .A(A[6]), .B(n26), .Y(n27) );
  OAI22X1 U28 ( .A0(n28), .A1(n5), .B0(B[5]), .B1(n29), .Y(n26) );
  NOR2BX1 U29 ( .AN(n28), .B(A[5]), .Y(n29) );
  AOI2BB2X1 U30 ( .B0(n30), .B1(A[4]), .A0N(B[4]), .A1N(n31), .Y(n28) );
  NOR2X1 U31 ( .A(A[4]), .B(n30), .Y(n31) );
  OAI22X1 U32 ( .A0(n32), .A1(n6), .B0(B[3]), .B1(n33), .Y(n30) );
  NOR2BX1 U33 ( .AN(n32), .B(A[3]), .Y(n33) );
  AOI2BB2X1 U34 ( .B0(n34), .B1(A[2]), .A0N(B[2]), .A1N(n35), .Y(n32) );
  NOR2X1 U35 ( .A(A[2]), .B(n34), .Y(n35) );
  OAI22X1 U36 ( .A0(n36), .A1(n7), .B0(B[1]), .B1(n37), .Y(n34) );
  NOR2BX1 U37 ( .AN(n36), .B(A[1]), .Y(n37) );
  NOR2BX1 U38 ( .AN(B[0]), .B(A[0]), .Y(n36) );
endmodule

