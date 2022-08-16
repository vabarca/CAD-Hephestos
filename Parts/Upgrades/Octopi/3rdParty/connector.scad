module connector(w=2.5) {
  translate([1.5, w, 5])
  difference() {
    rotate([90])
      scale([1.7,1])
      cylinder(r=5, h=w);
    rotate([90])
      translate([4,0])
      cylinder(r=1.6, h=w, $fn=7);
    translate([-11.5, -3, -5])
    cube([10,4,10]);
  }
}

module connectors() {
  connector();
  translate([0, 5]) connector();
  translate([0, 10]) connector();
}

connector();
