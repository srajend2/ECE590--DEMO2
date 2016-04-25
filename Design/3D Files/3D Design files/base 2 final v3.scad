cb_w = 105;
cb_l = 140;
cb_h = 5;

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
rvt_rad = (rvt_dia/2)+0.15;

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

bb_s = 90;
bb_s1 = 75;
bb_scrw_dia_b = 4;
bb_scrw_dia_s = 2.3;
bb_c1 = (cb_w/2);
bb_c2 = (cb_l/2)-18;

mref1 = 25;
mref2 = 1;
mref3 = 24;

difference(){
    union(){
translate([0,0,0]) cube([cb_w,cb_l,cb_h]);
    }



//Ball bearing Big screw holes
translate([bb_c1-(bb_s/2),bb_c2-(bb_s/2),0]) cylinder(r=(bb_scrw_dia_b/2)+0.4,h=10,$fn=64);
translate([bb_c1+(bb_s/2),bb_c2-(bb_s/2),0]) cylinder(r=(bb_scrw_dia_b/2)+0.4,h=10,$fn=64);
translate([bb_c1-(bb_s/2),bb_c2+(bb_s/2),0]) cylinder(r=(bb_scrw_dia_b/2)+0.4,h=10,$fn=64);
translate([bb_c1+(bb_s/2),bb_c2+(bb_s/2),0]) cylinder(r=(bb_scrw_dia_b/2)+0.4,h=10,$fn=64);
//Ball bearing small screw holes
translate([bb_c1-(bb_s1/2),bb_c2-(bb_s1/2),0]) cylinder(r=(bb_scrw_dia_s/2)+0.25,h=10,$fn=64);
translate([bb_c1+(bb_s1/2),bb_c2-(bb_s1/2),0]) cylinder(r=(bb_scrw_dia_s/2)+0.25,h=10,$fn=64);
translate([bb_c1-(bb_s1/2),bb_c2+(bb_s1/2),0]) cylinder(r=(bb_scrw_dia_s/2)+0.25,h=10,$fn=64);
translate([bb_c1+(bb_s1/2),bb_c2+(bb_s1/2),0]) cylinder(r=(bb_scrw_dia_s/2)+0.25,h=10,$fn=64);


//center motor shaft hole
translate([bb_c1,bb_c2,0]) cylinder(r=17,h=10,$fn=500);

//center motor rivet holes
translate([bb_c1,bb_c2+mref3,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1+bat_rvt_dist,bb_c2+mref3,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1-bat_rvt_dist,bb_c2+mref3,0]) cylinder(r=rvt_rad,h=10,$fn=64);
//set2
translate([bb_c1,bb_c2-mref3,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1+bat_rvt_dist,bb_c2-mref3,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1-bat_rvt_dist,bb_c2-mref3,0]) cylinder(r=rvt_rad,h=10,$fn=64);
//set3
translate([bb_c1+mref3,bb_c2,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1+mref3,bb_c2+bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1+mref3,bb_c2-bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=64);
//set4
translate([bb_c1-mref3,bb_c2,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1-mref3,bb_c2+bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1-mref3,bb_c2-bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=64);

//COMMENTED header slots
/*translate([bb_c1,bb_c2+mref3,2]) cylinder(r=rvt_rad+0.7,h=10,$fn=500);
translate([bb_c1+bat_rvt_dist,bb_c2+mref3,2]) cylinder(r=rvt_rad+0.7,h=10,$fn=500);
translate([bb_c1-bat_rvt_dist,bb_c2+mref3,2]) cylinder(r=rvt_rad+0.7,h=10,$fn=500);
//set2
translate([bb_c1,bb_c2-mref3,2]) cylinder(r=rvt_rad+0.7,h=10,$fn=500);
translate([bb_c1+bat_rvt_dist,bb_c2-mref3,2]) cylinder(r=rvt_rad+0.7,h=10,$fn=500);
translate([bb_c1-bat_rvt_dist,bb_c2-mref3,2]) cylinder(r=rvt_rad+0.7,h=10,$fn=500);
*/


//Motor rivet holes
translate([cb_w-(3*mt_rvt_dist)+mref2,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1+mref1,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([cb_w-(mt_rvt_dist)+mref2,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1+mref1,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([cb_w-(3*mt_rvt_dist)+mref2,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1+mref1,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([cb_w-(mt_rvt_dist)+mref2,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1+mref1,0]) cylinder(r=rvt_rad,h=10,$fn=64);
//COMMENTED header slot
/*translate([cb_w-(3*mt_rvt_dist)+mref2,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1+mref1,2]) cylinder(r=rvt_rad+0.7,h=10,$fn=50);
translate([cb_w-(mt_rvt_dist)+mref2,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1+mref1,2]) cylinder(r=rvt_rad+0.7,h=10,$fn=50);
translate([cb_w-(3*mt_rvt_dist)+mref2,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1+mref1,2]) cylinder(r=rvt_rad+0.7,h=10,$fn=50);
translate([cb_w-(mt_rvt_dist)+mref2,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1+mref1,2]) cylinder(r=rvt_rad+0.7,h=10,$fn=50);
*/

//translate([cb_w-(3*mt_rvt_dist)+mref2+6,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1+mref1-8,0]) cylinder(r=(chs_scrw_dia/2)+0.5,h=10,$fn=64);
//translate([cb_w-(3*mt_rvt_dist)+mref2+6,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1+mref1-8,0]) cylinder(r=rvt_rad,h=10,$fn=64);

//Cable slot
translate([cb_w-(mt_rvt_dist)+mref2-6-3,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1+mref1-14,0]) cube([cblslot_w+2,cblslot_l,15]);
translate([cb_w-(mt_rvt_dist)+mref2-6-3-9-6.5,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1+mref1-14-10,0]) cube([7,35,15]);
//translate([cb_w-(mt1_w/2),10+bat_l+5+(mt1_l/2)-(cblslot_l/2),0]) cube([cblslot_w,cblslot_l,15]);



//Camera fixture screws
translate([(cb_w/2)-(pcb_w/2)-10-4,-cb1_l+5+cstr_l+114+15,-5]) cylinder(r=(chs_scrw_dia/2)+0.5,h=40,$fn=50);
translate([(cb_w/2)+(pcb_w/2)-10-4,-cb1_l+5+cstr_l+114+15,-5]) cylinder(r=(chs_scrw_dia/2)+0.5,h=40,$fn=50);


//Upper chassis screw holes
translate([(cb_w/2)-(cstr_w/2)-12,-cb1_l+5+cstr_l+30-15,0]) cylinder(r=(chs_scrw_dia/2)+0.5,h=40,$fn=50);
translate([(cb_w/2)+(cstr_w/2)+12,-cb1_l+5+cstr_l+30-15,0]) cylinder(r=(chs_scrw_dia/2)+0.5,h=40,$fn=50);
translate([(cb_w/2)-(pcb_w/2),-cb1_l+5+cstr_l+45+30-15,0]) cylinder(r=(chs_scrw_dia/2)+0.5,h=40,$fn=50);
translate([(cb_w/2)+(pcb_w/2),-cb1_l+5+cstr_l+45+30-15,0]) cylinder(r=(chs_scrw_dia/2)+0.5,h=40,$fn=50);

translate([(cb_w/2)-(pcb_w/2),-cb1_l+5+cstr_l+45+30-53-15,0]) cylinder(r=(chs_scrw_dia/2)+0.5,h=40,$fn=50);
translate([(cb_w/2)+(pcb_w/2),-cb1_l+5+cstr_l+45+30-53-15,0]) cylinder(r=(chs_scrw_dia/2)+0.5,h=40,$fn=50);



//battery holes
//set3
//translate([bb_c1+mref3+23,bb_c2,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1+mref3+23,bb_c2+bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1+mref3+23,bb_c2-bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1+mref3+23-6,bb_c2+bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1+mref3+23-6,bb_c2-bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=64);
//set4
//translate([bb_c1-mref3-23,bb_c2,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1-mref3-23,bb_c2+bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1-mref3-23,bb_c2-bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1-mref3-23+6,bb_c2+bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1-mref3-23+6,bb_c2-bat_rvt_dist,0]) cylinder(r=rvt_rad,h=10,$fn=64);



//spring holding screw
translate([bb_c1+(bb_s/2)-20,bb_c2+(bb_s/2)-5,0]) cylinder(r=(bb_scrw_dia_b/2)+0.4,h=10,$fn=64);


}

