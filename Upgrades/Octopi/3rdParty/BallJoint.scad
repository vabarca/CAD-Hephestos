radius = 7.75;
wall = 2;
diameter = radius * 2;
base = diameter + 10;
width = base + 10;
inset = 1;
epsilon = 1;
jointwidth=5;

difference() {
	translate([0, 0, radius-wall]) sphere(radius);
	translate([-base/2, -base/2, -wall])  cube([base, base, wall]);
}

translate([-jointwidth/2, -jointwidth/2, radius]) cube([jointwidth, jointwidth, radius * 2.5]);
