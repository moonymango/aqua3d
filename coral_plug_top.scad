$fa = 1;
$fs = 0.4;

module bottom(size=15, thickness=3, gap=0.1) {
    difference() {
        cylinder(size, d=size);
        translate([0, 0, thickness]) cylinder(size, d=(size-thickness+gap));   
    }
}

module top(size=15, thickness=3, gap=0.1) {
    union() {
        cylinder(size, d=size-thickness-gap);
        cylinder(thickness, d = size);
    }
}

translate([50, 0, 0]) bottom(size=20, thickness=3);

translate([0, 0, 0]) top(size=20, thickness=3);
