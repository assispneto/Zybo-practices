
p
Command: %s
53*	vivadotcl2?
+write_bitstream -force design_1_wrapper.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
YReport rule limit reached: REQP-1839 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2z
 "d
&design_1_i/pdi_0/U0/ram_we_reg_i_1_n_0&design_1_i/pdi_0/U0/ram_we_reg_i_1_n_02default:default2default:default2v
 "`
$design_1_i/pdi_0/U0/ram_we_reg_i_1/O$design_1_i/pdi_0/U0/ram_we_reg_i_1/O2default:default2default:default2r
 "\
"design_1_i/pdi_0/U0/ram_we_reg_i_1	"design_1_i/pdi_0/U0/ram_we_reg_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "v
/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[0]/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[0]2default:default2default:default2j
 "T
design_1_i/rom_0/U0/address[0]design_1_i/rom_0/U0/address[0]2default:default2default:default2x
 "b
%design_1_i/pdi_0/U0/pixel_addr_reg[0]	%design_1_i/pdi_0/U0/pixel_addr_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "x
0design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[10]0design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[10]2default:default2default:default2l
 "V
design_1_i/rom_0/U0/address[10]design_1_i/rom_0/U0/address[10]2default:default2default:default2z
 "d
&design_1_i/pdi_0/U0/pixel_addr_reg[10]	&design_1_i/pdi_0/U0/pixel_addr_reg[10]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "x
0design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[11]0design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[11]2default:default2default:default2l
 "V
design_1_i/rom_0/U0/address[11]design_1_i/rom_0/U0/address[11]2default:default2default:default2z
 "d
&design_1_i/pdi_0/U0/pixel_addr_reg[11]	&design_1_i/pdi_0/U0/pixel_addr_reg[11]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "x
0design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[12]0design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[12]2default:default2default:default2l
 "V
design_1_i/rom_0/U0/address[12]design_1_i/rom_0/U0/address[12]2default:default2default:default2z
 "d
&design_1_i/pdi_0/U0/pixel_addr_reg[12]	&design_1_i/pdi_0/U0/pixel_addr_reg[12]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "x
0design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[13]0design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[13]2default:default2default:default2l
 "V
design_1_i/rom_0/U0/address[13]design_1_i/rom_0/U0/address[13]2default:default2default:default2z
 "d
&design_1_i/pdi_0/U0/pixel_addr_reg[13]	&design_1_i/pdi_0/U0/pixel_addr_reg[13]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "x
0design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[14]0design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[14]2default:default2default:default2l
 "V
design_1_i/rom_0/U0/address[14]design_1_i/rom_0/U0/address[14]2default:default2default:default2z
 "d
&design_1_i/pdi_0/U0/pixel_addr_reg[14]	&design_1_i/pdi_0/U0/pixel_addr_reg[14]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "v
/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[1]/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[1]2default:default2default:default2j
 "T
design_1_i/rom_0/U0/address[1]design_1_i/rom_0/U0/address[1]2default:default2default:default2x
 "b
%design_1_i/pdi_0/U0/pixel_addr_reg[1]	%design_1_i/pdi_0/U0/pixel_addr_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "v
/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[2]/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[2]2default:default2default:default2j
 "T
design_1_i/rom_0/U0/address[2]design_1_i/rom_0/U0/address[2]2default:default2default:default2x
 "b
%design_1_i/pdi_0/U0/pixel_addr_reg[2]	%design_1_i/pdi_0/U0/pixel_addr_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "v
/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[3]/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[3]2default:default2default:default2j
 "T
design_1_i/rom_0/U0/address[3]design_1_i/rom_0/U0/address[3]2default:default2default:default2x
 "b
%design_1_i/pdi_0/U0/pixel_addr_reg[3]	%design_1_i/pdi_0/U0/pixel_addr_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "v
/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[4]/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[4]2default:default2default:default2j
 "T
design_1_i/rom_0/U0/address[4]design_1_i/rom_0/U0/address[4]2default:default2default:default2x
 "b
%design_1_i/pdi_0/U0/pixel_addr_reg[4]	%design_1_i/pdi_0/U0/pixel_addr_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "v
/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[5]/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[5]2default:default2default:default2j
 "T
design_1_i/rom_0/U0/address[5]design_1_i/rom_0/U0/address[5]2default:default2default:default2x
 "b
%design_1_i/pdi_0/U0/pixel_addr_reg[5]	%design_1_i/pdi_0/U0/pixel_addr_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "v
/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[6]/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[6]2default:default2default:default2j
 "T
design_1_i/rom_0/U0/address[6]design_1_i/rom_0/U0/address[6]2default:default2default:default2x
 "b
%design_1_i/pdi_0/U0/pixel_addr_reg[6]	%design_1_i/pdi_0/U0/pixel_addr_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "v
/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[7]/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[7]2default:default2default:default2j
 "T
