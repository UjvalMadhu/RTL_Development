#!/usr/bin/perl
#////////////////////////////////////////////////////////////////////////////////////
#///                                                                              ///
#///          Perl Script to Generate a Parametrized Braun Multiplier             ///
#///                                                                              ///
#////////////////////////////////////////////////////////////////////////////////////
#///                                                                              ///
#///   This Perl script generates Verilog code for a n bit Braun Multiplier       ///
#///   based on user argument                                                     ///
#///                                                                              ///
#///   Copyright (C) 2025 Ujval Madhu,                                            ///
#///   This program is free software: you can redistribute it and/or modify       ///
#///   it under the terms of the GNU General Public License as published by       ///
#///   the Free Software Foundation, either version 3 of the License, or          ///
#///   (at your option) any later version.                                        ///
#///                                                                              ///
#///   This program is distributed in the hope that it will be useful,            ///
#///   but WITHOUT ANY WARRANTY; without even the implied warranty of             ///
#///   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              ///
#///   GNU General Public License for more details.                               ///
#///                                                                              ///
#///   You should have received a copy of the GNU General Public License          ///
#///   along with this program.  If not, see <https://www.gnu.org/licenses/>.     ///
#///                                                                              ///
#////////////////////////////////////////////////////////////////////////////////////
#///
#//  CVS Log
#//
#//  Id: braun_multiplier_generator.pl, v 1.0
#//
#//  $Date: 2024-07-04
#//  $Revision: 1.0 $
#//  $Author:  Ujval Madhu
#//

=pod

=encoding UTF-8

=head1 b_mult_gen.pl

Parameterized Braun Multiplier HDL Generator

=head2 Description

This Perl script generates Verilog code for a n bit Braun Multiplier based on the user argument.

The user can provide the following arguments using the command line:

=over

=item B<-n>  : The Output Bit size of the Braun Multiplier, has to be an even number (Default = 16)

=item B<-o>  : Override the default name for the module, specify the name as name.v (Default = b_mult.v), short names are ideal

=item B<-h>  : Display Help message

=back

=head1 Examples

To create an 8-bit Braun Multiplier with the default module name 'braun_mult.v' run the script as follows:

braun_multiplier_generator.pl -n 8 

To create a 8 bit Braun Multiplier with a specific module name, say 'b_mult_8.v' run the script as follows:

braun_multiplier_generator.pl -n 8 -o b_mult_8.v

=head1 Author

Ujval Madhu <ujvalmadhu003@gmail.com>

=head1 COPYRIGHT AND LICENSE

***********************************************************************
Copyright (C) 2025 Ujval Madhu. GNU License

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details. 

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

************************************************************************

=cut


use strict;
use warnings;

use Getopt::Long;
#$Getopt::Long::STANDARD_HELP_VERSION = 1;
our $VERSION = "1.0";

my $num_bits;
my $outfile;
my $help;
my $rtl_dir = "rtl";
# Variables for Time Format
my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime();
$year += 1900;  # localtime returns years since 1900
$mon += 1;      # months are 0-based (0 = January)


