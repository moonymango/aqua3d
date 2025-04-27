use <threads.scad>

$fa = 1;
$fs = 0.4;

module copy_rotate(degrees,vec){
    children();
    rotate(degrees, vec)
    children();
}



module InnerThread(height= 4, outer_radius=45) {
    difference() {
        cylinder(height, r=outer_radius);
        translate([0, 0, -height/2])
            ScrewThread(outer_diam=86, height=height*2, pitch=2.3, tooth_height=2); 
    }
}

module hole0(count=42, size=4.5) {
    for (i=[0:1:count-1]) {
        angle = 360/count*i;
        echo(angle);
        rotate([0, 0, angle])
        rotate([0, 90, 0])
        hull() {
            cylinder(100, r=size/2);
            translate([-5, 0, 0]) cylinder(100, r=size/2);
        }
    }
}


module Wall(height=30) {
    difference() {
        cylinder(30, r=45);
        translate([0, 0, -50])
            cylinder(100, r=43);
        
        // create holes
        translate([0, 0, 6])
        hole0();
        
        translate([0, 0, 18])
        hole0();
    }
}


module hole1(radius=42, size=4.5, dist=7) {
    for (i=[0:radius-1]) {
        if (i%dist==0) {
            echo(i);
            
            copy_rotate(180, [1, 0, 0])
            copy_rotate(180, [0, 1, 0])
            translate([0, 0, -50])
            hull() {
                translate([i, dist/2, 0])
                cylinder(100, r=size/2);
                y = (radius^2-i^2)^(0.5)-dist/2;
                translate([i, y, 0])
                cylinder(100, r=size/2);
            }
        }
    }    
    
}

module Front() {
    difference() {
        cylinder(2, r=45);
    
        // create holes
        hole1();
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

