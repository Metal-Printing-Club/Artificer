motor_extrusion_channel_width = 5;

module carriage_bits() 
{
color("blue")
translate([44,62,-12.5])
rotate([90,0,0])
translate([0,0,200])
import("mock_MGN12H-LINEAR-GUIDE-BLOCK.stl");

//// carriage
color("blue")
translate([-44,62,-12.5])
rotate([90,0,0])
translate([0,0,200])
import("mock_MGN12H-LINEAR-GUIDE-BLOCK.stl");

color("cyan")
translate([0,36,-12])
//rotate([0,90,0])
import("mock_klf08.stl");

color("cyan")
translate([0,250+35,-12])
rotate([180,0,0])
import("mock_klf08.stl");

color("cyan")
translate([-836.5,-364,119.6])
rotate([90,0,0])
rotate([0,90,0])
import("mock_310-vert.stl");

color("cyan")
translate([-748.5,-364,119.6])
rotate([90,0,0])
rotate([0,90,0])
import("mock_310-vert.stl");

color("blue")
translate([-44,167,-12.5])
rotate([90,0,0])
import("mock_mgn12-rail.stl");

color("blue")
translate([44,167,-12.5])
rotate([90,0,0])
import("mock_mgn12-rail.stl");

/*
color("orange")
translate([44,36,-12.5])
rotate([180,0,0])
import("[a]_z_rail_stop_x3.stl");

color("orange")
translate([-44,36,-12.5])
rotate([180,0,0])
import("[a]_z_rail_stop_x3.stl");
*/

color("cyan")
translate([0,-14,-24])
rotate([90,0,180])
import("mock_extruder-back.stl");

// T8 lead screw
color("cyan")
translate([0,160,-12])
rotate([90,0,0])
cylinder(d=8,h=250,$fn=32,center=true);

color("cyan")
translate([0,330,-48])
cube([200,20,20],center=true);
color("cyan")
translate([0,244,-12])

translate([0,0,-90])
rotate([90,0,180])

import("NEMA23.stl");
}




module mgn12h_holes() {
translate([10,10,0])
cylinder(d=3.2,h=20,center=true,$fn=32);

translate([-10,10,0])
cylinder(d=3.2,h=20,center=true,$fn=32);

translate([10,-10,0])
cylinder(d=3.2,h=20,center=true,$fn=32);

translate([-10,-10,0])
cylinder(d=3.2,h=20,center=true,$fn=32);
}

module mgn12h_wide_holes() {
translate([10,10,0])
cylinder(d=6.5,h=10,center=true,$fn=32);

translate([-10,10,0])
cylinder(d=6.5,h=10,center=true,$fn=32);

translate([10,-10,0])
cylinder(d=6.5,h=10,center=true,$fn=32);

translate([-10,-10,0])
cylinder(d=6.5,h=10,center=true,$fn=32);
}







module accessory_holes() {
translate([0,6,0])
cylinder(d=3.2,h=20,center=true,$fn=32);

translate([0,-6,])
cylinder(d=3.2,h=20,center=true,$fn=32);

}

module accessory_wide_holes() {
translate([0,6,0])
cylinder(d=5.2,h=10,center=true,$fn=32);

translate([0,-6,0])
cylinder(d=5.2,h=10,center=true,$fn=32);
;
}







