
//FROM CHASSIS TEMPLATE

cb_w = 35;
cb_l = 65;
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
bb_c2 = (cb_l/2);

mref1 = 25;
mref2 = 1;
mref3 = 24;
shft_dist = sqrt(72);

difference(){
    union(){
translate([0,0,0]) cube([cb_w,cb_l,cb_h]);
    }


//center motor rivet holes
translate([bb_c1,bb_c2+mref3,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1+bat_rvt_dist,bb_c2+mref3,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1-bat_rvt_dist,bb_c2+mref3,0]) cylinder(r=rvt_rad,h=10,$fn=64);
//set2
translate([bb_c1,bb_c2-mref3,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1+bat_rvt_dist,bb_c2-mref3,0]) cylinder(r=rvt_rad,h=10,$fn=64);
translate([bb_c1-bat_rvt_dist,bb_c2-mref3,0]) cylinder(r=rvt_rad,h=10,$fn=64);


/*
translate([(cb_w/2)+shft_dist,(cb_l/2)+shft_dist,-10]) cylinder (r=2.5, h=20, $fn=128);
  translate([(cb_w/2)-shft_dist,(cb_l/2)-shft_dist,-10]) cylinder (r=2.5, h=20, $fn=128);

translate([(cb_w/2)-shft_dist,(cb_l/2)+shft_dist,-10]) cylinder (r=2.5, h=20, $fn=128);
  translate([(cb_w/2)+shft_dist,(cb_l/2)-shft_dist,-10]) cylinder (r=2.5, h=20, $fn=128);
*/



translate([(cb_w/2)+12,(cb_l/2),-10]) cylinder (r=2.5, h=20, $fn=128);
  translate([(cb_w/2)-12,(cb_l/2),-10]) cylinder (r=2.5, h=20, $fn=128);

translate([(cb_w/2),(cb_l/2)+12,-10]) cylinder (r=2.5, h=20, $fn=128);
  translate([(cb_w/2),(cb_l/2)-12,-10]) cylinder (r=2.5, h=20, $fn=128);

translate([(cb_w/2),(cb_l/2),-10]) cylinder (r=3.5, h=20, $fn=128);

}

