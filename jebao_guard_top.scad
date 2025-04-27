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

module hole(count=50, size=4.5) {
    for (i=[0:1:count-1]) {
        angle = 360/count*i;
        echo(angle);
        rotate([0, 0, angle])
        rotate([0, 90, 0])
        cylinder(100, r=size/2);
    }
}


module Wall(height=30) {
    difference() {
        cylinder(30, r=45);
        translate([0, 0, -50])
            cylinder(100, r=43);
        
        // create holes
        translate([0, 0, 5])
        hole();
        
        translate([0, 0, 11])
        hole();
        
        translate([0, 0, 17])
        hole();
        
        translate([0, 0, 23])
        hole();
    }
}


module Front() {
    difference() {
        cylinder(2, r=45);
    
        // create holes
        lim = 10;
        dist = 5.4;
        for (x=[-lim:1:lim]) {
            for (y=[-lim: 1: lim]) {
                xx = x*dist;
                yy = y*dist;
                translate([xx, yy, -50])
                cylinder(100, r=4.5/2);
            }   
        }
    }
}

//Front();

module obj(height=30) {
    union() {
        Front();
        Wall(height=height);
        
        translate([0, 0, height-4])
        InnerThread();
    }
}

obj();

/**
for (i=[0:1:20]) {
    angle = 360/20*i;
    echo(angle);
    rotate([0, 0, angle]) translate([radius, 0, -50]) cylinder(100, r=size/2);
}
*/

/**
difference() {
    union() {
        InnerThread(height=4);
    }
    openings(count=24, radius=34, size=6.5);
}

*/  
  