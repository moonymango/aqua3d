
$fn = 40;

translate([-20, -19, 0])
cube([20, 38, 10]);

translate([0, -19, 0])
cube([5, 38, 35]);

translate([5, 19, 0])
rotate(90, [1, 0, 0])
linear_extrude(38, true)
polygon([[0,0], [15, 0], [14, 40], [9, 40], [10, 5], [0, 5]]);