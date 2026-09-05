v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 920 -1860 940 -1860 {
lab=GND}
N 940 -1860 940 -1830 {
lab=GND}
N 920 -1830 940 -1830 {
lab=GND}
N 920 -1830 920 -1810 {
lab=GND}
N 920 -2000 920 -1980 {
lab=VDD}
N 920 -1920 920 -1890 {
lab=Vo}
N 830 -1860 880 -1860 {
lab=Vin}
N 850 -1800 850 -1790 {
lab=GND}
N 920 -1910 990 -1910 {
lab=Vo}
N 1170 -1890 1170 -1880 {
lab=GND}
N 1170 -1960 1170 -1950 {
lab=VDD}
C {res.sym} 920 -1950 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 920 -2000 0 0 {name=l1 lab=VDD}
C {gnd.sym} 920 -1810 0 0 {name=l2 lab=GND}
C {vsource.sym} 850 -1830 0 0 {name=V1 value=0.8}
C {gnd.sym} 850 -1790 0 0 {name=l3 lab=GND}
C {ipin.sym} 830 -1860 0 0 {name=p1 lab=Vin}
C {opin.sym} 990 -1910 0 0 {name=p2 lab=Vo}
C {vdd.sym} 1170 -1960 0 0 {name=l4 lab=VDD}
C {vsource.sym} 1170 -1920 0 0 {name=V2 value=1.8}
C {gnd.sym} 1170 -1880 0 0 {name=l5 lab=GND}
C {code.sym} 760 -2020 0 0 {name=s1 only_toplevel=false value="
.option scale=1u
.lib /home/varun/.ciel/ciel/sky130/versions/1689ac3f2dc763876eaf967227c7dfe831b031ae/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control
  save all

  * Sweep R1 from 1k to 9k with 2k step size (1k, 3k, 5k, 7k, 9k)
  foreach r_val 1k 3k 5k 7k 9k
    alter R1 $r_val
    dc V1 0 1.8 0.01
  end

  * Graph 1: Vout vs Vin across all 5 resistor steps
  plot dc1.v(Vo) dc2.v(Vo) dc3.v(Vo) dc4.v(Vo) dc5.v(Vo) title 'Vout vs Vin (R1 = 1k, 3k, 5k, 7k, 9k)'

  * Graph 2: Voltage Gain d(Vout)/d(Vin) vs Vin
  plot deriv(dc1.v(Vo)) deriv(dc2.v(Vo)) deriv(dc3.v(Vo)) deriv(dc4.v(Vo)) deriv(dc5.v(Vo)) title 'Small-Signal Gain Av = d(Vo)/d(Vin)'
.endc
"}
C {/home/varun/.ciel/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 900 -1860 0 0 {name=M1
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
spiceprefix=X
}
