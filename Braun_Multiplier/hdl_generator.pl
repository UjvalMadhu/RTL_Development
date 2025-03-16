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
#//  $Date: 2024-16-03
#//  $Revision: 1.0 $
#//  $Author:  Ujval Madhu
#//

=pod

=encoding UTF-8

=head1 braun_multiplier_generator.pl

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

sub main{

    print "Script starting ...\n";
    GetOptions( "n=i" => \$num_bits,
                "o=s" => \$outfile,
                "h!" => \$help)
    or die ("Error in Command Line Arguments");

    if(defined($help)){
		help_message();
	}

    # Ensuring Outfile name is properly defined

    $outfile  = "braun_mult.v" unless defined $outfile;
    $outfile .= ".v" unless $outfile =~ /\.v$/;         


    # Ensuring num_bits is properly set
    
    if(defined($num_bits)){
        if($num_bits % 2 == 0){
        print("Creating a $num_bits-bit Braun Multiplier \n");
        } else { die("Use a even number of bits");}
    } else {
        print("Creating a 16-bit Braun Multiplier \n");
        $num_bits = 16;
    }

    
    # Creating a Full adder Module for use in the Braun Multiplier
    
    open(my $fa_fh, '>', "rtl/fa.v") or die "Could not create verilog file for Full adder: $!";

    my $fa_code = <<"FA_CODE";
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


# =====================================
# Braun Multiplier Verilog Generation |
#======================================

    my ($module_name) = $outfile =~ /(\w+).v/;     # We need to use () for module_name to capture
    my $input_size  = int($num_bits/2); 
    my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime();
    $year += 1900;  # localtime returns years since 1900
    $mon += 1;      # months are 0-based (0 = January)

    open(my $bm_fh, '>', "rtl/$outfile") or die "Could not create verilog file for Braun Multiplier: $!";

    my $bm_code = <<"BM_CODE";
///////////////////////////////////////////////////////////////////////////////////
///                      $num_bits-Bit Braun Multiplier                                ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   $module_name Module:  $num_bits-Bit Implementation of Braun Multiplier             ///
///                                                                             ///
///   Copyright $year Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: $outfile, v 1.0
//
//  \$Date: $year-$mon-$mday
//  \$Revision: 1.0 $
///  \$Author:  Ujval Madhu

module $module_name(
    input  [$input_size - 1 : 0] a,
    input  [$input_size - 1 : 0] b,
    output [$input_size * 2 : 0] a,

);

endmodule
BM_CODE
    print $bm_fh $bm_code;
    close $bm_fh;
}






# module braun_mult(
#     input [7:0] a,
#     input [7:0] b,
#     output [15:0] out
# );

# wire [63:0] ab_buf;    // For Partial Products

# // Partial Product Generation
     

# endmodule


sub HELP_MESSAGE{																	# This Subroutine displays the Help Message

	print <<'MSG';

	************************************************************************************************************************	
	* This program reguires the declaration of the parameter text file or the complete list of command line arguments
	
	*	eg: um2072.pl -param ParameterFile.txt
		    or
		    um2072.pl -width 16 -stages 20 -reset 0x10 -outfile Reg1.v

	* The width size can be specified from 1 to 64 bits
	* The number of stages must in the range 2 to 128.
	* The reset size must not exceed the max register width 64.
	* The outfile must have the .v extension.
	************************************************************************************************************************

MSG



exit;
}


main();