wd = 35;
lt = 13;
difference(){
union(){
translate([0,0,0]) cube([wd,lt,5]);
}

translate([(wd/2)+10,lt/2-1.5,0]) cylinder(r=2.3,h=10,$fn=64);
translate([(wd/2)-10,lt/2-1.5,0]) cylinder(r=2.3,h=10,$fn=64);
}