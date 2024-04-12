
translate([0,0,-20])
cylinder(h=40, d1=20,d2=10,center=true);
translate([0,0,20])
cylinder(h=40, d=10,center=true);

translate([0,0,-20]){
    difference(){
        cylinder(h=39, d=23,center=true);
        cylinder(h=40, d1=21,d2=11,center=true);
    }
}


color("lightblue"){
    translate([46,6,0])
    cube([90,10,80],center=true);
    translate([-46,-6,0])
    cube([90,10,80],center=true);
}

color("lightgreen"){
    translate([46,-6,0])
    cube([90,10,80],center=true);
    translate([-46,6,0])
    cube([90,10,80],center=true);
}