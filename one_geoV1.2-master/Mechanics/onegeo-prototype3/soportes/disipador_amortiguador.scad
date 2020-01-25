$fn = 90;

lx = 105;
ly = 105;
lz = 3;

r_borde = 2.5;

// Orificios
d1 = 47;
r1 = 5.8/2;
r2 = 3.8/2;
r2_delta = 2;
d2 = 49/2 - r2;

// 47 + 47 entre orificios

difference() {
  translate([0, 0, lz/2])
  linear_extrude(height = lz, center = true, convexity = 10)
  minkowski() {
    square([lx-2*r_borde, ly-2*r_borde], center=true);
    circle(r=r_borde,$fn = 8);
  }

  // Externos
  translate([d1, d1]) cylinder(h=lz, r=r1);
  translate([-d1, -d1]) cylinder(h=lz, r=r1);
  translate([d1, -d1]) cylinder(h=lz, r=r1);
  translate([-d1, d1]) cylinder(h=lz, r=r1);

  // Entradas exteriores
  translate([0, -75]) cylinder(h=lz, r=49,$fn = 12);
  translate([112.5, 0]) cylinder(h=lz, r=75,$fn = 20);
  translate([-112.5, 0]) cylinder(h=lz, r=75,$fn =20);


  translate([0, 62.25-50, 0])
  union() {
    // Internos
    translate([d2, d2]) cylinder(h=lz, r=r2);
    translate([-d2, -d2]) cylinder(h=lz, r=r2);
    translate([d2, -d2]) cylinder(h=lz, r=r2);
    translate([-d2, d2]) cylinder(h=lz, r=r2);

    // Central
    difference() {
      cylinder(h=lz, r=sqrt(2)*d2,$fn = 12);
      translate([d2, d2]) cylinder(h=lz, r=r2+r2_delta);
      translate([-d2, -d2]) cylinder(h=lz, r=r2+r2_delta);
      translate([d2, -d2]) cylinder(h=lz, r=r2+r2_delta);
      translate([-d2, d2]) cylinder(h=lz, r=r2+r2_delta);
    }

    // Amortiguador
    difference() {
      cube([0.65*lx, 0.65*ly, 2*lz], center = true);
      cylinder(h=lz, r=.75*lx/2,$fn = 20);
    }
  }
}


