
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

difference(){
    color("lightblue"){
        translate([46,5.5,0])
        cube([90,10,80],center=true);
        translate([-46,-5.5,0])
        cube([90,10,80],center=true);
    }
    translate([0,0,20])
    cylinder(h=41, d=15,center=true);
    translate([6,5.5,20])
    cube([10.1,10.5,41],center=true);
    translate([-6,-5.5,20])
    cube([10.1,10.5,41],center=true);
    translate([0,0,-20])
    cylinder(h=41, d1=21,d2=11,center=true);
}

difference(){
    color("lightgreen"){
        translate([48,-5.5,0])
        cube([90,10,80],center=true);
        translate([-48,5.5,0])
        cube([90,10,80],center=true);
    }
    translate([0,0,-20])
    cylinder(h=41, d=25,center=true);
}