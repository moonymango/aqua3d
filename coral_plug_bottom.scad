
module bottom(size=15, thickness=3) {
    f  = (size-thickness)/size;
    difference() {
        cylinder(size, d=size);
        translate([0, 0, thickness]) cylinder(size, d=(size-thickness));
        
    }
}

bottom(size=20, thickness=3);
