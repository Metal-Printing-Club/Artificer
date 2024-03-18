# Bill Of Materials (WIP!)

## Extruder

FabMX kit plus printed parts plus...
2x30mm 24V heater
Thermistor
V6 nozzle hardened steel


## Frame

Voron 2.4 350mm frame kit LDO

Allows us to use the full electronics bay, skirts, feet, etc from Voron Trident 350, so BOM for that (e.g. DIN rails etc) as stock.

Additional extrusions:
4x2040 470mm tapped
4x2020 310mm

Lots of plastic


## Electronics

Meanwell LRS350 24V

Duet3D controller board and toolhead board

Chinese water cooling kit, 240x120 radiator, integrated pump/tank, 12V PSU, 2x120mm 12V fan

Optional Raspberry Pi and/or controller board from other kits for Klipper experiments (or just to manage the water cooling? Or can we handle that from the Duet board?)


## Motors

XY Motors:
Nema23 - using Duet3D "Duet 3 Motor23 CL" (without brake)

Z motor:
Generic Nema 23

Extruder motor:

Like this from StepperOnline:

    Manufacturer Part Number: 23HS22-2804S-PG47
    Motor Type: Bipolar Stepper
    Step Angle: 0.039deg
    Holding Torque without Gearbox: 1.25Nm(177.01oz.in)
    Rated Current/phase: 2.8A
    Phase Resistance: 0.9ohms
    Inductance: 2.5mH ± 20%(1KHz)

Gear box between this (1:47) or as low as 1:10.

Can probably use a gear ratio as low as 1:2 safely with PolyMIM but we overspec this to experiment with other materials confidently.


## Bed

Prusa Mini 24v heated bed (magnetic, with integrated PCB heater and flat surface)
Prusa mini removeable PEI coated flexible steel sheet


## Motion

X:

Voron 430mm carbon fiber gantry tube x 2
Fysetc hollow rail MGN9 400mm x 2 + MGN9H carriage x 3

y:

400mm MGN7 x 3 + MGN7C carriage x 6

Need to design a special mounting part to attach these rails to the 2020 extrusions.

9mm belts in "Voron belt path" but with strange tensioning and motor mounts and very strange carriage.

z:

250mm MGN12H x 2
250mm lead screw et al.
