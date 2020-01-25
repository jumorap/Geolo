
$fn=90;

lx = 100;
ly = 100;
r = 2.5;

scale = 1.15;

h = 35;

delta = 4;


// Motor NEMA 8
n_lx = 23; n_ly = 23; n_lz = h;

// Motor DC
d_lx = 12+delta; d_ly = 14+delta; d_lz = h;

module Rcorner(R,L){
    difference(){
        translate([0,R/2,R/2])cube([L,R,R],center=true);
        translate([0,R,R])rotate([0,90,0])cylinder(r=R,h=L+1,center=true);
    }
}
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

 rotate([0,0,90+45])  union() {
    base();
  translate([0, 0, h/2])
  difference() {
    union() {
      linear_extrude(height = h, center = true, convexity = 10, scale=scale, $fn=150)
      minkowski(){
        square([lx-2*r,ly-2*r], center=true);
        circle(r=r);
      }
      // Motor DC
      translate([-lx/2, ly/2-d_ly,0]) cube([d_lx, d_ly, d_lz], center=true);
    }

union() {
      linear_extrude(height = h, center = true, convexity = 10, scale=scale, $fn=150)
      minkowski(){
        square([lx-2*r-delta,ly-2*r-delta], center=true);
        circle(r=r);
      }
      // Motor DC
      translate([-lx/2, ly/2-d_ly,0]) cube([d_lx-delta, d_ly-delta, d_lz-delta], center=true);
      echo("Motor DC: pos", [-lx/2, ly/2-d_ly,0]);
      echo("Motor DC: dim", [d_lx-delta, d_ly-delta, d_lz-delta]);
    }

    // Ranura placa
    translate([0, 10, h-20]) cube([90, ly*scale, 5], center=true);
    // Ranura motor NEMA 8
    translate([0, ly/2, 0]) cube([n_lx, n_ly, n_lz], center=true);
  }
  // Larguero
  translate([-lx/2+5, ly/2-5, 0]) cube([lx-10, 5, 2]);
  intersection() {
    union() {
      // Tornillos superiores
      screws(px=lx*scale-15, py=lx*scale-15, pz=10, lx=6, lz=30, r=2.75/2, h=30);
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
rotate([0,0,180])translate([28,-ly/2+1.5,delta/2])Rcorner(R=3,L=33);
  mirror([1,0,0]) rotate([0,0,180])translate([28,-ly/2+1.5,delta/2])Rcorner(R=3,L=33);
}
module base() {
    difference(){
    translate([0,0,1])difference() {
cube([100,100,2],center=true);
cube([100-8.5,100-8.5,5],center=true);

}
union(){
    translate([(100-4)/2,(100-4)/2,0])cube([5,5,8],center=true);
    
    translate([-(100-4)/2,(100-4)/2,0])cube([5,5,8],center=true);
    
    translate([(100-4)/2,-(100-4)/2,0])cube([5,5,8],center=true);
    
    translate([-(100-4)/2,-(100-4)/2,0])cube([5,5,8],center=true);
}
}
}

// ECHO: 53, 53, 10
// ECHO: 47, 47, 0
