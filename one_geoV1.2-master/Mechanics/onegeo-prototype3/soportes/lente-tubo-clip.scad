$fn = 90;

h = 2;
r1 = 2.75/2;

// Lente tubo
lr1 = 23/2 -1; // TODO verificar medida

d2 = 20;

difference() {
  union() {
    cylinder(r=1.25*lr1, h=h);
    translate([1.5*d2, 0]) cylinder(r=2.5, h=h);
    translate([-1.5*d2, 0]) cylinder(r=2.5, h=h);
    translate([-1.5*d2, -2.5]) cube([2*1.5*d2, 5, h]);
  }

  cylinder(r=lr1, h=h);
  translate([1.5*d2, 0]) cylinder(h=h, r=r1);
  translate([-1.5*d2, 0]) cylinder(h=h, r=r1);

}
