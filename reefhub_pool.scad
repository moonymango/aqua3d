
$fn = 40;

translate([-20, -25, 0])
cube([20, 50, 10]);

translate([0, -25, 0])
cube([5, 50, 45]);

translate([5, 25, 0])
rotate(90, [1, 0, 0])
linear_extrude(50, true)
polygon([[0,0], [15, 0], [14, 50], [9, 50], [10, 5], [0, 5]]);