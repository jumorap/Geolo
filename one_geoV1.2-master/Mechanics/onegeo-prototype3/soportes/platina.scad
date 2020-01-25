
$fn = 90;

// Placa
lx1 = 30;
lx2 = 80;
lx = 2*lx1 + lx2;

ly1 = 15;
ly2 = 140;
ly = ly1 + ly2;

lz = 3;

// Ranura
rx = lx2;
ry = ly2;
rz = lz;

// Orificios
ro = 2.75/2;

// Inferior
li = 2*53;
p_inf = [lx/2 - 53, ly1 - 3, 0];

// Superior
lx_sup = lx - 10; echo("lx_sup", lx_bas);
ly_sup = li;
p_sup = [5, ly1 - 3, 0];

// Base
lx_bas = lx - 2*5;
ly_bas = 45;
p_bas = [5, ly1 + (100 - 45)/2, 0];

// Motor DC
p_dc = [lx1 - 10, ly1 + 67 + 16.25, 0];

difference() {
  cube([lx, ly, lz]);
  translate([lx1, ly1, 0]) cube([rx, ry, rz]);

  // Inferior
  translate(p_inf) {
    cylinder(h = lz, r = ro);
    translate([0, li, 0]) cylinder(h = lz, r = ro);
    translate([li, 0, 0]) cylinder(h = lz, r = ro);
    translate([li, li, 0]) cylinder(h = lz, r = ro);
  }

  // Superior
  translate(p_sup) {
    cylinder(h = lz, r = ro);
    translate([0, ly_sup, 0]) cylinder(h = lz, r = ro);
    translate([lx_sup, 0, 0]) cylinder(h = lz, r = ro);
    translate([lx_sup, ly_sup, 0]) cylinder(h = lz, r = ro);
  }

  // Base
  translate(p_bas) {
    cylinder(h = lz, r = ro);
    translate([0, ly_bas, 0]) cylinder(h = lz, r = ro);
    translate([lx_bas, 0, 0]) cylinder(h = lz, r = ro);
    translate([lx_bas, ly_bas, 0]) cylinder(h = lz, r = ro);
  }

  // Motor DC
  translate(p_dc) {
    r_eje = 4.2/2;
    r_torn = 1.8/2;
    d_torn = 4.25;
    d_hull = 0.75;
    hull() {
      translate([-d_hull, 0, 0]) cylinder(h = lz, r = r_eje);
      translate([d_hull, 0, 0]) cylinder(h = lz, r = r_eje);
    }
    hull() {
      translate([-d_hull, d_torn, 0]) cylinder(h = lz, r = r_torn);
      translate([d_hull, d_torn, 0]) cylinder(h = lz, r = r_torn);
    }
    hull() {
      translate([-d_hull, -d_torn, 0]) cylinder(h = lz, r = r_torn);
      translate([d_hull, -d_torn, 0]) cylinder(h = lz, r = r_torn);
    }
  }
}
