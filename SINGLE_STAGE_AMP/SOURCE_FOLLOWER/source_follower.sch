v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 200 80 220 {
lab=GND}
N 80 120 80 140 {
lab=#net1}
N 80 170 100 170 {
lab=GND}
N 100 170 100 200 {
lab=GND}
N 80 200 100 200 {
lab=GND}
N 80 40 80 60 {
lab=VDD}
N 310 40 310 100 {
lab=VDD}
N 310 130 370 130 {
lab=GND}
N 310 160 310 180 {
lab=Vo}
N 310 240 310 260 {
lab=GND}
N 80 130 270 130 {
lab=#net1}
N 310 170 390 170 {
lab=Vo}
N -40 170 40 170 {
lab=Vin}
N -10 230 -10 250 {
lab=GND}
N 550 40 550 60 {
lab=VDD}
N 550 120 550 140 {
lab=GND}
C {vdd.sym} 80 40 0 0 {name=l1 lab=VDD}
C {vdd.sym} 310 40 0 0 {name=l2 lab=VDD}
C {vdd.sym} 550 40 0 0 {name=l3 lab=VDD}
C {res.sym} 80 90 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 80 220 0 0 {name=l4 lab=GND}
C {res.sym} 310 210 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 310 260 0 0 {name=l5 lab=GND}
C {gnd.sym} 370 130 0 0 {name=l6 lab=GND}
C {vsource.sym} -10 200 0 0 {name=V1 value=0.8}
C {gnd.sym} -10 250 0 0 {name=l7 lab=GND}
C {vsource.sym} 550 90 0 0 {name=V2 value=1.8}
C {gnd.sym} 550 140 0 0 {name=l8 lab=GND}
C {ipin.sym} -40 170 0 0 {name=p1 lab=Vin}
C {opin.sym} 390 170 0 0 {name=p2 lab=Vo}
C {code_shown.sym} 520 230 0 0 {name=s1 only_toplevel=false value="
.lib /home/varun/.ciel/ciel/sky130/versions/1689ac3f2dc763876eaf967227c7dfe831b031ae/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc V1 0 1.8 0.01
.option savecurrents

.control
  save all
  run
  write source_follower.raw
.endc
"}
C {/home/varun/.ciel/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 60 170 0 0 {name=M1
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
spiceprefix=X}
C {/home/varun/.ciel/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 290 130 0 0 {name=M2
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
spiceprefix=X}
