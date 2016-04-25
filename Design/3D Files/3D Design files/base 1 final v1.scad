cb_w = 100;
cb_l = 100;
cb_h = 3;

cb1_w = 50;
cb1_l = 25;
cb1_h = 5;

crv_r = 10;

cstr_w = 34.5;
cstr_l = 20.5;
cstr_scrw_dia = 5;

chs_scrw_dia = 4;

bat_w = 24;
bat_l = 70;
bat_rvt_dist = 6;
rvt_dia = 4;
rvt_rad = rvt_dia/2;
rvt_rad_hd = rvt_rad + 0.7;

plt_w = 80;
plt_l = 125;
plt_h = 4;

mt1_w = 19;
mt1_l = 24;
mt1_ref = 4;
mt_rvt_dist = 6;
mt_rvt_dist1 = 9;

cblslot_l = 10;
cblslot_w = 5;

pcb_l = 30;
pcb_w = 66;

bb_s = 81.3;
bb_s1 = 70;
bb_scrw_dia_b = 4.5;
bb_scrw_dia_s = 2.3;
bb_c1 = (cb_w/2);
bb_c2 = (cb_l/2);

mref1 = 25;
mref2 = 1;
mref3 = 24;

side_cb_w = 59;
side_cb_l = 28;

screw_dist = 140;