sub main{

    print "Script starting ...\n";
    GetOptions( "n=i" => \$num_bits,
                "o=s" => \$outfile,
                "h!" => \$help)
    or die ("Error in Command Line Arguments");

    if(defined($help)){
		HELP_MESSAGE();
	}

    # Ensuring Outfile name is properly defined

    $outfile  = "braun_mult.v" unless defined $outfile;
    $outfile .= ".v" unless $outfile =~ /\.v$/;         


    # Ensuring num_bits is properly set
    
    if(defined($num_bits)){
        if($num_bits % 2 == 0 and $num_bits > 1){
        print("Creating a $num_bits-bit Braun Multiplier \n");
        } else { die("Use an even number of bits greater than 1");}
    } else {
        print("Creating a 16-bit Braun Multiplier \n");
        $num_bits = 16;
    }

    #==============================================================
    # Creating a Full adder Module for use in the Braun Multiplier
    #==============================================================
    
    open(my $fa_fh, '>', "rtl/fa.v") or die "Could not create verilog file for Full adder: $!";

    my $fa_code = <<"FA_CODE";
////////////////////////////////////////////////////////////////////////////////////
///                                                                              ///
///                               Full Adder                                     ///
///                                                                              ///
////////////////////////////////////////////////////////////////////////////////////
///   fa Module:  Full Adder Module                                              ///
///            This code is Generated by a Perl Script.                          ///
///                                                                              ///
///   Copyright (C) $year Ujval Madhu,                                           ///
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
//  \$Date: $year-$mon-$mday
//  \$Revision: 1.0 $
///  \$Author:  Ujval Madhu

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
FA_CODE

    print $fa_fh $fa_code;
    close $fa_fh;


# =================================================================
#                Braun Multiplier Verilog Generation              |
#==================================================================

    my ($module_name) = $outfile =~ /(\w+).v/;     # We need to use () for module_name to capture
    my $input_size  = int($num_bits/2); 
    
    # Total number of AND gates and Full Adders
    my $and_count = $input_size*$input_size;
    my $fa_count  = $input_size*($input_size -1) + 1; # adding 1 extra for psum[0] = a0*b0

    
    # Partial Product Verilog Code Generation:
    
    my $ab = "// Generating Partial Products\n\n";
    my $pw_count = 0;        # Partial Product Wire Count;            
    
    for my $i (0..$input_size - 1){
        
        for my $j (0..$input_size - 1){
        
            $ab .= "and a${j}b$i(ab_prod[$pw_count], a[$j], b[$i]);\n";
            $pw_count +=1;
        
        }
        
        $ab .= "\n";
    
    }

    # Carry initialization

    my $carry = "wire [(($input_size +1)*($input_size -1)) - 1 : 0] carry;         // For Carrys from and to each FA\n\n" .
    "\n// Assigning Carry Ins for each row of the Multiplier\n\n";

    for (my $i = 0; $i < ($input_size +1)*($input_size -1); $i += ($input_size+1)){
        $carry .= "assign carry[$i] = 0;\n";
    }

    $carry .= "\n";
    
    # Partial Sum Verilog Code Generation
    
    my $psum = "// Partial Sum Generation\n\n";
    # comments explained for an input size of 8
    # Use full adders to find the sum of  partial products, 7 Rows of addition for input size 8 
    # 1st row addition, both operands are partial products
    # 2nd row onwards, 1 operand is a partial product, 2nd operand is the sum from the previous operation
    my $op_b = 0;
    my $op_a = 0;
    my $op1_ind = 0;                
    my $op2_ind = 0;
    my $c_ind = 0;
    my $psum_ind = 0;


    for my $i (1..$input_size -1){
        if ($i == 1){
            # both operands are partial products
            $op_b = $i - 1;
            $op_a = 0;
            $op1_ind = ($op_b*$input_size) + $op_a;                # 0 here, for a0*b0
            $op2_ind = (($op_b + 1)*$input_size) + $op_a;


            # Assigning psum[0] to a0b0
            $psum .= "assign psum[$psum_ind] = ab_prod[$op1_ind];\n\n";
            $op1_ind +=1;
            $psum_ind +=1;
            
            # Assigning psum[1 to 8] in the 1st row addition
            for my $j (1..$input_size){
                if ($j != $input_size){
                    $psum .= "fa fa$psum_ind (.a(ab_prod[$op1_ind]), .b(ab_prod[$op2_ind]), .c_in(carry[$c_ind]), .sum(psum[$psum_ind]), .c_out(carry[$c_ind + 1]) );\n";
                    $psum_ind +=1;
                    $op1_ind +=1;
                    $op2_ind +=1;
                    $c_ind +=1;
                }
                else{
                    $psum .= "fa fa$psum_ind (.a(1'b0), .b(ab_prod[$op2_ind]), .c_in(carry[$c_ind]), .sum(psum[$psum_ind]), .c_out(carry[$c_ind + 1]) );\n";
                    $psum_ind +=1;
                    $op2_ind +=1;
                    $c_ind +=1;                    
                }
            }
        }
        # Assigning psum for the remaining rows
        else {
            $psum .= "\n";
            # 1 Operand is a partial product and the other is a psum from previous row addition
            $op_b = $i;
            $op_a = 0;
            $op1_ind = ($op_b*$input_size) + $op_a;                # Partial Product
            $op2_ind = $psum_ind - $input_size + 1;                # Previous psum
            $c_ind += 1;                                           # adding 1 as previous c_ind will be used for addition in the last term of the row.
            for my $j (1..$input_size){
                if ($j != $input_size){
                    $psum .= "fa fa$psum_ind(.a(ab_prod[$op1_ind]), .b(psum[$op2_ind]), .c_in(carry[$c_ind]), .sum(psum[$psum_ind]), .c_out(carry[$c_ind + 1]) );\n";
                    $psum_ind +=1;
                    $op1_ind +=1;
                    $op2_ind +=1;
                    $c_ind +=1;
                }   
                else {
                    $psum .= "fa fa$psum_ind (.a(ab_prod[$op1_ind]), .b(carry[$c_ind - $input_size]), .c_in(carry[$c_ind]), .sum(psum[$psum_ind]), .c_out(carry[$c_ind + 1]) );\n";
                    $psum_ind +=1;
                    $op2_ind +=1;
                    $c_ind +=1;               
                }
            }

        }
    }

    # Output Generation from the Partial Sums

    my $op_code = qq{
assign prod[0] = psum[0];
assign prod[1] = psum[1];\n
};

    for my $i (2..($input_size -1)){
        $op_code .= "assign prod[$i] = psum[$input_size*($i-1) +1];\n";
        
        # Condition for the assignment of the last input_size bits
        if($i == $input_size -1){
            for my $j (2..($input_size)){
                $op_code .= "assign prod[$i+$j-1] = psum[($input_size * ($i - 1)) +$j];\n";
            }
            $op_code .= "assign prod[($input_size*2)-1] = carry[(($input_size +1)*($input_size -1)) - 1 ];\n";
        }
    }
    if($input_size == 2){
       $op_code .= "assign prod[2] = psum[2];\n";
       $op_code .= "assign prod[($input_size*2)-1] = carry[(($input_size +1)*($input_size -1)) - 1 ];\n"; 
    }



    open(my $bm_fh, '>', "rtl/$outfile") or die "Could not create verilog file for Braun Multiplier: $!";

    my $bm_code = <<"BM_CODE";
///////////////////////////////////////////////////////////////////////////////////
///                                                                             ///
///                      $num_bits-Bit Braun Multiplier                                ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   $module_name Module:  $num_bits-Bit Implementation of Braun Multiplier             ///
///                                                                             ///
///            This code is Generated by a Perl Script.                         ///
///                                                                             ///
///   Copyright (C) $year Ujval Madhu,                                            ///
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
//  Id: $outfile, v 1.0
//
//  \$Date: $year-$mon-$mday
//  \$Revision: 1.0 $
///  \$Author:  Ujval Madhu

module $module_name (

    input  [$input_size - 1 : 0] a,
    input  [$input_size - 1 : 0] b,
    output [($input_size * 2) -1 : 0] prod
);

wire [$and_count - 1 : 0] ab_prod;                    // For Partial Products
wire [$fa_count - 1 : 0] psum;                      // For Partial Sums generated by FAs

$carry

$ab

$psum

// Final Product Calculation

$op_code

endmodule
BM_CODE
    print $bm_fh $bm_code;
    close $bm_fh;


# =================================================================
#                Braun Multiplier Testbench Generation              |
#==================================================================


    open(my $tb_fh, '>', "rtl/testbench.sv") or die "Could not create verilog file for Braun Multiplier: $!";

    my $tb_code = <<"TB_CODE";
///////////////////////////////////////////////////////////////////////////////////
///                                                                             ///
///              Testbench for $num_bits-Bit Braun Multiplier                        ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   Testbench Module: Verification using Randomized Stimulus,                 ///
///                     Functional Equivalence and Immediate Assertion          ///
///            This code is Generated by a Perl Script.                         ///
///                                                                             ///
///   Copyright (C) $year Ujval Madhu,                                           ///
///   This program is free software: you can redistribute it and/or modify      ///
///   it under the terms of the GNU General Public License as published by      ///
///   the Free Software Foundation, either version 3 of the License, or         ///
///   (at your option) any later version.                                       ///
///                                                                             ///
///   This program is distributed in the hope that it will be useful,           ///
///   but WITHOUT ANY WARRANTY; without even the implied warranty of            ///
///   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the             ///
///   GNU General Public License for more details.                              ///
///                                                                             ///
///   You should have received a copy of the GNU General Public License         ///
///   along with this program.  If not, see <https://www.gnu.org/licenses/>.    ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: testbench.sv, v 1.0
//
//  \$Date: $year-$mon-$mday
//  \$Revision: 1.0 $
///  \$Author:  Ujval Madhu


module testbench;

    parameter num_bits = $input_size;
    parameter num_tests = 100;

    reg [num_bits -1:0] in_a;
    reg [num_bits -1:0] in_b;
    
    reg [(2*num_bits) -1:0] prod;
    reg [(2*num_bits) -1:0] expected_prod;

    integer seed;

    // Instantiating the Braun Multiplier
    braun_mult bmx(.a(in_a), .b(in_b), .prod(prod));
    
    ////////////////////////////////
    //    Random Stimulus Test    //
    ////////////////////////////////

    initial begin
        seed = \$urandom;
        \$urandom(seed);              // Icarus doesn't support \$srandom yet

        in_b = $input_size\'b0;
        in_a = $input_size\'b0;
        #10;
        
        for(int i = 1; i <= num_tests; i++) begin
            in_a = \$urandom % (2**$input_size - 1);
            in_b = \$urandom % (2**$input_size - 1);

            #10;

            \$display("\\n Random Test %0d", i);
            \$display("Braun Multiplier Result: Input A: \%d, Input B: \%d, Product: \%d", in_a, in_b, prod);

           //////////////////////// 
           // Functional Testing //
           ////////////////////////

            expected_prod =  in_a * in_b;

            assert(expected_prod == prod)
            else begin
                \$error("Product Check Assertion error: Expected Product = %0d, but Obtained Product = %0d at %0t", expected_prod, prod, \$time);
                \$fatal;
            end
            
            #10;

        end

        \$display("\\nAll %0d Test cases Passed !!\\n", num_tests);

    end

    // Generating Waveform Files
    initial begin
        \$dumpfile("testbench.vcd");
        \$dumpvars(0, testbench);
    end

endmodule
TB_CODE
    print $tb_fh $tb_code;
    close $tb_fh;
}


sub HELP_MESSAGE(){		# This Subroutine displays the Help Message

	print <<'MSG';

***************************************************************************************************************	
               =================================================================================
                B R A U N    M U L T I P I E R   G E N E R A T O R  :  H E L P    M E S S A G E
               =================================================================================
   
   This Perl script generates Verilog code and a corresponding test bench for an n-bit Braun Multiplier based 
   on the user argument.

   The user can provide the following arguments using the command line:

    -n  : The Output Bit size of the Braun Multiplier, has to be an even number (Default = 16)

    -o  : Override the default name for the module, specify the name as name.v (Default = b_mult.v), short names are ideal

    -h  : Display Help message

    To create an 8-bit Braun Multiplier with the default module name 'braun_mult.v' run the script as follows:

    b_mult_gen.pl -n 8 

    To create a 8 bit Braun Multiplier with a specific module name, say 'b_mult_8.v' run the script as follows:

    b_mult_gen.pl -n 8 -o b_mult_8.v

    ** If you choose to have a custom name, please update the Makefile, line 18 to match the name.
***************************************************************************************************************

MSG
exit;
}


main();