module fabmx_holes_for_insert() {
//lower hole
//translate([34.667,0,0])
translate([26,0,0])
cylinder(d=5.3,h=18,center=true,$fn=64);

//upper hole
translate([26,67,0])
cylinder(d=5.3,h=18,center=true,$fn=64);

//lower hole for insert
translate([26,0,-4.2])
cylinder(d=6.7,h=10,center=true,$fn=64);

//upper hole for insert
translate([26,67,-4.2])
cylinder(d=6.7,h=10,center=true,$fn=64);

translate([44,66,0])
mgn12h_holes();

translate([44,66,5])
mgn12h_wide_holes();




translate([43,2,0])
accessory_holes();

translate([43,2,-6])
accessory_wide_holes();

translate([43,26,0])
accessory_holes();

translate([43,26,-6])
accessory_wide_holes();

}
module carriage() 
{

//mount
translate([0,171,-12])

scale([1,-1,1])
{
difference() {
translate([0,92,0])
hull() {
rotate([90,0,0])
cylinder(d=20,h=12,$fn=128,center=true);
translate([0,0,10])
cube([44,12,5],center=true);

translate([0,22,10])
rotate([90,0,0])
cylinder(d=16,h=12,$fn=128,center=true);
}
rotate([90,0,0])
cylinder(d=9,h=250,$fn=32,center=true);

translate([8,0,0])
rotate([90,0,0])
cylinder(d=3.2,h=250,$fn=32,center=true);

translate([-8,0,0])
rotate([90,0,0])
cylinder(d=3.2,h=250,$fn=32,center=true);

translate([0,220,0]){
translate([8,0,0])
rotate([90,0,0])
cylinder(d=6.5,h=250,$fn=32,center=true);

translate([-8,0,0])
rotate([90,0,0])
cylinder(d=6.5,h=250,$fn=32,center=true);
}

}
}

difference() {
color("pink")
hull() {

translate([-52,75,0.5])
cylinder(d=20,h=11,$fn=128,center=true);

translate([52,75,0.5])
cylinder(d=20,h=11,$fn=128,center=true);

translate([-42,0,0.5])
cylinder(d=20,h=11,$fn=128,center=true);

translate([42,0,0.5])
cylinder(d=20,h=11,$fn=128,center=true);
}

// mock oldham
//translate([0,95,0])
//cube([35,40,40],center=true);

// mock oldham
translate([0,10,0])
cube([35,82,40],center=true);





fabmx_holes_for_insert();

scale([-1,1,1])
fabmx_holes_for_insert();
}

module coupler_holes() {
translate([-10,35,0])
cylinder(d=5.3,h=11,$fn=64,center=true);

translate([-10,95,0])
cylinder(d=5.3,h=11,$fn=64,center=true);


translate([10,35,0])
cylinder(d=5.3,h=11,$fn=64,center=true);

translate([10,95,0])
cylinder(d=5.3,h=11,$fn=64,center=true);
}
}



module base_bolts() {

translate([27,40,6])
cylinder(d=9.8,h=76,$fn=32,center=true);

translate([27,40,6])
cylinder(d=5.2,h=90,$fn=32,center=true);


translate([-27,40,6])
cylinder(d=9.8,h=76,$fn=32,center=true);

translate([-27,40,6])
cylinder(d=5.2,h=90,$fn=32,center=true);
}

module base() {
difference() {
translate([0,40,-28])
cube([67.8,20,20],center=true);
translate([0,50,-12])
hull() {
rotate([90,0,0])
cylinder(d=30,h=28,$fn=128,center=true);

translate([-20,0,0])
rotate([90,0,0])
cylinder(d=12,h=28,$fn=128,center=true);

translate([20,0,0])
rotate([90,0,0])
cylinder(d=12,h=28,$fn=128,center=true);


}

base_bolts();

translate([0,57,-28])
rotate([30,0,0])
cube([68,20,40],center=true);

}


difference() {
translate([0,33,-12])
cube([67.8,6,12],center=true);



translate([0,50,-12])
{
rotate([90,0,0])
cylinder(d=9,h=48,$fn=128,center=true);

translate([-18,0,0])

rotate([90,0,0])
cylinder(d=5.2,h=48,$fn=128,center=true);

translate([-18,-18,0])

rotate([90,0,0])
cylinder(d=10.5,h=4.2,$fn=6,center=true);




translate([18,0,0])

rotate([90,0,0])
cylinder(d=5.2,h=50,$fn=128,center=true);

translate([18,-18,0])

rotate([90,0,0])
cylinder(d=10.5,h=4.2,$fn=6,center=true);

}

base_bolts();
}

difference() {
hull() {
translate([-44,36,-13])
cube([20,12,10],center=true);


translate([-32,34,-12])
cube([10,8,12],center=true);
}

translate([-44,36,6])
cylinder(d=9.8,h=40,$fn=32,center=true);

translate([-44,36,6])
cylinder(d=5.2,h=60,$fn=32,center=true);

base_bolts();

}


difference() {
hull() {
translate([44,36,-13])
cube([20,12,10],center=true);


translate([32,34,-12])
cube([10,8,12],center=true);
}

translate([44,36,6])
cylinder(d=9.8,h=40,$fn=32,center=true);

translate([44,36,6])
cylinder(d=5.2,h=60,$fn=32,center=true);


base_bolts();

}

}



