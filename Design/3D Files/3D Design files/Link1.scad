
lkp_x = 0;
lkp_y = -10;
lkp_z = 0;

lk_l = 150+10;
lk_w = 30;
lk_b = 3;
lks_l = lk_l-20;
lks_w = 3;
lks_b = 3;
lks_left_b = lks_b;
lks_left_w = lks_w-2;
rvt_dist = 3*sqrt(2);
rvt_rad = 2;
rvt_head_rad = 3.25;


difference(){
union(){
//main link
translate([lkp_x,lkp_y,lkp_z]) cube([lk_w,lk_l,lk_b]);
translate([lkp_x,lkp_y,lkp_z+lk_b]) cube([lks_left_w,lks_l,lks_left_b]);
translate([lkp_x+lk_w-lk_b,lkp_y,lkp_z+lk_b]) cube([lks_w,lks_l,lks_b]);
/*polyhedron
 (points = [[3,-10,3], [6, -10, 3], [3, lks_l-10, 3], [6, lks_l-10, 3], 
                     [3,-10, 6], [3,lks_l-10,6]], 
     faces = [
		  [0,1,2],  [2,3,1],  [0,1,4],  [1,4,5],  [1,5,3],  [5,2,3],  [0,4,2], [2,5,4]
		  ]
     );*/
b = 3;
h = 3;
w = lk_l-20;

//Start with an extruded triangle
translate([1,-10,3])
rotate(a=[-90,270,0])
linear_extrude(height = w, convexity = 10, twist = 0)
polygon(points=[[0,0],[h,0],[0,b]], paths=[[0,1,2]]);
}
translate([(lk_w/2)-rvt_dist,rvt_dist,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);
translate([(lk_w/2)-rvt_dist,-rvt_dist,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);
translate([(lk_w/2)+rvt_dist,rvt_dist,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);
translate([(lk_w/2)+rvt_dist,-rvt_dist,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);

translate([(lk_w/2)-rvt_dist,rvt_dist,2]) cylinder(r=rvt_head_rad,h=10,$fn=64);
translate([(lk_w/2)-rvt_dist,-rvt_dist,2]) cylinder(r=rvt_head_rad,h=10,$fn=64);
translate([(lk_w/2)+rvt_dist,rvt_dist,2]) cylinder(r=rvt_head_rad,h=10,$fn=64);
translate([(lk_w/2)+rvt_dist,-rvt_dist,2]) cylinder(r=rvt_head_rad,h=10,$fn=64);


translate([(lk_w/2)+10,lk_l-15,-10]) cylinder(r=rvt_rad,h=20,$fn=64);
translate([(lk_w/2)-10,lk_l-15,-10]) cylinder(r=rvt_rad,h=20,$fn=64);
translate([(lk_w/2),lk_l-15,-10]) cylinder(r=rvt_rad,h=20,$fn=64);
translate([(lk_w/2)+10,lk_l-25,-10]) cylinder(r=rvt_rad,h=20,$fn=64);
translate([(lk_w/2)-10,lk_l-25,-10]) cylinder(r=rvt_rad,h=20,$fn=64);
translate([(lk_w/2),lk_l-25,-10]) cylinder(r=rvt_rad,h=20,$fn=64);

translate([0,lk_l-10-20-1,2]) cube([30,21,20]);

x=21;y=24;cut_out_rad=8;
translate([(lk_w/2),x,-10]) cylinder(r=cut_out_rad,h=20,$fn=100);
translate([(lk_w/2),x+y,-10]) cylinder(r=cut_out_rad,h=20,$fn=100);
translate([(lk_w/2),x+(2*y),-10]) cylinder(r=cut_out_rad,h=20,$fn=100);
translate([(lk_w/2),x+(3*y),-10]) cylinder(r=cut_out_rad,h=20,$fn=100);
translate([(lk_w/2),x+(4*y),-10]) cylinder(r=cut_out_rad,h=20,$fn=100);

}




/*
rotate([0,0,45]){
minkowski() {
translate([(lk_w)-3,15,10]) cube(10,10,20);
translate([(lk_w/2)-5,0,10]) cylinder(r=4,h=30,$fn=64,center=true);
}
}
*/
//hull() {
//translate([lk_w/2,22,10]) cylinder(r=7,h=30,$fn=64,center=true);
//translate([lk_w/2,37,10]) cylinder(r=7,h=30,$fn=64,center=true);
//}

/*
hull() {
translate([lk_w/2,62,10]) cylinder(r=7,h=30,$fn=64,center=true);
translate([lk_w/2,77,10]) cylinder(r=7,h=30,$fn=64,center=true);
}

hull() {
translate([lk_w/2,102,10]) cylinder(r=7,h=30,$fn=64,center=true);
translate([lk_w/2,117,10]) cylinder(r=7,h=30,$fn=64,center=true);
}
*/

/*translate([(lk_w/2)-6,0,-10]) cylinder(r=2,h=30,$fn=64,center=true);
translate([(lk_w/2)+6,0,-10]) cylinder(r=2,h=30,$fn=64,center=true);
translate([(lk_w/2),6,-10]) cylinder(r=2,h=30,$fn=64,center=true);
translate([(lk_w/2),-6,-10]) cylinder(r=2,h=30,$fn=64,center=true);
*/

//Wheelgroove_dia = 60;
//Wheelgroove_rad = Wheelgroove_dia/2;
//Oring_dia = 2.6;
//Oring_rad = Oring_dia/2;
//hgt = 4;
//Wheel_rad = Oring_dia + Wheelgroove_rad;
//ref_pt = Oring_dia/1.414;
//
//
//  union(){
//      translate([0,6,1]) cylinder(r=2,h=3,$fn=64,center=true);
//        translate([0,-6,1]) cylinder(r=2,h=3,$fn=64,center=true);
//  difference(){
//    union(){
//        cylinder (r=Wheel_rad, h=hgt, $fn=100,center=true);
//    }
//    rotate_extrude($fn=100)
//      hull(){
//      translate([Wheel_rad-Oring_rad+1,0,0])
//      circle(r = 1,$fn=100);
//      translate([Wheel_rad-Oring_rad,0,0])
//      polygon( [ [0,0],[ref_pt,ref_pt],[ref_pt,-ref_pt] ] , [ [0,1,2] ]);
//      }
//      
//    translate([0,0,-2]) 
//    cylinder (r=9.2, h=1, $fn=100);
//  
//    translate([0,0,1]) 
//    cylinder (r=9.2, h=1, $fn=100);
//      
//  translate([-6,0,-10]) cylinder(r=2,h=30,$fn=64,center=true);
//  translate([6,0,-10]) cylinder(r=2,h=30,$fn=64,center=true);
//  }
//  }
//  
//
// 
///*
//
//or_idiam=50;
//or_diam=3;
//r = or_idiam/2 + or_diam;  
//l = or_diam*sqrt(2)/2;
////
//rotate_extrude($fn=100)
//hull(){
//      translate([r-or_diam/2+1,0,0])
//      circle(r = 1,$fn=25);
//      translate([r-or_diam/2,0,0])
//      polygon( [ [0,0],[l,l],[l,-l] ] , [ [0,1,2] ]);
//}
//  
//  /*
//  
//  