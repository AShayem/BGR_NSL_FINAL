// -----------------------------------------------------------------------------
// BGR_TOP.v
// Bandgap Reference (BGR) - external interface description only
// Technology: SKY130
//
// This file describes only the external ports of the design (inputs, outputs,
// and power pins). It contains no internal behavior, as required by the
// submission rules.
//
//   S1, S0 : 2-bit digital select input (selects the reference output branch
//            through the buffer / inverter / NAND decoder)
//   out    : bandgap reference output voltage (analog)
//   vdd    : positive supply
//   vss    : ground
// -----------------------------------------------------------------------------

module BGR_TOP (
    input  S1,     // select bit 1 (MSB)
    input  S0,     // select bit 0 (LSB)
    output out,    // reference voltage output (analog)
    inout  vdd,    // power supply
    inout  vss     // ground
);

endmodule
