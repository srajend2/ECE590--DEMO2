shaft_rad = 2.5;
hgt = 5;
Wheel_rad = 25/2;
shft_dist = 4*sqrt(2);


difference(){
    union(){
        cylinder (r=Wheel_rad, h=hgt, $fn=500,center=true);
        translate([shft_dist,shft_dist,0]) cylinder (r=shaft_rad+0.25, h=13.5-2.5, $fn=100);
        }
    
   //translate([0,0,-2]) cylinder (r=9.2, h=1, $fn=100);
   //translate([0,0,1])  cylinder (r=9.2, h=1, $fn=100);
      
  translate([-6,0,-10]) cylinder(r=2,h=20,$fn=64);
  translate([6,0,-10]) cylinder(r=2,h=20,$fn=64);
  translate([0,6,-10]) cylinder(r=2,h=20,$fn=64);
  translate([0,-6,-10]) cylinder(r=2,h=20,$fn=64);

  }
  
  
  