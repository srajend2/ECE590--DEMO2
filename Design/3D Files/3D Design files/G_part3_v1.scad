
rvt_rad = 2;
lk_w = 20;
lk_l = 80;
lk_b = 3;
lks_l=0;
rvt_dist = 3*sqrt(2);
rdist = 6;

ref1 = 7;

adj = 3;
adj1 = 20;

difference(){
union(){

translate([0,0,0]) cube([lk_w+3,lk_l,lk_b]);
translate([-3+23,10,0]) cube([3,20,20-adj]);
//translate([-20+3,25+10,0]) cube([lk_w,lk_l-25-10,lk_b]);
rotate([0,90,0]) translate([-3-17+adj,10+10,-3+23]) cylinder(r=10,h=3,$fn=128*4);

translate([-20+adj1,40,3]) cube([lk_w+3,1,1]);
translate([-20+adj1,50,3]) cube([lk_w+3,1,1]);
translate([-20+adj1,60,3]) cube([lk_w+3,1,1]);
translate([-20+adj1,70,3]) cube([lk_w+3,1,1]);
translate([-20+adj1,79,3]) cube([lk_w+3,1,1]);


    }

rotate([0,0,45+90]) translate([-5-5,-13-1-1-1-1-2-2-0.25,-5]) cube([45,22+1+1,10]);
translate([0,0,0]) cube([30,10,5]);

//motor shaft rivets
rotate([0,90,0])
translate([(lk_w/2)-rvt_dist-30+adj,10+rvt_dist+10,-10+25]) cylinder(r=rvt_rad+0.15,h=30,$fn=64*2,center=true);
rotate([0,90,0])
translate([(lk_w/2)-rvt_dist-30+adj,10-rvt_dist+10,-10+25]) cylinder(r=rvt_rad+0.15,h=30,$fn=64*2,center=true);
rotate([0,90,0])
translate([(lk_w/2)+rvt_dist-30+adj,10+rvt_dist+10,-10+25]) cylinder(r=rvt_rad+0.15,h=30,$fn=64*2,center=true);
rotate([0,90,0])
translate([(lk_w/2)+rvt_dist-30+adj,10-rvt_dist+10,-10+25]) cylinder(r=rvt_rad+0.15,h=30,$fn=64*2,center=true);

rotate([0,90,0])
translate([(lk_w/2)-rvt_dist-30+adj,10+rvt_dist+10,-5+23]) cylinder(r=rvt_rad+1,h=6,$fn=64*2,center=true);
rotate([0,90,0])
translate([(lk_w/2)-rvt_dist-30+adj,10-rvt_dist+10,-5+23]) cylinder(r=rvt_rad+1,h=6,$fn=64*2,center=true);
rotate([0,90,0])
translate([(lk_w/2)+rvt_dist-30+adj,10+rvt_dist+10,-5+23]) cylinder(r=rvt_rad+1,h=6,$fn=64*2,center=true);
rotate([0,90,0])
translate([(lk_w/2)+rvt_dist-30+adj,10-rvt_dist+10,-5+23]) cylinder(r=rvt_rad+1,h=6,$fn=64*2,center=true);




translate([3.5-20+adj1,43,0]) cube([lk_w-7+3,5,5]);
translate([3.5-20+adj1,53,0]) cube([lk_w-7+3,5,5]);
translate([3.5-20+adj1,63,0]) cube([lk_w-7+3,5,5]);
translate([3.5-20+adj1,73,0]) cube([lk_w-7+3,5,5]);


}

