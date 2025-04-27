use <threads.scad>

$fa = 1;
$fs = 0.4;

module InnerThread(height= 4, outer_radius=45) {
    difference() {
        cylinder(height, r=outer_radius);
        translate([0, 0, -height/2])
            ScrewThread(outer_diam=86, height=height*2, pitch=2.3, tooth_height=2); 
    }
}


module openings(count=4, radius=50, size=10) {
    for (i=[0:1:count-1]) {
        angle = 360/count*i;
        echo(angle);
        rotate([0, 0, angle]) translate([radius, 0, -50]) cylinder(100, r=size/2);
    }
}

InnerThread();

/**
difference() {
    union() {
        InnerThread(height=4);
    }
    openings(count=24, radius=34, size=6.5);
}

*/  
  