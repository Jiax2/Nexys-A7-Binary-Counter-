# Nexys A7 Binary Counter

Simple **4-bit binary counter written in VHDL** using AMD Vivado.

The counter increments on every rising edge of the clock:

```text
0000 → 0001 → 0010 → ... → 1111 → 0000
```

A `reset` input resets the counter to `0000`.

## Simulation

The design includes a VHDL testbench to generate the clock and verify the counter using Vivado Behavioral Simulation.

## Tools

- VHDL
- AMD Vivado
- Nexys A7 / Artix-7

## Next Steps

- Implement the counter on the Nexys A7
- Display the counter value using the onboard LEDs
