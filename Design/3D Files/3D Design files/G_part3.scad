
rvt_rad = 2;
lk_w = 20;
lk_l = 80;
lk_b = 3;
lks_l=0;
rvt_dist = 3*sqrt(2);
rdist = 6;

ref1 = 7;

difference(){
union(){

translate([0,0,0]) cube([lk_w+3,lk_l,lk_b]);
translate([-3,10,0]) cube([3,20,20]);
translate([-20+3,25+10,0]) cube([lk_w,lk_l-25-10,lk_b]);
rotate([0,90,0]) translate([-3-17,10+10,-3]) cylinder(r=10,h=3,$fn=64);

translate([-20+3,40,3]) cube([2*lk_w,1,1]);
translate([-20+3,50,3]) cube([2*lk_w,1,1]);
translate([-20+3,60,3]) cube([2*lk_w,1,1]);
translate([-20+3,70,3]) cube([2*lk_w,1,1]);
translate([-20+3,79,3]) cube([2*lk_w,1,1]);


    }
rotate([0,0,45]) translate([-5,-13-1-1-1-1,-5]) cube([45,22+1+1,10]);

//motor shaft rivets
rotate([0,90,0])
translate([(lk_w/2)-rvt_dist-30,10+rvt_dist+10,-10]) cylinder(r=rvt_rad+0.1,h=30,$fn=64,center=true);
rotate([0,90,0])
translate([(lk_w/2)-rvt_dist-30,10-rvt_dist+10,-10]) cylinder(r=rvt_rad+0.1,h=30,$fn=64,center=true);
rotate([0,90,0])
translate([(lk_w/2)+rvt_dist-30,10+rvt_dist+10,-10]) cylinder(r=rvt_rad+0.1,h=30,$fn=64,center=true);
rotate([0,90,0])
translate([(lk_w/2)+rvt_dist-30,10-rvt_dist+10,-10]) cylinder(r=rvt_rad+0.1,h=30,$fn=64,center=true);

rotate([0,90,0])
translate([(lk_w/2)-rvt_dist-30,10+rvt_dist+10,-5]) cylinder(r=rvt_rad+0.7,h=6,$fn=64,center=true);
rotate([0,90,0])
translate([(lk_w/2)-rvt_dist-30,10-rvt_dist+10,-5]) cylinder(r=rvt_rad+0.7,h=6,$fn=64,center=true);
rotate([0,90,0])
translate([(lk_w/2)+rvt_dist-30,10+rvt_dist+10,-5]) cylinder(r=rvt_rad+0.7,h=6,$fn=64,center=true);
rotate([0,90,0])
translate([(lk_w/2)+rvt_dist-30,10-rvt_dist+10,-5]) cylinder(r=rvt_rad+0.7,h=6,$fn=64,center=true);




translate([3.5-20+3,43,0]) cube([2*lk_w-7,5,5]);
translate([3.5-20+3,53,0]) cube([2*lk_w-7,5,5]);
translate([3.5-20+3,63,0]) cube([2*lk_w-7,5,5]);
translate([3.5-20+3,73,0]) cube([2*lk_w-7,5,5]);


}

