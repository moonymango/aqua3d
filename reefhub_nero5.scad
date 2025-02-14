$fa = 1;
$fs = 0.4;


module holder(angle=220, thickness=8, radius=36.5, p0=[2.5, 5], p1=[1.25, -19]) {
    d = [thickness, 0];
    rotate_extrude(angle=angle)
        translate([-radius, 0, 0])
            polygon([[0,0], p0, p0-d, -d, p1-d, p1]);
}


holder(angle=355, thickness=5, radius=37.5);
//translate([0, -50, 0]) holder(angle=140);
