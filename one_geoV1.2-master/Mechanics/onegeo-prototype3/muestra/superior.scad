$fn = 90;

// Placa
lx = 35;
ly = 70;
lz = 1.5;

// Agujero
lx1 = 24;
ly1 = 39+8;
lz1 = lz;

// RFID
lx2 = 20;
ly2 = 12.5;
lz2 = 0.5;

// Tornillos
r = 2.75/2;
h = lz;
d = 3.5;


difference() {
  cube([lx, ly, lz]);

  // Agujero
  translate([(lx-lx1)/2, 15, 0]) cube([lx1, ly1, lz1]);

  // RFID
  translate([(lx-lx2)/2, 1.25, lz-lz2]) cube([lx2, ly2, lz2]);

  // Tornillos
  translate([d, d, 0]) cylinder(r=r, h=h);
  translate([d, ly-d, 0]) cylinder(r=r, h=h);
  translate([lx-d, d, 0]) cylinder(r=r, h=h);
  translate([lx-d, ly-d, 0]) cylinder(r=r, h=h);
}
