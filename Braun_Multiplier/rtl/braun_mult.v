///////////////////////////////////////////////////////////////////////////////////
///                                                                             ///
///                      24-Bit Braun Multiplier                                ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   braun_mult Module:  24-Bit Implementation of Braun Multiplier             ///
///                                                                             ///
///   Copyright (C) 2025 Ujval Madhu,                                            ///
///   This program is free software: you can redistribute it and/or modify       ///
///   it under the terms of the GNU General Public License as published by       ///
///   the Free Software Foundation, either version 3 of the License, or          ///
///   (at your option) any later version.                                        ///
///                                                                              ///
///   This program is distributed in the hope that it will be useful,            ///
///   but WITHOUT ANY WARRANTY; without even the implied warranty of             ///
///   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              ///
///   GNU General Public License for more details.                               ///
///                                                                              ///
///   You should have received a copy of the GNU General Public License          ///
///   along with this program.  If not, see <https://www.gnu.org/licenses/>.     ///
///                                                                              ///
////////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: braun_mult.v, v 1.0
//
//  $Date: 2025-4-4
//  $Revision: 1.0 
//  $Author:  Ujval Madhu

module braun_mult (

    input  [12 - 1 : 0] a,
    input  [12 - 1 : 0] b,
    output [12 * 2 -1 : 0] prod
);

wire [144 - 1 : 0] ab_prod;          // For Partial Products
wire [132 - 1 : 0] ps;                // For Partial Sums generated by FAs
wire [132 - 1 : 0] co;                // For Carry_out from each FA      

and ab00(ab_prod[0], a[0], b[0]);
and ab10(ab_prod[1], a[1], b[0]);
and ab20(ab_prod[2], a[2], b[0]);
and ab30(ab_prod[3], a[3], b[0]);
and ab40(ab_prod[4], a[4], b[0]);
and ab50(ab_prod[5], a[5], b[0]);
and ab60(ab_prod[6], a[6], b[0]);
and ab70(ab_prod[7], a[7], b[0]);
and ab80(ab_prod[8], a[8], b[0]);
and ab90(ab_prod[9], a[9], b[0]);
and ab100(ab_prod[10], a[10], b[0]);
and ab110(ab_prod[11], a[11], b[0]);

and ab01(ab_prod[12], a[0], b[1]);
and ab11(ab_prod[13], a[1], b[1]);
and ab21(ab_prod[14], a[2], b[1]);
and ab31(ab_prod[15], a[3], b[1]);
and ab41(ab_prod[16], a[4], b[1]);
and ab51(ab_prod[17], a[5], b[1]);
and ab61(ab_prod[18], a[6], b[1]);
and ab71(ab_prod[19], a[7], b[1]);
and ab81(ab_prod[20], a[8], b[1]);
and ab91(ab_prod[21], a[9], b[1]);
and ab101(ab_prod[22], a[10], b[1]);
and ab111(ab_prod[23], a[11], b[1]);

and ab02(ab_prod[24], a[0], b[2]);
and ab12(ab_prod[25], a[1], b[2]);
and ab22(ab_prod[26], a[2], b[2]);
and ab32(ab_prod[27], a[3], b[2]);
and ab42(ab_prod[28], a[4], b[2]);
and ab52(ab_prod[29], a[5], b[2]);
and ab62(ab_prod[30], a[6], b[2]);
and ab72(ab_prod[31], a[7], b[2]);
and ab82(ab_prod[32], a[8], b[2]);
and ab92(ab_prod[33], a[9], b[2]);
and ab102(ab_prod[34], a[10], b[2]);
and ab112(ab_prod[35], a[11], b[2]);

and ab03(ab_prod[36], a[0], b[3]);
and ab13(ab_prod[37], a[1], b[3]);
and ab23(ab_prod[38], a[2], b[3]);
and ab33(ab_prod[39], a[3], b[3]);
and ab43(ab_prod[40], a[4], b[3]);
and ab53(ab_prod[41], a[5], b[3]);
and ab63(ab_prod[42], a[6], b[3]);
and ab73(ab_prod[43], a[7], b[3]);
and ab83(ab_prod[44], a[8], b[3]);
and ab93(ab_prod[45], a[9], b[3]);
and ab103(ab_prod[46], a[10], b[3]);
and ab113(ab_prod[47], a[11], b[3]);

and ab04(ab_prod[48], a[0], b[4]);
and ab14(ab_prod[49], a[1], b[4]);
and ab24(ab_prod[50], a[2], b[4]);
and ab34(ab_prod[51], a[3], b[4]);
and ab44(ab_prod[52], a[4], b[4]);
and ab54(ab_prod[53], a[5], b[4]);
and ab64(ab_prod[54], a[6], b[4]);
and ab74(ab_prod[55], a[7], b[4]);
and ab84(ab_prod[56], a[8], b[4]);
and ab94(ab_prod[57], a[9], b[4]);
and ab104(ab_prod[58], a[10], b[4]);
and ab114(ab_prod[59], a[11], b[4]);

