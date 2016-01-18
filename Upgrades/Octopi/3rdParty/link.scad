use <connector.scad>;

rotate([90,0,180])
  connector(2.2);
cube([20, 10, 2.2]);
translate([20, 10, 0])
rotate([90]) connector(2.2);
