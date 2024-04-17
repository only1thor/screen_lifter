// Define parameters
height = 40;
diameter1 = 20;
diameter2 = 10;
difference_height = 39;
difference_diameter1 = 23;
difference_diameter2 = 21;
difference_diameter3 = 11;
cube_size = [90, 10, 80];
cylinder_diameter = 15;
cube_dimensions = [10.1, 10.5, 41];
difference_diameter4 = 21;
difference_diameter5 = 11;
difference_diameter6 = 25;

translate([0,0,-20])
cylinder(h=height, d1=diameter1, d2=diameter2, center=true);
translate([0,0,20])
cylinder(h=height, d=diameter2, center=true);

translate([0,0,-20]){
    difference(){
        cylinder(h=difference_height, d=difference_diameter1, center=true);
        cylinder(h=height, d1=difference_diameter2, d2=difference_diameter3, center=true);
    }
}

difference(){
    color("lightblue"){
        translate([cube_size[0]/2, cube_size[1]/2, 0])
        cube(cube_size, center=true);
        translate([-cube_size[0]/2, -cube_size[1]/2, 0])
        cube(cube_size, center=true);
    }
    translate([0,0,20])
    cylinder(h=height+1, d=cylinder_diameter, center=true);
    translate([cube_dimensions[0]/2, cube_dimensions[1]/2, 20])
    cube(cube_dimensions, center=true);
    translate([-cube_dimensions[0]/2, -cube_dimensions[1]/2, 20])
    cube(cube_dimensions, center=true);
    translate([0,0,-20])
    cylinder(h=height+1, d1=difference_diameter4, d2=difference_diameter5, center=true);
}

difference(){
    color("lightgreen"){
        translate([cube_size[0]/2, -cube_size[1]/2, 0])
        cube(cube_size, center=true);
        translate([-cube_size[0]/2, cube_size[1]/2, 0])
        cube(cube_size, center=true);
    }
    translate([0,0,-20])
    cylinder(h=height+1, d=difference_diameter6, center=true);
    translate([cube_dimensions[0]/2, -cube_dimensions[1]/2, -20])
    cube(cube_dimensions, center=true);
    translate([-cube_dimensions[0]/2, cube_dimensions[1]/2, -20])
    cube(cube_dimensions, center=true);
}