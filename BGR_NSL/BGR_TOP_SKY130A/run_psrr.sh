#!/bin/bash
# usage: ./run_psrr.sh <sch|pex> <S0 volts> <S1 volts>
MODE=${1:-pex}; S0=${2:-0}; S1=${3:-0}
if [ "$MODE" = "pex" ]; then NETLIST=$PWD/BGR_TOP_pex.spice; else NETLIST=$PWD/BGR_TOP_sch.spice; fi
TOP=BGR_TOP
VDDPIN=vdd; VSSPIN=vss; VOUTPIN=out
VSUP=1.8; TEMP=27
CORNERS="tt ss ff sf fs"
LIB=/foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice
PORTS=$(awk -v t="$TOP" '
  tolower($1)==".subckt" && $2==t {f=1; $1="";$2=""; line=$0; next}
  f && /^\+/ {sub(/^\+/,""); line=line " " $0; next}
  f {exit}
  END{print line}' "$NETLIST")
for C in $CORNERS; do
cat > tb_psrr_${MODE}_$C.spice << TBEOF
* PSRR, $MODE, corner $C, S0=$S0 S1=$S1
.lib $LIB $C
.include $NETLIST
.temp $TEMP
Vsup $VDDPIN 0 DC $VSUP AC 1
Vgnd $VSSPIN 0 DC 0
Vs0 S0 0 DC $S0
Vs1 S1 0 DC $S1
Xdut $PORTS $TOP
.control
ac dec 20 1 1G
let psrr = -vdb($VOUTPIN)
wrdata psrr_${MODE}_$C.txt psrr
.endc
.end
TBEOF
ngspice -b tb_psrr_${MODE}_$C.spice > log_psrr_${MODE}_$C.txt 2>&1
echo "$MODE $C done"
done
