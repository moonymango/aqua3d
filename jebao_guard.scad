use <threads.scad>

$fa = 1;
$fs = 0.4;

difference() {
    cylinder(9, r=33);
    
    //ScrewThread(outer_diam=53.6, height=10, pitch=2.3, tooth_height=1.8); 
    //ScrewThread(outer_diam=54.8, height=10, pitch=2.3, tooth_height=1.8); 
    //ScrewThread(outer_diam=56.4, height=10, pitch=2.3, tooth_height=1.8); 
    ScrewThread(outer_diam=55.6, height=10, pitch=2.3, tooth_height=2); 
    
    //ScrewThread(outer_diam=56.4, height=10, pitch=2.3, tooth_height=1.8, tooth_angle=30); 
    
    //, pitch=0, tooth_angle=30, tolerance=0.4, tip_height=0, tooth_height=0, tip_min_fract=0) {
}


//ScrewHole(outer_diam, height, position=[0,0,0], rotation=[0,0,0], pitch=0, tooth_angle=30, tolerance=0.4, tooth_height=0);
  