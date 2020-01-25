module stepper_gear() {

// Engranaje
h1 = 3;
file_name = "DXF/gear_N30P2.1.dxf";

// Eje
r_in = 4/2 + 0.25;
r_out = r_in + 2;
h2 = 5;

union() {
  difference() {
    union() {
      linear_extrude(height = h1, convexity = 10)
      import(file = file_name);
      translate([0, 0, h1]) cylinder(r = r_out, h = h2);
    }
    cylinder(r = r_in, h = h1 + h2);
  }
  translate([2.3, -2.5, 0]) cube([2, 5, h1 + h2]);
}
}
