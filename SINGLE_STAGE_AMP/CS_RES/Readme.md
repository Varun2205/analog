## CODE
```
{name=s1 only_toplevel=false value="
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
```