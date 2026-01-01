
$fn = 120;

height = 15;
dia = 154;
thickness = 5;
outer = 20;

difference() {
    
    
    union() {
        cylinder(h = height, r = dia/2);
        cylinder(h = thickness, r = dia/2 + outer);
    }
    cylinder(h = 100, r = dia/2-thickness, center = true);
}

//translate([22, 16, 0])
//rotate(90, [1, 0, 0])
//linear_extrude(32, true)
//polygon([[0,0], [9, 0], [8.5, 30], [5.5, 30], [6, 3], [0, 3]]);