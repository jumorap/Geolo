
$fn=90;

lx = 100;
ly = 100;
r = 2.5;

scale_x = 1.4; scale_y = 1.15;
scale = [scale_x, scale_y];

h = 35;

delta = 3;


// Motor NEMA 8
n_lx = 23; n_ly = 23; n_lz = h;

// Motor DC
d_lx = 12+delta; d_ly = 14+delta; d_lz = h;


module screws(px, py, pz, lx, lz, r, h){
  difference() {
    union() {
      translate([px/2, py/2, pz]) cube([lx, lx, lz]);
      translate([-px/2-lx, -py/2-lx, pz]) cube([lx, lx, lz]);
      translate([px/2, -py/2-lx, pz]) cube([lx, lx, lz]);
      translate([-px/2-lx, py/2, pz]) cube([lx, lx, lz]);
    }
    union() {
      echo(px/2+lx/2, py/2+lx/2, pz);
      translate([px/2+lx/2, py/2+lx/2, pz]) cylinder(r=r, h=h);
      translate([-px/2-lx/2, -py/2-lx/2, pz]) cylinder(r=r, h=h);
      translate([px/2+lx/2, -py/2-lx/2, pz]) cylinder(r=r, h=h);
      translate([-px/2-lx/2, py/2+lx/2, pz]) cylinder(r=r, h=h);
    }
  }
}

union() {
  translate([0, 0, h/2])
  difference() {
    linear_extrude(height = h, center = true, convexity = 10, scale=scale, $fn=150)
    minkowski(){
      square([lx-2*r,ly-2*r], center=true);
      circle(r=r);
    }

    linear_extrude(height = h, center = true, convexity = 10, scale=scale, $fn=150)
    minkowski(){
      square([lx-2*r-delta,ly-2*r-delta], center=true);
      circle(r=r);
    }

    // Ranura placa
    translate([0, 10, h-30]) cube([90, ly*scale_y, 25], center=true);
  }

  intersection() {
    union() {
      // Tornillos superiores
      screws(px=lx*scale_x-16, py=lx*scale_y-15, pz=10, lx=6, lz=30, r=2.75/2, h=30);
      // Tornillos inferiores
      screws(px=lx-12, py=lx-12, pz=0, lx=6, lz=3, r=2.75/2, h = 3);
    }

    translate([0, 0, h/2])
    linear_extrude(height = h, center = true, convexity = 10, scale=scale, $fn=150)
    minkowski(){
      square([lx-2*r-delta,ly-2*r-delta], center=true);
      circle(r=r);
    }
  }
}
