////////////////////////////////////////////////////////////////////////////////////
///                                                                              ///
///                               Full Adder                                     ///
///                                                                              ///
////////////////////////////////////////////////////////////////////////////////////
///   fa Module:  Full Adder Module                                              ///
///                                                                              ///
///   Copyright (C) 2025 Ujval Madhu,                                           ///
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
//  Id: fa.v, v 1.0
//
//  $Date: 2025-4-4
//  $Revision: 1.0 
//  $Author:  Ujval Madhu

module fa(
    input a,
    input b,
    input c_in,
    output sum,
    output c_out
);  

    wire gen;
    wire prop;

    assign gen  = a & b;
    assign prop = a ^ b;

    assign sum   = prop ^ c_in;
    assign c_out = gen | prop & c_in;

endmodule
