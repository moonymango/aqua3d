$fa = 1;
$fs = 0.4;


module holder(angle=220) {
    rotate_extrude(angle=angle)
        translate([-73/2, 0, 0])
            polygon([[0,0], [3, 5], [3, 6], [-5, 6], [-8, 0], [-5.75, -19], [2.25, -19]]);
}


holder();
translate([0, -50, 0]) holder(angle=130);
