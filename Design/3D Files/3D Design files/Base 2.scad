cb_w = 90;
cb_l = 120;
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
rvt_rad = rvt_dia/2;

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

difference(){
hull(){
translate([0,0,0]) cube([cb_w,cb_l,cb_h]);
translate([(cb_w/2)-(cb1_w/2),-cb1_l,0]) cube([cb1_w,cb1_l,cb1_h]);

}

//Castor screw holes
translate([(cb_w/2)-(cstr_w/2),-cb1_l+5,0]) cylinder(r=(cstr_scrw_dia/2)+0.25,h=10,$fn=50);
translate([(cb_w/2)+(cstr_w/2),-cb1_l+5,0]) cylinder(r=(cstr_scrw_dia/2)+0.25,h=10,$fn=50);
translate([(cb_w/2)-(cstr_w/2),-cb1_l+5+cstr_l,0]) cylinder(r=(cstr_scrw_dia/2)+0.25,h=10,$fn=50);
translate([(cb_w/2)+(cstr_w/2),-cb1_l+5+cstr_l,0]) cylinder(r=(cstr_scrw_dia/2)+0.25,h=10,$fn=50);


//Battery rivet holes
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)-bat_rvt_dist,10+5,0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)+bat_rvt_dist,10+5,0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)+bat_rvt_dist,10+5,0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)-bat_rvt_dist,10+5,0]) cylinder(r=rvt_rad,h=10,$fn=50);

//Battery rivet holes
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)-bat_rvt_dist,10+5+(2*bat_rvt_dist),0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)+bat_rvt_dist,10+5+(2*bat_rvt_dist),0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)+bat_rvt_dist,10+5+(2*bat_rvt_dist),0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)-bat_rvt_dist,10+5+(2*bat_rvt_dist),0]) cylinder(r=rvt_rad,h=10,$fn=50);


//Battery rivet holes
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)-bat_rvt_dist,10+5+(4*bat_rvt_dist),0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)+bat_rvt_dist,10+5+(4*bat_rvt_dist),0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)+bat_rvt_dist,10+5+(4*bat_rvt_dist),0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)-bat_rvt_dist,10+5+(4*bat_rvt_dist),0]) cylinder(r=rvt_rad,h=10,$fn=50);


//Battery rivet holes
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)-bat_rvt_dist,10+5+(6*bat_rvt_dist),0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)+bat_rvt_dist,10+5+(6*bat_rvt_dist),0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)+bat_rvt_dist,10+5+(6*bat_rvt_dist),0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)-bat_rvt_dist,10+5+(6*bat_rvt_dist),0]) cylinder(r=rvt_rad,h=10,$fn=50);


//Upper chassis screw holes
translate([(cb_w/2)-(cstr_w/2)-12,-cb1_l+5+cstr_l,0]) cylinder(r=(chs_scrw_dia/2)+0.25,h=40,$fn=50);
translate([(cb_w/2)+(cstr_w/2)+12,-cb1_l+5+cstr_l,0]) cylinder(r=(chs_scrw_dia/2)+0.25,h=40,$fn=50);
translate([(cb_w/2)-(pcb_w/2),-cb1_l+5+cstr_l+45,0]) cylinder(r=(chs_scrw_dia/2)+0.25,h=40,$fn=50);
translate([(cb_w/2)+(pcb_w/2),-cb1_l+5+cstr_l+45,0]) cylinder(r=(chs_scrw_dia/2)+0.25,h=40,$fn=50);
translate([(cb_w/2)-(pcb_w/2),-cb1_l+5+cstr_l+114,0]) cylinder(r=(chs_scrw_dia/2)+0.25,h=40,$fn=50);
translate([(cb_w/2)+(pcb_w/2),-cb1_l+5+cstr_l+114,0]) cylinder(r=(chs_scrw_dia/2)+0.25,h=40,$fn=50);

//Upper board
//translate([(cb_w/2)-(plt_w/2),-5,25]) cube([plt_w,plt_l,plt_h]);


//Motor1 rivet holes
translate([(mt1_w/2)-mt_rvt_dist,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1,0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(mt1_w/2)+mt_rvt_dist,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1,0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(mt1_w/2)-mt_rvt_dist,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1,0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(mt1_w/2)+mt_rvt_dist,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1,0]) cylinder(r=rvt_rad,h=10,$fn=50);

