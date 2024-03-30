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

Meanwell LRS-350-24
Meanwell LRS-200-24
Meanwell LRS-50-12
(Meanwell LRS-50-5? Only needed if we add a Pi)

DC-DC SSR (The second 24V PSU is for a heated bed, so that will be controlled with this)

Filtered fused IEC13 mains inlet
240V rocket switch

Duet3D 6HC controller board
(Duet3D toolhead board?)
Duet3D Paneldue 5i

Optional Raspberry Pi and/or controller board from other kits for Klipper experiments (or just to manage the water cooling? Or can we handle that from the Duet board?)

## Water cooling

Chinese water cooling kit, 240x120 radiator, integrated pump/tank, 12V PSU, 2x120mm 12V fan

Pump and tank:

https://www.aliexpress.com/item/1005004210851438.html?spm=a2g0o.order_list.order_list_main.95.61b31802qJqItj

This has a molex connector, like for a PC.

Specification:

Interface: 8mm/0.31" (used for internal diameter: 5.5-6.5mm/0.21-0.25" hose)
Threaded threads: G1/4
Model: water pump
Voltage: 12V
Power power: 19W
Water flow: 800L/h
Lift: 5m/16.4ft
Size:
Water tank +160MM: approx. 83mm+160mm/3.26+6.29"; Whole length: 264mm/10.39"
Outer diameter: 50mm/1.96"
Internal diameter: 40mm/1.57"

240mm radiator:

https://www.aliexpress.com/item/1005003018063623.html?spm=a2g0o.order_list.order_list_main.101.61b31802qJqItj

This has mounting points for fans and a couple of 1/4 inch threaded hose connectors.

2 x GDSTIME 12v 120mm fan

Tubing, jubilee clips, 1/4mm adapters, 8mm adapters, etc...


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
