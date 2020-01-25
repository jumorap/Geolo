$fn = 90;

// Cubo 1
lx1 = 75;
ly1 = 50;
lz1 = 4;

// Cubo 2
lx2 = 45;
ly2 = 70;
lz2 = lz1;

// Agujero
lx3 = 24;
ly3 = 39+8;
lz3 = lz1;
lx = 35;
ly = 70;
dx13 = (lx1 - lx)/2;

// Distancia entre cubos
dx12 = (lx1 - lx2)/2;
dy12 = 220 - ly2;

// Tornillos muestra
r = 2.9/2;
h = lz1;
d = 3.5;

// Tornillos base
r2 = 2.75/2;
lr2 = 60;
dr2 = 9.5;

lr3 = 45;
dr3 = 220/2;

// Agujero muestra
lx_muestra = 24;
ly_muestra = 39;
lz_muestra = lz1;


difference() {
  hull() {
    cube([lx1, ly1, lz1]);
    translate([dx12, dy12, 0]) cube([lx2, ly2, lz2]);
  }

  // Tornillos muestra
  translate([dx13, dy12, 0]) {
    translate([d, d, 0]) cylinder(r=r, h=h);
    translate([d, ly-d, 0]) cylinder(r=r, h=h);
    translate([lx-d, d, 0]) cylinder(r=r, h=h);
    translate([lx-d, ly-d, 0]) cylinder(r=r, h=h);
  }

  // Agujero
  translate([(lx1-lx_muestra)/2, dy12 + 15, 0]) cube([lx_muestra, ly_muestra, lz_muestra]);

  // Tornillos base
  translate([(lx1-lr2)/2, dr2, 0]) cylinder(r=r2, h=h);
  translate([(lx1-lr2)/2 + lr2, dr2, 0]) cylinder(r=r2, h=h);

  translate([(lx1-lr3)/2, dr3, 0]) cylinder(r=r2, h=h);
  translate([(lx1-lr3)/2 + lr3, dr3, 0]) cylinder(r=r2, h=h);

  // Reductores de material
  translate([lx1/4, dr3/4, 0]) cylinder(r=7.5, h=lz1);
  translate([3*lx1/4, dr3/4, 0]) cylinder(r=7.5, h=lz1);
  translate([2*lx1/4, dr3/2, 0]) cylinder(r=7.5, h=lz1);
  translate([lx1/4, 3*dr3/4, 0]) cylinder(r=7.5, h=lz1);
  translate([3*lx1/4, 3*dr3/4, 0]) cylinder(r=7.5, h=lz1);

  translate([lx1/2, 6*dr3/5, 0]) cylinder(r=12.5, h=lz1);

  // Corte en dos piezas
  translate([0, -10, 0]) cube([lx1, dr3, lz1]);
}
