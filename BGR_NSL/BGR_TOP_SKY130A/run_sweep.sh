#!/bin/bash
# usage: ./run_sweep.sh pex   or   ./run_sweep.sh sch
MODE=${1:-pex}
if [ "$MODE" = "pex" ]; then NETLIST=$PWD/BGR_TOP_pex.spice; else NETLIST=$PWD/BGR_TOP_sch.spice; fi
TOP=BGR_TOP
VDDPIN=vdd; VSSPIN=vss; VOUTPIN=out
VSUP=1.8
S0=${2:-0}; S1=${3:-0}
TMIN=-40; TMAX=125; TSTEP=5
CORNERS="tt ss ff sf fs"
LIB=/foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice
PORTS=$(awk -v t="$TOP" '
  tolower($1)==".subckt" && $2==t {f=1; $1="";$2=""; line=$0; next}
  f && /^\+/ {sub(/^\+/,""); line=line " " $0; next}
  f {exit}
  END{print line}' "$NETLIST")
echo "[$MODE] Ports: $PORTS"
for C in $CORNERS; do
cat > tb_${MODE}_$C.spice << TBEOF
* $MODE temperature sweep, corner $C
.lib $LIB $C
.include $NETLIST
Vsup $VDDPIN 0 DC $VSUP
Vgnd $VSSPIN 0 DC 0
Vs0 S0 0 DC $S0
Vs1 S1 0 DC $S1
Xdut $PORTS $TOP
.control
dc temp $TMIN $TMAX $TSTEP
wrdata vout_${MODE}_$C.txt v($VOUTPIN)
.endc
.end
TBEOF
ngspice -b tb_${MODE}_$C.spice > log_${MODE}_$C.txt 2>&1
echo "$MODE $C done"
done