design_1_i/rom_0/U0/address[7]design_1_i/rom_0/U0/address[7]2default:default2default:default2x
 "b
%design_1_i/pdi_0/U0/pixel_addr_reg[7]	%design_1_i/pdi_0/U0/pixel_addr_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "v
/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[8]/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[8]2default:default2default:default2j
 "T
design_1_i/rom_0/U0/address[8]design_1_i/rom_0/U0/address[8]2default:default2default:default2x
 "b
%design_1_i/pdi_0/U0/pixel_addr_reg[8]	%design_1_i/pdi_0/U0/pixel_addr_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_0	 design_1_i/rom_0/U0/dout_reg_0_02default:default2default:default2?
 "v
/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[9]/design_1_i/rom_0/U0/dout_reg_0_0/ADDRARDADDR[9]2default:default2default:default2j
 "T
design_1_i/rom_0/U0/address[9]design_1_i/rom_0/U0/address[9]2default:default2default:default2x
 "b
%design_1_i/pdi_0/U0/pixel_addr_reg[9]	%design_1_i/pdi_0/U0/pixel_addr_reg[9]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_1	 design_1_i/rom_0/U0/dout_reg_0_12default:default2default:default2?
 "x
0design_1_i/rom_0/U0/dout_reg_0_1/ADDRARDADDR[10]0design_1_i/rom_0/U0/dout_reg_0_1/ADDRARDADDR[10]2default:default2default:default2l
 "V
design_1_i/rom_0/U0/address[10]design_1_i/rom_0/U0/address[10]2default:default2default:default2z
 "d
&design_1_i/pdi_0/U0/pixel_addr_reg[10]	&design_1_i/pdi_0/U0/pixel_addr_reg[10]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_1	 design_1_i/rom_0/U0/dout_reg_0_12default:default2default:default2?
 "x
0design_1_i/rom_0/U0/dout_reg_0_1/ADDRARDADDR[11]0design_1_i/rom_0/U0/dout_reg_0_1/ADDRARDADDR[11]2default:default2default:default2l
 "V
design_1_i/rom_0/U0/address[11]design_1_i/rom_0/U0/address[11]2default:default2default:default2z
 "d
&design_1_i/pdi_0/U0/pixel_addr_reg[11]	&design_1_i/pdi_0/U0/pixel_addr_reg[11]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_1	 design_1_i/rom_0/U0/dout_reg_0_12default:default2default:default2?
 "x
0design_1_i/rom_0/U0/dout_reg_0_1/ADDRARDADDR[12]0design_1_i/rom_0/U0/dout_reg_0_1/ADDRARDADDR[12]2default:default2default:default2l
 "V
design_1_i/rom_0/U0/address[12]design_1_i/rom_0/U0/address[12]2default:default2default:default2z
 "d
&design_1_i/pdi_0/U0/pixel_addr_reg[12]	&design_1_i/pdi_0/U0/pixel_addr_reg[12]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_1	 design_1_i/rom_0/U0/dout_reg_0_12default:default2default:default2?
 "x
0design_1_i/rom_0/U0/dout_reg_0_1/ADDRARDADDR[13]0design_1_i/rom_0/U0/dout_reg_0_1/ADDRARDADDR[13]2default:default2default:default2l
 "V
design_1_i/rom_0/U0/address[13]design_1_i/rom_0/U0/address[13]2default:default2default:default2z
 "d
&design_1_i/pdi_0/U0/pixel_addr_reg[13]	&design_1_i/pdi_0/U0/pixel_addr_reg[13]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2n
 "X
 design_1_i/rom_0/U0/dout_reg_0_1	 design_1_i/rom_0/U0/dout_reg_0_12default:default2default:default2?
 "x
0design_1_i/rom_0/U0/dout_reg_0_1/ADDRARDADDR[14]0design_1_i/rom_0/U0/dout_reg_0_1/ADDRARDADDR[14]2default:default2default:default2l
 "V
design_1_i/rom_0/U0/address[14]design_1_i/rom_0/U0/address[14]2default:default2default:default2z
 "d
&design_1_i/pdi_0/U0/pixel_addr_reg[14]	&design_1_i/pdi_0/U0/pixel_addr_reg[14]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
uPS7 block required: The PS7 cell must be used in this Zynq design in order to enable correct default configuration.%s*DRC2;
 #DRC|PS7|Zynq requires PS7 block|PS72default:default8ZZPS7-1h px? 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 23 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
g
Writing bitstream %s...
11*	bitstream2*
./design_1_wrapper.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1312default:default2
502default:default2
42default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:372default:default2
00:00:362default:default2
2061.7892default:default2
408.8672default:defaultZ17-268h px? 


End Record