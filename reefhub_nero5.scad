$fa = 1;
$fs = 0.4;


module holder(angle=220, thickness=8, radius=36.5) {
    rotate_extrude(angle=angle)
        translate([-radius, 0, 0])
            //polygon([[0,0], [3, 5], [3, 6], [3-thickness, 6], [-thickness, 0], [2-thickness, -19], [2, -19]]);
            polygon([[0,0], [3, 5], [3-thickness, 5], [-thickness, 0], [2-thickness, -19], [2, -19]]);
}


holder(angle=300, thickness=5, radius=37);
//translate([0, -50, 0]) holder(angle=140);
