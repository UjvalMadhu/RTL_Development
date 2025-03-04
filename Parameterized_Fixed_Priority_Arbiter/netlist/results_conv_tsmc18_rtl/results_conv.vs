/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
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


module results_conv_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   DIFF_16_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34;
  assign DIFF[16] = DIFF_16_;

  INVX1 U1 ( .A(A[1]), .Y(n7) );
  INVX1 U2 ( .A(A[3]), .Y(n6) );
  INVX1 U3 ( .A(A[5]), .Y(n5) );
  INVX1 U4 ( .A(A[7]), .Y(n4) );
  INVX1 U5 ( .A(A[9]), .Y(n3) );
  INVX1 U6 ( .A(A[13]), .Y(n1) );
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


module results_conv_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   DIFF_16_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37;
  assign DIFF[16] = DIFF_16_;

  INVX1 U1 ( .A(A[1]), .Y(n7) );
  INVX1 U2 ( .A(A[3]), .Y(n6) );
  INVX1 U3 ( .A(A[5]), .Y(n5) );
  INVX1 U4 ( .A(A[7]), .Y(n4) );
  INVX1 U5 ( .A(A[9]), .Y(n3) );
  INVX1 U6 ( .A(A[11]), .Y(n2) );
  INVX1 U7 ( .A(A[13]), .Y(n1) );
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


module results_conv_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   DIFF_16_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37;
  assign DIFF[16] = DIFF_16_;

  INVX1 U1 ( .A(A[1]), .Y(n7) );
  INVX1 U2 ( .A(A[3]), .Y(n6) );
  INVX1 U3 ( .A(A[5]), .Y(n5) );
  INVX1 U4 ( .A(A[7]), .Y(n4) );
  INVX1 U5 ( .A(A[9]), .Y(n3) );
  INVX1 U6 ( .A(A[11]), .Y(n2) );
  INVX1 U7 ( .A(A[13]), .Y(n1) );
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


module results_conv_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   DIFF_16_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
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


module results_conv_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] DIFF;
  input CI;
  output CO;
  wire   DIFF_16_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37;
  assign DIFF[16] = DIFF_16_;

  INVX1 U1 ( .A(A[3]), .Y(n6) );
  INVX1 U2 ( .A(A[5]), .Y(n5) );
  INVX1 U3 ( .A(A[7]), .Y(n4) );
  INVX1 U4 ( .A(A[9]), .Y(n3) );
  INVX1 U5 ( .A(A[11]), .Y(n2) );
  INVX1 U6 ( .A(A[13]), .Y(n1) );
  INVX1 U7 ( .A(A[1]), .Y(n7) );
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


