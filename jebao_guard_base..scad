use <threads.scad>

$fa = 1;
$fs = 0.4;

module InnerThread(height= 9, outer_radius=33) {
    difference() {
        cylinder(height, r=outer_radius);
        translate([0, 0, -height/2])
            ScrewThread(outer_diam=55.6, height=height*2, pitch=2.3, tooth_height=2); 
    }
}


module OuterThread(height=9, inner_radius=33) {
    difference() {
        ScrewThread(outer_diam=85, height=height, pitch=2.3, tooth_height=2); 
        translate([0, 0, -height/2])
            cylinder(height*2, r=inner_radius);    
    }
}


module holes(count=4, radius=50, size=10) {
    for (i=[0:1:count-1]) {
        angle = 360/count*i;
        echo(angle);
        rotate([0, 0, angle]) 
            translate([radius, 0, -50]) 
                hull() {
                    cylinder(100, r=size/2);
                    translate([4, 0, 0])
                    cylinder(100, r=size/2);
                }
    }
}


difference() {
    union() {
        OuterThread(height=6);
        InnerThread(height=6);
        difference() {
            cylinder(2, r=90/2);
            translate([0, 0, - 5])
            cylinder(10, r=33);
        }
    }
    holes(count=31, radius=33, size=4.5);
}

     
  