//Motor rivet holes
translate([cb_w-mt1_w+(mt1_w/2)-mt_rvt_dist,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1,0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([cb_w-mt1_w+(mt1_w/2)+mt_rvt_dist,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1,0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([cb_w-mt1_w+(mt1_w/2)-mt_rvt_dist,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1,0]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([cb_w-mt1_w+(mt1_w/2)+mt_rvt_dist,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1,0]) cylinder(r=rvt_rad,h=10,$fn=50);

//Cable slot
translate([cb_w-(mt1_w/2),10+bat_l+5+(mt1_l/2)-(cblslot_l/2),0]) cube([cblslot_w,cblslot_l,5]);
translate([(mt1_w/2)-cblslot_w,10+bat_l+5+(mt1_l/2)-(cblslot_l/2),0]) cube([cblslot_w,cblslot_l,5]);


}



//translate([cb_w-(crv_r),cb_l-(crv_r),10]) cylinder(r=crv_r,h=cb_h,$fn=50);

//Castor screw holes
translate([(cb_w/2)-(cstr_w/2),-cb1_l+5,-10]) cylinder(r=(cstr_scrw_dia/2)+0.25,h=10,$fn=50);
translate([(cb_w/2)+(cstr_w/2),-cb1_l+5,-10]) cylinder(r=(cstr_scrw_dia/2)+0.25,h=10,$fn=50);
translate([(cb_w/2)-(cstr_w/2),-cb1_l+5+cstr_l,-10]) cylinder(r=(cstr_scrw_dia/2)+0.25,h=10,$fn=50);
translate([(cb_w/2)+(cstr_w/2),-cb1_l+5+cstr_l,-10]) cylinder(r=(cstr_scrw_dia/2)+0.25,h=10,$fn=50);

//battery base
translate([(cb_w/2)-bat_w-2.5,10,10]) cube([bat_w,bat_l,5]);
translate([(cb_w/2)+2.5,10,10]) cube([bat_w,bat_l,5]);

//Battery rivet holes
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)-bat_rvt_dist,10+5,10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)+bat_rvt_dist,10+5,10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)+bat_rvt_dist,10+5,10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)-bat_rvt_dist,10+5,10]) cylinder(r=rvt_rad,h=10,$fn=50);

//Battery rivet holes
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)-bat_rvt_dist,10+5+(2*bat_rvt_dist),10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)+bat_rvt_dist,10+5+(2*bat_rvt_dist),10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)+bat_rvt_dist,10+5+(2*bat_rvt_dist),10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)-bat_rvt_dist,10+5+(2*bat_rvt_dist),10]) cylinder(r=rvt_rad,h=10,$fn=50);


//Battery rivet holes
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)-bat_rvt_dist,10+5+(4*bat_rvt_dist),10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)+bat_rvt_dist,10+5+(4*bat_rvt_dist),10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)+bat_rvt_dist,10+5+(4*bat_rvt_dist),10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)-bat_rvt_dist,10+5+(4*bat_rvt_dist),10]) cylinder(r=rvt_rad,h=10,$fn=50);


//Battery rivet holes
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)-bat_rvt_dist,10+5+(6*bat_rvt_dist),10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)-bat_w-2.5+(bat_w/2)+bat_rvt_dist,10+5+(6*bat_rvt_dist),10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)+bat_rvt_dist,10+5+(6*bat_rvt_dist),10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(cb_w/2)+2.5+(bat_w/2)-bat_rvt_dist,10+5+(6*bat_rvt_dist),10]) cylinder(r=rvt_rad,h=10,$fn=50);


//Upper chassis screw holes
translate([(cb_w/2)-(cstr_w/2)-12,-cb1_l+5+cstr_l,10]) cylinder(r=(chs_scrw_dia/2)+0.25,h=40,$fn=50);
translate([(cb_w/2)+(cstr_w/2)+12,-cb1_l+5+cstr_l,10]) cylinder(r=(chs_scrw_dia/2)+0.25,h=40,$fn=50);
translate([(cb_w/2)-(pcb_w/2),-cb1_l+5+cstr_l+45,10]) cylinder(r=(chs_scrw_dia/2)+0.25,h=40,$fn=50);
translate([(cb_w/2)+(pcb_w/2),-cb1_l+5+cstr_l+45,10]) cylinder(r=(chs_scrw_dia/2)+0.25,h=40,$fn=50);
translate([(cb_w/2)-(pcb_w/2),-cb1_l+5+cstr_l+114,10]) cylinder(r=(chs_scrw_dia/2)+0.25,h=40,$fn=50);
translate([(cb_w/2)+(pcb_w/2),-cb1_l+5+cstr_l+114,10]) cylinder(r=(chs_scrw_dia/2)+0.25,h=40,$fn=50);

//Upper board
translate([(cb_w/2)-(plt_w/2),-5,25]) cube([plt_w,plt_l,plt_h]);

//Motor base ref
translate([0,10+bat_l+5,10]) cube([mt1_w,mt1_l,5]);
translate([cb_w-mt1_w,10+bat_l+5,10]) cube([mt1_w,mt1_l,5]);

//Motor1 rivet holes
translate([(mt1_w/2)-mt_rvt_dist,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1,10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(mt1_w/2)+mt_rvt_dist,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1,10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(mt1_w/2)-mt_rvt_dist,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1,10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([(mt1_w/2)+mt_rvt_dist,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1,10]) cylinder(r=rvt_rad,h=10,$fn=50);

//Motor rivet holes
translate([cb_w-mt1_w+(mt1_w/2)-mt_rvt_dist,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1,10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([cb_w-mt1_w+(mt1_w/2)+mt_rvt_dist,10+bat_l+5+(mt1_l/2)-mt_rvt_dist1,10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([cb_w-mt1_w+(mt1_w/2)-mt_rvt_dist,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1,10]) cylinder(r=rvt_rad,h=10,$fn=50);
translate([cb_w-mt1_w+(mt1_w/2)+mt_rvt_dist,10+bat_l+5+(mt1_l/2)+mt_rvt_dist1,10]) cylinder(r=rvt_rad,h=10,$fn=50);

//Cable slot
translate([cb_w-(mt1_w/2),10+bat_l+5+(mt1_l/2)-(cblslot_l/2),20]) cube([cblslot_w,cblslot_l,5]);
translate([(mt1_w/2)-cblslot_w,10+bat_l+5+(mt1_l/2)-(cblslot_l/2),20]) cube([cblslot_w,cblslot_l,5]);
