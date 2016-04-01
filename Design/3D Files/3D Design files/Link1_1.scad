
lkp_x = 0;
lkp_y = -10;
lkp_z = 0;

lk_l = 100+10+20;
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

translate([lkp_x+lk_w-lk_b,lkp_y,lkp_z+lk_b]) cube([1,37,lks_b]);

translate([(lk_w/2)-6,0,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);
translate([(lk_w/2)+6,0,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);
translate([(lk_w/2)-6,24,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);
translate([(lk_w/2)+6,24,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);
translate([(lk_w/2),24,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);

translate([(lk_w/2)-6,0,-1]) cylinder(r=rvt_head_rad,h=2,$fn=64);
translate([(lk_w/2)+6,0,-1]) cylinder(r=rvt_head_rad,h=2,$fn=64);
translate([(lk_w/2)-6,24,-1]) cylinder(r=rvt_head_rad,h=2,$fn=64);
translate([(lk_w/2)+6,24,-1]) cylinder(r=rvt_head_rad,h=2,$fn=64);
translate([(lk_w/2),24,-1]) cylinder(r=rvt_head_rad,h=2,$fn=64);


//translate([(lk_w/2)+rvt_dist,rvt_dist,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);
//translate([(lk_w/2)+rvt_dist,-rvt_dist,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);
/*
translate([(lk_w/2)-rvt_dist,rvt_dist,2]) cylinder(r=2.5,h=10,$fn=64);
translate([(lk_w/2)-rvt_dist,-rvt_dist,2]) cylinder(r=2.5,h=10,$fn=64);
translate([(lk_w/2)+rvt_dist,rvt_dist,2]) cylinder(r=2.5,h=10,$fn=64);
translate([(lk_w/2)+rvt_dist,-rvt_dist,2]) cylinder(r=2.5,h=10,$fn=64);
*/

translate([(lk_w/2)+10,lk_l-15,-10]) cylinder(r=rvt_rad,h=20,$fn=64);
translate([(lk_w/2)-10,lk_l-15,-10]) cylinder(r=rvt_rad,h=20,$fn=64);
translate([(lk_w/2)+10,lk_l-25,-10]) cylinder(r=rvt_rad,h=20,$fn=64);
translate([(lk_w/2)-10,lk_l-25,-10]) cylinder(r=rvt_rad,h=20,$fn=64);
translate([(lk_w/2),lk_l-25,-10]) cylinder(r=rvt_rad,h=20,$fn=64);
translate([(lk_w/2),lk_l-15,-10]) cylinder(r=rvt_rad,h=20,$fn=64);

translate([0,lk_l-10-20-1,2]) cube([30,21,20]);

x=39; y=24; cut_out_rad=9;cut_out_side=4;
cut_out_rad1=3.5;
translate([(lk_w/2),x,-10]) cylinder(r=cut_out_rad,h=20,$fn=cut_out_side);
translate([(lk_w/2),x+y,-10]) cylinder(r=cut_out_rad,h=20,$fn=cut_out_side);
translate([(lk_w/2),x+(2*y),-10]) cylinder(r=cut_out_rad,h=20,$fn=cut_out_side);

//translate([(lk_w/2)-6,x+(y/2),-10]) cylinder(r=cut_out_rad1,h=20,$fn=100);
//translate([(lk_w/2)+6,x+(y/2),-10]) cylinder(r=cut_out_rad1,h=20,$fn=100);

//translate([(lk_w/2),x+(3*y),-10]) cylinder(r=cut_out_rad,h=20,$fn=cut_out_side);
//translate([(lk_w/2),x+(4*y),-10]) cylinder(r=cut_out_rad,h=20,$fn=cut_out_side);

translate([(lk_w/2),12,-10]) cylinder(r=6,h=20,$fn=100);


}
