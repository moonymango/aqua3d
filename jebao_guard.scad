use <threads.scad>

$fa = 1;
$fs = 0.4;

module thread(height= 9, outer_radius=33) {
    difference() {
        cylinder(height, r=outer_radius);
        
        //ScrewThread(outer_diam=53.6, height=10, pitch=2.3, tooth_height=1.8); 
        //ScrewThread(outer_diam=54.8, height=10, pitch=2.3, tooth_height=1.8); 
        //ScrewThread(outer_diam=56.4, height=10, pitch=2.3, tooth_height=1.8); 
        ScrewThread(outer_diam=55.6, height=10, pitch=2.3, tooth_height=2); 
    }
}


translate([70, 0, 0])
ScrewThread(outer_diam=55, height=10, pitch=2.3, tooth_height=2); 

//thread(height=8, outer_radius=40);
thread();
  