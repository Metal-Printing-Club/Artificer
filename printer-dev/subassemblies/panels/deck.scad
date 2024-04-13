projection(cut = false) {

//translate([-20,-152.5,185])
//rotate([0,90,0])
//import("corner_a_x2.stl");
difference() {
hull() {
translate([-230,-230,0])
color("pink")
cylinder(d=10,h=2,$fn=64,center=true);

translate([230,230,0])
color("pink")
cylinder(d=10,h=2,$fn=64,center=true);

translate([-230,230,0])
color("pink")
cylinder(d=10,h=2,$fn=64,center=true);

translate([230,-230,0])
color("pink")
cylinder(d=10,h=2,$fn=64,center=true);
}

translate([-215,-35 - 60,0])

cylinder(d=3.2,h=20,$fn=64,center=true);

translate([-215,-35,0])

cylinder(d=3.2,h=20,$fn=64,center=true);


translate([-215,45,0])

cylinder(d=3.2,h=20,$fn=64,center=true);



translate([215,-35 - 60,0])

cylinder(d=3.2,h=20,$fn=64,center=true);

translate([215,-35,0])

cylinder(d=3.2,h=20,$fn=64,center=true);


translate([215,45,0])

cylinder(d=3.2,h=20,$fn=64,center=true);


hull() {
translate([-225,-35 - 60,0])
cylinder(d=10,h=20,$fn=64,center=true);
translate([-225,25 -60,0])
cylinder(d=10,h=20,$fn=64,center=true);

translate([-250,-35 -60,0])
cylinder(d=10,h=20,$fn=64,center=true);
translate([-250,25 -60,0])
cylinder(d=10,h=20,$fn=64,center=true);
}


hull() {
translate([-225,35 + 60,0])
cylinder(d=10,h=20,$fn=64,center=true);
translate([-225,-25 +60,0])
cylinder(d=10,h=20,$fn=64,center=true);

translate([-250,35 +60,0])
cylinder(d=10,h=20,$fn=64,center=true);
translate([-250,-25 +60,0])
cylinder(d=10,h=20,$fn=64,center=true);
}


hull() {
translate([225,-35 - 60,0])
cylinder(d=10,h=20,$fn=64,center=true);
translate([225,25 -60,0])
cylinder(d=10,h=20,$fn=64,center=true);

translate([250,-35 -60,0])
cylinder(d=10,h=20,$fn=64,center=true);
translate([250,25 -60,0])
cylinder(d=10,h=20,$fn=64,center=true);
}


hull() {
translate([225,35 + 60,0])
cylinder(d=10,h=20,$fn=64,center=true);
translate([225,-25 +60,0])
cylinder(d=10,h=20,$fn=64,center=true);

translate([250,35 +60,0])
cylinder(d=10,h=20,$fn=64,center=true);
translate([250,-25 +60,0])
cylinder(d=10,h=20,$fn=64,center=true);
}

//pass through
translate([-130,130,0]){
hull() {
translate([-10,-5,0])
cylinder(d=10,h=20,center=true,$fn=64);

translate([-10,5,0])
cylinder(d=10,h=20,center=true,$fn=64);

translate([10,5,0])
cylinder(d=10,h=20,center=true,$fn=64);

translate([10,-5,0])
cylinder(d=10,h=20,center=true,$fn=64);
}
}
}

}