difference(){
    union(){
translate([0,0,0]) cube([cb_w,cb_l,cb_h]);
translate([cb_w/2-side_cb_w/2,-side_cb_l,0]) cube([side_cb_w,side_cb_l,cb_h]);
translate([cb_w/2-side_cb_w/2,cb_l,0]) cube([side_cb_w,side_cb_l,cb_h]);        
        


//clamping sides
        translate([cb_w/2-side_cb_w/2-3,-side_cb_l,0]) cube([3,side_cb_l,8]);
        translate([cb_w/2+side_cb_w/2,-side_cb_l,0]) cube([3,side_cb_l,8]);
        
        translate([cb_w/2-side_cb_w/2-3,cb_l,0]) cube([3,side_cb_l,8]);
        translate([cb_w/2+side_cb_w/2,cb_l,0]) cube([3,side_cb_l,8]);
    }


//center slots
//translate([cb_w/2-30,cb_l/2-28,0]) cube([60,20,10]);
//translate([cb_w/2-30,cb_l/2+8,0]) cube([60,20,10]);

translate([cb_w/2-20,-10,0]) cube([40,20,10]);
translate([cb_w/2-20,90,0]) cube([40,20,10]);

//motor shaft crank
//translate([cb_w/2-8,cb_l/2,0]) cylinder(r=3.5,h=10,$fn=50);
//translate([cb_w/2+8,cb_l/2,0]) cylinder(r=2.75,h=10,$fn=50);

//Ball bearing Big screw holes
translate([bb_c1-(bb_s/2),bb_c2-(bb_s/2),0]) cylinder(r=(bb_scrw_dia_b/2)+0.25,h=10,$fn=50);
translate([bb_c1+(bb_s/2),bb_c2-(bb_s/2),0]) cylinder(r=(bb_scrw_dia_b/2)+0.25,h=10,$fn=50);
translate([bb_c1-(bb_s/2),bb_c2+(bb_s/2),0]) cylinder(r=(bb_scrw_dia_b/2)+0.25,h=10,$fn=50);
translate([bb_c1+(bb_s/2),bb_c2+(bb_s/2),0]) cylinder(r=(bb_scrw_dia_b/2)+0.25,h=10,$fn=50);
//Ball bearing small screw holes
translate([bb_c1-(bb_s1/2),bb_c2-(bb_s1/2),0]) cylinder(r=(bb_scrw_dia_s/2)+0.25,h=10,$fn=50);
translate([bb_c1+(bb_s1/2),bb_c2-(bb_s1/2),0]) cylinder(r=(bb_scrw_dia_s/2)+0.25,h=10,$fn=50);
translate([bb_c1-(bb_s1/2),bb_c2+(bb_s1/2),0]) cylinder(r=(bb_scrw_dia_s/2)+0.25,h=10,$fn=50);
translate([bb_c1+(bb_s1/2),bb_c2+(bb_s1/2),0]) cylinder(r=(bb_scrw_dia_s/2)+0.25,h=10,$fn=50);


//base attachment screw
translate([cb_w/2,cb_l/2-screw_dist/2,0]) cylinder(r=(4),h=10,$fn=50);
translate([cb_w/2,cb_l/2+screw_dist/2,0]) cylinder(r=4,h=10,$fn=50);

//center motor rive holes center
translate([cb_w/2-bat_rvt_dist,cb_l/2,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
translate([cb_w/2+bat_rvt_dist,cb_l/2,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
translate([cb_w/2,cb_l/2-bat_rvt_dist,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
translate([cb_w/2,cb_l/2+bat_rvt_dist,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
//hdr
translate([cb_w/2-bat_rvt_dist,cb_l/2,2]) cylinder(r=rvt_rad_hd,h=5,$fn=100);
translate([cb_w/2+bat_rvt_dist,cb_l/2,2]) cylinder(r=rvt_rad_hd,h=5,$fn=100);
translate([cb_w/2,cb_l/2-bat_rvt_dist,2]) cylinder(r=rvt_rad_hd,h=5,$fn=100);
translate([cb_w/2,cb_l/2+bat_rvt_dist,2]) cylinder(r=rvt_rad_hd,h=5,$fn=100);

//center motor rivet holes
translate([cb_w/2,cb_l/2-mref3,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
translate([cb_w/2+bat_rvt_dist,cb_l/2-mref3,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
translate([cb_w/2-bat_rvt_dist,cb_l/2-mref3,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
//hdr slots
translate([cb_w/2,cb_l/2-mref3,2]) cylinder(r=rvt_rad_hd,h=5,$fn=500);
translate([cb_w/2+bat_rvt_dist,cb_l/2-mref3,2]) cylinder(r=rvt_rad_hd,h=5,$fn=500);
translate([cb_w/2-bat_rvt_dist,cb_l/2-mref3,2]) cylinder(r=rvt_rad_hd,h=5,$fn=500);


translate([cb_w/2,cb_l/2+mref3,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
translate([cb_w/2+bat_rvt_dist,cb_l/2+mref3,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
translate([cb_w/2-bat_rvt_dist,cb_l/2+mref3,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
//hdr slots
translate([cb_w/2,cb_l/2+mref3,2]) cylinder(r=rvt_rad_hd,h=5,$fn=500);
translate([cb_w/2+bat_rvt_dist,cb_l/2+mref3,2]) cylinder(r=rvt_rad_hd,h=5,$fn=500);
translate([cb_w/2-bat_rvt_dist,cb_l/2+mref3,2]) cylinder(r=rvt_rad_hd,h=5,$fn=500);


translate([cb_w/2+mref3,cb_l/2,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
translate([cb_w/2+mref3,cb_l/2+bat_rvt_dist,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
translate([cb_w/2+mref3,cb_l/2-bat_rvt_dist,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
//hdr slots
translate([cb_w/2+mref3,cb_l/2,2]) cylinder(r=rvt_rad_hd,h=5,$fn=500);
translate([cb_w/2+mref3,cb_l/2+bat_rvt_dist,2]) cylinder(r=rvt_rad_hd,h=5,$fn=500);
translate([cb_w/2+mref3,cb_l/2-bat_rvt_dist,2]) cylinder(r=rvt_rad_hd,h=5,$fn=500);


translate([cb_w/2-mref3,cb_l/2,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
translate([cb_w/2-mref3,cb_l/2+bat_rvt_dist,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
translate([cb_w/2-mref3,cb_l/2-bat_rvt_dist,0]) cylinder(r=rvt_rad+0.1,h=10,$fn=100);
//hdr slots
translate([cb_w/2-mref3,cb_l/2,2]) cylinder(r=rvt_rad_hd,h=5,$fn=500);
translate([cb_w/2-mref3,cb_l/2+bat_rvt_dist,2]) cylinder(r=rvt_rad_hd,h=5,$fn=500);
translate([cb_w/2-mref3,cb_l/2-bat_rvt_dist,2]) cylinder(r=rvt_rad_hd,h=5,$fn=500);


//translate([bb_c1,bb_c2+mref3,0]) cylinder(r=rvt_rad,h=10,$fn=500);
//translate([bb_c1+bat_rvt_dist,bb_c2+mref3,0]) cylinder(r=rvt_rad,h=10,$fn=500);
//translate([bb_c1-bat_rvt_dist,bb_c2+mref3,0]) cylinder(r=rvt_rad,h=10,$fn=500);
//set2
//translate([bb_c1,bb_c2-mref3,0]) cylinder(r=rvt_rad,h=10,$fn=500);
//translate([bb_c1+bat_rvt_dist,bb_c2-mref3,0]) cylinder(r=rvt_rad,h=10,$fn=500);
//translate([bb_c1-bat_rvt_dist,bb_c2-mref3,0]) cylinder(r=rvt_rad,h=10,$fn=500);
//set3
/*translate([bb_c1+mref3,bb_c2,0]) cylinder(r=rvt_rad,h=10,$fn=500);
translate([bb_c1+mref3,bb_c2+bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=500);
translate([bb_c1+mref3,bb_c2-bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=500);
//set4
translate([bb_c1-mref3,bb_c2,0]) cylinder(r=rvt_rad,h=10,$fn=500);
translate([bb_c1-mref3,bb_c2+bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=500);
translate([bb_c1-mref3,bb_c2-bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=500);
*/
//header slots
//translate([bb_c1,bb_c2+mref3,2]) cylinder(r=rvt_rad+0.7,h=10,$fn=500);
//translate([bb_c1+bat_rvt_dist,bb_c2+mref3,2]) cylinder(r=rvt_rad+0.7,h=10,$fn=500);
//translate([bb_c1-bat_rvt_dist,bb_c2+mref3,2]) cylinder(r=rvt_rad+0.7,h=10,$fn=500);


}