module results_conv ( clk, reset, rcc_clk, address, din, digit_clk, dout, 
        dout_flag, test_mode, scan_in0, scan_in1, scan_en, scan_out0, 
        scan_out1 );
  input [3:0] address;
  input [15:0] din;
  output [7:0] dout;
  input clk, reset, rcc_clk, test_mode, scan_in0, scan_in1, scan_en;
  output digit_clk, dout_flag, scan_out0, scan_out1;
  wire   clear_flag, gt, ok, gt_done, ct_done, seen_quiet, start_gt, clear_gt,
         start_ct, clear_ct, N302, N303, N305, N306, N423, cmpb_16_, cmpc_16_,
         cmpd_16_, N481, N498, N515, N518, N519, N520, cmpf_16_, cmpr_16_,
         N563, N582, N616, N670, N672, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n185, n186,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n339, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n464, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n547, n548, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n597, n598, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n661, n662, n663, n664, n665, n666, n667, n668, n670,
         n671, n672, n673, n674, n675, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n697, n698, n699, n700, n701, n702, n703, n704, n705,
         n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716,
         n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749,
         n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n760,
         n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771,
         n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, n782,
         n783, n784, n785, n786, n787, n788, n789, n790, n791, n792, n793,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815,
         n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826,
         n827, n828, n829, n830, n831, n832, n833, n834, n835, n836, n837,
         n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, n848,
         n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859,
         n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870,
         n871, n872, n873, n874, n875, n876, n877, n878, n879, n880, n881,
         n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892,
         n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958,
         n959, n960, n961, n962, n963, n964, n965, n966, n967, n968, n969,
         n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, n980,
         n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991,
         n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002,
         n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
         n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042,
         n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052,
         n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062,
         n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072,
         n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092,
         n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102,
         n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112,
         n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120;
  wire   [15:0] r697;
  wire   [15:0] r770;
  wire   [15:0] r852;
  wire   [15:0] r941;
  wire   [15:0] r1209;
  wire   [15:0] r1336;
  wire   [15:0] r1477;
  wire   [15:0] r1633;
  wire   [6:0] out_p1;
  wire   [4:0] state;
  wire   [2:0] low;
  wire   [2:0] high;
  wire   [7:0] out_p2;
  wire   [3:0] save_state;
  wire   [15:0] low_mag;
  wire   [15:0] high_mag;
  wire   [15:0] opa;
  wire   [15:0] opb;
  wire   [15:0] opc;
  wire   [15:0] opd;
  wire   [2:0] gt_state;
  wire   [2:0] ct_state;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95;

  AND4X2 U287 ( .A(high[0]), .B(low[0]), .C(n1088), .D(n1117), .Y(n523) );
  AND2X2 U308 ( .A(n291), .B(n958), .Y(n544) );
  AND2X2 U576 ( .A(n293), .B(n673), .Y(n672) );
  AND2X2 U594 ( .A(state[2]), .B(n682), .Y(n678) );
  AND2X2 U612 ( .A(n690), .B(n680), .Y(n657) );
  AND4X2 U613 ( .A(n691), .B(n692), .C(n693), .D(n694), .Y(n656) );
  results_conv_DW01_sub_0 sub_527 ( .A({1'b0, opb}), .B({1'b0, 1'b0, 1'b0, 
        opa[15:2]}), .CI(1'b0), .DIFF({N616, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}) );
  results_conv_DW01_sub_1 sub_521 ( .A({1'b0, opa}), .B({1'b0, 1'b0, 1'b0, 
        opb[15:2]}), .CI(1'b0), .DIFF({N582, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31}) );
  results_conv_DW01_sub_2 sub_461 ( .A({1'b0, opd}), .B({1'b0, opa}), .CI(1'b0), .DIFF({N515, SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47}) );
  results_conv_DW01_sub_3 sub_457 ( .A({1'b0, opc}), .B({1'b0, opa}), .CI(1'b0), .DIFF({N498, SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63}) );
  results_conv_DW01_sub_4 r373 ( .A({1'b0, opa}), .B({1'b0, opb}), .CI(1'b0), 
        .DIFF({N563, SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79}) );
  results_conv_DW01_sub_5 r370 ( .A({1'b0, opb}), .B({1'b0, opa}), .CI(1'b0), 
        .DIFF({N481, SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95}) );
  DFFNRX1 go_reg ( .D(address[3]), .CKN(rcc_clk), .RN(n968), .QN(n913) );
  DFFNX1 r1209_reg_14_ ( .D(n879), .CKN(n965), .Q(r1209[14]), .QN(n99) );
  DFFNX1 r1209_reg_13_ ( .D(n878), .CKN(rcc_clk), .Q(r1209[13]), .QN(n100) );
  DFFNX1 r1209_reg_12_ ( .D(n877), .CKN(n964), .Q(r1209[12]), .QN(n101) );
  DFFNX1 r1209_reg_11_ ( .D(n876), .CKN(n965), .Q(r1209[11]), .QN(n102) );
  DFFNX1 r1209_reg_10_ ( .D(n875), .CKN(n966), .Q(r1209[10]), .QN(n103) );
  DFFNX1 r1209_reg_9_ ( .D(n874), .CKN(n964), .Q(r1209[9]), .QN(n104) );
  DFFNX1 r1209_reg_8_ ( .D(n873), .CKN(n966), .Q(r1209[8]), .QN(n105) );
  DFFNX1 r1209_reg_7_ ( .D(n872), .CKN(n966), .Q(r1209[7]), .QN(n106) );
  DFFNX1 r1209_reg_6_ ( .D(n871), .CKN(n964), .Q(r1209[6]), .QN(n107) );
  DFFNX1 r1209_reg_5_ ( .D(n870), .CKN(n965), .Q(r1209[5]), .QN(n108) );
  DFFNX1 r1209_reg_4_ ( .D(n869), .CKN(n966), .Q(r1209[4]), .QN(n109) );
  DFFNX1 r1209_reg_3_ ( .D(n868), .CKN(n966), .Q(r1209[3]), .QN(n110) );
  DFFNX1 r1209_reg_2_ ( .D(n867), .CKN(rcc_clk), .Q(r1209[2]), .QN(n111) );
  DFFNX1 r1209_reg_1_ ( .D(n866), .CKN(n965), .Q(r1209[1]), .QN(n112) );
  DFFNX1 r1209_reg_0_ ( .D(n865), .CKN(n966), .Q(r1209[0]), .QN(n113) );
  DFFNX1 r697_reg_15_ ( .D(n816), .CKN(n965), .Q(r697[15]), .QN(n162) );
  DFFNX1 r697_reg_14_ ( .D(n815), .CKN(n966), .Q(r697[14]), .QN(n163) );
  DFFNX1 r697_reg_13_ ( .D(n814), .CKN(n966), .Q(r697[13]), .QN(n164) );
  DFFNX1 r697_reg_12_ ( .D(n813), .CKN(rcc_clk), .Q(r697[12]), .QN(n165) );
  DFFNX1 r697_reg_11_ ( .D(n812), .CKN(n965), .Q(r697[11]), .QN(n166) );
  DFFNX1 r697_reg_10_ ( .D(n811), .CKN(n965), .Q(r697[10]), .QN(n167) );
  DFFNX1 r697_reg_9_ ( .D(n810), .CKN(n965), .Q(r697[9]), .QN(n168) );
  DFFNX1 r697_reg_8_ ( .D(n809), .CKN(n965), .Q(r697[8]), .QN(n169) );
  DFFNX1 r697_reg_7_ ( .D(n808), .CKN(n965), .Q(r697[7]), .QN(n170) );
  DFFNX1 r697_reg_6_ ( .D(n807), .CKN(n965), .Q(r697[6]), .QN(n171) );
  DFFNX1 r697_reg_5_ ( .D(n806), .CKN(n965), .Q(r697[5]), .QN(n172) );
  DFFNX1 r697_reg_4_ ( .D(n805), .CKN(n965), .Q(r697[4]), .QN(n173) );
  DFFNX1 r697_reg_3_ ( .D(n804), .CKN(n965), .Q(r697[3]), .QN(n174) );
  DFFNX1 r697_reg_2_ ( .D(n803), .CKN(n965), .Q(r697[2]), .QN(n175) );
  DFFNX1 r697_reg_1_ ( .D(n802), .CKN(n966), .Q(r697[1]), .QN(n176) );
  DFFNX1 r697_reg_0_ ( .D(n801), .CKN(n966), .Q(r697[0]), .QN(n177) );
  DFFNX1 r1209_reg_15_ ( .D(n880), .CKN(rcc_clk), .Q(r1209[15]), .QN(n98) );
  DFFNX1 r1633_reg_14_ ( .D(n831), .CKN(n965), .Q(r1633[14]), .QN(n147) );
  DFFNX1 r1633_reg_13_ ( .D(n830), .CKN(n966), .Q(r1633[13]), .QN(n148) );
  DFFNX1 r1633_reg_12_ ( .D(n829), .CKN(n964), .Q(r1633[12]), .QN(n149) );
  DFFNX1 r1633_reg_11_ ( .D(n828), .CKN(n965), .Q(r1633[11]), .QN(n150) );
  DFFNX1 r1633_reg_10_ ( .D(n827), .CKN(n966), .Q(r1633[10]), .QN(n151) );
  DFFNX1 r1633_reg_9_ ( .D(n826), .CKN(n966), .Q(r1633[9]), .QN(n152) );
  DFFNX1 r1633_reg_8_ ( .D(n825), .CKN(rcc_clk), .Q(r1633[8]), .QN(n153) );
  DFFNX1 r1633_reg_7_ ( .D(n824), .CKN(n964), .Q(r1633[7]), .QN(n154) );
  DFFNX1 r1633_reg_6_ ( .D(n823), .CKN(n965), .Q(r1633[6]), .QN(n155) );
  DFFNX1 r1633_reg_5_ ( .D(n822), .CKN(n964), .Q(r1633[5]), .QN(n156) );
  DFFNX1 r1633_reg_4_ ( .D(n821), .CKN(rcc_clk), .Q(r1633[4]), .QN(n157) );
  DFFNX1 r1633_reg_3_ ( .D(n820), .CKN(n964), .Q(r1633[3]), .QN(n158) );
  DFFNX1 r1633_reg_2_ ( .D(n819), .CKN(n965), .Q(r1633[2]), .QN(n159) );
  DFFNX1 r1633_reg_1_ ( .D(n818), .CKN(n966), .Q(r1633[1]), .QN(n160) );
  DFFNX1 r1633_reg_0_ ( .D(n817), .CKN(rcc_clk), .Q(r1633[0]), .QN(n161) );
  DFFNX1 r1633_reg_15_ ( .D(n832), .CKN(n966), .Q(r1633[15]), .QN(n146) );
  DFFNX1 r941_reg_15_ ( .D(n896), .CKN(n965), .Q(r941[15]), .QN(n82) );
  DFFNX1 r941_reg_14_ ( .D(n895), .CKN(n966), .Q(r941[14]), .QN(n83) );
  DFFNX1 r941_reg_13_ ( .D(n894), .CKN(n965), .Q(r941[13]), .QN(n84) );
  DFFNX1 r941_reg_12_ ( .D(n893), .CKN(rcc_clk), .Q(r941[12]), .QN(n85) );
  DFFNX1 r941_reg_11_ ( .D(n892), .CKN(n965), .Q(r941[11]), .QN(n86) );
  DFFNX1 r941_reg_10_ ( .D(n891), .CKN(n966), .Q(r941[10]), .QN(n87) );
  DFFNX1 r941_reg_9_ ( .D(n890), .CKN(rcc_clk), .Q(r941[9]), .QN(n88) );
  DFFNX1 r941_reg_8_ ( .D(n889), .CKN(n965), .Q(r941[8]), .QN(n89) );
  DFFNX1 r941_reg_7_ ( .D(n888), .CKN(n966), .Q(r941[7]), .QN(n90) );
  DFFNX1 r941_reg_6_ ( .D(n887), .CKN(n964), .Q(r941[6]), .QN(n91) );
  DFFNX1 r941_reg_5_ ( .D(n886), .CKN(rcc_clk), .Q(r941[5]), .QN(n92) );
  DFFNX1 r941_reg_4_ ( .D(n885), .CKN(n964), .Q(r941[4]), .QN(n93) );
  DFFNX1 r941_reg_3_ ( .D(n884), .CKN(n965), .Q(r941[3]), .QN(n94) );
  DFFNX1 r941_reg_2_ ( .D(n883), .CKN(n966), .Q(r941[2]), .QN(n95) );
  DFFNX1 r941_reg_1_ ( .D(n882), .CKN(n964), .Q(r941[1]), .QN(n96) );
  DFFNX1 r941_reg_0_ ( .D(n881), .CKN(n965), .Q(r941[0]), .QN(n97) );
  DFFNX1 r1477_reg_14_ ( .D(n847), .CKN(n965), .Q(r1477[14]), .QN(n131) );
  DFFNX1 r1477_reg_13_ ( .D(n846), .CKN(n966), .Q(r1477[13]), .QN(n132) );
  DFFNX1 r1477_reg_12_ ( .D(n845), .CKN(rcc_clk), .Q(r1477[12]), .QN(n133) );
  DFFNX1 r1477_reg_11_ ( .D(n844), .CKN(rcc_clk), .Q(r1477[11]), .QN(n134) );
  DFFNX1 r1477_reg_10_ ( .D(n843), .CKN(n964), .Q(r1477[10]), .QN(n135) );
  DFFNX1 r1477_reg_9_ ( .D(n842), .CKN(n964), .Q(r1477[9]), .QN(n136) );
  DFFNX1 r1477_reg_8_ ( .D(n841), .CKN(rcc_clk), .Q(r1477[8]), .QN(n137) );
  DFFNX1 r1477_reg_7_ ( .D(n840), .CKN(n964), .Q(r1477[7]), .QN(n138) );
  DFFNX1 r1477_reg_6_ ( .D(n839), .CKN(n965), .Q(r1477[6]), .QN(n139) );
  DFFNX1 r1477_reg_5_ ( .D(n838), .CKN(n966), .Q(r1477[5]), .QN(n140) );
  DFFNX1 r1477_reg_4_ ( .D(n837), .CKN(n964), .Q(r1477[4]), .QN(n141) );
  DFFNX1 r1477_reg_3_ ( .D(n836), .CKN(rcc_clk), .Q(r1477[3]), .QN(n142) );
  DFFNX1 r1477_reg_2_ ( .D(n835), .CKN(n964), .Q(r1477[2]), .QN(n143) );
  DFFNX1 r1477_reg_1_ ( .D(n834), .CKN(n965), .Q(r1477[1]), .QN(n144) );
  DFFNX1 r1477_reg_0_ ( .D(n833), .CKN(n965), .Q(r1477[0]), .QN(n145) );
  DFFNX1 r1477_reg_15_ ( .D(n848), .CKN(rcc_clk), .Q(r1477[15]), .QN(n130) );
  DFFNX1 r1336_reg_15_ ( .D(n864), .CKN(rcc_clk), .Q(r1336[15]), .QN(n114) );
  DFFNX1 r1336_reg_14_ ( .D(n863), .CKN(n964), .Q(r1336[14]), .QN(n115) );
  DFFNX1 r1336_reg_13_ ( .D(n862), .CKN(n965), .Q(r1336[13]), .QN(n116) );
  DFFNX1 r1336_reg_12_ ( .D(n861), .CKN(n966), .Q(r1336[12]), .QN(n117) );
  DFFNX1 r1336_reg_11_ ( .D(n860), .CKN(rcc_clk), .Q(r1336[11]), .QN(n118) );
  DFFNX1 r1336_reg_10_ ( .D(n859), .CKN(rcc_clk), .Q(r1336[10]), .QN(n119) );
  DFFNX1 r1336_reg_9_ ( .D(n858), .CKN(n964), .Q(r1336[9]), .QN(n120) );
  DFFNX1 r1336_reg_8_ ( .D(n857), .CKN(n965), .Q(r1336[8]), .QN(n121) );
  DFFNX1 r1336_reg_7_ ( .D(n856), .CKN(n966), .Q(r1336[7]), .QN(n122) );
  DFFNX1 r1336_reg_6_ ( .D(n855), .CKN(n964), .Q(r1336[6]), .QN(n123) );
  DFFNX1 r1336_reg_5_ ( .D(n854), .CKN(rcc_clk), .Q(r1336[5]), .QN(n124) );
  DFFNX1 r1336_reg_4_ ( .D(n853), .CKN(n964), .Q(r1336[4]), .QN(n125) );
  DFFNX1 r1336_reg_3_ ( .D(n852), .CKN(n964), .Q(r1336[3]), .QN(n126) );
  DFFNX1 r1336_reg_2_ ( .D(n851), .CKN(rcc_clk), .Q(r1336[2]), .QN(n127) );
  DFFNX1 r1336_reg_1_ ( .D(n850), .CKN(rcc_clk), .Q(r1336[1]), .QN(n128) );
  DFFNX1 r1336_reg_0_ ( .D(n849), .CKN(n964), .Q(r1336[0]), .QN(n129) );
  DFFNX1 r770_reg_15_ ( .D(n800), .CKN(n966), .Q(r770[15]) );
  DFFNX1 r770_reg_14_ ( .D(n799), .CKN(n966), .Q(r770[14]) );
  DFFNX1 r770_reg_13_ ( .D(n798), .CKN(n966), .Q(r770[13]) );
  DFFNX1 r770_reg_12_ ( .D(n797), .CKN(n966), .Q(r770[12]) );
  DFFNX1 r770_reg_11_ ( .D(n796), .CKN(n966), .Q(r770[11]) );
  DFFNX1 r770_reg_10_ ( .D(n795), .CKN(n966), .Q(r770[10]) );
  DFFNX1 r770_reg_9_ ( .D(n794), .CKN(n966), .Q(r770[9]) );
  DFFNX1 r770_reg_8_ ( .D(n793), .CKN(n966), .Q(r770[8]) );
  DFFNX1 r770_reg_7_ ( .D(n792), .CKN(rcc_clk), .Q(r770[7]) );
  DFFNX1 r770_reg_6_ ( .D(n791), .CKN(rcc_clk), .Q(r770[6]) );
  DFFNX1 r770_reg_5_ ( .D(n790), .CKN(rcc_clk), .Q(r770[5]) );
  DFFNX1 r770_reg_4_ ( .D(n789), .CKN(rcc_clk), .Q(r770[4]) );
  DFFNX1 r770_reg_3_ ( .D(n788), .CKN(rcc_clk), .Q(r770[3]) );
  DFFNX1 r770_reg_2_ ( .D(n787), .CKN(rcc_clk), .Q(r770[2]) );
  DFFNX1 r770_reg_1_ ( .D(n786), .CKN(rcc_clk), .Q(r770[1]) );
  DFFNX1 r770_reg_0_ ( .D(n785), .CKN(rcc_clk), .Q(r770[0]) );
  DFFNX1 r852_reg_15_ ( .D(n912), .CKN(n964), .Q(r852[15]) );
  DFFNX1 r852_reg_14_ ( .D(n911), .CKN(n964), .Q(r852[14]) );
  DFFNX1 r852_reg_13_ ( .D(n910), .CKN(n964), .Q(r852[13]) );
  DFFNX1 r852_reg_12_ ( .D(n909), .CKN(n964), .Q(r852[12]) );
  DFFNX1 r852_reg_11_ ( .D(n908), .CKN(n964), .Q(r852[11]) );
  DFFNX1 r852_reg_10_ ( .D(n907), .CKN(n964), .Q(r852[10]) );
  DFFNX1 r852_reg_9_ ( .D(n906), .CKN(n964), .Q(r852[9]) );
  DFFNX1 r852_reg_8_ ( .D(n905), .CKN(n964), .Q(r852[8]) );
  DFFNX1 r852_reg_7_ ( .D(n904), .CKN(n964), .Q(r852[7]) );
  DFFNX1 r852_reg_6_ ( .D(n903), .CKN(n964), .Q(r852[6]) );
  DFFNX1 r852_reg_5_ ( .D(n902), .CKN(n966), .Q(r852[5]) );
  DFFNX1 r852_reg_4_ ( .D(n901), .CKN(rcc_clk), .Q(r852[4]) );
  DFFNX1 r852_reg_3_ ( .D(n900), .CKN(n965), .Q(r852[3]) );
  DFFNX1 r852_reg_2_ ( .D(n899), .CKN(n966), .Q(r852[2]) );
  DFFNX1 r852_reg_1_ ( .D(n898), .CKN(n964), .Q(r852[1]) );
  DFFNX1 r852_reg_0_ ( .D(n897), .CKN(n965), .Q(r852[0]) );
  DFFRHQX1 ok_reg ( .D(n784), .CK(clk), .RN(n947), .Q(ok) );
  DFFRHQX1 high_mag_reg_15_ ( .D(n725), .CK(clk), .RN(n945), .Q(high_mag[15])
         );
  DFFRHQX1 high_mag_reg_14_ ( .D(n726), .CK(clk), .RN(n948), .Q(high_mag[14])
         );
  DFFRHQX1 high_mag_reg_13_ ( .D(n727), .CK(clk), .RN(n949), .Q(high_mag[13])
         );
  DFFRHQX1 high_mag_reg_12_ ( .D(n728), .CK(clk), .RN(n946), .Q(high_mag[12])
         );
  DFFRHQX1 high_mag_reg_11_ ( .D(n729), .CK(clk), .RN(n948), .Q(high_mag[11])
         );
  DFFRHQX1 high_mag_reg_10_ ( .D(n730), .CK(clk), .RN(n946), .Q(high_mag[10])
         );
  DFFRHQX1 high_mag_reg_9_ ( .D(n731), .CK(clk), .RN(n950), .Q(high_mag[9]) );
  DFFRHQX1 high_mag_reg_8_ ( .D(n732), .CK(clk), .RN(n947), .Q(high_mag[8]) );
  DFFRHQX1 high_mag_reg_7_ ( .D(n733), .CK(clk), .RN(n946), .Q(high_mag[7]) );
  DFFRHQX1 high_mag_reg_6_ ( .D(n734), .CK(clk), .RN(n950), .Q(high_mag[6]) );
  DFFRHQX1 high_mag_reg_5_ ( .D(n735), .CK(clk), .RN(n945), .Q(high_mag[5]) );
  DFFRHQX1 high_mag_reg_4_ ( .D(n736), .CK(clk), .RN(n948), .Q(high_mag[4]) );
  DFFRHQX1 high_mag_reg_3_ ( .D(n737), .CK(clk), .RN(n947), .Q(high_mag[3]) );
  DFFRHQX1 high_mag_reg_2_ ( .D(n738), .CK(clk), .RN(n947), .Q(high_mag[2]) );
  DFFRHQX1 high_mag_reg_1_ ( .D(n739), .CK(clk), .RN(n947), .Q(high_mag[1]) );
  DFFRHQX1 high_mag_reg_0_ ( .D(n740), .CK(clk), .RN(n947), .Q(high_mag[0]) );
  DFFRHQX1 clear_flag_reg ( .D(n779), .CK(clk), .RN(n948), .Q(clear_flag) );
  DFFRHQX1 start_gt_reg ( .D(n778), .CK(clk), .RN(n949), .Q(start_gt) );
  DFFRHQX1 cmpr_reg_16_ ( .D(n707), .CK(clk), .RN(n950), .Q(cmpr_16_) );
  DFFRHQX1 clear_gt_reg ( .D(n705), .CK(clk), .RN(n945), .Q(clear_gt) );
  DFFRHQX1 low_mag_reg_15_ ( .D(n741), .CK(clk), .RN(n947), .Q(low_mag[15]) );
  DFFRHQX1 low_mag_reg_14_ ( .D(n742), .CK(clk), .RN(n947), .Q(low_mag[14]) );
  DFFRHQX1 low_mag_reg_13_ ( .D(n743), .CK(clk), .RN(n947), .Q(low_mag[13]) );
  DFFRHQX1 low_mag_reg_12_ ( .D(n744), .CK(clk), .RN(n947), .Q(low_mag[12]) );
  DFFRHQX1 low_mag_reg_11_ ( .D(n745), .CK(clk), .RN(n947), .Q(low_mag[11]) );
  DFFRHQX1 low_mag_reg_10_ ( .D(n746), .CK(clk), .RN(n947), .Q(low_mag[10]) );
  DFFRHQX1 low_mag_reg_9_ ( .D(n747), .CK(clk), .RN(n948), .Q(low_mag[9]) );
  DFFRHQX1 low_mag_reg_8_ ( .D(n748), .CK(clk), .RN(n948), .Q(low_mag[8]) );
  DFFRHQX1 low_mag_reg_7_ ( .D(n749), .CK(clk), .RN(n948), .Q(low_mag[7]) );
  DFFRHQX1 low_mag_reg_6_ ( .D(n750), .CK(clk), .RN(n948), .Q(low_mag[6]) );
  DFFRHQX1 low_mag_reg_5_ ( .D(n751), .CK(clk), .RN(n948), .Q(low_mag[5]) );
  DFFRHQX1 low_mag_reg_4_ ( .D(n752), .CK(clk), .RN(n948), .Q(low_mag[4]) );
  DFFRHQX1 low_mag_reg_3_ ( .D(n753), .CK(clk), .RN(n948), .Q(low_mag[3]) );
  DFFRHQX1 low_mag_reg_2_ ( .D(n754), .CK(clk), .RN(n948), .Q(low_mag[2]) );
  DFFRHQX1 low_mag_reg_1_ ( .D(n755), .CK(clk), .RN(n948), .Q(low_mag[1]) );
  DFFRHQX1 low_mag_reg_0_ ( .D(n756), .CK(clk), .RN(n948), .Q(low_mag[0]) );
  DFFRHQX1 gt_done_reg ( .D(n706), .CK(clk), .RN(n948), .Q(gt_done) );
  DFFRHQX1 save_state_reg_3_ ( .D(n759), .CK(clk), .RN(n950), .Q(save_state[3]) );
  DFFRHQX1 start_ct_reg ( .D(n758), .CK(clk), .RN(n948), .Q(start_ct) );
  DFFRHQX1 ct_done_reg ( .D(n1109), .CK(clk), .RN(n949), .Q(ct_done) );
  DFFRHQX1 cmpc_reg_16_ ( .D(n1069), .CK(clk), .RN(n949), .Q(cmpc_16_) );
  DFFRHQX1 save_state_reg_0_ ( .D(n1039), .CK(clk), .RN(n947), .Q(
        save_state[0]) );
  DFFRHQX1 cmpd_reg_16_ ( .D(n1064), .CK(clk), .RN(n950), .Q(cmpd_16_) );
  DFFRHQX1 clear_ct_reg ( .D(n757), .CK(clk), .RN(n949), .Q(clear_ct) );
  DFFRHQX1 cmpb_reg_16_ ( .D(n1066), .CK(clk), .RN(n950), .Q(cmpb_16_) );
  DFFRHQX1 save_state_reg_2_ ( .D(n760), .CK(clk), .RN(n949), .Q(save_state[2]) );
  DFFRHQX1 save_state_reg_1_ ( .D(n1038), .CK(clk), .RN(n950), .Q(
        save_state[1]) );
  DFFSX1 seen_quiet_reg ( .D(n782), .CK(clk), .SN(n946), .Q(seen_quiet) );
  DFFSX1 out_p2_reg_1_ ( .D(n766), .CK(clk), .SN(n947), .Q(out_p2[1]), .QN(
        n185) );
  DFFSX1 out_p2_reg_0_ ( .D(n769), .CK(clk), .SN(n945), .Q(out_p2[0]), .QN(
        n186) );
  DFFSX1 dout_reg_1_ ( .D(n765), .CK(clk), .SN(n948), .Q(dout[1]) );
  DFFSX1 dout_reg_0_ ( .D(n768), .CK(clk), .SN(n949), .Q(dout[0]) );
  DFFRHQX1 out_p1_reg_1_ ( .D(n767), .CK(clk), .RN(n949), .Q(out_p1[1]) );
  DFFRHQX1 out_p1_reg_0_ ( .D(n770), .CK(clk), .RN(n945), .Q(out_p1[0]) );
  DFFSX1 dout_flag_reg ( .D(n781), .CK(clk), .SN(n945), .Q(dout_flag) );
  DFFSX1 dout_reg_6_ ( .D(n1048), .CK(clk), .SN(n949), .Q(dout[6]) );
  DFFSX1 dout_reg_5_ ( .D(n1044), .CK(clk), .SN(n945), .Q(dout[5]) );
  DFFSX1 dout_reg_4_ ( .D(n1045), .CK(clk), .SN(n945), .Q(dout[4]) );
  DFFSX1 dout_reg_3_ ( .D(n1046), .CK(clk), .SN(n947), .Q(dout[3]) );
  DFFSX1 dout_reg_2_ ( .D(n1047), .CK(clk), .SN(n946), .Q(dout[2]) );
  DFFRHQX1 low_reg_2_ ( .D(n774), .CK(clk), .RN(n948), .Q(low[2]) );
  DFFRHQX1 high_reg_2_ ( .D(n771), .CK(clk), .RN(n947), .Q(high[2]) );
  DFFRHQX1 opd_reg_15_ ( .D(n988), .CK(clk), .RN(n950), .Q(opd[15]) );
  DFFRHQX1 opc_reg_15_ ( .D(n987), .CK(clk), .RN(n945), .Q(opc[15]) );
  DFFSX1 out_p2_reg_6_ ( .D(n1037), .CK(clk), .SN(n945), .Q(out_p2[6]) );
  DFFRHQX1 opd_reg_14_ ( .D(n991), .CK(clk), .RN(n949), .Q(opd[14]) );
  DFFSX1 out_p2_reg_5_ ( .D(n1053), .CK(clk), .SN(n945), .Q(out_p2[5]) );
  DFFSX1 out_p2_reg_4_ ( .D(n1054), .CK(clk), .SN(n945), .Q(out_p2[4]) );
  DFFRHQX1 opc_reg_14_ ( .D(n990), .CK(clk), .RN(n948), .Q(opc[14]) );
  DFFRHQX1 gt_reg ( .D(n777), .CK(clk), .RN(n945), .Q(gt) );
  DFFRHQX1 opd_reg_12_ ( .D(n997), .CK(clk), .RN(n947), .Q(opd[12]) );
  DFFRHQX1 opc_reg_12_ ( .D(n996), .CK(clk), .RN(n946), .Q(opc[12]) );
  DFFSX1 out_p2_reg_2_ ( .D(n1056), .CK(clk), .SN(n950), .Q(out_p2[2]) );
  DFFRHQX1 ct_state_reg_2_ ( .D(N672), .CK(clk), .RN(n948), .Q(ct_state[2]) );
  DFFSX1 out_p2_reg_3_ ( .D(n1055), .CK(clk), .SN(n945), .Q(out_p2[3]) );
  DFFRHQX1 digit_clk_reg ( .D(n780), .CK(clk), .RN(n946), .Q(digit_clk) );
  DFFRHQX1 gt_state_reg_0_ ( .D(N518), .CK(clk), .RN(n945), .Q(gt_state[0]) );
  DFFRHQX1 opd_reg_13_ ( .D(n994), .CK(clk), .RN(n948), .Q(opd[13]) );
  DFFRHQX1 opc_reg_13_ ( .D(n993), .CK(clk), .RN(n946), .Q(opc[13]) );
  DFFRHQX1 ct_state_reg_0_ ( .D(N670), .CK(clk), .RN(n948), .Q(ct_state[0]) );
  DFFRHQX1 cmpf_reg_16_ ( .D(n708), .CK(clk), .RN(n950), .Q(cmpf_16_) );
  DFFRHQX1 gt_state_reg_1_ ( .D(N519), .CK(clk), .RN(n950), .Q(gt_state[1]) );
  DFFRHQX1 out_p1_reg_5_ ( .D(n761), .CK(clk), .RN(n946), .Q(out_p1[5]) );
  DFFRHQX1 opb_reg_15_ ( .D(n709), .CK(clk), .RN(n949), .Q(opb[15]) );
  DFFRHQX1 out_p1_reg_6_ ( .D(n783), .CK(clk), .RN(n945), .Q(out_p1[6]) );
  DFFRHQX1 out_p1_reg_4_ ( .D(n762), .CK(clk), .RN(n945), .Q(out_p1[4]) );
  DFFRHQX1 out_p1_reg_3_ ( .D(n763), .CK(clk), .RN(n948), .Q(out_p1[3]) );
  DFFRHQX1 out_p1_reg_2_ ( .D(n764), .CK(clk), .RN(n950), .Q(out_p1[2]) );
  DFFRHQX1 opb_reg_14_ ( .D(n710), .CK(clk), .RN(n949), .Q(opb[14]) );
  DFFRHQX1 ct_state_reg_1_ ( .D(n1108), .CK(clk), .RN(n949), .Q(ct_state[1])
         );
  DFFRHQX1 low_reg_1_ ( .D(n775), .CK(clk), .RN(n950), .Q(low[1]) );
  DFFRHQX1 opb_reg_13_ ( .D(n711), .CK(clk), .RN(n949), .Q(opb[13]) );
  DFFRHQX1 opa_reg_15_ ( .D(n989), .CK(clk), .RN(n946), .Q(opa[15]) );
  DFFRHQX1 low_reg_0_ ( .D(n776), .CK(clk), .RN(n949), .Q(low[0]) );
  DFFRHQX1 opa_reg_14_ ( .D(n992), .CK(clk), .RN(n947), .Q(opa[14]) );
  DFFRHQX1 high_reg_1_ ( .D(n772), .CK(clk), .RN(n947), .Q(high[1]) );
  DFFRHQX1 gt_state_reg_2_ ( .D(N520), .CK(clk), .RN(n948), .Q(gt_state[2]) );
  DFFRHQX1 opa_reg_13_ ( .D(n995), .CK(clk), .RN(n949), .Q(opa[13]) );
  DFFRHQX1 high_reg_0_ ( .D(n773), .CK(clk), .RN(n947), .Q(high[0]) );
  DFFRHQX1 opd_reg_10_ ( .D(n1003), .CK(clk), .RN(n950), .Q(opd[10]) );
  DFFRHQX1 opc_reg_10_ ( .D(n1002), .CK(clk), .RN(n946), .Q(opc[10]) );
  DFFRHQX1 opd_reg_11_ ( .D(n1000), .CK(clk), .RN(n947), .Q(opd[11]) );
  DFFRHQX1 opd_reg_9_ ( .D(n1006), .CK(clk), .RN(n946), .Q(opd[9]) );
  DFFRHQX1 opc_reg_11_ ( .D(n999), .CK(clk), .RN(n946), .Q(opc[11]) );
  DFFRHQX1 opc_reg_9_ ( .D(n1005), .CK(clk), .RN(n946), .Q(opc[9]) );
  DFFRHQX1 opb_reg_12_ ( .D(n712), .CK(clk), .RN(n949), .Q(opb[12]) );
  DFFRHQX1 opb_reg_10_ ( .D(n714), .CK(clk), .RN(n949), .Q(opb[10]) );
  DFFRHQX1 opb_reg_11_ ( .D(n713), .CK(clk), .RN(n949), .Q(opb[11]) );
  DFFRHQX1 opa_reg_12_ ( .D(n998), .CK(clk), .RN(n945), .Q(opa[12]) );
  DFFRHQX1 opa_reg_10_ ( .D(n1004), .CK(clk), .RN(n948), .Q(opa[10]) );
  DFFRHQX1 opa_reg_11_ ( .D(n1001), .CK(clk), .RN(n950), .Q(opa[11]) );
  DFFRHQX1 state_reg_0_ ( .D(N302), .CK(clk), .RN(n945), .Q(state[0]) );
  DFFRHQX1 opd_reg_8_ ( .D(n1009), .CK(clk), .RN(n948), .Q(opd[8]) );
  DFFRHQX1 opd_reg_6_ ( .D(n1015), .CK(clk), .RN(n945), .Q(opd[6]) );
  DFFRHQX1 opc_reg_8_ ( .D(n1008), .CK(clk), .RN(n946), .Q(opc[8]) );
  DFFRHQX1 opc_reg_6_ ( .D(n1014), .CK(clk), .RN(n946), .Q(opc[6]) );
  DFFRHQX1 opd_reg_7_ ( .D(n1012), .CK(clk), .RN(n950), .Q(opd[7]) );
  DFFRHQX1 opc_reg_7_ ( .D(n1011), .CK(clk), .RN(n946), .Q(opc[7]) );
  DFFRHQX1 state_reg_4_ ( .D(N306), .CK(clk), .RN(n950), .Q(state[4]) );
  DFFRHQX1 state_reg_3_ ( .D(N305), .CK(clk), .RN(n945), .Q(state[3]) );
  DFFRHQX1 state_reg_1_ ( .D(N303), .CK(clk), .RN(n945), .Q(state[1]) );
  DFFRHQX1 opb_reg_8_ ( .D(n716), .CK(clk), .RN(n949), .Q(opb[8]) );
  DFFRHQX1 opb_reg_6_ ( .D(n718), .CK(clk), .RN(n949), .Q(opb[6]) );
  DFFRHQX1 state_reg_2_ ( .D(n1036), .CK(clk), .RN(n945), .Q(state[2]) );
  DFFRHQX1 opb_reg_9_ ( .D(n715), .CK(clk), .RN(n949), .Q(opb[9]) );
  DFFRHQX1 opb_reg_7_ ( .D(n717), .CK(clk), .RN(n949), .Q(opb[7]) );
  DFFRHQX1 opa_reg_8_ ( .D(n1010), .CK(clk), .RN(n947), .Q(opa[8]) );
  DFFRHQX1 opa_reg_9_ ( .D(n1007), .CK(clk), .RN(n946), .Q(opa[9]) );
  DFFRHQX1 opa_reg_7_ ( .D(n1013), .CK(clk), .RN(n950), .Q(opa[7]) );
  DFFRHQX1 opd_reg_4_ ( .D(n1021), .CK(clk), .RN(n947), .Q(opd[4]) );
  DFFRHQX1 opc_reg_4_ ( .D(n1020), .CK(clk), .RN(n946), .Q(opc[4]) );
  DFFRHQX1 opd_reg_5_ ( .D(n1018), .CK(clk), .RN(n950), .Q(opd[5]) );
  DFFRHQX1 opd_reg_3_ ( .D(n1024), .CK(clk), .RN(n947), .Q(opd[3]) );
  DFFRHQX1 opc_reg_5_ ( .D(n1017), .CK(clk), .RN(n946), .Q(opc[5]) );
  DFFRHQX1 opc_reg_3_ ( .D(n1023), .CK(clk), .RN(n946), .Q(opc[3]) );
  DFFRHQX1 opb_reg_4_ ( .D(n720), .CK(clk), .RN(n949), .Q(opb[4]) );
  DFFRHQX1 opb_reg_5_ ( .D(n719), .CK(clk), .RN(n945), .Q(opb[5]) );
  DFFRHQX1 opb_reg_3_ ( .D(n721), .CK(clk), .RN(n948), .Q(opb[3]) );
  DFFRHQX1 opa_reg_6_ ( .D(n1016), .CK(clk), .RN(n950), .Q(opa[6]) );
  DFFRHQX1 opa_reg_4_ ( .D(n1022), .CK(clk), .RN(n950), .Q(opa[4]) );
  DFFRHQX1 opa_reg_5_ ( .D(n1019), .CK(clk), .RN(n950), .Q(opa[5]) );
  DFFRHQX1 opd_reg_0_ ( .D(n1033), .CK(clk), .RN(n949), .Q(opd[0]) );
  DFFRHQX1 opc_reg_0_ ( .D(n1032), .CK(clk), .RN(n946), .Q(opc[0]) );
  DFFRHQX1 opd_reg_2_ ( .D(n1027), .CK(clk), .RN(n946), .Q(opd[2]) );
  DFFRHQX1 opc_reg_2_ ( .D(n1026), .CK(clk), .RN(n946), .Q(opc[2]) );
  DFFRHQX1 opb_reg_0_ ( .D(n724), .CK(clk), .RN(n950), .Q(opb[0]) );
  DFFRHQX1 opd_reg_1_ ( .D(n1030), .CK(clk), .RN(n945), .Q(opd[1]) );
  DFFRHQX1 opc_reg_1_ ( .D(n1029), .CK(clk), .RN(n946), .Q(opc[1]) );
  DFFRHQX1 opb_reg_1_ ( .D(n723), .CK(clk), .RN(n947), .Q(opb[1]) );
  DFFRHQX1 opb_reg_2_ ( .D(n722), .CK(clk), .RN(n949), .Q(opb[2]) );
  DFFRHQX1 opa_reg_0_ ( .D(n1034), .CK(clk), .RN(n950), .Q(opa[0]) );
  DFFRHQX1 opa_reg_1_ ( .D(n1031), .CK(clk), .RN(n950), .Q(opa[1]) );
  DFFRHQX1 opa_reg_2_ ( .D(n1028), .CK(clk), .RN(n950), .Q(opa[2]) );
  DFFRHQX1 opa_reg_3_ ( .D(n1025), .CK(clk), .RN(n950), .Q(opa[3]) );
  DFFSXL dout_reg_7_ ( .D(n936), .CK(clk), .SN(n947), .Q(dout[7]), .QN(n915)
         );
  DFFSXL out_p2_reg_7_ ( .D(n935), .CK(clk), .SN(n946), .Q(out_p2[7]), .QN(
        n914) );
  NOR2X1 U818 ( .A(n913), .B(n503), .Y(n944) );
  NAND2BX1 U819 ( .AN(n701), .B(ct_done), .Y(n488) );
  NOR2X1 U820 ( .A(n914), .B(n944), .Y(n935) );
  AOI22X1 U821 ( .A0(save_state[1]), .A1(n677), .B0(n1049), .B1(n681), .Y(n702) );
  MX2X1 U822 ( .A(high[2]), .B(n951), .S0(n535), .Y(n771) );
  NOR2X1 U823 ( .A(n915), .B(n937), .Y(n936) );
  MX2X1 U824 ( .A(start_ct), .B(n1040), .S0(n492), .Y(n758) );
  OAI21XL U825 ( .A0(clear_flag), .A1(reset), .B0(n916), .Y(n968) );
  INVX1 U826 ( .A(test_mode), .Y(n916) );
  NAND2X1 U827 ( .A(n486), .B(n484), .Y(n917) );
  NOR2X1 U828 ( .A(n917), .B(n1052), .Y(n918) );
  NOR2X1 U829 ( .A(n483), .B(n486), .Y(n919) );
  NOR2X1 U830 ( .A(n359), .B(n360), .Y(n920) );
  NAND3X1 U831 ( .A(n661), .B(n969), .C(address[0]), .Y(n921) );
  NAND3X1 U832 ( .A(n661), .B(n970), .C(address[1]), .Y(n922) );
  NAND2X1 U833 ( .A(n1050), .B(n1052), .Y(n923) );
  AND2X2 U834 ( .A(n678), .B(n681), .Y(n924) );
  NOR2X1 U835 ( .A(n483), .B(n485), .Y(n925) );
  NAND2X1 U836 ( .A(n924), .B(n1042), .Y(n926) );
  NAND2X1 U837 ( .A(n690), .B(n681), .Y(n927) );
  NOR2X1 U838 ( .A(n361), .B(n359), .Y(n928) );
  NAND2X1 U839 ( .A(n503), .B(n499), .Y(n929) );
  NOR2X1 U840 ( .A(n957), .B(n924), .Y(n930) );
  NOR2X1 U841 ( .A(n929), .B(n1058), .Y(n931) );
  NOR2X1 U842 ( .A(n483), .B(n484), .Y(n932) );
  NOR2X1 U843 ( .A(n358), .B(n359), .Y(n933) );
  NOR2X1 U844 ( .A(n1060), .B(n954), .Y(n934) );
  INVX1 U845 ( .A(n962), .Y(n963) );
  INVX1 U846 ( .A(n960), .Y(n958) );
  INVX1 U847 ( .A(n545), .Y(n960) );
  INVX1 U848 ( .A(n545), .Y(n959) );
  NOR4BX1 U849 ( .AN(n649), .B(n917), .C(n337), .D(n956), .Y(n545) );
  INVX1 U850 ( .A(n485), .Y(n956) );
  INVX1 U851 ( .A(n503), .Y(n951) );
  INVX1 U852 ( .A(n962), .Y(n961) );
  INVX1 U853 ( .A(n337), .Y(n1059) );
  NOR2X1 U854 ( .A(n1058), .B(n957), .Y(n502) );
  NOR2BX1 U855 ( .AN(n498), .B(n957), .Y(n495) );
  INVX1 U856 ( .A(n485), .Y(n957) );
  INVX1 U857 ( .A(n484), .Y(n953) );
  INVX1 U858 ( .A(n358), .Y(n954) );
  INVX1 U859 ( .A(n484), .Y(n952) );
  INVX1 U860 ( .A(n358), .Y(n955) );
  NAND2X1 U861 ( .A(n498), .B(n358), .Y(n337) );
  NOR2X1 U862 ( .A(n1052), .B(n944), .Y(n649) );
  NOR2X1 U863 ( .A(n924), .B(n1060), .Y(n498) );
  INVX1 U864 ( .A(n499), .Y(n1052) );
  NAND3X1 U865 ( .A(n675), .B(n963), .C(n701), .Y(N306) );
  INVX1 U866 ( .A(n361), .Y(n1060) );
  INVX1 U867 ( .A(n503), .Y(n1057) );
  INVX1 U868 ( .A(n302), .Y(n962) );
  NAND2X1 U869 ( .A(n918), .B(n485), .Y(n540) );
  INVX1 U870 ( .A(n538), .Y(n1051) );
  INVX1 U871 ( .A(n927), .Y(n1040) );
  NAND2X1 U872 ( .A(n290), .B(n487), .Y(n677) );
  INVX1 U873 ( .A(N423), .Y(n1041) );
  INVX1 U874 ( .A(n360), .Y(n1043) );
  INVX1 U875 ( .A(n486), .Y(n1058) );
  INVX1 U876 ( .A(n299), .Y(n1108) );
  INVX1 U877 ( .A(reset), .Y(n950) );
  INVX1 U878 ( .A(reset), .Y(n949) );
  INVX1 U879 ( .A(reset), .Y(n948) );
  INVX1 U880 ( .A(reset), .Y(n946) );
  INVX1 U881 ( .A(reset), .Y(n947) );
  INVX1 U882 ( .A(reset), .Y(n945) );
  INVX1 U883 ( .A(n967), .Y(n966) );
  INVX1 U884 ( .A(n967), .Y(n965) );
  NAND2X1 U885 ( .A(n683), .B(n679), .Y(n503) );
  NAND2X1 U886 ( .A(n1061), .B(n683), .Y(n486) );
  NAND2X1 U887 ( .A(n680), .B(n683), .Y(n484) );
  NAND2X1 U888 ( .A(n1061), .B(n678), .Y(n361) );
  NAND2X1 U889 ( .A(n683), .B(n681), .Y(n499) );
  NAND2X1 U890 ( .A(n680), .B(n678), .Y(n358) );
  NAND2X1 U891 ( .A(n678), .B(n679), .Y(n485) );
  AOI21X1 U892 ( .A0(n1040), .A1(n493), .B0(n959), .Y(n302) );
  INVX1 U893 ( .A(n652), .Y(n1061) );
  NAND2X1 U894 ( .A(n504), .B(n359), .Y(n535) );
  NAND2X1 U895 ( .A(n504), .B(n483), .Y(n538) );
  OAI22X1 U896 ( .A0(n1118), .A1(n538), .B0(n502), .B1(n1051), .Y(n776) );
  OAI21XL U897 ( .A0(n1090), .A1(n535), .B0(n537), .Y(n773) );
  OAI21XL U898 ( .A0(n1043), .A1(n1060), .B0(n535), .Y(n537) );
  OAI21XL U899 ( .A0(n1088), .A1(n535), .B0(n536), .Y(n772) );
  OAI21XL U900 ( .A0(n1043), .A1(n954), .B0(n535), .Y(n536) );
  OAI21XL U901 ( .A0(n1117), .A1(n538), .B0(n539), .Y(n775) );
  OAI21XL U902 ( .A0(n956), .A1(n953), .B0(n538), .Y(n539) );
  INVX1 U903 ( .A(n483), .Y(n1050) );
  INVX1 U904 ( .A(n359), .Y(n1042) );
  OR2X2 U905 ( .A(n658), .B(n1035), .Y(n508) );
  OAI21XL U906 ( .A0(n493), .A1(n927), .B0(n658), .Y(N423) );
  NAND2X1 U907 ( .A(n690), .B(n679), .Y(n360) );
  NAND2X1 U908 ( .A(n690), .B(n1061), .Y(n658) );
  NAND2X1 U909 ( .A(n1061), .B(n704), .Y(n701) );
  NAND2X1 U910 ( .A(n1049), .B(n681), .Y(n651) );
  NAND2X1 U911 ( .A(n1090), .B(n1117), .Y(n513) );
  AOI21X1 U912 ( .A0(n1113), .A1(n298), .B0(n1110), .Y(n299) );
  INVX1 U913 ( .A(n295), .Y(n1110) );
  NAND2X1 U914 ( .A(n680), .B(n704), .Y(n487) );
  NOR2X1 U915 ( .A(n529), .B(n532), .Y(n518) );
  NAND2X1 U916 ( .A(n681), .B(n704), .Y(n290) );
  NAND2X1 U917 ( .A(n704), .B(n679), .Y(n675) );
  INVX1 U918 ( .A(n366), .Y(n1070) );
  INVX1 U919 ( .A(n364), .Y(n1065) );
  INVX1 U920 ( .A(n301), .Y(n1067) );
  INVX1 U921 ( .A(n653), .Y(n1049) );
  NAND3X1 U922 ( .A(n541), .B(n1065), .C(n672), .Y(N520) );
  NAND3X1 U923 ( .A(n1070), .B(n1067), .C(n672), .Y(N519) );
  NAND2X1 U924 ( .A(n670), .B(n659), .Y(N672) );
  AND2X2 U925 ( .A(n1049), .B(n679), .Y(n937) );
  INVX1 U926 ( .A(n937), .Y(n506) );
  INVX1 U927 ( .A(n530), .Y(n1091) );
  OR3XL U928 ( .A(n524), .B(n523), .C(n518), .Y(n512) );
  INVX1 U929 ( .A(address[0]), .Y(n970) );
  INVX1 U930 ( .A(address[1]), .Y(n969) );
  AND3X2 U931 ( .A(address[0]), .B(n969), .C(n664), .Y(n938) );
  INVX1 U932 ( .A(n938), .Y(n666) );
  AND3X2 U933 ( .A(n970), .B(n969), .C(n664), .Y(n939) );
  INVX1 U934 ( .A(n939), .Y(n667) );
  AND3X2 U935 ( .A(n970), .B(n969), .C(n661), .Y(n940) );
  INVX1 U936 ( .A(n940), .Y(n662) );
  AND3X2 U937 ( .A(address[0]), .B(n661), .C(address[1]), .Y(n941) );
  INVX1 U938 ( .A(n941), .Y(n668) );
  AND3X2 U939 ( .A(n664), .B(address[0]), .C(address[1]), .Y(n942) );
  INVX1 U940 ( .A(n942), .Y(n663) );
  AND3X2 U941 ( .A(n664), .B(n970), .C(address[1]), .Y(n943) );
  INVX1 U942 ( .A(n943), .Y(n665) );
  INVX1 U943 ( .A(n967), .Y(n964) );
  INVX1 U944 ( .A(rcc_clk), .Y(n967) );
  OAI2BB2X1 U945 ( .B0(n294), .B1(n295), .A0N(n295), .A1N(cmpr_16_), .Y(n707)
         );
  AOI22X1 U946 ( .A0(cmpf_16_), .A1(N481), .B0(N563), .B1(n1116), .Y(n294) );
  INVX1 U947 ( .A(n363), .Y(n1064) );
  AOI22X1 U948 ( .A0(n1065), .A1(cmpd_16_), .B0(N515), .B1(n364), .Y(n363) );
  INVX1 U949 ( .A(n365), .Y(n1069) );
  AOI22X1 U950 ( .A0(n1070), .A1(cmpc_16_), .B0(N498), .B1(n366), .Y(n365) );
  OAI21XL U951 ( .A0(n296), .A1(n1116), .B0(n297), .Y(n708) );
  AOI21X1 U952 ( .A0(N582), .A1(n1110), .B0(n299), .Y(n296) );
  AOI33X1 U953 ( .A0(N563), .A1(n1113), .A2(n298), .B0(n1110), .B1(n1116), 
        .B2(N616), .Y(n297) );
  INVX1 U954 ( .A(n300), .Y(n1066) );
  AOI22X1 U955 ( .A0(n1067), .A1(cmpb_16_), .B0(N481), .B1(n301), .Y(n300) );
  NOR2X1 U956 ( .A(state[1]), .B(state[0]), .Y(n679) );
  NOR2X1 U957 ( .A(n1062), .B(state[1]), .Y(n681) );
  NOR2BX1 U958 ( .AN(n682), .B(state[2]), .Y(n683) );
  NAND2X1 U959 ( .A(state[1]), .B(n1062), .Y(n652) );
  OAI211X1 U960 ( .A0(n962), .A1(n1115), .B0(n484), .C0(n495), .Y(n760) );
  INVX1 U961 ( .A(save_state[2]), .Y(n1115) );
  INVX1 U962 ( .A(n433), .Y(n1022) );
  AOI22X1 U963 ( .A0(n434), .A1(n962), .B0(opa[4]), .B1(n963), .Y(n433) );
  NAND4X1 U964 ( .A(n435), .B(n436), .C(n437), .D(n438), .Y(n434) );
  AOI22X1 U965 ( .A0(r941[4]), .A1(n953), .B0(r852[4]), .B1(n1058), .Y(n436)
         );
  INVX1 U966 ( .A(n421), .Y(n1016) );
  AOI22X1 U967 ( .A0(n422), .A1(n962), .B0(opa[6]), .B1(n963), .Y(n421) );
  NAND4X1 U968 ( .A(n423), .B(n424), .C(n425), .D(n426), .Y(n422) );
  AOI22X1 U969 ( .A0(r941[6]), .A1(n952), .B0(r852[6]), .B1(n1058), .Y(n424)
         );
  INVX1 U970 ( .A(n409), .Y(n1010) );
  AOI22X1 U971 ( .A0(n410), .A1(n962), .B0(opa[8]), .B1(n963), .Y(n409) );
  NAND4X1 U972 ( .A(n411), .B(n412), .C(n413), .D(n414), .Y(n410) );
  AOI22X1 U973 ( .A0(r941[8]), .A1(n952), .B0(r852[8]), .B1(n1058), .Y(n412)
         );
  INVX1 U974 ( .A(n397), .Y(n1004) );
  AOI22X1 U975 ( .A0(n398), .A1(n962), .B0(opa[10]), .B1(n963), .Y(n397) );
  NAND4X1 U976 ( .A(n399), .B(n400), .C(n401), .D(n402), .Y(n398) );
  AOI22X1 U977 ( .A0(r941[10]), .A1(n952), .B0(r852[10]), .B1(n1058), .Y(n400)
         );
  INVX1 U978 ( .A(n445), .Y(n1028) );
  AOI22X1 U979 ( .A0(n446), .A1(n962), .B0(opa[2]), .B1(n963), .Y(n445) );
  NAND4X1 U980 ( .A(n447), .B(n448), .C(n449), .D(n450), .Y(n446) );
  AOI22X1 U981 ( .A0(r941[2]), .A1(n953), .B0(r852[2]), .B1(n1058), .Y(n448)
         );
  INVX1 U982 ( .A(n451), .Y(n1031) );
  AOI22X1 U983 ( .A0(n452), .A1(n962), .B0(opa[1]), .B1(n963), .Y(n451) );
  NAND4X1 U984 ( .A(n453), .B(n454), .C(n455), .D(n456), .Y(n452) );
  AOI22X1 U985 ( .A0(r941[1]), .A1(n953), .B0(r852[1]), .B1(n1058), .Y(n454)
         );
  INVX1 U986 ( .A(n496), .Y(n1038) );
  AOI22X1 U987 ( .A0(n961), .A1(save_state[1]), .B0(n497), .B1(n962), .Y(n496)
         );
  NAND4X1 U988 ( .A(n498), .B(n486), .C(n499), .D(n927), .Y(n497) );
  INVX1 U989 ( .A(state[0]), .Y(n1062) );
  OAI2BB2X1 U990 ( .B0(n302), .B1(n335), .A0N(opb[0]), .A1N(n963), .Y(n724) );
  AOI221X1 U991 ( .A0(r1336[0]), .A1(n957), .B0(r770[0]), .B1(n1057), .C0(n336), .Y(n335) );
  OAI222XL U992 ( .A0(n918), .A1(n177), .B0(n1059), .B1(n113), .C0(n927), .C1(
        n1087), .Y(n336) );
  OAI2BB2X1 U993 ( .B0(n302), .B1(n333), .A0N(opb[1]), .A1N(n961), .Y(n723) );
  AOI221X1 U994 ( .A0(r1336[1]), .A1(n957), .B0(r770[1]), .B1(n1057), .C0(n334), .Y(n333) );
  OAI222XL U995 ( .A0(n918), .A1(n176), .B0(n1059), .B1(n112), .C0(n927), .C1(
        n1086), .Y(n334) );
  OAI2BB2X1 U996 ( .B0(n302), .B1(n331), .A0N(opb[2]), .A1N(n963), .Y(n722) );
  AOI221X1 U997 ( .A0(r1336[2]), .A1(n957), .B0(r770[2]), .B1(n1057), .C0(n332), .Y(n331) );
  OAI222XL U998 ( .A0(n918), .A1(n175), .B0(n1059), .B1(n111), .C0(n927), .C1(
        n1085), .Y(n332) );
  OAI2BB2X1 U999 ( .B0(n302), .B1(n329), .A0N(opb[3]), .A1N(n961), .Y(n721) );
  AOI221X1 U1000 ( .A0(r1336[3]), .A1(n957), .B0(r770[3]), .B1(n1057), .C0(
        n330), .Y(n329) );
  OAI222XL U1001 ( .A0(n918), .A1(n174), .B0(n1059), .B1(n110), .C0(n927), 
        .C1(n1084), .Y(n330) );
  OAI2BB2X1 U1002 ( .B0(n963), .B1(n327), .A0N(opb[4]), .A1N(n961), .Y(n720)
         );
  AOI221X1 U1003 ( .A0(r1336[4]), .A1(n957), .B0(r770[4]), .B1(n1057), .C0(
        n328), .Y(n327) );
  OAI222XL U1004 ( .A0(n918), .A1(n173), .B0(n1059), .B1(n109), .C0(n927), 
        .C1(n1083), .Y(n328) );
  OAI2BB2X1 U1005 ( .B0(n961), .B1(n325), .A0N(opb[5]), .A1N(n961), .Y(n719)
         );
  AOI221X1 U1006 ( .A0(r1336[5]), .A1(n957), .B0(r770[5]), .B1(n1057), .C0(
        n326), .Y(n325) );
  OAI222XL U1007 ( .A0(n918), .A1(n172), .B0(n1059), .B1(n108), .C0(n927), 
        .C1(n1082), .Y(n326) );
  OAI2BB2X1 U1008 ( .B0(n963), .B1(n323), .A0N(opb[6]), .A1N(n961), .Y(n718)
         );
  AOI221X1 U1009 ( .A0(r1336[6]), .A1(n957), .B0(r770[6]), .B1(n1057), .C0(
        n324), .Y(n323) );
  OAI222XL U1010 ( .A0(n918), .A1(n171), .B0(n1059), .B1(n107), .C0(n927), 
        .C1(n1081), .Y(n324) );
  OAI2BB2X1 U1011 ( .B0(n302), .B1(n321), .A0N(opb[7]), .A1N(n963), .Y(n717)
         );
  AOI221X1 U1012 ( .A0(r1336[7]), .A1(n957), .B0(r770[7]), .B1(n1057), .C0(
        n322), .Y(n321) );
  OAI222XL U1013 ( .A0(n918), .A1(n170), .B0(n1059), .B1(n106), .C0(n927), 
        .C1(n1080), .Y(n322) );
  OAI2BB2X1 U1014 ( .B0(n961), .B1(n319), .A0N(opb[8]), .A1N(n963), .Y(n716)
         );
  AOI221X1 U1015 ( .A0(r1336[8]), .A1(n957), .B0(r770[8]), .B1(n951), .C0(n320), .Y(n319) );
  OAI222XL U1016 ( .A0(n918), .A1(n169), .B0(n1059), .B1(n105), .C0(n927), 
        .C1(n1079), .Y(n320) );
  OAI2BB2X1 U1017 ( .B0(n963), .B1(n317), .A0N(opb[9]), .A1N(n961), .Y(n715)
         );
  AOI221X1 U1018 ( .A0(r1336[9]), .A1(n957), .B0(r770[9]), .B1(n951), .C0(n318), .Y(n317) );
  OAI222XL U1019 ( .A0(n918), .A1(n168), .B0(n1059), .B1(n104), .C0(n927), 
        .C1(n1078), .Y(n318) );
  OAI2BB2X1 U1020 ( .B0(n963), .B1(n315), .A0N(opb[10]), .A1N(n961), .Y(n714)
         );
  AOI221X1 U1021 ( .A0(r1336[10]), .A1(n957), .B0(r770[10]), .B1(n951), .C0(
        n316), .Y(n315) );
  OAI222XL U1022 ( .A0(n918), .A1(n167), .B0(n1059), .B1(n103), .C0(n927), 
        .C1(n1077), .Y(n316) );
  OAI2BB2X1 U1023 ( .B0(n302), .B1(n313), .A0N(opb[11]), .A1N(n302), .Y(n713)
         );
  AOI221X1 U1024 ( .A0(r1336[11]), .A1(n957), .B0(r770[11]), .B1(n951), .C0(
        n314), .Y(n313) );
  OAI222XL U1025 ( .A0(n918), .A1(n166), .B0(n1059), .B1(n102), .C0(n927), 
        .C1(n1076), .Y(n314) );
  OAI2BB2X1 U1026 ( .B0(n302), .B1(n311), .A0N(opb[12]), .A1N(n302), .Y(n712)
         );
  AOI221X1 U1027 ( .A0(r1336[12]), .A1(n957), .B0(r770[12]), .B1(n951), .C0(
        n312), .Y(n311) );
  OAI222XL U1028 ( .A0(n918), .A1(n165), .B0(n1059), .B1(n101), .C0(n927), 
        .C1(n1075), .Y(n312) );
  OAI2BB2X1 U1029 ( .B0(n302), .B1(n309), .A0N(opb[13]), .A1N(n961), .Y(n711)
         );
  AOI221X1 U1030 ( .A0(r1336[13]), .A1(n957), .B0(r770[13]), .B1(n951), .C0(
        n310), .Y(n309) );
  OAI222XL U1031 ( .A0(n918), .A1(n164), .B0(n1059), .B1(n100), .C0(n927), 
        .C1(n1074), .Y(n310) );
  OAI2BB2X1 U1032 ( .B0(n302), .B1(n307), .A0N(opb[14]), .A1N(n961), .Y(n710)
         );
  AOI221X1 U1033 ( .A0(r1336[14]), .A1(n957), .B0(r770[14]), .B1(n951), .C0(
        n308), .Y(n307) );
  OAI222XL U1034 ( .A0(n918), .A1(n163), .B0(n1059), .B1(n99), .C0(n927), .C1(
        n1073), .Y(n308) );
  OAI2BB2X1 U1035 ( .B0(n302), .B1(n303), .A0N(opb[15]), .A1N(n963), .Y(n709)
         );
  AOI221X1 U1036 ( .A0(r1336[15]), .A1(n957), .B0(r770[15]), .B1(n951), .C0(
        n304), .Y(n303) );
  OAI222XL U1037 ( .A0(n918), .A1(n162), .B0(n1059), .B1(n98), .C0(n927), .C1(
        n1072), .Y(n304) );
  NOR2X1 U1038 ( .A(state[4]), .B(state[3]), .Y(n682) );
  INVX1 U1039 ( .A(n944), .Y(n504) );
  OAI2BB1X1 U1040 ( .A0N(n963), .A1N(save_state[3]), .B0(n494), .Y(n759) );
  OAI21XL U1041 ( .A0(n1040), .A1(n954), .B0(n962), .Y(n494) );
  INVX1 U1042 ( .A(n439), .Y(n1025) );
  AOI22X1 U1043 ( .A0(n440), .A1(n962), .B0(opa[3]), .B1(n963), .Y(n439) );
  NAND4X1 U1044 ( .A(n441), .B(n442), .C(n443), .D(n444), .Y(n440) );
  AOI22X1 U1045 ( .A0(r941[3]), .A1(n953), .B0(r852[3]), .B1(n1058), .Y(n442)
         );
  INVX1 U1046 ( .A(n427), .Y(n1019) );
  AOI22X1 U1047 ( .A0(n428), .A1(n962), .B0(opa[5]), .B1(n963), .Y(n427) );
  NAND4X1 U1048 ( .A(n429), .B(n430), .C(n431), .D(n432), .Y(n428) );
  AOI22X1 U1049 ( .A0(r941[5]), .A1(n952), .B0(r852[5]), .B1(n1058), .Y(n430)
         );
  INVX1 U1050 ( .A(n415), .Y(n1013) );
  AOI22X1 U1051 ( .A0(n416), .A1(n962), .B0(opa[7]), .B1(n963), .Y(n415) );
  NAND4X1 U1052 ( .A(n417), .B(n418), .C(n419), .D(n420), .Y(n416) );
  AOI22X1 U1053 ( .A0(r941[7]), .A1(n952), .B0(r852[7]), .B1(n1058), .Y(n418)
         );
  INVX1 U1054 ( .A(n403), .Y(n1007) );
  AOI22X1 U1055 ( .A0(n404), .A1(n962), .B0(opa[9]), .B1(n963), .Y(n403) );
  NAND4X1 U1056 ( .A(n405), .B(n406), .C(n407), .D(n408), .Y(n404) );
  AOI22X1 U1057 ( .A0(r941[9]), .A1(n952), .B0(r852[9]), .B1(n1058), .Y(n406)
         );
  INVX1 U1058 ( .A(n391), .Y(n1001) );
  AOI22X1 U1059 ( .A0(n392), .A1(n962), .B0(opa[11]), .B1(n302), .Y(n391) );
  NAND4X1 U1060 ( .A(n393), .B(n394), .C(n395), .D(n396), .Y(n392) );
  AOI22X1 U1061 ( .A0(r941[11]), .A1(n952), .B0(r852[11]), .B1(n1058), .Y(n394) );
  INVX1 U1062 ( .A(n379), .Y(n995) );
  AOI22X1 U1063 ( .A0(n380), .A1(n962), .B0(opa[13]), .B1(n302), .Y(n379) );
  NAND4X1 U1064 ( .A(n381), .B(n382), .C(n383), .D(n384), .Y(n380) );
  AOI22X1 U1065 ( .A0(r941[13]), .A1(n952), .B0(r852[13]), .B1(n1058), .Y(n382) );
  INVX1 U1066 ( .A(n385), .Y(n998) );
  AOI22X1 U1067 ( .A0(n386), .A1(n962), .B0(opa[12]), .B1(n302), .Y(n385) );
  NAND4X1 U1068 ( .A(n387), .B(n388), .C(n389), .D(n390), .Y(n386) );
  AOI22X1 U1069 ( .A0(r941[12]), .A1(n952), .B0(r852[12]), .B1(n1058), .Y(n388) );
  INVX1 U1070 ( .A(n373), .Y(n992) );
  AOI22X1 U1071 ( .A0(n374), .A1(n962), .B0(opa[14]), .B1(n302), .Y(n373) );
  NAND4X1 U1072 ( .A(n375), .B(n376), .C(n377), .D(n378), .Y(n374) );
  AOI22X1 U1073 ( .A0(r941[14]), .A1(n952), .B0(r852[14]), .B1(n1058), .Y(n376) );
  INVX1 U1074 ( .A(n367), .Y(n989) );
  AOI22X1 U1075 ( .A0(n368), .A1(n962), .B0(opa[15]), .B1(n302), .Y(n367) );
  NAND4X1 U1076 ( .A(n369), .B(n370), .C(n371), .D(n372), .Y(n368) );
  AOI22X1 U1077 ( .A0(n924), .A1(r1336[15]), .B0(n957), .B1(r1209[15]), .Y(
        n371) );
  INVX1 U1078 ( .A(n457), .Y(n1034) );
  AOI22X1 U1079 ( .A0(n458), .A1(n962), .B0(opa[0]), .B1(n963), .Y(n457) );
  NAND4X1 U1080 ( .A(n459), .B(n460), .C(n461), .D(n462), .Y(n458) );
  AOI22X1 U1081 ( .A0(r941[0]), .A1(n953), .B0(r852[0]), .B1(n1058), .Y(n460)
         );
  INVX1 U1082 ( .A(n500), .Y(n1039) );
  AOI21X1 U1083 ( .A0(n302), .A1(save_state[0]), .B0(n501), .Y(n500) );
  AOI31X1 U1084 ( .A0(n502), .A1(n503), .A2(n361), .B0(n963), .Y(n501) );
  NAND2X1 U1085 ( .A(gt), .B(n540), .Y(n483) );
  OAI21XL U1086 ( .A0(n1043), .A1(n337), .B0(gt), .Y(n359) );
  NOR3BX1 U1087 ( .AN(state[3]), .B(state[2]), .C(state[4]), .Y(n690) );
  OAI221XL U1088 ( .A0(n177), .A1(n923), .B0(n1050), .B1(n1107), .C0(n482), 
        .Y(n756) );
  INVX1 U1089 ( .A(low_mag[0]), .Y(n1107) );
  AOI222X1 U1090 ( .A0(n919), .A1(r770[0]), .B0(n925), .B1(r941[0]), .C0(n932), 
        .C1(r852[0]), .Y(n482) );
  OAI221XL U1091 ( .A0(n176), .A1(n923), .B0(n1050), .B1(n1106), .C0(n481), 
        .Y(n755) );
  INVX1 U1092 ( .A(low_mag[1]), .Y(n1106) );
  AOI222X1 U1093 ( .A0(n919), .A1(r770[1]), .B0(n925), .B1(r941[1]), .C0(n932), 
        .C1(r852[1]), .Y(n481) );
  OAI221XL U1094 ( .A0(n175), .A1(n923), .B0(n1050), .B1(n1105), .C0(n480), 
        .Y(n754) );
  INVX1 U1095 ( .A(low_mag[2]), .Y(n1105) );
  AOI222X1 U1096 ( .A0(n919), .A1(r770[2]), .B0(n925), .B1(r941[2]), .C0(n932), 
        .C1(r852[2]), .Y(n480) );
  OAI221XL U1097 ( .A0(n174), .A1(n923), .B0(n1050), .B1(n1104), .C0(n479), 
        .Y(n753) );
  INVX1 U1098 ( .A(low_mag[3]), .Y(n1104) );
  AOI222X1 U1099 ( .A0(n919), .A1(r770[3]), .B0(n925), .B1(r941[3]), .C0(n932), 
        .C1(r852[3]), .Y(n479) );
  OAI221XL U1100 ( .A0(n173), .A1(n923), .B0(n1050), .B1(n1103), .C0(n478), 
        .Y(n752) );
  INVX1 U1101 ( .A(low_mag[4]), .Y(n1103) );
  AOI222X1 U1102 ( .A0(n919), .A1(r770[4]), .B0(n925), .B1(r941[4]), .C0(n932), 
        .C1(r852[4]), .Y(n478) );
  OAI221XL U1103 ( .A0(n172), .A1(n923), .B0(n1050), .B1(n1102), .C0(n477), 
        .Y(n751) );
  INVX1 U1104 ( .A(low_mag[5]), .Y(n1102) );
  AOI222X1 U1105 ( .A0(n919), .A1(r770[5]), .B0(n925), .B1(r941[5]), .C0(n932), 
        .C1(r852[5]), .Y(n477) );
  OAI221XL U1106 ( .A0(n171), .A1(n923), .B0(n1050), .B1(n1101), .C0(n476), 
        .Y(n750) );
  INVX1 U1107 ( .A(low_mag[6]), .Y(n1101) );
  AOI222X1 U1108 ( .A0(n919), .A1(r770[6]), .B0(n925), .B1(r941[6]), .C0(n932), 
        .C1(r852[6]), .Y(n476) );
  OAI221XL U1109 ( .A0(n170), .A1(n923), .B0(n1050), .B1(n1100), .C0(n475), 
        .Y(n749) );
  INVX1 U1110 ( .A(low_mag[7]), .Y(n1100) );
  AOI222X1 U1111 ( .A0(n919), .A1(r770[7]), .B0(n925), .B1(r941[7]), .C0(n932), 
        .C1(r852[7]), .Y(n475) );
  OAI221XL U1112 ( .A0(n169), .A1(n923), .B0(n1050), .B1(n1099), .C0(n474), 
        .Y(n748) );
  INVX1 U1113 ( .A(low_mag[8]), .Y(n1099) );
  AOI222X1 U1114 ( .A0(n919), .A1(r770[8]), .B0(n925), .B1(r941[8]), .C0(n932), 
        .C1(r852[8]), .Y(n474) );
  OAI221XL U1115 ( .A0(n168), .A1(n923), .B0(n1050), .B1(n1098), .C0(n473), 
        .Y(n747) );
  INVX1 U1116 ( .A(low_mag[9]), .Y(n1098) );
  AOI222X1 U1117 ( .A0(n919), .A1(r770[9]), .B0(n925), .B1(r941[9]), .C0(n932), 
        .C1(r852[9]), .Y(n473) );
  OAI221XL U1118 ( .A0(n167), .A1(n923), .B0(n1050), .B1(n1097), .C0(n472), 
        .Y(n746) );
  INVX1 U1119 ( .A(low_mag[10]), .Y(n1097) );
  AOI222X1 U1120 ( .A0(n919), .A1(r770[10]), .B0(n925), .B1(r941[10]), .C0(
        n932), .C1(r852[10]), .Y(n472) );
  OAI221XL U1121 ( .A0(n166), .A1(n923), .B0(n1050), .B1(n1096), .C0(n471), 
        .Y(n745) );
  INVX1 U1122 ( .A(low_mag[11]), .Y(n1096) );
  AOI222X1 U1123 ( .A0(n919), .A1(r770[11]), .B0(n925), .B1(r941[11]), .C0(
        n932), .C1(r852[11]), .Y(n471) );
  OAI221XL U1124 ( .A0(n165), .A1(n923), .B0(n1050), .B1(n1095), .C0(n470), 
        .Y(n744) );
  INVX1 U1125 ( .A(low_mag[12]), .Y(n1095) );
  AOI222X1 U1126 ( .A0(n919), .A1(r770[12]), .B0(n925), .B1(r941[12]), .C0(
        n932), .C1(r852[12]), .Y(n470) );
  OAI221XL U1127 ( .A0(n164), .A1(n923), .B0(n1050), .B1(n1094), .C0(n469), 
        .Y(n743) );
  INVX1 U1128 ( .A(low_mag[13]), .Y(n1094) );
  AOI222X1 U1129 ( .A0(n919), .A1(r770[13]), .B0(n925), .B1(r941[13]), .C0(
        n932), .C1(r852[13]), .Y(n469) );
  OAI221XL U1130 ( .A0(n163), .A1(n923), .B0(n1050), .B1(n1093), .C0(n468), 
        .Y(n742) );
  INVX1 U1131 ( .A(low_mag[14]), .Y(n1093) );
  AOI222X1 U1132 ( .A0(n919), .A1(r770[14]), .B0(n925), .B1(r941[14]), .C0(
        n932), .C1(r852[14]), .Y(n468) );
  OAI221XL U1133 ( .A0(n162), .A1(n923), .B0(n1050), .B1(n1092), .C0(n464), 
        .Y(n741) );
  INVX1 U1134 ( .A(low_mag[15]), .Y(n1092) );
  AOI222X1 U1135 ( .A0(n919), .A1(r770[15]), .B0(n925), .B1(r941[15]), .C0(
        n932), .C1(r852[15]), .Y(n464) );
  OAI221XL U1136 ( .A0(n113), .A1(n926), .B0(n1042), .B1(n1087), .C0(n357), 
        .Y(n740) );
  AOI222X1 U1137 ( .A0(n928), .A1(r1336[0]), .B0(r1633[0]), .B1(n920), .C0(
        r1477[0]), .C1(n933), .Y(n357) );
  OAI221XL U1138 ( .A0(n112), .A1(n926), .B0(n1042), .B1(n1086), .C0(n356), 
        .Y(n739) );
  AOI222X1 U1139 ( .A0(n928), .A1(r1336[1]), .B0(r1633[1]), .B1(n920), .C0(
        r1477[1]), .C1(n933), .Y(n356) );
  OAI221XL U1140 ( .A0(n111), .A1(n926), .B0(n1042), .B1(n1085), .C0(n355), 
        .Y(n738) );
  AOI222X1 U1141 ( .A0(n928), .A1(r1336[2]), .B0(r1633[2]), .B1(n920), .C0(
        r1477[2]), .C1(n933), .Y(n355) );
  OAI221XL U1142 ( .A0(n110), .A1(n926), .B0(n1042), .B1(n1084), .C0(n354), 
        .Y(n737) );
  AOI222X1 U1143 ( .A0(n928), .A1(r1336[3]), .B0(r1633[3]), .B1(n920), .C0(
        r1477[3]), .C1(n933), .Y(n354) );
  OAI221XL U1144 ( .A0(n109), .A1(n926), .B0(n1042), .B1(n1083), .C0(n353), 
        .Y(n736) );
  AOI222X1 U1145 ( .A0(n928), .A1(r1336[4]), .B0(r1633[4]), .B1(n920), .C0(
        r1477[4]), .C1(n933), .Y(n353) );
  OAI221XL U1146 ( .A0(n108), .A1(n926), .B0(n1042), .B1(n1082), .C0(n352), 
        .Y(n735) );
  AOI222X1 U1147 ( .A0(n928), .A1(r1336[5]), .B0(r1633[5]), .B1(n920), .C0(
        r1477[5]), .C1(n933), .Y(n352) );
  OAI221XL U1148 ( .A0(n107), .A1(n926), .B0(n1042), .B1(n1081), .C0(n351), 
        .Y(n734) );
  AOI222X1 U1149 ( .A0(n928), .A1(r1336[6]), .B0(r1633[6]), .B1(n920), .C0(
        r1477[6]), .C1(n933), .Y(n351) );
  OAI221XL U1150 ( .A0(n106), .A1(n926), .B0(n1042), .B1(n1080), .C0(n350), 
        .Y(n733) );
  AOI222X1 U1151 ( .A0(n928), .A1(r1336[7]), .B0(r1633[7]), .B1(n920), .C0(
        r1477[7]), .C1(n933), .Y(n350) );
  OAI221XL U1152 ( .A0(n105), .A1(n926), .B0(n1042), .B1(n1079), .C0(n349), 
        .Y(n732) );
  AOI222X1 U1153 ( .A0(n928), .A1(r1336[8]), .B0(r1633[8]), .B1(n920), .C0(
        r1477[8]), .C1(n933), .Y(n349) );
  OAI221XL U1154 ( .A0(n104), .A1(n926), .B0(n1042), .B1(n1078), .C0(n348), 
        .Y(n731) );
  AOI222X1 U1155 ( .A0(n928), .A1(r1336[9]), .B0(r1633[9]), .B1(n920), .C0(
        r1477[9]), .C1(n933), .Y(n348) );
  OAI221XL U1156 ( .A0(n103), .A1(n926), .B0(n1042), .B1(n1077), .C0(n347), 
        .Y(n730) );
  AOI222X1 U1157 ( .A0(n928), .A1(r1336[10]), .B0(r1633[10]), .B1(n920), .C0(
        r1477[10]), .C1(n933), .Y(n347) );
  OAI221XL U1158 ( .A0(n102), .A1(n926), .B0(n1042), .B1(n1076), .C0(n346), 
        .Y(n729) );
  AOI222X1 U1159 ( .A0(n928), .A1(r1336[11]), .B0(r1633[11]), .B1(n920), .C0(
        r1477[11]), .C1(n933), .Y(n346) );
  OAI221XL U1160 ( .A0(n101), .A1(n926), .B0(n1042), .B1(n1075), .C0(n345), 
        .Y(n728) );
  AOI222X1 U1161 ( .A0(n928), .A1(r1336[12]), .B0(r1633[12]), .B1(n920), .C0(
        r1477[12]), .C1(n933), .Y(n345) );
  OAI221XL U1162 ( .A0(n100), .A1(n926), .B0(n1042), .B1(n1074), .C0(n344), 
        .Y(n727) );
  AOI222X1 U1163 ( .A0(n928), .A1(r1336[13]), .B0(r1633[13]), .B1(n920), .C0(
        r1477[13]), .C1(n933), .Y(n344) );
  OAI221XL U1164 ( .A0(n99), .A1(n926), .B0(n1042), .B1(n1073), .C0(n343), .Y(
        n726) );
  AOI222X1 U1165 ( .A0(n928), .A1(r1336[14]), .B0(r1633[14]), .B1(n920), .C0(
        r1477[14]), .C1(n933), .Y(n343) );
  OAI221XL U1166 ( .A0(n98), .A1(n926), .B0(n1042), .B1(n1072), .C0(n339), .Y(
        n725) );
  AOI222X1 U1167 ( .A0(n928), .A1(r1336[15]), .B0(r1633[15]), .B1(n920), .C0(
        r1477[15]), .C1(n933), .Y(n339) );
  NOR2BX1 U1168 ( .AN(state[1]), .B(n1062), .Y(n680) );
  INVX1 U1169 ( .A(n617), .Y(n1005) );
  AOI22X1 U1170 ( .A0(opc[9]), .A1(n958), .B0(n618), .B1(n960), .Y(n617) );
  OAI221XL U1171 ( .A0(n930), .A1(n136), .B0(n934), .B1(n120), .C0(n619), .Y(
        n618) );
  AOI22X1 U1172 ( .A0(r770[9]), .A1(n917), .B0(r852[9]), .B1(n929), .Y(n619)
         );
  INVX1 U1173 ( .A(n614), .Y(n1002) );
  AOI22X1 U1174 ( .A0(opc[10]), .A1(n958), .B0(n615), .B1(n960), .Y(n614) );
  OAI221XL U1175 ( .A0(n930), .A1(n135), .B0(n934), .B1(n119), .C0(n616), .Y(
        n615) );
  AOI22X1 U1176 ( .A0(r770[10]), .A1(n917), .B0(r852[10]), .B1(n929), .Y(n616)
         );
  INVX1 U1177 ( .A(n611), .Y(n999) );
  AOI22X1 U1178 ( .A0(opc[11]), .A1(n958), .B0(n612), .B1(n960), .Y(n611) );
  OAI221XL U1179 ( .A0(n930), .A1(n134), .B0(n934), .B1(n118), .C0(n613), .Y(
        n612) );
  AOI22X1 U1180 ( .A0(r770[11]), .A1(n917), .B0(r852[11]), .B1(n929), .Y(n613)
         );
  INVX1 U1181 ( .A(n608), .Y(n996) );
  AOI22X1 U1182 ( .A0(opc[12]), .A1(n958), .B0(n609), .B1(n959), .Y(n608) );
  OAI221XL U1183 ( .A0(n930), .A1(n133), .B0(n934), .B1(n117), .C0(n610), .Y(
        n609) );
  AOI22X1 U1184 ( .A0(r770[12]), .A1(n917), .B0(r852[12]), .B1(n929), .Y(n610)
         );
  INVX1 U1185 ( .A(n605), .Y(n993) );
  AOI22X1 U1186 ( .A0(opc[13]), .A1(n958), .B0(n606), .B1(n960), .Y(n605) );
  OAI221XL U1187 ( .A0(n930), .A1(n132), .B0(n934), .B1(n116), .C0(n607), .Y(
        n606) );
  AOI22X1 U1188 ( .A0(r770[13]), .A1(n917), .B0(r852[13]), .B1(n929), .Y(n607)
         );
  INVX1 U1189 ( .A(n602), .Y(n990) );
  AOI22X1 U1190 ( .A0(opc[14]), .A1(n958), .B0(n603), .B1(n960), .Y(n602) );
  OAI221XL U1191 ( .A0(n930), .A1(n131), .B0(n934), .B1(n115), .C0(n604), .Y(
        n603) );
  AOI22X1 U1192 ( .A0(r770[14]), .A1(n917), .B0(r852[14]), .B1(n929), .Y(n604)
         );
  INVX1 U1193 ( .A(n597), .Y(n987) );
  AOI22X1 U1194 ( .A0(opc[15]), .A1(n958), .B0(n598), .B1(n960), .Y(n597) );
  OAI221XL U1195 ( .A0(n930), .A1(n130), .B0(n934), .B1(n114), .C0(n601), .Y(
        n598) );
  AOI22X1 U1196 ( .A0(r770[15]), .A1(n917), .B0(r852[15]), .B1(n929), .Y(n601)
         );
  OAI2BB2X1 U1197 ( .B0(n1051), .B1(n503), .A0N(n1051), .A1N(low[2]), .Y(n774)
         );
  OAI2BB2X1 U1198 ( .B0(n543), .B1(n544), .A0N(n544), .A1N(start_gt), .Y(n778)
         );
  NOR3X1 U1199 ( .A(n540), .B(n1057), .C(n337), .Y(n543) );
  INVX1 U1200 ( .A(n644), .Y(n1032) );
  AOI22X1 U1201 ( .A0(opc[0]), .A1(n958), .B0(n645), .B1(n959), .Y(n644) );
  OAI221XL U1202 ( .A0(n930), .A1(n145), .B0(n934), .B1(n129), .C0(n646), .Y(
        n645) );
  AOI22X1 U1203 ( .A0(r770[0]), .A1(n917), .B0(r852[0]), .B1(n929), .Y(n646)
         );
  INVX1 U1204 ( .A(n641), .Y(n1029) );
  AOI22X1 U1205 ( .A0(opc[1]), .A1(n958), .B0(n642), .B1(n960), .Y(n641) );
  OAI221XL U1206 ( .A0(n930), .A1(n144), .B0(n934), .B1(n128), .C0(n643), .Y(
        n642) );
  AOI22X1 U1207 ( .A0(r770[1]), .A1(n917), .B0(r852[1]), .B1(n929), .Y(n643)
         );
  INVX1 U1208 ( .A(n638), .Y(n1026) );
  AOI22X1 U1209 ( .A0(opc[2]), .A1(n958), .B0(n639), .B1(n960), .Y(n638) );
  OAI221XL U1210 ( .A0(n930), .A1(n143), .B0(n934), .B1(n127), .C0(n640), .Y(
        n639) );
  AOI22X1 U1211 ( .A0(r770[2]), .A1(n917), .B0(r852[2]), .B1(n929), .Y(n640)
         );
  INVX1 U1212 ( .A(n635), .Y(n1023) );
  AOI22X1 U1213 ( .A0(opc[3]), .A1(n958), .B0(n636), .B1(n960), .Y(n635) );
  OAI221XL U1214 ( .A0(n930), .A1(n142), .B0(n934), .B1(n126), .C0(n637), .Y(
        n636) );
  AOI22X1 U1215 ( .A0(r770[3]), .A1(n917), .B0(r852[3]), .B1(n929), .Y(n637)
         );
  INVX1 U1216 ( .A(n632), .Y(n1020) );
  AOI22X1 U1217 ( .A0(opc[4]), .A1(n958), .B0(n633), .B1(n959), .Y(n632) );
  OAI221XL U1218 ( .A0(n930), .A1(n141), .B0(n934), .B1(n125), .C0(n634), .Y(
        n633) );
  AOI22X1 U1219 ( .A0(r770[4]), .A1(n917), .B0(r852[4]), .B1(n929), .Y(n634)
         );
  INVX1 U1220 ( .A(n629), .Y(n1017) );
  AOI22X1 U1221 ( .A0(opc[5]), .A1(n958), .B0(n630), .B1(n960), .Y(n629) );
  OAI221XL U1222 ( .A0(n930), .A1(n140), .B0(n934), .B1(n124), .C0(n631), .Y(
        n630) );
  AOI22X1 U1223 ( .A0(r770[5]), .A1(n917), .B0(r852[5]), .B1(n929), .Y(n631)
         );
  INVX1 U1224 ( .A(n626), .Y(n1014) );
  AOI22X1 U1225 ( .A0(opc[6]), .A1(n958), .B0(n627), .B1(n960), .Y(n626) );
  OAI221XL U1226 ( .A0(n930), .A1(n139), .B0(n934), .B1(n123), .C0(n628), .Y(
        n627) );
  AOI22X1 U1227 ( .A0(r770[6]), .A1(n917), .B0(r852[6]), .B1(n929), .Y(n628)
         );
  INVX1 U1228 ( .A(n623), .Y(n1011) );
  AOI22X1 U1229 ( .A0(opc[7]), .A1(n958), .B0(n624), .B1(n960), .Y(n623) );
  OAI221XL U1230 ( .A0(n930), .A1(n138), .B0(n934), .B1(n122), .C0(n625), .Y(
        n624) );
  AOI22X1 U1231 ( .A0(r770[7]), .A1(n917), .B0(r852[7]), .B1(n929), .Y(n625)
         );
  INVX1 U1232 ( .A(n620), .Y(n1008) );
  AOI22X1 U1233 ( .A0(opc[8]), .A1(n958), .B0(n621), .B1(n959), .Y(n620) );
  OAI221XL U1234 ( .A0(n930), .A1(n137), .B0(n934), .B1(n121), .C0(n622), .Y(
        n621) );
  AOI22X1 U1235 ( .A0(r770[8]), .A1(n917), .B0(r852[8]), .B1(n929), .Y(n622)
         );
  INVX1 U1236 ( .A(n593), .Y(n1033) );
  AOI22X1 U1237 ( .A0(n594), .A1(n959), .B0(opd[0]), .B1(n958), .Y(n593) );
  OAI221XL U1238 ( .A0(n931), .A1(n97), .B0(n495), .B1(n161), .C0(n595), .Y(
        n594) );
  AOI22X1 U1239 ( .A0(r1477[0]), .A1(n955), .B0(r852[0]), .B1(n952), .Y(n595)
         );
  INVX1 U1240 ( .A(n590), .Y(n1030) );
  AOI22X1 U1241 ( .A0(n591), .A1(n960), .B0(opd[1]), .B1(n958), .Y(n590) );
  OAI221XL U1242 ( .A0(n931), .A1(n96), .B0(n495), .B1(n160), .C0(n592), .Y(
        n591) );
  AOI22X1 U1243 ( .A0(r1477[1]), .A1(n955), .B0(r852[1]), .B1(n953), .Y(n592)
         );
  INVX1 U1244 ( .A(n587), .Y(n1027) );
  AOI22X1 U1245 ( .A0(n588), .A1(n960), .B0(opd[2]), .B1(n958), .Y(n587) );
  OAI221XL U1246 ( .A0(n931), .A1(n95), .B0(n495), .B1(n159), .C0(n589), .Y(
        n588) );
  AOI22X1 U1247 ( .A0(r1477[2]), .A1(n955), .B0(r852[2]), .B1(n953), .Y(n589)
         );
  INVX1 U1248 ( .A(n584), .Y(n1024) );
  AOI22X1 U1249 ( .A0(n585), .A1(n960), .B0(opd[3]), .B1(n958), .Y(n584) );
  OAI221XL U1250 ( .A0(n931), .A1(n94), .B0(n495), .B1(n158), .C0(n586), .Y(
        n585) );
  AOI22X1 U1251 ( .A0(r1477[3]), .A1(n955), .B0(r852[3]), .B1(n953), .Y(n586)
         );
  INVX1 U1252 ( .A(n581), .Y(n1021) );
  AOI22X1 U1253 ( .A0(n582), .A1(n959), .B0(opd[4]), .B1(n958), .Y(n581) );
  OAI221XL U1254 ( .A0(n931), .A1(n93), .B0(n495), .B1(n157), .C0(n583), .Y(
        n582) );
  AOI22X1 U1255 ( .A0(r1477[4]), .A1(n955), .B0(r852[4]), .B1(n953), .Y(n583)
         );
  INVX1 U1256 ( .A(n578), .Y(n1018) );
  AOI22X1 U1257 ( .A0(n579), .A1(n960), .B0(opd[5]), .B1(n958), .Y(n578) );
  OAI221XL U1258 ( .A0(n931), .A1(n92), .B0(n495), .B1(n156), .C0(n580), .Y(
        n579) );
  AOI22X1 U1259 ( .A0(r1477[5]), .A1(n955), .B0(r852[5]), .B1(n953), .Y(n580)
         );
  INVX1 U1260 ( .A(n575), .Y(n1015) );
  AOI22X1 U1261 ( .A0(n576), .A1(n960), .B0(opd[6]), .B1(n958), .Y(n575) );
  OAI221XL U1262 ( .A0(n931), .A1(n91), .B0(n495), .B1(n155), .C0(n577), .Y(
        n576) );
  AOI22X1 U1263 ( .A0(r1477[6]), .A1(n955), .B0(r852[6]), .B1(n953), .Y(n577)
         );
  INVX1 U1264 ( .A(n572), .Y(n1012) );
  AOI22X1 U1265 ( .A0(n573), .A1(n960), .B0(opd[7]), .B1(n958), .Y(n572) );
  OAI221XL U1266 ( .A0(n931), .A1(n90), .B0(n495), .B1(n154), .C0(n574), .Y(
        n573) );
  AOI22X1 U1267 ( .A0(r1477[7]), .A1(n955), .B0(r852[7]), .B1(n953), .Y(n574)
         );
  INVX1 U1268 ( .A(n569), .Y(n1009) );
  AOI22X1 U1269 ( .A0(n570), .A1(n960), .B0(opd[8]), .B1(n958), .Y(n569) );
  OAI221XL U1270 ( .A0(n931), .A1(n89), .B0(n495), .B1(n153), .C0(n571), .Y(
        n570) );
  AOI22X1 U1271 ( .A0(r1477[8]), .A1(n955), .B0(r852[8]), .B1(n952), .Y(n571)
         );
  INVX1 U1272 ( .A(n566), .Y(n1006) );
  AOI22X1 U1273 ( .A0(n567), .A1(n959), .B0(opd[9]), .B1(n958), .Y(n566) );
  OAI221XL U1274 ( .A0(n931), .A1(n88), .B0(n495), .B1(n152), .C0(n568), .Y(
        n567) );
  AOI22X1 U1275 ( .A0(r1477[9]), .A1(n955), .B0(r852[9]), .B1(n953), .Y(n568)
         );
  INVX1 U1276 ( .A(n563), .Y(n1003) );
  AOI22X1 U1277 ( .A0(n564), .A1(n960), .B0(opd[10]), .B1(n545), .Y(n563) );
  OAI221XL U1278 ( .A0(n931), .A1(n87), .B0(n495), .B1(n151), .C0(n565), .Y(
        n564) );
  AOI22X1 U1279 ( .A0(r1477[10]), .A1(n955), .B0(r852[10]), .B1(n952), .Y(n565) );
  INVX1 U1280 ( .A(n560), .Y(n1000) );
  AOI22X1 U1281 ( .A0(n561), .A1(n960), .B0(opd[11]), .B1(n958), .Y(n560) );
  OAI221XL U1282 ( .A0(n931), .A1(n86), .B0(n495), .B1(n150), .C0(n562), .Y(
        n561) );
  AOI22X1 U1283 ( .A0(r1477[11]), .A1(n954), .B0(r852[11]), .B1(n953), .Y(n562) );
  INVX1 U1284 ( .A(n557), .Y(n997) );
  AOI22X1 U1285 ( .A0(n558), .A1(n960), .B0(opd[12]), .B1(n545), .Y(n557) );
  OAI221XL U1286 ( .A0(n931), .A1(n85), .B0(n495), .B1(n149), .C0(n559), .Y(
        n558) );
  AOI22X1 U1287 ( .A0(r1477[12]), .A1(n954), .B0(r852[12]), .B1(n952), .Y(n559) );
  INVX1 U1288 ( .A(n554), .Y(n994) );
  AOI22X1 U1289 ( .A0(n555), .A1(n959), .B0(opd[13]), .B1(n545), .Y(n554) );
  OAI221XL U1290 ( .A0(n931), .A1(n84), .B0(n495), .B1(n148), .C0(n556), .Y(
        n555) );
  AOI22X1 U1291 ( .A0(r1477[13]), .A1(n954), .B0(r852[13]), .B1(n953), .Y(n556) );
  INVX1 U1292 ( .A(n551), .Y(n991) );
  AOI22X1 U1293 ( .A0(n552), .A1(n960), .B0(opd[14]), .B1(n958), .Y(n551) );
  OAI221XL U1294 ( .A0(n931), .A1(n83), .B0(n495), .B1(n147), .C0(n553), .Y(
        n552) );
  AOI22X1 U1295 ( .A0(r1477[14]), .A1(n954), .B0(r852[14]), .B1(n953), .Y(n553) );
  INVX1 U1296 ( .A(n547), .Y(n988) );
  AOI22X1 U1297 ( .A0(n548), .A1(n960), .B0(opd[15]), .B1(n545), .Y(n547) );
  OAI221XL U1298 ( .A0(n931), .A1(n82), .B0(n495), .B1(n146), .C0(n550), .Y(
        n548) );
  AOI22X1 U1299 ( .A0(r1477[15]), .A1(n954), .B0(r852[15]), .B1(n952), .Y(n550) );
  NAND2X1 U1300 ( .A(high[1]), .B(high[0]), .Y(n525) );
  NOR3X1 U1301 ( .A(state[2]), .B(state[3]), .C(n1063), .Y(n704) );
  NAND3X1 U1302 ( .A(n1111), .B(n1113), .C(ct_state[1]), .Y(n295) );
  OAI2BB2X1 U1303 ( .B0(n511), .B1(n508), .A0N(n1041), .A1N(out_p1[4]), .Y(
        n762) );
  AOI211X1 U1304 ( .A0(high[0]), .A1(n1088), .B0(n512), .C0(n1089), .Y(n511)
         );
  INVX1 U1305 ( .A(n513), .Y(n1089) );
  NOR3X1 U1306 ( .A(high[0]), .B(high[1]), .C(n532), .Y(n524) );
  AOI222X1 U1307 ( .A0(r1477[0]), .A1(n1060), .B0(low_mag[0]), .B1(n1040), 
        .C0(r1633[0]), .C1(n954), .Y(n462) );
  AOI222X1 U1308 ( .A0(r1477[1]), .A1(n1060), .B0(low_mag[1]), .B1(n1040), 
        .C0(r1633[1]), .C1(n954), .Y(n456) );
  AOI222X1 U1309 ( .A0(r1477[2]), .A1(n1060), .B0(low_mag[2]), .B1(n1040), 
        .C0(r1633[2]), .C1(n954), .Y(n450) );
  AOI222X1 U1310 ( .A0(r1477[3]), .A1(n1060), .B0(low_mag[3]), .B1(n1040), 
        .C0(r1633[3]), .C1(n954), .Y(n444) );
  AOI222X1 U1311 ( .A0(r1477[4]), .A1(n1060), .B0(low_mag[4]), .B1(n1040), 
        .C0(r1633[4]), .C1(n954), .Y(n438) );
  AOI222X1 U1312 ( .A0(r1477[5]), .A1(n1060), .B0(low_mag[5]), .B1(n1040), 
        .C0(r1633[5]), .C1(n955), .Y(n432) );
  AOI222X1 U1313 ( .A0(r1477[6]), .A1(n1060), .B0(low_mag[6]), .B1(n1040), 
        .C0(r1633[6]), .C1(n955), .Y(n426) );
  AOI222X1 U1314 ( .A0(r1477[7]), .A1(n1060), .B0(low_mag[7]), .B1(n1040), 
        .C0(r1633[7]), .C1(n955), .Y(n420) );
  AOI222X1 U1315 ( .A0(r1477[8]), .A1(n1060), .B0(low_mag[8]), .B1(n1040), 
        .C0(r1633[8]), .C1(n955), .Y(n414) );
  AOI222X1 U1316 ( .A0(r1477[9]), .A1(n1060), .B0(low_mag[9]), .B1(n1040), 
        .C0(r1633[9]), .C1(n955), .Y(n408) );
  AOI222X1 U1317 ( .A0(r1477[10]), .A1(n1060), .B0(low_mag[10]), .B1(n1040), 
        .C0(r1633[10]), .C1(n955), .Y(n402) );
  AOI222X1 U1318 ( .A0(r1477[11]), .A1(n1060), .B0(low_mag[11]), .B1(n1040), 
        .C0(r1633[11]), .C1(n955), .Y(n396) );
  AOI222X1 U1319 ( .A0(r1477[12]), .A1(n1060), .B0(low_mag[12]), .B1(n1040), 
        .C0(r1633[12]), .C1(n955), .Y(n390) );
  AOI222X1 U1320 ( .A0(r1477[13]), .A1(n1060), .B0(low_mag[13]), .B1(n1040), 
        .C0(r1633[13]), .C1(n955), .Y(n384) );
  AOI222X1 U1321 ( .A0(r1477[14]), .A1(n1060), .B0(low_mag[14]), .B1(n1040), 
        .C0(r1633[14]), .C1(n955), .Y(n378) );
  AOI222X1 U1322 ( .A0(n1060), .A1(r1477[15]), .B0(low_mag[15]), .B1(n1040), 
        .C0(n955), .C1(r1633[15]), .Y(n372) );
  NOR3X1 U1323 ( .A(n1068), .B(gt_state[2]), .C(n1071), .Y(n364) );
  NOR3X1 U1324 ( .A(gt_state[1]), .B(gt_state[2]), .C(n1068), .Y(n301) );
  OAI32X1 U1325 ( .A0(n659), .A1(cmpr_16_), .A2(cmpf_16_), .B0(n1112), .B1(
        n1035), .Y(n784) );
  INVX1 U1326 ( .A(n659), .Y(n1112) );
  NOR3X1 U1327 ( .A(gt_state[0]), .B(gt_state[2]), .C(n1071), .Y(n366) );
  NAND2X1 U1328 ( .A(low[1]), .B(n1118), .Y(n532) );
  AOI31X1 U1329 ( .A0(ct_state[2]), .A1(n1114), .A2(n298), .B0(n491), .Y(n670)
         );
  INVX1 U1330 ( .A(clear_ct), .Y(n1114) );
  NOR3X1 U1331 ( .A(ct_state[0]), .B(ct_state[1]), .C(n1113), .Y(n491) );
  NOR2X1 U1332 ( .A(n1111), .B(ct_state[1]), .Y(n298) );
  NAND3X1 U1333 ( .A(n1068), .B(n1071), .C(gt_state[2]), .Y(n541) );
  NOR3X1 U1334 ( .A(n1118), .B(high[0]), .C(n1117), .Y(n530) );
  NAND2X1 U1335 ( .A(high[1]), .B(n1090), .Y(n529) );
  NAND4X1 U1336 ( .A(n186), .B(n185), .C(n688), .D(n689), .Y(n655) );
  NOR2X1 U1337 ( .A(out_p2[3]), .B(out_p2[2]), .Y(n688) );
  NOR4X1 U1338 ( .A(out_p2[7]), .B(out_p2[6]), .C(out_p2[5]), .D(out_p2[4]), 
        .Y(n689) );
  NAND3X1 U1339 ( .A(ct_state[1]), .B(n1113), .C(ct_state[0]), .Y(n659) );
  NAND3X1 U1340 ( .A(n651), .B(n506), .C(n687), .Y(n685) );
  NAND4X1 U1341 ( .A(seen_quiet), .B(n656), .C(n657), .D(n655), .Y(n687) );
  INVX1 U1342 ( .A(high[0]), .Y(n1090) );
  INVX1 U1343 ( .A(gt_state[0]), .Y(n1068) );
  NAND3X1 U1344 ( .A(state[2]), .B(n1063), .C(state[3]), .Y(n653) );
  INVX1 U1345 ( .A(low[1]), .Y(n1117) );
  NOR2X1 U1346 ( .A(high[2]), .B(low[2]), .Y(n493) );
  NOR4X1 U1347 ( .A(n695), .B(out_p2[7]), .C(n697), .D(n698), .Y(n694) );
  XOR2X1 U1348 ( .A(out_p2[6]), .B(out_p1[6]), .Y(n695) );
  XOR2X1 U1349 ( .A(out_p2[5]), .B(out_p1[5]), .Y(n698) );
  XOR2X1 U1350 ( .A(out_p2[4]), .B(out_p1[4]), .Y(n697) );
  INVX1 U1351 ( .A(ct_state[2]), .Y(n1113) );
  INVX1 U1352 ( .A(gt_state[1]), .Y(n1071) );
  INVX1 U1353 ( .A(high[1]), .Y(n1088) );
  NAND3X1 U1354 ( .A(gt_state[0]), .B(n1071), .C(gt_state[2]), .Y(n293) );
  INVX1 U1355 ( .A(low[0]), .Y(n1118) );
  OAI22X1 U1356 ( .A0(N423), .A1(n1120), .B0(n533), .B1(n508), .Y(n770) );
  AOI211X1 U1357 ( .A0(n530), .A1(high[1]), .B0(n512), .C0(n534), .Y(n533) );
  AOI21X1 U1358 ( .A0(high[0]), .A1(n525), .B0(low[0]), .Y(n534) );
  OAI22X1 U1359 ( .A0(N423), .A1(n1119), .B0(n526), .B1(n508), .Y(n767) );
  NOR3X1 U1360 ( .A(n527), .B(n524), .C(n528), .Y(n526) );
  OAI32X1 U1361 ( .A0(n531), .A1(low[1]), .A2(n1090), .B0(n532), .B1(n525), 
        .Y(n527) );
  OAI21XL U1362 ( .A0(low[1]), .A1(n529), .B0(n1091), .Y(n528) );
  OAI22X1 U1363 ( .A0(n504), .A1(n1120), .B0(n944), .B1(n186), .Y(n769) );
  OAI22X1 U1364 ( .A0(n504), .A1(n1119), .B0(n944), .B1(n185), .Y(n766) );
  INVX1 U1365 ( .A(out_p1[0]), .Y(n1120) );
  INVX1 U1366 ( .A(out_p1[1]), .Y(n1119) );
  XOR2X1 U1367 ( .A(n1119), .B(out_p2[1]), .Y(n691) );
  XOR2X1 U1368 ( .A(n1120), .B(out_p2[0]), .Y(n692) );
  NOR2X1 U1369 ( .A(n699), .B(n700), .Y(n693) );
  INVX1 U1370 ( .A(n507), .Y(n1053) );
  AOI22X1 U1371 ( .A0(n944), .A1(out_p1[5]), .B0(n504), .B1(out_p2[5]), .Y(
        n507) );
  INVX1 U1372 ( .A(cmpf_16_), .Y(n1116) );
  NAND4BXL U1373 ( .AN(clear_gt), .B(gt_state[1]), .C(gt_state[2]), .D(n1068), 
        .Y(n673) );
  AOI22X1 U1374 ( .A0(n1052), .A1(r770[0]), .B0(r697[0]), .B1(n1057), .Y(n459)
         );
  AOI22X1 U1375 ( .A0(n1052), .A1(r770[1]), .B0(r697[1]), .B1(n1057), .Y(n453)
         );
  AOI22X1 U1376 ( .A0(n1052), .A1(r770[2]), .B0(r697[2]), .B1(n1057), .Y(n447)
         );
  AOI22X1 U1377 ( .A0(n1052), .A1(r770[3]), .B0(r697[3]), .B1(n1057), .Y(n441)
         );
  AOI22X1 U1378 ( .A0(n1052), .A1(r770[4]), .B0(r697[4]), .B1(n1057), .Y(n435)
         );
  AOI22X1 U1379 ( .A0(n1052), .A1(r770[5]), .B0(r697[5]), .B1(n1057), .Y(n429)
         );
  AOI22X1 U1380 ( .A0(n1052), .A1(r770[6]), .B0(r697[6]), .B1(n1057), .Y(n423)
         );
  AOI22X1 U1381 ( .A0(n1052), .A1(r770[7]), .B0(r697[7]), .B1(n1057), .Y(n417)
         );
  AOI22X1 U1382 ( .A0(n1052), .A1(r770[8]), .B0(r697[8]), .B1(n1057), .Y(n411)
         );
  AOI22X1 U1383 ( .A0(n1052), .A1(r770[9]), .B0(r697[9]), .B1(n1057), .Y(n405)
         );
  AOI22X1 U1384 ( .A0(n1052), .A1(r770[10]), .B0(r697[10]), .B1(n1057), .Y(
        n399) );
  AOI22X1 U1385 ( .A0(n1052), .A1(r770[11]), .B0(r697[11]), .B1(n951), .Y(n393) );
  AOI22X1 U1386 ( .A0(n1052), .A1(r770[12]), .B0(r697[12]), .B1(n1057), .Y(
        n387) );
  AOI22X1 U1387 ( .A0(n1052), .A1(r770[13]), .B0(r697[13]), .B1(n1057), .Y(
        n381) );
  AOI22X1 U1388 ( .A0(n1052), .A1(r770[14]), .B0(r697[14]), .B1(n1057), .Y(
        n375) );
  AOI22X1 U1389 ( .A0(n1052), .A1(r770[15]), .B0(r697[15]), .B1(n1057), .Y(
        n369) );
  AOI22X1 U1390 ( .A0(n924), .A1(r1336[0]), .B0(r1209[0]), .B1(n956), .Y(n461)
         );
  AOI22X1 U1391 ( .A0(n924), .A1(r1336[1]), .B0(r1209[1]), .B1(n956), .Y(n455)
         );
  AOI22X1 U1392 ( .A0(n924), .A1(r1336[2]), .B0(r1209[2]), .B1(n956), .Y(n449)
         );
  AOI22X1 U1393 ( .A0(n924), .A1(r1336[3]), .B0(r1209[3]), .B1(n956), .Y(n443)
         );
  AOI22X1 U1394 ( .A0(n924), .A1(r1336[4]), .B0(r1209[4]), .B1(n956), .Y(n437)
         );
  AOI22X1 U1395 ( .A0(n924), .A1(r1336[5]), .B0(r1209[5]), .B1(n956), .Y(n431)
         );
  AOI22X1 U1396 ( .A0(n924), .A1(r1336[6]), .B0(r1209[6]), .B1(n956), .Y(n425)
         );
  AOI22X1 U1397 ( .A0(n924), .A1(r1336[7]), .B0(r1209[7]), .B1(n956), .Y(n419)
         );
  AOI22X1 U1398 ( .A0(n924), .A1(r1336[8]), .B0(r1209[8]), .B1(n956), .Y(n413)
         );
  AOI22X1 U1399 ( .A0(n924), .A1(r1336[9]), .B0(r1209[9]), .B1(n956), .Y(n407)
         );
  AOI22X1 U1400 ( .A0(n924), .A1(r1336[10]), .B0(r1209[10]), .B1(n957), .Y(
        n401) );
  AOI22X1 U1401 ( .A0(n924), .A1(r1336[11]), .B0(r1209[11]), .B1(n957), .Y(
        n395) );
  AOI22X1 U1402 ( .A0(n924), .A1(r1336[12]), .B0(r1209[12]), .B1(n957), .Y(
        n389) );
  AOI22X1 U1403 ( .A0(n924), .A1(r1336[13]), .B0(r1209[13]), .B1(n957), .Y(
        n383) );
  AOI22X1 U1404 ( .A0(n924), .A1(r1336[14]), .B0(r1209[14]), .B1(n957), .Y(
        n377) );
  AOI22X1 U1405 ( .A0(r941[15]), .A1(n952), .B0(r852[15]), .B1(n1058), .Y(n370) );
  OAI2BB2X1 U1406 ( .B0(n508), .B1(n525), .A0N(n1041), .A1N(out_p1[6]), .Y(
        n783) );
  NAND4X1 U1407 ( .A(n291), .B(n1041), .C(n488), .D(n703), .Y(N302) );
  AOI211X1 U1408 ( .A0(save_state[0]), .A1(n677), .B0(n1043), .C0(n937), .Y(
        n703) );
  INVX1 U1409 ( .A(ct_state[0]), .Y(n1111) );
  OAI2BB2X1 U1410 ( .B0(n649), .B1(n503), .A0N(n649), .A1N(clear_flag), .Y(
        n779) );
  NAND4X1 U1411 ( .A(n701), .B(n927), .C(n658), .D(n702), .Y(N303) );
  NAND2BX1 U1412 ( .AN(n675), .B(gt_done), .Y(n291) );
  OAI2BB2X1 U1413 ( .B0(n521), .B1(n508), .A0N(n1041), .A1N(out_p1[2]), .Y(
        n764) );
  AOI211X1 U1414 ( .A0(low[0]), .A1(n522), .B0(n523), .C0(n524), .Y(n521) );
  OAI21XL U1415 ( .A0(n1117), .A1(n525), .B0(n513), .Y(n522) );
  OAI2BB2X1 U1416 ( .B0(n516), .B1(n508), .A0N(n1041), .A1N(out_p1[3]), .Y(
        n763) );
  AOI31X1 U1417 ( .A0(n517), .A1(n1088), .A2(low[1]), .B0(n518), .Y(n516) );
  XOR2X1 U1418 ( .A(low[0]), .B(high[0]), .Y(n517) );
  NAND3X1 U1419 ( .A(n671), .B(n295), .C(n670), .Y(N670) );
  NAND3BX1 U1420 ( .AN(ct_state[1]), .B(n1111), .C(start_ct), .Y(n671) );
  OAI2BB2X1 U1421 ( .B0(n654), .B1(n655), .A0N(n654), .A1N(seen_quiet), .Y(
        n782) );
  NAND2X1 U1422 ( .A(n656), .B(n657), .Y(n654) );
  NAND3X1 U1423 ( .A(n360), .B(n1041), .C(n684), .Y(N305) );
  AOI21X1 U1424 ( .A0(save_state[3]), .A1(n677), .B0(n685), .Y(n684) );
  OAI2BB1X1 U1425 ( .A0N(n1040), .A1N(n493), .B0(n488), .Y(n492) );
  NAND3X1 U1426 ( .A(n541), .B(n1070), .C(n674), .Y(N518) );
  NAND3X1 U1427 ( .A(n1068), .B(n1071), .C(start_gt), .Y(n674) );
  INVX1 U1428 ( .A(state[4]), .Y(n1063) );
  OAI2BB2X1 U1429 ( .B0(n506), .B1(n186), .A0N(dout[0]), .A1N(n506), .Y(n768)
         );
  OAI2BB2X1 U1430 ( .B0(n506), .B1(n185), .A0N(dout[1]), .A1N(n506), .Y(n765)
         );
  NAND2X1 U1431 ( .A(n650), .B(n651), .Y(n780) );
  OAI21XL U1432 ( .A0(n652), .A1(n653), .B0(digit_clk), .Y(n650) );
  OAI2BB1X1 U1433 ( .A0N(n1041), .A1N(out_p1[5]), .B0(n508), .Y(n761) );
  OAI2BB1X1 U1434 ( .A0N(n487), .A1N(clear_ct), .B0(n488), .Y(n757) );
  XOR2X1 U1435 ( .A(out_p2[2]), .B(out_p1[2]), .Y(n699) );
  XOR2X1 U1436 ( .A(out_p2[3]), .B(out_p1[3]), .Y(n700) );
  OAI2BB1X1 U1437 ( .A0N(n541), .A1N(gt), .B0(n542), .Y(n777) );
  NAND4BXL U1438 ( .AN(n541), .B(cmpc_16_), .C(cmpd_16_), .D(cmpb_16_), .Y(
        n542) );
  OAI2BB1X1 U1439 ( .A0N(n290), .A1N(clear_gt), .B0(n291), .Y(n705) );
  XOR2X1 U1440 ( .A(low[0]), .B(high[1]), .Y(n531) );
  INVX1 U1441 ( .A(n686), .Y(n1036) );
  AOI21X1 U1442 ( .A0(n677), .A1(save_state[2]), .B0(n685), .Y(n686) );
  INVX1 U1443 ( .A(n519), .Y(n1047) );
  AOI22X1 U1444 ( .A0(n937), .A1(out_p2[2]), .B0(dout[2]), .B1(n506), .Y(n519)
         );
  INVX1 U1445 ( .A(n514), .Y(n1046) );
  AOI22X1 U1446 ( .A0(n937), .A1(out_p2[3]), .B0(dout[3]), .B1(n506), .Y(n514)
         );
  INVX1 U1447 ( .A(n509), .Y(n1045) );
  AOI22X1 U1448 ( .A0(n937), .A1(out_p2[4]), .B0(dout[4]), .B1(n506), .Y(n509)
         );
  INVX1 U1449 ( .A(n505), .Y(n1044) );
  AOI22X1 U1450 ( .A0(n937), .A1(out_p2[5]), .B0(dout[5]), .B1(n506), .Y(n505)
         );
  INVX1 U1451 ( .A(n647), .Y(n1048) );
  AOI22X1 U1452 ( .A0(n937), .A1(out_p2[6]), .B0(dout[6]), .B1(n506), .Y(n647)
         );
  INVX1 U1453 ( .A(n489), .Y(n1109) );
  AOI21X1 U1454 ( .A0(n490), .A1(ct_done), .B0(n491), .Y(n489) );
  NAND3X1 U1455 ( .A(ct_state[2]), .B(n298), .C(clear_ct), .Y(n490) );
  INVX1 U1456 ( .A(n515), .Y(n1055) );
  AOI22X1 U1457 ( .A0(n944), .A1(out_p1[3]), .B0(n504), .B1(out_p2[3]), .Y(
        n515) );
  INVX1 U1458 ( .A(n520), .Y(n1056) );
  AOI22X1 U1459 ( .A0(n944), .A1(out_p1[2]), .B0(n504), .B1(out_p2[2]), .Y(
        n520) );
  INVX1 U1460 ( .A(n510), .Y(n1054) );
  AOI22X1 U1461 ( .A0(n944), .A1(out_p1[4]), .B0(n504), .B1(out_p2[4]), .Y(
        n510) );
  INVX1 U1462 ( .A(n648), .Y(n1037) );
  AOI22X1 U1463 ( .A0(n944), .A1(out_p1[6]), .B0(n504), .B1(out_p2[6]), .Y(
        n648) );
  XOR2X1 U1464 ( .A(dout_flag), .B(n937), .Y(n781) );
  INVX1 U1465 ( .A(high_mag[0]), .Y(n1087) );
  INVX1 U1466 ( .A(high_mag[1]), .Y(n1086) );
  INVX1 U1467 ( .A(high_mag[2]), .Y(n1085) );
  INVX1 U1468 ( .A(high_mag[3]), .Y(n1084) );
  INVX1 U1469 ( .A(high_mag[4]), .Y(n1083) );
  INVX1 U1470 ( .A(high_mag[5]), .Y(n1082) );
  INVX1 U1471 ( .A(high_mag[6]), .Y(n1081) );
  INVX1 U1472 ( .A(high_mag[7]), .Y(n1080) );
  INVX1 U1473 ( .A(high_mag[8]), .Y(n1079) );
  INVX1 U1474 ( .A(high_mag[9]), .Y(n1078) );
  INVX1 U1475 ( .A(high_mag[10]), .Y(n1077) );
  INVX1 U1476 ( .A(high_mag[11]), .Y(n1076) );
  INVX1 U1477 ( .A(high_mag[12]), .Y(n1075) );
  INVX1 U1478 ( .A(high_mag[13]), .Y(n1074) );
  INVX1 U1479 ( .A(high_mag[14]), .Y(n1073) );
  INVX1 U1480 ( .A(high_mag[15]), .Y(n1072) );
  OAI2BB1X1 U1481 ( .A0N(gt_done), .A1N(n292), .B0(n293), .Y(n706) );
  NAND4X1 U1482 ( .A(gt_state[1]), .B(gt_state[2]), .C(clear_gt), .D(n1068), 
        .Y(n292) );
  INVX1 U1483 ( .A(ok), .Y(n1035) );
  INVX1 U1484 ( .A(din[0]), .Y(n986) );
  INVX1 U1485 ( .A(din[1]), .Y(n985) );
  INVX1 U1486 ( .A(din[2]), .Y(n984) );
  INVX1 U1487 ( .A(din[3]), .Y(n983) );
  INVX1 U1488 ( .A(din[4]), .Y(n982) );
  INVX1 U1489 ( .A(din[5]), .Y(n981) );
  INVX1 U1490 ( .A(din[6]), .Y(n980) );
  INVX1 U1491 ( .A(din[7]), .Y(n979) );
  INVX1 U1492 ( .A(din[8]), .Y(n978) );
  INVX1 U1493 ( .A(din[9]), .Y(n977) );
  INVX1 U1494 ( .A(din[10]), .Y(n976) );
  INVX1 U1495 ( .A(din[11]), .Y(n975) );
  INVX1 U1496 ( .A(din[12]), .Y(n974) );
  INVX1 U1497 ( .A(din[13]), .Y(n973) );
  INVX1 U1498 ( .A(din[14]), .Y(n972) );
  INVX1 U1499 ( .A(din[15]), .Y(n971) );
  NOR2BX1 U1500 ( .AN(address[2]), .B(address[3]), .Y(n664) );
  NOR2X1 U1501 ( .A(address[2]), .B(address[3]), .Y(n661) );
  OAI22X1 U1502 ( .A0(n986), .A1(n662), .B0(n940), .B1(n177), .Y(n801) );
  OAI22X1 U1503 ( .A0(n985), .A1(n662), .B0(n940), .B1(n176), .Y(n802) );
  OAI22X1 U1504 ( .A0(n984), .A1(n662), .B0(n940), .B1(n175), .Y(n803) );
  OAI22X1 U1505 ( .A0(n983), .A1(n662), .B0(n940), .B1(n174), .Y(n804) );
  OAI22X1 U1506 ( .A0(n982), .A1(n662), .B0(n940), .B1(n173), .Y(n805) );
  OAI22X1 U1507 ( .A0(n981), .A1(n662), .B0(n940), .B1(n172), .Y(n806) );
  OAI22X1 U1508 ( .A0(n980), .A1(n662), .B0(n940), .B1(n171), .Y(n807) );
  OAI22X1 U1509 ( .A0(n979), .A1(n662), .B0(n940), .B1(n170), .Y(n808) );
  OAI22X1 U1510 ( .A0(n978), .A1(n662), .B0(n940), .B1(n169), .Y(n809) );
  OAI22X1 U1511 ( .A0(n977), .A1(n662), .B0(n940), .B1(n168), .Y(n810) );
  OAI22X1 U1512 ( .A0(n976), .A1(n662), .B0(n940), .B1(n167), .Y(n811) );
  OAI22X1 U1513 ( .A0(n975), .A1(n662), .B0(n940), .B1(n166), .Y(n812) );
  OAI22X1 U1514 ( .A0(n974), .A1(n662), .B0(n940), .B1(n165), .Y(n813) );
  OAI22X1 U1515 ( .A0(n973), .A1(n662), .B0(n940), .B1(n164), .Y(n814) );
  OAI22X1 U1516 ( .A0(n972), .A1(n662), .B0(n940), .B1(n163), .Y(n815) );
  OAI22X1 U1517 ( .A0(n971), .A1(n662), .B0(n940), .B1(n162), .Y(n816) );
  OAI22X1 U1518 ( .A0(n986), .A1(n663), .B0(n942), .B1(n161), .Y(n817) );
  OAI22X1 U1519 ( .A0(n985), .A1(n663), .B0(n942), .B1(n160), .Y(n818) );
  OAI22X1 U1520 ( .A0(n984), .A1(n663), .B0(n942), .B1(n159), .Y(n819) );
  OAI22X1 U1521 ( .A0(n983), .A1(n663), .B0(n942), .B1(n158), .Y(n820) );
  OAI22X1 U1522 ( .A0(n982), .A1(n663), .B0(n942), .B1(n157), .Y(n821) );
  OAI22X1 U1523 ( .A0(n981), .A1(n663), .B0(n942), .B1(n156), .Y(n822) );
  OAI22X1 U1524 ( .A0(n980), .A1(n663), .B0(n942), .B1(n155), .Y(n823) );
  OAI22X1 U1525 ( .A0(n979), .A1(n663), .B0(n942), .B1(n154), .Y(n824) );
  OAI22X1 U1526 ( .A0(n978), .A1(n663), .B0(n942), .B1(n153), .Y(n825) );
  OAI22X1 U1527 ( .A0(n977), .A1(n663), .B0(n942), .B1(n152), .Y(n826) );
  OAI22X1 U1528 ( .A0(n976), .A1(n663), .B0(n942), .B1(n151), .Y(n827) );
  OAI22X1 U1529 ( .A0(n975), .A1(n663), .B0(n942), .B1(n150), .Y(n828) );
  OAI22X1 U1530 ( .A0(n974), .A1(n663), .B0(n942), .B1(n149), .Y(n829) );
  OAI22X1 U1531 ( .A0(n973), .A1(n663), .B0(n942), .B1(n148), .Y(n830) );
  OAI22X1 U1532 ( .A0(n972), .A1(n663), .B0(n942), .B1(n147), .Y(n831) );
  OAI22X1 U1533 ( .A0(n971), .A1(n663), .B0(n942), .B1(n146), .Y(n832) );
  OAI22X1 U1534 ( .A0(n986), .A1(n665), .B0(n943), .B1(n145), .Y(n833) );
  OAI22X1 U1535 ( .A0(n985), .A1(n665), .B0(n943), .B1(n144), .Y(n834) );
  OAI22X1 U1536 ( .A0(n984), .A1(n665), .B0(n943), .B1(n143), .Y(n835) );
  OAI22X1 U1537 ( .A0(n983), .A1(n665), .B0(n943), .B1(n142), .Y(n836) );
  OAI22X1 U1538 ( .A0(n982), .A1(n665), .B0(n943), .B1(n141), .Y(n837) );
  OAI22X1 U1539 ( .A0(n981), .A1(n665), .B0(n943), .B1(n140), .Y(n838) );
  OAI22X1 U1540 ( .A0(n980), .A1(n665), .B0(n943), .B1(n139), .Y(n839) );
  OAI22X1 U1541 ( .A0(n979), .A1(n665), .B0(n943), .B1(n138), .Y(n840) );
  OAI22X1 U1542 ( .A0(n978), .A1(n665), .B0(n943), .B1(n137), .Y(n841) );
  OAI22X1 U1543 ( .A0(n977), .A1(n665), .B0(n943), .B1(n136), .Y(n842) );
  OAI22X1 U1544 ( .A0(n976), .A1(n665), .B0(n943), .B1(n135), .Y(n843) );
  OAI22X1 U1545 ( .A0(n975), .A1(n665), .B0(n943), .B1(n134), .Y(n844) );
  OAI22X1 U1546 ( .A0(n974), .A1(n665), .B0(n943), .B1(n133), .Y(n845) );
  OAI22X1 U1547 ( .A0(n973), .A1(n665), .B0(n943), .B1(n132), .Y(n846) );
  OAI22X1 U1548 ( .A0(n972), .A1(n665), .B0(n943), .B1(n131), .Y(n847) );
  OAI22X1 U1549 ( .A0(n971), .A1(n665), .B0(n943), .B1(n130), .Y(n848) );
  OAI22X1 U1550 ( .A0(n986), .A1(n666), .B0(n938), .B1(n129), .Y(n849) );
  OAI22X1 U1551 ( .A0(n985), .A1(n666), .B0(n938), .B1(n128), .Y(n850) );
  OAI22X1 U1552 ( .A0(n984), .A1(n666), .B0(n938), .B1(n127), .Y(n851) );
  OAI22X1 U1553 ( .A0(n983), .A1(n666), .B0(n938), .B1(n126), .Y(n852) );
  OAI22X1 U1554 ( .A0(n982), .A1(n666), .B0(n938), .B1(n125), .Y(n853) );
  OAI22X1 U1555 ( .A0(n981), .A1(n666), .B0(n938), .B1(n124), .Y(n854) );
  OAI22X1 U1556 ( .A0(n980), .A1(n666), .B0(n938), .B1(n123), .Y(n855) );
  OAI22X1 U1557 ( .A0(n979), .A1(n666), .B0(n938), .B1(n122), .Y(n856) );
  OAI22X1 U1558 ( .A0(n978), .A1(n666), .B0(n938), .B1(n121), .Y(n857) );
  OAI22X1 U1559 ( .A0(n977), .A1(n666), .B0(n938), .B1(n120), .Y(n858) );
  OAI22X1 U1560 ( .A0(n976), .A1(n666), .B0(n938), .B1(n119), .Y(n859) );
  OAI22X1 U1561 ( .A0(n975), .A1(n666), .B0(n938), .B1(n118), .Y(n860) );
  OAI22X1 U1562 ( .A0(n974), .A1(n666), .B0(n938), .B1(n117), .Y(n861) );
  OAI22X1 U1563 ( .A0(n973), .A1(n666), .B0(n938), .B1(n116), .Y(n862) );
  OAI22X1 U1564 ( .A0(n972), .A1(n666), .B0(n938), .B1(n115), .Y(n863) );
  OAI22X1 U1565 ( .A0(n971), .A1(n666), .B0(n938), .B1(n114), .Y(n864) );
  OAI22X1 U1566 ( .A0(n986), .A1(n667), .B0(n939), .B1(n113), .Y(n865) );
  OAI22X1 U1567 ( .A0(n985), .A1(n667), .B0(n939), .B1(n112), .Y(n866) );
  OAI22X1 U1568 ( .A0(n984), .A1(n667), .B0(n939), .B1(n111), .Y(n867) );
  OAI22X1 U1569 ( .A0(n983), .A1(n667), .B0(n939), .B1(n110), .Y(n868) );
  OAI22X1 U1570 ( .A0(n982), .A1(n667), .B0(n939), .B1(n109), .Y(n869) );
  OAI22X1 U1571 ( .A0(n981), .A1(n667), .B0(n939), .B1(n108), .Y(n870) );
  OAI22X1 U1572 ( .A0(n980), .A1(n667), .B0(n939), .B1(n107), .Y(n871) );
  OAI22X1 U1573 ( .A0(n979), .A1(n667), .B0(n939), .B1(n106), .Y(n872) );
  OAI22X1 U1574 ( .A0(n978), .A1(n667), .B0(n939), .B1(n105), .Y(n873) );
  OAI22X1 U1575 ( .A0(n977), .A1(n667), .B0(n939), .B1(n104), .Y(n874) );
  OAI22X1 U1576 ( .A0(n976), .A1(n667), .B0(n939), .B1(n103), .Y(n875) );
  OAI22X1 U1577 ( .A0(n975), .A1(n667), .B0(n939), .B1(n102), .Y(n876) );
  OAI22X1 U1578 ( .A0(n974), .A1(n667), .B0(n939), .B1(n101), .Y(n877) );
  OAI22X1 U1579 ( .A0(n973), .A1(n667), .B0(n939), .B1(n100), .Y(n878) );
  OAI22X1 U1580 ( .A0(n972), .A1(n667), .B0(n939), .B1(n99), .Y(n879) );
  OAI22X1 U1581 ( .A0(n971), .A1(n667), .B0(n939), .B1(n98), .Y(n880) );
  OAI22X1 U1582 ( .A0(n986), .A1(n668), .B0(n941), .B1(n97), .Y(n881) );
  OAI22X1 U1583 ( .A0(n985), .A1(n668), .B0(n941), .B1(n96), .Y(n882) );
  OAI22X1 U1584 ( .A0(n984), .A1(n668), .B0(n941), .B1(n95), .Y(n883) );
  OAI22X1 U1585 ( .A0(n983), .A1(n668), .B0(n941), .B1(n94), .Y(n884) );
  OAI22X1 U1586 ( .A0(n982), .A1(n668), .B0(n941), .B1(n93), .Y(n885) );
  OAI22X1 U1587 ( .A0(n981), .A1(n668), .B0(n941), .B1(n92), .Y(n886) );
  OAI22X1 U1588 ( .A0(n980), .A1(n668), .B0(n941), .B1(n91), .Y(n887) );
  OAI22X1 U1589 ( .A0(n979), .A1(n668), .B0(n941), .B1(n90), .Y(n888) );
  OAI22X1 U1590 ( .A0(n978), .A1(n668), .B0(n941), .B1(n89), .Y(n889) );
  OAI22X1 U1591 ( .A0(n977), .A1(n668), .B0(n941), .B1(n88), .Y(n890) );
  OAI22X1 U1592 ( .A0(n976), .A1(n668), .B0(n941), .B1(n87), .Y(n891) );
  OAI22X1 U1593 ( .A0(n975), .A1(n668), .B0(n941), .B1(n86), .Y(n892) );
  OAI22X1 U1594 ( .A0(n974), .A1(n668), .B0(n941), .B1(n85), .Y(n893) );
  OAI22X1 U1595 ( .A0(n973), .A1(n668), .B0(n941), .B1(n84), .Y(n894) );
  OAI22X1 U1596 ( .A0(n972), .A1(n668), .B0(n941), .B1(n83), .Y(n895) );
  OAI22X1 U1597 ( .A0(n971), .A1(n668), .B0(n941), .B1(n82), .Y(n896) );
  OAI2BB2X1 U1598 ( .B0(n986), .B1(n922), .A0N(n922), .A1N(r852[0]), .Y(n897)
         );
  OAI2BB2X1 U1599 ( .B0(n985), .B1(n922), .A0N(n922), .A1N(r852[1]), .Y(n898)
         );
  OAI2BB2X1 U1600 ( .B0(n984), .B1(n922), .A0N(n922), .A1N(r852[2]), .Y(n899)
         );
  OAI2BB2X1 U1601 ( .B0(n983), .B1(n922), .A0N(n922), .A1N(r852[3]), .Y(n900)
         );
  OAI2BB2X1 U1602 ( .B0(n982), .B1(n922), .A0N(n922), .A1N(r852[4]), .Y(n901)
         );
  OAI2BB2X1 U1603 ( .B0(n981), .B1(n922), .A0N(n922), .A1N(r852[5]), .Y(n902)
         );
  OAI2BB2X1 U1604 ( .B0(n980), .B1(n922), .A0N(n922), .A1N(r852[6]), .Y(n903)
         );
  OAI2BB2X1 U1605 ( .B0(n979), .B1(n922), .A0N(n922), .A1N(r852[7]), .Y(n904)
         );
  OAI2BB2X1 U1606 ( .B0(n978), .B1(n922), .A0N(n922), .A1N(r852[8]), .Y(n905)
         );
  OAI2BB2X1 U1607 ( .B0(n977), .B1(n922), .A0N(n922), .A1N(r852[9]), .Y(n906)
         );
  OAI2BB2X1 U1608 ( .B0(n976), .B1(n922), .A0N(n922), .A1N(r852[10]), .Y(n907)
         );
  OAI2BB2X1 U1609 ( .B0(n975), .B1(n922), .A0N(n922), .A1N(r852[11]), .Y(n908)
         );
  OAI2BB2X1 U1610 ( .B0(n974), .B1(n922), .A0N(n922), .A1N(r852[12]), .Y(n909)
         );
  OAI2BB2X1 U1611 ( .B0(n973), .B1(n922), .A0N(n922), .A1N(r852[13]), .Y(n910)
         );
  OAI2BB2X1 U1612 ( .B0(n972), .B1(n922), .A0N(n922), .A1N(r852[14]), .Y(n911)
         );
  OAI2BB2X1 U1613 ( .B0(n971), .B1(n922), .A0N(n922), .A1N(r852[15]), .Y(n912)
         );
  OAI2BB2X1 U1614 ( .B0(n921), .B1(n986), .A0N(n921), .A1N(r770[0]), .Y(n785)
         );
  OAI2BB2X1 U1615 ( .B0(n921), .B1(n985), .A0N(n921), .A1N(r770[1]), .Y(n786)
         );
  OAI2BB2X1 U1616 ( .B0(n921), .B1(n984), .A0N(n921), .A1N(r770[2]), .Y(n787)
         );
  OAI2BB2X1 U1617 ( .B0(n921), .B1(n983), .A0N(n921), .A1N(r770[3]), .Y(n788)
         );
  OAI2BB2X1 U1618 ( .B0(n921), .B1(n982), .A0N(n921), .A1N(r770[4]), .Y(n789)
         );
  OAI2BB2X1 U1619 ( .B0(n921), .B1(n981), .A0N(n921), .A1N(r770[5]), .Y(n790)
         );
  OAI2BB2X1 U1620 ( .B0(n921), .B1(n980), .A0N(n921), .A1N(r770[6]), .Y(n791)
         );
  OAI2BB2X1 U1621 ( .B0(n921), .B1(n979), .A0N(n921), .A1N(r770[7]), .Y(n792)
         );
  OAI2BB2X1 U1622 ( .B0(n921), .B1(n978), .A0N(n921), .A1N(r770[8]), .Y(n793)
         );
  OAI2BB2X1 U1623 ( .B0(n921), .B1(n977), .A0N(n921), .A1N(r770[9]), .Y(n794)
         );
  OAI2BB2X1 U1624 ( .B0(n921), .B1(n976), .A0N(n921), .A1N(r770[10]), .Y(n795)
         );
  OAI2BB2X1 U1625 ( .B0(n921), .B1(n975), .A0N(n921), .A1N(r770[11]), .Y(n796)
         );
  OAI2BB2X1 U1626 ( .B0(n921), .B1(n974), .A0N(n921), .A1N(r770[12]), .Y(n797)
         );
  OAI2BB2X1 U1627 ( .B0(n921), .B1(n973), .A0N(n921), .A1N(r770[13]), .Y(n798)
         );
  OAI2BB2X1 U1628 ( .B0(n921), .B1(n972), .A0N(n921), .A1N(r770[14]), .Y(n799)
         );
  OAI2BB2X1 U1629 ( .B0(n921), .B1(n971), .A0N(n921), .A1N(r770[15]), .Y(n800)
         );
endmodule

