
$fn = 320;

height = 60;
dia = 151;
thickness = 10;
outer = 28;

module Profile()
{
    offset(r=+3) offset(delta=-3)
    polygon([[0,height], 
            [thickness, height], 
            [thickness, 25], 
            [3, 15], 
            [3, 5], 
            [-2, 0], 
            [-outer, 0], 
            [-outer, thickness],  
            [-thickness, thickness], 
            [-thickness, 18], 
            [0, 30]]);
}

//Profile();

module Ring() {
    rotate_extrude()
    translate([-dia/2, 0, 0])
    Profile();
}


module Magnet(instance, total) {
    height = 50;
    angle = 360/total * instance;
    rotate(angle, [0, 0, 1])
    translate([180/2, 0, height/2 + 1])
    cube([11, 25, height], center=true);
}

//Magnet(5, 6);

module Final() {
    difference() {
    
        Ring();
        for(i = [1 : 6]) Magnet(i, 6);
    }
}

Final();

