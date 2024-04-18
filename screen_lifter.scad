
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

module triangle(base_width, height, length) {
    x_left = base_width/2;
    x_right = -base_width/2;
    y_top = height/2;
    y_bottom = -height/2;
    rotate([90,0,0])
    translate([0,0,-length/2])
    linear_extrude(height = length)
        polygon(points=[[x_left,y_bottom],[x_right,y_bottom],[0,y_top]]);
}

module triangle_pattern(base_width, height, length, spacing, repetitions) {
    for (i = [0:repetitions-1]) {
        translate([(base_width + spacing) * i, 0, 0]) {
            triangle(base_width, height, length);
        }
        translate([(base_width + spacing) * (i + 0.5), 0, 0]) {
            rotate([0, 180, 0]) {
                triangle(base_width, height, length);
            }
        }
    }
}

module walls(){
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
        translate([8,-5.5,-20])
        cube([10.1,10.5,41],center=true);
        translate([-8,5.5,-20])
        cube([10.1,10.5,41],center=true);
    }
}

difference(){
    walls();
    translate([53,0,0])
    intersection(){
        translate([-35,0,0])
        triangle_pattern(40, 70, 30, 10, 3);
        cube([70,30,70],center=true);
    }
    translate([-53,0,0])
    intersection(){
        translate([-35,0,0])
        triangle_pattern(40, 70, 30, 10, 3);
        cube([70,30,70],center=true);
    }
}