and ab05(ab_prod[60], a[0], b[5]);
and ab15(ab_prod[61], a[1], b[5]);
and ab25(ab_prod[62], a[2], b[5]);
and ab35(ab_prod[63], a[3], b[5]);
and ab45(ab_prod[64], a[4], b[5]);
and ab55(ab_prod[65], a[5], b[5]);
and ab65(ab_prod[66], a[6], b[5]);
and ab75(ab_prod[67], a[7], b[5]);
and ab85(ab_prod[68], a[8], b[5]);
and ab95(ab_prod[69], a[9], b[5]);
and ab105(ab_prod[70], a[10], b[5]);
and ab115(ab_prod[71], a[11], b[5]);

and ab06(ab_prod[72], a[0], b[6]);
and ab16(ab_prod[73], a[1], b[6]);
and ab26(ab_prod[74], a[2], b[6]);
and ab36(ab_prod[75], a[3], b[6]);
and ab46(ab_prod[76], a[4], b[6]);
and ab56(ab_prod[77], a[5], b[6]);
and ab66(ab_prod[78], a[6], b[6]);
and ab76(ab_prod[79], a[7], b[6]);
and ab86(ab_prod[80], a[8], b[6]);
and ab96(ab_prod[81], a[9], b[6]);
and ab106(ab_prod[82], a[10], b[6]);
and ab116(ab_prod[83], a[11], b[6]);

and ab07(ab_prod[84], a[0], b[7]);
and ab17(ab_prod[85], a[1], b[7]);
and ab27(ab_prod[86], a[2], b[7]);
and ab37(ab_prod[87], a[3], b[7]);
and ab47(ab_prod[88], a[4], b[7]);
and ab57(ab_prod[89], a[5], b[7]);
and ab67(ab_prod[90], a[6], b[7]);
and ab77(ab_prod[91], a[7], b[7]);
and ab87(ab_prod[92], a[8], b[7]);
and ab97(ab_prod[93], a[9], b[7]);
and ab107(ab_prod[94], a[10], b[7]);
and ab117(ab_prod[95], a[11], b[7]);

and ab08(ab_prod[96], a[0], b[8]);
and ab18(ab_prod[97], a[1], b[8]);
and ab28(ab_prod[98], a[2], b[8]);
and ab38(ab_prod[99], a[3], b[8]);
and ab48(ab_prod[100], a[4], b[8]);
and ab58(ab_prod[101], a[5], b[8]);
and ab68(ab_prod[102], a[6], b[8]);
and ab78(ab_prod[103], a[7], b[8]);
and ab88(ab_prod[104], a[8], b[8]);
and ab98(ab_prod[105], a[9], b[8]);
and ab108(ab_prod[106], a[10], b[8]);
and ab118(ab_prod[107], a[11], b[8]);

and ab09(ab_prod[108], a[0], b[9]);
and ab19(ab_prod[109], a[1], b[9]);
and ab29(ab_prod[110], a[2], b[9]);
and ab39(ab_prod[111], a[3], b[9]);
and ab49(ab_prod[112], a[4], b[9]);
and ab59(ab_prod[113], a[5], b[9]);
and ab69(ab_prod[114], a[6], b[9]);
and ab79(ab_prod[115], a[7], b[9]);
and ab89(ab_prod[116], a[8], b[9]);
and ab99(ab_prod[117], a[9], b[9]);
and ab109(ab_prod[118], a[10], b[9]);
and ab119(ab_prod[119], a[11], b[9]);

and ab010(ab_prod[120], a[0], b[10]);
and ab110(ab_prod[121], a[1], b[10]);
and ab210(ab_prod[122], a[2], b[10]);
and ab310(ab_prod[123], a[3], b[10]);
and ab410(ab_prod[124], a[4], b[10]);
and ab510(ab_prod[125], a[5], b[10]);
and ab610(ab_prod[126], a[6], b[10]);
and ab710(ab_prod[127], a[7], b[10]);
and ab810(ab_prod[128], a[8], b[10]);
and ab910(ab_prod[129], a[9], b[10]);
and ab1010(ab_prod[130], a[10], b[10]);
and ab1110(ab_prod[131], a[11], b[10]);

and ab011(ab_prod[132], a[0], b[11]);
and ab111(ab_prod[133], a[1], b[11]);
and ab211(ab_prod[134], a[2], b[11]);
and ab311(ab_prod[135], a[3], b[11]);
and ab411(ab_prod[136], a[4], b[11]);
and ab511(ab_prod[137], a[5], b[11]);
and ab611(ab_prod[138], a[6], b[11]);
and ab711(ab_prod[139], a[7], b[11]);
and ab811(ab_prod[140], a[8], b[11]);
and ab911(ab_prod[141], a[9], b[11]);
and ab1011(ab_prod[142], a[10], b[11]);
and ab1111(ab_prod[143], a[11], b[11]);







assign ps[0] = ab_prod[0];


endmodule
