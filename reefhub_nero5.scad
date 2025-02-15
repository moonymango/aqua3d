use <MCAD/boxes.scad>

$fa = 1;
$fs = 0.4;


module ring(angle=355, thickness=5, radius=37, p0=[2.5, 5], p1=[1.75, -19]) {
    d = [thickness, 0];
    rotate([0, 0, (360-angle)/2])
    rotate_extrude(angle=angle)
        translate([-radius, 0, 0])        
            offset(r=0.5) offset(delta=-0.5)
            polygon([[0,0], p0, p0-d, -d, p1-d, p1]);
}



difference() {
    ring();
    
    translate([-37, 0, -2.5])
    cube([15, 15, 5], center=true);
    
    
}

//roundedBox(size=[10,20,30],radius=3,sidesonly=false);

