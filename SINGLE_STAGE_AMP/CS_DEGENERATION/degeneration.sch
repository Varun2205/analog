v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 230 70 230 100 {
lab=#net1}
N 230 160 230 190 {
lab=GND}
N 230 40 240 40 {
lab=GND}
N 240 40 250 40 {
lab=GND}
N 230 -20 230 10 {
lab=Vo}
N 230 -100 230 -80 {
lab=VDD}
N 230 -0 290 -0 {
lab=Vo}
N 120 40 190 40 {
lab=Vin}
N 120 100 120 110 {
lab=GND}
N 100 40 120 40 {
lab=Vin}
N -30 -40 -30 -20 {
lab=VDD}
N -30 40 -30 50 {
lab=GND}
C {res.sym} 230 130 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 230 -50 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 230 -100 0 0 {name=l1 lab=VDD}
C {gnd.sym} 230 190 0 0 {name=l2 lab=GND}
C {gnd.sym} 250 40 0 0 {name=l3 lab=GND}
C {vsource.sym} 120 70 0 0 {name=V1 value=0.8}
C {gnd.sym} 120 110 0 0 {name=l4 lab=GND}
C {ipin.sym} 100 40 0 0 {name=p1 lab=Vin}
C {opin.sym} 290 0 0 0 {name=p2 lab=Vo}
C {code.sym} 420 -120 0 0 {name=s1 only_toplevel=false value="
.lib /home/varun/.ciel/ciel/sky130/versions/1689ac3f2dc763876eaf967227c7dfe831b031ae/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc V1 0 1.8 10u
.save all

"}
C {vdd.sym} -30 -40 0 0 {name=l5 lab=VDD}
C {vsource.sym} -30 10 0 0 {name=V2 value=1.8}
C {gnd.sym} -30 50 0 0 {name=l6 lab=GND}
C {/home/varun/.ciel/ciel/sky130/versions/1689ac3f2dc763876eaf967227c7dfe831b031ae/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 210 40 0 0 {name=m1
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
