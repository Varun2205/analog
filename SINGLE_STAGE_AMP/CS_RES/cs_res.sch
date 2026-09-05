v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 180 160 180 180 {
lab=GND}
N 260 130 260 150 {
lab=GND}
N 260 100 280 100 {
lab=GND}
N 260 140 280 140 {
lab=GND}
N 280 100 280 140 {
lab=GND}
N 130 100 220 100 {
lab=In}
N 260 40 260 70 {
lab=Vo}
N 260 -40 260 -20 {
lab=VDD}
N 260 50 320 50 {
lab=Vo}
N 540 70 540 80 {
lab=GND}
N 540 -10 540 10 {
lab=VDD}
C {res.sym} 260 10 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 260 -40 0 0 {name=l1 lab=VDD}
C {gnd.sym} 260 150 0 0 {name=l2 lab=GND}
C {vsource.sym} 180 130 0 0 {name=V1 value=0.8}
C {gnd.sym} 180 180 0 0 {name=l3 lab=GND}
C {opin.sym} 320 50 0 0 {name=p1 lab=Vo}
C {ipin.sym} 130 100 0 0 {name=p2 lab=In}
C {vdd.sym} 540 -10 0 0 {name=l4 lab=VDD}
C {vsource.sym} 540 40 0 0 {name=V2 value=1.8}
C {gnd.sym} 540 80 0 0 {name=l5 lab=GND}
C {code_shown.sym} 440 170 0 0 {name=s1 only_toplevel=false value="
.lib ~/.ciel/ciel/sky130/versions/1689ac3f2dc763876eaf967227c7dfe831b031ae/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc V1 0 1.8 0.01

.control
  run

  * 1. Plot Drain Current I_D (current flowing from VDD supply V2)
  plot -i(v2)

  * 2. Plot DC Small-Signal Gain (dVo/dVin)
  plot deriv(v(Vo))

  * 3. Print all internal transistor operating parameters to terminal
  show xm1
.endc
"}
C {/home/varun/.ciel/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 240 100 0 0 {\{name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'"
nrs="'0.29 / W'"
sa=0
sb=0
sd=0
model=nfet_01v8
spiceprefix=X\}
}
