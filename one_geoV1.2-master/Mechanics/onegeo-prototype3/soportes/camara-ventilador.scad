$fn = 90;

// Placa
lx = 46;
ly = 45;
lz = 2.5;

// Bracket
lx1 = lx;
ly1 = 2.5;
lz1 = 10;
rb = 17;

// Tornillos placa
r = 2.75/2;
d = 20;

// Tornillos bracket
r1 = r;
d1 = 32/2;
h1 = lz1 - 3;

difference() {
  union() {
    cube([lx, ly, lz]);
    translate([0, ly - ly1, lz]) cube([lx1, ly1, lz1]);
  }

  // Tornillos placa
  translate([lx/2 - d, 2.5, 0]) cylinder(r=r, h=lz);
  translate([lx/2 + d, 2.5, 0]) cylinder(r=r, h=lz);

  // Tornillos placa
  translate([lx/2 - d1, ly, lz + h1]) rotate([90, 0, 0]) cylinder(r=r1, h=ly1);
  translate([lx/2 + d1, ly, lz + h1]) rotate([90, 0, 0]) cylinder(r=r1, h=ly1);

  // Agujeros
  translate([lx/2, 0, 0]) cylinder(r=rb, h=lz);
  translate([lx/2 - rb, 20, 0]) cube([2*rb, 22, lz]);
}
