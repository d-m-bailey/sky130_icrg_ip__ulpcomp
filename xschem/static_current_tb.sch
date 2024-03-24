v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 620 -600 690 -600 {
lab=dvdd}
N 620 -580 690 -580 {
lab=avdd}
N 620 -560 690 -560 {
lab=ena}
N 620 -540 690 -540 {
lab=vinn}
N 620 -520 690 -520 {
lab=vinp}
N 620 -500 690 -500 {
lab=clk}
N 990 -600 1050 -600 {
lab=vout}
N 990 -580 1050 -580 {
lab=dvss}
N 990 -560 1050 -560 {
lab=avss}
N 90 -650 90 -580 {
lab=avdd}
N 180 -650 180 -580 {
lab=dvdd}
N 270 -650 270 -580 {
lab=avss}
N 360 -650 360 -580 {
lab=dvss}
N 360 -840 360 -780 {
lab=clk}
N 270 -840 270 -780 {
lab=ena}
N 90 -850 90 -780 {
lab=vinp}
N 180 -850 180 -780 {
lab=vinn}
N 1050 -600 1240 -600 {
lab=vout}
C {sky130_icrg_ip__ulpcomp2.sym} 840 -550 0 0 {name=x1}
C {devices/lab_pin.sym} 620 -600 0 0 {name=p1 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 620 -580 0 0 {name=p2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 620 -560 0 0 {name=p3 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 620 -540 0 0 {name=p4 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 620 -520 0 0 {name=p5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 620 -500 0 0 {name=p6 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1240 -600 2 0 {name=p7 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 1050 -580 2 0 {name=p8 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 1050 -560 2 0 {name=p9 sig_type=std_logic lab=avss}
C {devices/vsource.sym} 90 -550 0 0 {name=V1 value="DC 3.3" savecurrent=false}
C {devices/vsource.sym} 180 -550 0 0 {name=V2 value="DC 1.8" savecurrent=false}
C {devices/vsource.sym} 270 -550 0 0 {name=V3 value=0 savecurrent=false}
C {devices/vsource.sym} 360 -550 0 0 {name=V4 value=0 savecurrent=false}
C {devices/gnd.sym} 90 -520 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 180 -520 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 270 -520 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 360 -520 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 90 -640 0 0 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 180 -640 0 0 {name=p11 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 270 -640 0 0 {name=p12 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 360 -640 0 0 {name=p13 sig_type=std_logic lab=dvss}
C {devices/vsource.sym} 360 -750 0 0 {name=V5 value="Pulse(0 1.8 0 0.1n 0.1n 2.5n 5n)" savecurrent=false}
C {devices/gnd.sym} 360 -720 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 360 -830 0 0 {name=p14 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 270 -750 0 0 {name=V6 value="DC 0" savecurrent=false}
C {devices/gnd.sym} 270 -720 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 270 -830 0 0 {name=p15 sig_type=std_logic lab=ena}
C {devices/vsource.sym} 90 -750 0 0 {name=V7 value="DC 0 sin(0 3.3 2MEG 0 0)" savecurrent=false}
C {devices/vsource.sym} 180 -750 0 0 {name=V8 value="DC 0 sin(0 3.3 9MEG 0 0)" savecurrent=false}
C {devices/gnd.sym} 90 -720 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 180 -720 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 90 -840 0 0 {name=p16 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 180 -840 0 0 {name=p17 sig_type=std_logic lab=vinn}
C {devices/code_shown.sym} 90 -410 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.option TEMP=25"}
C {devices/code_shown.sym} 90 -290 0 0 {name=s2 only_toplevel=false value=".control
tran 10n 1u
set wr_singlescale
wrdata \{simpath\}/\{filename\}_\{N\}.data -I(V2)
plot I(V2)
plot V(vinn) V(vinp) v(vout)

.endc"}