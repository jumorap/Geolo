$fn = 90;

lx = 100;
ly = 100;
lz = 3;

r_borde = 2.5;

// Orificios
d1 = 47;
r1 = 2.75/2;

// Lente tubo
lr1 = 23/2 - 1;
lr2 = lr1 + 1 + 0.25;

d2 = 20;

// 47 + 47 entre orificios

difference() {
  translate([0, 0, lz/2])
  linear_extrude(height = lz, center = true, convexity = 10)
  minkowski() {
    square([lx-2*r_borde, ly-2*r_borde], center=true);
    circle(r=r_borde);
  }

  // hull() {
  //   translate([lx/2-r_borde, lx/2-r_borde]) cylinder(h=lz, r=r_borde);
  //   translate([-lx/2+r_borde, -lx/2+r_borde]) cylinder(h=lz, r=r_borde);
  //   translate([lx/2-r_borde, -lx/2+r_borde]) cylinder(h=lz, r=r_borde);
  //   translate([-lx/2+r_borde, lx/2-r_borde]) cylinder(h=lz, r=r_borde);
  // }

  // Tornillos externos
  translate([d1, d1]) cylinder(h=lz, r=r1);
  translate([-d1, -d1]) cylinder(h=lz, r=r1);
  translate([d1, -d1]) cylinder(h=lz, r=r1);
  translate([-d1, d1]) cylinder(h=lz, r=r1);

  // Lente tubo
  translate([0, 62.25-50, 0]) {
    cylinder(h=lz, r=lr1);
    translate([0, 0, lz/2]) cylinder(h=lz/2, r=lr2);

    translate([1.5*d2, 0]) cylinder(h=lz, r=r1);
    translate([-1.5*d2, 0]) cylinder(h=lz, r=r1);

    // Tornillos objetivo
    translate([d2, d2]) cylinder(h=lz, r=r1);
    translate([-d2, -d2]) cylinder(h=lz, r=r1);
    translate([d2, -d2]) cylinder(h=lz, r=r1);
    translate([-d2, d2]) cylinder(h=lz, r=r1);
  }

  // Entradas exteriores
  translate([0, 112.5]) cylinder(h=lz, r=75);
  translate([0, -75]) cylinder(h=lz, r=50);
  translate([112.5, 0]) cylinder(h=lz, r=75);
  translate([-112.5, 0]) cylinder(h=lz, r=75);
}
