$fn = 90;

r1 = 2.75/2;
h = 3;

h1 = 12.5 - h;
h2 = 15;

lr1 = 27.5/2;
delta = 2;

d2 = 20;

// Aleta
ax = 10; ay = 7; az = h + h1;

difference() {
  union() {
    translate([0, 0, h/2]) cube([2*d2+10, 2*d2+6, h], center = true);
    cylinder(h = h + h1, r = lr1 + delta);
    translate([lr1 + ax/2 - 7, -ay/2, 0]) cube([ax, ay, az]);
  }

  cylinder(r = lr1, h = h + h1);

  // Tornillos
  translate([d2, d2]) cylinder(h=h, r=r1);
  translate([-d2, -d2]) cylinder(h=h, r=r1);
  translate([d2, -d2]) cylinder(h=h, r=r1);
  translate([-d2, d2]) cylinder(h=h, r=r1);

  // Aleta
  translate([lr1 + ax/2 - 7, -0.5, 0]) cube([ax, 1, az]);
  // Orificios aleta
  translate([lr1+3+2, -ay/2, h+h1-4]) rotate([-90, 0, 0]) cylinder(r=r1, h=ay);
  // Ranura aleta
  translate([lr1 + delta, ay/2, 0]) cube([6, 1, h]);
  translate([lr1 + delta + 6, -0.5, 0]) cube([1, ay/2 + 1.5, h]);
  intersection() {
    translate([0, ay/2, 0]) cube([d2+6, d2+6, h]);
    difference() {
      cylinder(r = lr1 + delta + 1, h=h);
      cylinder(r = lr1 + delta, h=h);
    }
  }
}
