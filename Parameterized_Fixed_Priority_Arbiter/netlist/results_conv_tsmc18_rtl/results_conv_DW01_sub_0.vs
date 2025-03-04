/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : O-2018.06-SP1
// Date      : Thu Dec 21 16:59:31 2023
/////////////////////////////////////////////////////////////


module results_conv_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   DIFF_16_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34;
  assign DIFF[16] = DIFF_16_;

  INVX1 U1 ( .A(A[13]), .Y(n1) );
  INVX1 U2 ( .A(A[1]), .Y(n7) );
  INVX1 U3 ( .A(A[3]), .Y(n6) );
  INVX1 U4 ( .A(A[5]), .Y(n5) );
  INVX1 U5 ( .A(A[7]), .Y(n4) );
  INVX1 U6 ( .A(A[9]), .Y(n3) );
  INVX1 U7 ( .A(A[11]), .Y(n2) );
  AOI211X1 U8 ( .A0(n8), .A1(n9), .B0(A[15]), .C0(A[14]), .Y(DIFF_16_) );
  OAI21XL U9 ( .A0(n10), .A1(n1), .B0(B[13]), .Y(n9) );
  NAND2X1 U10 ( .A(n10), .B(n1), .Y(n8) );
  AOI2BB2X1 U11 ( .B0(n11), .B1(A[12]), .A0N(B[12]), .A1N(n12), .Y(n10) );
  NOR2X1 U12 ( .A(A[12]), .B(n11), .Y(n12) );
  OAI22X1 U13 ( .A0(n13), .A1(n2), .B0(B[11]), .B1(n14), .Y(n11) );
  AND2X1 U14 ( .A(n13), .B(n2), .Y(n14) );
  AOI2BB2X1 U15 ( .B0(n15), .B1(A[10]), .A0N(B[10]), .A1N(n16), .Y(n13) );
  NOR2X1 U16 ( .A(A[10]), .B(n15), .Y(n16) );
  OAI22X1 U17 ( .A0(n17), .A1(n3), .B0(B[9]), .B1(n18), .Y(n15) );
  AND2X1 U18 ( .A(n17), .B(n3), .Y(n18) );
  AOI2BB2X1 U19 ( .B0(n19), .B1(A[8]), .A0N(B[8]), .A1N(n20), .Y(n17) );
  NOR2X1 U20 ( .A(A[8]), .B(n19), .Y(n20) );
  OAI22X1 U21 ( .A0(n21), .A1(n4), .B0(B[7]), .B1(n22), .Y(n19) );
  AND2X1 U22 ( .A(n21), .B(n4), .Y(n22) );
  AOI2BB2X1 U23 ( .B0(n23), .B1(A[6]), .A0N(B[6]), .A1N(n24), .Y(n21) );
  NOR2X1 U24 ( .A(A[6]), .B(n23), .Y(n24) );
  OAI22X1 U25 ( .A0(n25), .A1(n5), .B0(B[5]), .B1(n26), .Y(n23) );
  AND2X1 U26 ( .A(n25), .B(n5), .Y(n26) );
  AOI2BB2X1 U27 ( .B0(n27), .B1(A[4]), .A0N(B[4]), .A1N(n28), .Y(n25) );
  NOR2X1 U28 ( .A(A[4]), .B(n27), .Y(n28) );
  OAI22X1 U29 ( .A0(n29), .A1(n6), .B0(B[3]), .B1(n30), .Y(n27) );
  AND2X1 U30 ( .A(n29), .B(n6), .Y(n30) );
  AOI2BB2X1 U31 ( .B0(n31), .B1(A[2]), .A0N(B[2]), .A1N(n32), .Y(n29) );
  NOR2X1 U32 ( .A(A[2]), .B(n31), .Y(n32) );
  OAI22X1 U33 ( .A0(n33), .A1(n7), .B0(B[1]), .B1(n34), .Y(n31) );
  AND2X1 U34 ( .A(n33), .B(n7), .Y(n34) );
  NOR2BX1 U35 ( .AN(B[0]), .B(A[0]), .Y(n33) );
endmodule

