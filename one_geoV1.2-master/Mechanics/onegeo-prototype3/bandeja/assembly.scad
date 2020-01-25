
use <plate.scad>;
use <stepper_gear.scad>;
use <pol_gear.scad>;
use <motordc_pinion.scad>;

$fn = 200;

plate();

// Placa
lx = 79.5; ly = 100; lz = 2;
// Rodamiento
r_rod = 65.5/2; d_borde = 5;

translate([lx/2, ly - r_rod - d_borde, 12]) rotate([0, 180, 0])
pol_gear();

// translate([lx/2, ly - r_rod - d_borde, -3])
// difference() {
//   cylinder(h=7, r=65/2);
//   cylinder(h=7, r=49.8/2);
// }

translate([10, 8, 4])
motordc_pinion();

translate([65, 15, 4])
stepper_gear();