module top() {



difference() {

hull() {
translate([0,40,-16])
cube([67.8,20,6],center=true);



translate([0,50,-12])
{

translate([-18,-2,0])

rotate([90,0,0])
cylinder(d=11,h=4.2,$fn=64,center=true);

translate([0,-2,0])

rotate([90,0,0])
cylinder(d=28,h=4.2,$fn=64,center=true);

translate([18,-2,0])

rotate([90,0,0])
cylinder(d=11,h=4.2,$fn=64,center=true);


}

}


translate([0,50,-12])
{
rotate([90,0,0])
cylinder(d=9,h=48,$fn=128,center=true);

translate([-18,0,0])

rotate([90,0,0])
cylinder(d=5.2,h=48,$fn=128,center=true);

translate([-18,-18,0])

rotate([90,0,0])
cylinder(d=10.5,h=24.2,$fn=6,center=true);




translate([18,0,0])

rotate([90,0,0])
cylinder(d=5.2,h=50,$fn=128,center=true);

translate([18,-18,0])

rotate([90,0,0])
cylinder(d=10.5,h=24.2,$fn=6,center=true);

}

}





difference() {
hull() {
translate([-44,36,-13])
cube([20,12,10],center=true);


translate([-24,34,-17.95])
cube([10,8,0.1],center=true);
}

translate([-44,36,6])
cylinder(d=9.8,h=40,$fn=32,center=true);

translate([-44,36,6])
cylinder(d=5.2,h=60,$fn=32,center=true);

}


difference() {
hull() {
translate([44,36,-13])
cube([20,12,10],center=true);


translate([24,34,-17.95])
cube([10,8,0.1],center=true);
}

translate([44,36,6])
cylinder(d=9.8,h=40,$fn=32,center=true);

translate([44,36,6])
cylinder(d=5.2,h=60,$fn=32,center=true);



}




translate([-16,4,16])
rotate([0,90,0])
difference() {
hull() {
translate([44,36,-13])
cube([20,20,10],center=true);


translate([34,34,-17.95])
cube([10,8,0.1],center=true);
}

translate([44,36,6])
cylinder(d=9.8,h=40,$fn=32,center=true);

translate([44,36,6])
cylinder(d=5.2,h=60,$fn=32,center=true);



}

scale([-1,1,1])
translate([-16,4,16])
rotate([0,90,0])
difference() {
hull() {
translate([44,36,-13])
cube([20,20,10],center=true);


translate([34,34,-17.95])
cube([10,8,0.1],center=true);
}

translate([44,36,6])
cylinder(d=9.8,h=40,$fn=32,center=true);

translate([44,36,6])
cylinder(d=5.2,h=60,$fn=32,center=true);



}



}

// end of top

