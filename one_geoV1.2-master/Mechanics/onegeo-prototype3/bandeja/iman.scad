module iman() {

ri1 = 3/2 + 0.25;
h1 = 1 + 0.25;
ri2 = 1/2 + 0.25;
h2 = 3;

difference() {
  union() {
    translate([2, -1, 0]) cube([5, 2, 5]);
    translate([0, -2.5, 4]) cube([4, 5, 5]);
  }
  translate([0, 0, 4 + 5/2]) rotate([0, 90, 0])
  cylinder(r=ri1, h=h1);
  translate([h1, 0, 4 + 5/2]) rotate([0, 90, 0])
  cylinder(r=ri2, h=h2);
}
}
