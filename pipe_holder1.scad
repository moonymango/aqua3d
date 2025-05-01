
$fn = 40;

rotate(-110, [0, 0, 1])
rotate_extrude(angle=220)
translate([16, 0]) square([6, 16]);


difference() {
    translate([2, -16, 0])
    cube([20, 32, 16]);
    
    cylinder(h = 50, r = 16, center = true);
}

translate([22, 16, 0])
rotate(90, [1, 0, 0])
linear_extrude(32, true)
polygon([[0,0], [9, 0], [8.5, 30], [5.5, 30], [6, 3], [0, 3]]);