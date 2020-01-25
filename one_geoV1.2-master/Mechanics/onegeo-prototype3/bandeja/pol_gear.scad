
use <iman.scad>;

module pol_gear() {

// Engranaje
h1 = 3;
file_name = "DXF/gear_N108P2.1.dxf";

// Pol
r_in = 54.15/2 + 0.25;
r_out = r_in + 1.5;
h2 = 5 - h1;

ri3 = 49.8/2 - 0.25 - 1.5;
ro3 = r_out;
h3 = 1.5;

// Contacto con rodamiento
ro4 = 49.8/2 - 0.25;
ri4 = ro4 - 1.5;
h4 = 8;

ri5 = ro4;
ro5 = ri5 + 1;
h5 = 1;

difference() {
  union() {
    linear_extrude(height = h1, convexity = 10)
    import(file = file_name);

    translate([37, 0, 0]) rotate(180) rotate([180, 0, 0]) iman();

    translate([0, 0, h1]) cylinder(r = r_out, h = h2);
    translate([0, 0, h1+h2]) cylinder(r = ro3, h = h3);
    translate([0, 0, h1+h2+h3]) cylinder(r = ro4, h = h4);
    translate([0, 0, h1+h2+h3]) cylinder(r = ro5, h = h5);
  }
  cylinder(r = r_in, h = h1 + h2);
  translate([0, 0, h1+h2]) cylinder(r = ri3, h = h3);
  translate([0, 0, h1+h2+h3]) cylinder(r = ri4, h = h4);
}

}

$fn = 100;
pol_gear();
