shaft_rad = 2.5;
hgt = 5;
Wheel_rad = 29/2;
shft_dist = sqrt(72);


difference(){
    union(){
        cylinder (r=Wheel_rad, h=hgt, $fn=128*4,center=true);
        
        }
    
   //translate([0,0,-2]) cylinder (r=9.2, h=1, $fn=100);
   //translate([0,0,1])  cylinder (r=9.2, h=1, $fn=100);
      
  
  translate([-6,0,-10]) cylinder(r=2.1,h=20,$fn=128);
  translate([6,0,-10]) cylinder(r=2.1,h=20,$fn=128);
  translate([0,6,-10]) cylinder(r=2.1,h=20,$fn=128);
  translate([0,-6,-10]) cylinder(r=2.1,h=20,$fn=128);
  translate([shft_dist,shft_dist,-10]) cylinder (r=3.5/2, h=20, $fn=128);
  translate([-shft_dist,-shft_dist,-10]) cylinder (r=3.5/2, h=20, $fn=128);

translate([-shft_dist,shft_dist,-10]) cylinder (r=3.5/2, h=20, $fn=128);
  translate([shft_dist,-shft_dist,-10]) cylinder (r=3.5/2, h=20, $fn=128);
  }
  
  
  