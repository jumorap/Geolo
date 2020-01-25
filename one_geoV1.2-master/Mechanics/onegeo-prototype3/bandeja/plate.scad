module plate() {

file_name = "DXF/rack.dxf";

// Placa
lx = 79.5;
ly = 100;
lz = 2;

// Canal
cx = 4;
cy = ly;
cz = 6;

hx = 2.5;
hy = ly;
hz = 3.3;

dc_borde = 1.5;

// Engranajes
OD1 = 21.38;
OD2 = 73.53;

// Rodamiento
r_rod = 65.5/2;
d_borde = 5;

// Motor
d_motor = (OD1 + OD2)/2 - 1;

module soporte_rod() {
  translate([lx/2, ly - r_rod - d_borde]) for(i = [0:120:240])
  rotate([0,0,i]) translate([r_rod-0.5, -2.5, lz]) difference() {
    union() {
      cube([3.5, 5, 5]);
      // Soporte engranaje rodamiento
      translate([2, 2.5, 5]) cylinder(h=3, r=1);
    }
    translate([0, 2.5, 2.5]) rotate([0,90,0]) cylinder(h=3.7, r=2.7/2);
  }
}

module motor_holes(center = [0, 0, 0], rot = 0, h = 2) {
  // Agujeros motor
  l = 16;
  lh = l/2;
  r_hole = 2.2/2;
  r_center = 16/2;

  ranura = 1.5;

  holes = [[l/2-lh, l/2-lh],
  [l/2-lh, l/2+lh],
  [l/2+lh, l/2-lh],
  [l/2+lh, l/2+lh]];

  translate(center)
  rotate([0, 0, rot])
  translate(-[l/2, l/2])
  union() {
    hull() {
      translate([l/2, l/2 - ranura/2]) cylinder(r = r_center, h = h);
      translate([l/2, l/2 + ranura/2]) cylinder(r = r_center, h = h);
    }

    for(i = holes) {
      hull() {
        translate(i + [0, -ranura/2]) cylinder(r = r_hole, h = h);
        translate(i + [0, ranura/2]) cylinder(r = r_hole, h = h);
      }
    }
  }
}

module sensor (center = 0) {
  r_suj = 2.6/2;
  d_suj = 7 - 2*r_suj;
  h_suj = 3;
  h_viga = 7;

  lx = d_suj;
  ly = 2;
  lz = h_viga;

  translate([-(1+d_suj/2)*center, 1, 0])
  union() {

    translate([r_suj + 1, r_suj + 1, h_viga])
    difference() {
      hull () {
        cylinder(r = r_suj + 1, h = h_suj);
        translate([d_suj, 0]) cylinder(r = r_suj + 1, h = h_suj);
      }
      hull () {
        cylinder(r = r_suj, h = h_suj);
        translate([d_suj, 0]) cylinder(r = r_suj, h = h_suj);
      }
      translate([r_suj - 0.5, r_suj - 0.1])
      cube([3, 1.2, h_suj]);
    }

    translate([r_suj + 1, -1, 0])
    cube([lx, ly, h_viga + h_suj]);
  }
}

difference() {
  union() {
    cube([lx, ly, lz]);
    translate([lx-dc_borde, 0, lz/2-cz/2]) cube([cx, cy, cz]);
    translate([dc_borde-cx, 0, lz/2-cz/2]) cube([cx, cy, cz]);
    soporte_rod();
    translate([dc_borde-cx, 10, cz/2+lz/2]) rotate(-90) sensor();
    translate([cx-1-dc_borde, ly - r_rod - d_borde - 1.25, cz/2+lz/2]) rotate(90)
    sensor(center=1);

    // Rack
    translate([lx+1, ly, cz/2+lz/2])
    rotate(-90)
    linear_extrude(height = 2, center = false, convexity = 10)
    import (file = file_name);

    // Soportes Engranajes
    // motordc_pinion
    translate([7, 8, lz]) cylinder(h=3, r=1);
    translate([13, 8, lz]) cylinder(h=3, r=1);
    // stepper_gear
    translate([60, 15, lz]) cylinder(h=3, r=1);
    translate([70, 15, lz]) cylinder(h=3, r=1);
  }

  // Rodamiento
  translate([lx/2, ly - r_rod - d_borde]) cylinder(h = lz, r = r_rod - 1);
  translate([lx/2, ly - r_rod - d_borde, lz/2]) cylinder(h = lz+5, r = r_rod);
  // Posición del rodamiento
  echo("Posición rodamiento", [lx/2, ly - r_rod - d_borde]);

  motor_holes(center = [lx/2, ly - r_rod - d_borde - d_motor]);

  translate([lx, 0, lz/2-hz/2]) cube([hx, hy, hz]);
  translate([-hx, 0, lz/2-hz/2]) cube([hx, hy, hz]);
}
}

$fn = 150;
plate();
