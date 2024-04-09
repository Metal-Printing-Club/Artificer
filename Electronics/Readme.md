The current electronics configuration for Artificer is as follows:

## Components

### Control
* Mainboard: [Duet 3 6HC v1.01](https://docs.duet3d.com/Duet3D_hardware/Duet_3_family/Duet_3_Mainboard_6HC_Hardware_Overview)
* Expansion: 2x [Duet 3 Motor23CL](https://docs.duet3d.com/en/Duet3D_hardware/Duet_3_family/Duet_3_Motor_23CL)
* Display : [Paneldue 5i](https://docs.duet3d.com/Duet3D_hardware/Accessories/PanelDue)

### Motion

* Extruder Motor: 23HS22-2804S-PG15
* Z motor: 23HE22-2804S
* A/B Motors: Duet 3 Motor 23CL
* XY endstop: Voron Microswitch XY Endstop PCB
* Z endstop: Zmax limit swithc model TBC
* Nozzle touch off switch: Voron Sexbolt
* Z probe: _details TBC_

### Heating

* Extruder Heaters: 2x Generic 6x30-24V 40W, controled as 1x 80W heater
* Extruder thermistor: MF52B 100K B3590

### Cooling
* Extruder Coldside cooling: 12V water pump _details TBC_
* Part cooling blower : _details TBC_
* Electornics bay cooling: _details TBC_
* Other cooling: _details TBC_

##Wiring

The Duet 3 6HC wiring diagram is available on Duet 3D's documentation site, use the v1.01 version:
https://docs.duet3d.com/Duet3D_hardware/Duet_3_family/Duet_3_Mainboard_6HC_Hardware_Overview#wiring-diagram

reproduced below
![image](https://github.com/Metal-Printing-Club/Artificer/assets/1642947/eb1fd5e3-75cd-4b15-918b-678a8da808b4)


Annotated image to follow, for now connect as follows:
### Power
* VIN 24V
* Jumper 24V to heated ben (OUT0) input

### Stepper Drivers
* Z Motor on Driver 0
* E motor on Driver 1
* A/B motos on CAN -Fd bus

### Heaters
* Heated bed OUT0
* Both extruder heater cartidges: OUT1
* heated bed thermistor: temp0
* extruder thermistor: temp1

### Endstops
* X : io2.in and GND
* Y : io3.in and GND
* Z : io4.in and GND

### PanelDue
* IO0 header (UART)

### Fans
TBC
Both banks of fan outouts can be set to 12V however NB 800mA max current draw

### Pump
Always on for now



  
