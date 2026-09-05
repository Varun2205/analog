v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 60 0 60 30 {
lab=Vo}
N 60 30 100 30 {
lab=Vo}
N 100 30 100 70 {
lab=Vo}
N 100 100 120 100 {
lab=GND}
N 120 100 120 140 {
lab=GND}
N 100 140 120 140 {
lab=GND}
N 100 130 100 140 {
lab=GND}
N 100 130 100 140 {
lab=GND}
N 100 140 100 160 {
lab=GND}
N 100 -0 120 0 {
lab=VDD}
N 120 -40 120 0 {
lab=VDD}
N 100 -40 120 -40 {
lab=VDD}
N 100 -40 100 -30 {
lab=VDD}
N 100 -50 100 -40 {
lab=VDD}
N -10 100 60 100 {
lab=Vin}
N 100 50 180 50 {
lab=Vo}
N 10 160 10 180 {
lab=GND}
N 420 -20 420 0 {
lab=VDD}
N 420 60 420 80 {
lab=GND}
C {/home/varun/.ciel/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 80 0 0 0 {name=M1
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/home/varun/.ciel/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 80 100 0 0 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {vdd.sym} 100 -50 0 0 {name=l1 lab=VDD}
C {gnd.sym} 100 160 0 0 {name=l2 lab=GND}
C {opin.sym} 180 50 0 0 {name=p1 lab=Vo}
C {ipin.sym} -10 100 0 0 {name=p2 lab=Vin}
C {vsource.sym} 10 130 0 0 {name=V1 value=0.8}
C {gnd.sym} 10 180 0 0 {name=l3 lab=GND}
C {vsource.sym} 420 30 0 0 {name=V2 value=1.8}
C {vdd.sym} 420 -20 0 0 {name=l4 lab=VDD}
C {gnd.sym} 420 80 0 0 {name=l5 lab=GND}
