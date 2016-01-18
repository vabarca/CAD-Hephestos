use <connector.scad>;

arm_length = 40; // Change this to lengthen the arm and move the camera away from the bed.

rotate([90,0,180])
  connector(2.2);
cube([arm_length, 10, 2.2]);
translate([arm_length, 10, 0])
rotate([90]) connector(2.2);
