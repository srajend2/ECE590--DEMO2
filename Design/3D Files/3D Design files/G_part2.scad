
rvt_rad = 2+0.15;
lk_w = 20;
lk_l = 80;
lk_b = 3;
lks_l=0;
rvt_dist = 3*sqrt(2);
rdist = 6;

ref1 = 7;

difference(){
union(){
translate([0,0,0]) cube([lk_w,lk_l,lk_b]);
translate([0,0,20]) cube([lk_w,lk_l-43,lk_b]);
translate([0,lk_l-45,0]) cube([lk_w,3,23]);
translate([0,80,0]) cube([lk_w,8,3]);
//translate([lk_w,25+10,0]) cube([lk_w,lk_l-25-10,lk_b]);

translate([0,40,3]) cube([lk_w,1,1]);
translate([0,50,3]) cube([lk_w,1,1]);
translate([0,60,3]) cube([lk_w,1,1]);
translate([0,70,3]) cube([lk_w,1,1]);
translate([0,79,3]) cube([lk_w,1,1]);


    }

translate([0,0,0]) cube([lk_w,35,10]);


translate([(lk_w/2)+rdist,ref1,-0]) cylinder(r=rvt_rad+0.05,h=30,$fn=64);
translate([(lk_w/2)-rdist,ref1,-0]) cylinder(r=rvt_rad+0.05,h=30,$fn=64);
translate([(lk_w/2)+rdist,ref1+18,-0]) cylinder(r=rvt_rad+0.05,h=30,$fn=64);
translate([(lk_w/2)-rdist,ref1+18,-0]) cylinder(r=rvt_rad+0.05,h=30,$fn=64);

translate([(lk_w/2)+rdist,ref1,-2+20]) cylinder(r=rvt_rad+0.6,h=3,$fn=64);
translate([(lk_w/2)-rdist,ref1,-2+20]) cylinder(r=rvt_rad+0.6,h=3,$fn=64);
translate([(lk_w/2)+rdist,ref1+18,-2+20]) cylinder(r=rvt_rad+0.6,h=3,$fn=64);
translate([(lk_w/2)-rdist,ref1+18,-2+20]) cylinder(r=rvt_rad+0.6,h=3,$fn=64);
    

translate([3.5,43,0]) cube([lk_w-7,5,5]);
translate([3.5,53,0]) cube([lk_w-7,5,5]);
translate([3.5,63,0]) cube([lk_w-7,5,5]);
translate([3.5,73,0]) cube([lk_w-7,5,5]);




}

