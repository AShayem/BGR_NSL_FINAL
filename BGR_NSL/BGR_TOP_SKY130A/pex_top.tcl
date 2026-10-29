gds read BGR_TOP.klay.gds
load BGR_TOP
extract do local
extract do capacitance
extract do coupling
extract all
ext2spice lvs off
ext2spice cthresh 0.01
ext2spice rthresh 0
ext2spice format ngspice
ext2spice -o BGR_TOP_pex.spice
quit -noprompt