module motor_mount() {
difference() {
translate([0,251 ,-102])

hull() {
//cube([108,8,60],center=true);

translate([108/2 - 2,0,28.5])
rotate([0,45,0])
hull() {
translate([0,-3.95,0])
cube([0.1,0.1,0.1],center=true);

cube([2,4,2],center=true);

translate([0,3.95,0])
cube([0.1,0.1,0.1],center=true);
}


translate([108/2 - 2,0,-28.5])
rotate([0,45,0])
hull() {
translate([0,-3.95,0])
cube([0.1,0.1,0.1],center=true);

cube([2,4,2],center=true);

translate([0,3.95,0])
cube([0.1,0.1,0.1],center=true);
}


translate([0 - (108/2 - 2),0,28.5])
rotate([0,45,0])
hull() {
translate([0,-3.95,0])
cube([0.1,0.1,0.1],center=true);
cube([2,4,2],center=true);
translate([0,3.95,0])
cube([0.1,0.1,0.1],center=true);
}

translate([0 - (108/2 - 2),0,-28.5])
rotate([0,45,0])
hull() {
translate([0,-3.95,0])
cube([0.1,0.1,0.1],center=true);
cube([2,4,2],center=true);
translate([0,3.95,0])
cube([0.1,0.1,0.1],center=true);
}

}




translate([0,251,-102])
rotate([90,0,0])
cylinder(d=40,h=20,$fn=128,center=true);





translate([108/2 - 10,0,20])
translate([0,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=9,$fn=128,center=true);

translate([108/2 - 10,0,-20])
translate([0,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=9,$fn=128,center=true);


translate([0 - (108/2 - 10),0,20])
translate([0,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=9,$fn=128,center=true);

translate([0 - (108/2 - 10),0,-20])
translate([0,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=9,$fn=128,center=true);


translate([0,0,-23.6])
translate([23.6,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=9,$fn=128,center=true);


translate([0,0,23.6])
translate([23.6,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=9,$fn=128,center=true);


translate([0,0,-23.6])
translate([-23.6,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=9,$fn=128,center=true);


translate([0,0,23.6])
translate([-23.6,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=9,$fn=128,center=true);




translate([0,0,-23.6])
translate([-23.6,253,-102])
rotate([90,0,0])
cylinder(d=10.5,h=4.2,$fn=6,center=true);

translate([0,0,23.6])
translate([-23.6,253,-102])
rotate([90,0,0])
cylinder(d=10.5,h=4.2,$fn=6,center=true);

translate([0,0,-23.6])
translate([23.6,253,-102])
rotate([90,0,0])
cylinder(d=10.5,h=4.2,$fn=6,center=true);

translate([0,0,23.6])
translate([23.6,253,-102])
rotate([90,0,0])
cylinder(d=10.5,h=4.2,$fn=6,center=true);


}

difference() {

translate([0,251,-102])

hull() {
translate([108/2 - 10,-2.5,0])
cube([motor_extrusion_channel_width - .1,3,57.2],center=true);

translate([108/2 - 10,-3.5,0])
cube([motor_extrusion_channel_width-.5,2.7,54],center=true);
}

translate([108/2 - 10,0,20])
translate([0,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=19,$fn=128,center=true);

translate([108/2 - 10,0,-20])
translate([0,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=19,$fn=128,center=true);


translate([0 - (108/2 - 10),0,20])
translate([0,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=19,$fn=128,center=true);

translate([0 - (108/2 - 10),0,-20])
translate([0,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=19,$fn=128,center=true);
}



difference() {

translate([0,251,-102])

hull() {
translate([0 - (108/2 - 10),-2.5,0])
cube([motor_extrusion_channel_width,3,57.2],center=true);

translate([0 - (108/2 - 10),-3.5,0])
cube([motor_extrusion_channel_width-.5,2.7,54],center=true);
}

translate([108/2 - 10,0,20])
translate([0,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=19,$fn=128,center=true);

translate([108/2 - 10,0,-20])
translate([0,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=19,$fn=128,center=true);


translate([0 - (108/2 - 10),0,20])
translate([0,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=19,$fn=128,center=true);

translate([0 - (108/2 - 10),0,-20])
translate([0,251,-102])
rotate([90,0,0])
cylinder(d=5.2,h=19,$fn=128,center=true);


}



}


carriage_bits();

color("grey")
carriage();

color("red")
base();

color("orange")
translate([0,335,0])
scale([1,-1,1])
top();

color("magenta")
motor_mount();