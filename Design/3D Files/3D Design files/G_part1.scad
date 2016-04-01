
rvt_rad = 2;
lk_w = 24.5;
lk_l = 24;
lk_b = 3;
lks_l=0;
rvt_dist = 3*sqrt(2);
difference(){
union(){
//main link
translate([0,0,0]) cube([lk_w,lk_l,lk_b]);
    translate([lk_w,0,0]) cube([lk_b,lk_l,26]);
    translate([-3,0,0]) cube([lk_b,lk_l,26]);
}


translate([(lk_w/2)-rvt_dist,lk_l/2+rvt_dist,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);
translate([(lk_w/2)-rvt_dist,lk_l/2-rvt_dist,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);
translate([(lk_w/2)+rvt_dist,lk_l/2+rvt_dist,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);
translate([(lk_w/2)+rvt_dist,lk_l/2-rvt_dist,-10]) cylinder(r=rvt_rad,h=30,$fn=64,center=true);


translate([(lk_w/2)-rvt_dist,lk_l/2+rvt_dist,2]) cylinder(r=rvt_rad+0.5,h=10,$fn=64);
translate([(lk_w/2)-rvt_dist,lk_l/2-rvt_dist,2]) cylinder(r=rvt_rad+0.5,h=10,$fn=64);
translate([(lk_w/2)+rvt_dist,lk_l/2+rvt_dist,2]) cylinder(r=rvt_rad+0.5,h=10,$fn=64);
translate([(lk_w/2)+rvt_dist,lk_l/2-rvt_dist,2]) cylinder(r=rvt_rad+0.5,h=10,$fn=64);



rotate([0,90,0])
translate([-(lk_w/2)-3-0.5,lk_l/2,-5]) cylinder(r=rvt_rad,h=40,$fn=64);
rotate([0,90,0])
translate([-(lk_w/2)-9-0.5,lk_l/2,-5]) cylinder(r=rvt_rad,h=40,$fn=64);
rotate([0,90,0])
translate([-(lk_w/2)+3-0.5,lk_l/2,-5]) cylinder(r=rvt_rad,h=40,$fn=64);


rotate([0,90,0])
translate([-(lk_w/2)-3-0.5,lk_l/2,-12]) cylinder(r=rvt_rad+0.5,h=10,$fn=64);
rotate([0,90,0])
translate([-(lk_w/2)-9-0.5,lk_l/2,-12]) cylinder(r=rvt_rad+0.5,h=10,$fn=64);
rotate([0,90,0])
translate([-(lk_w/2)+3-0.5,lk_l/2,-12]) cylinder(r=rvt_rad+0.5,h=10,$fn=64);



rotate([0,90,0])
translate([-(lk_w/2)-3-0.5,lk_l/2,26.5]) cylinder(r=rvt_rad+0.5,h=10,$fn=64);
rotate([0,90,0])
translate([-(lk_w/2)-9-0.5,lk_l/2,26.5]) cylinder(r=rvt_rad+0.5,h=10,$fn=64);
rotate([0,90,0])
translate([-(lk_w/2)+3-0.5,lk_l/2,26.5]) cylinder(r=rvt_rad+0.5,h=10,$fn=64);

}
