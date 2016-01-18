use <connector.scad>;

radius = 7.5;
wall = 2;
diameter = radius * 2;
base = diameter;
width = base + 10;
ballHeight = 5;
inset = 1;
eps = 0.1;

translate([-base/2, 0, base/2]) rotate([0, 90, 0]) intersection() {
	Main();
	HalfCylinder();
}

rotate([0, 0, 180]) translate([base/2,-width/4,0]) SocketConnector();

module Side() {
	translate([-base / 2, diameter / 2 - inset, 0]) union() {
		cube([base, wall, base + ballHeight]);
		translate([base, -eps, -eps]) Rampart();
	}
}

module Rampart() {
	rotate([0, -90, 0]) linear_extrude(height = base) {
		polygon([ [wall, wall], [wall, 6], [width, wall] ], [ [0, 1, 2] ]);
	}
}

module Main() {
	translate([-base / 2, -width / 2, 0])
		cube([base, width , 2]);

	difference() {
		union() {
			Side();
			rotate([0, 0, 180]) Side();
		}
		translate([0, 0, base / 2 + ballHeight]) {
			sphere(radius);
		}
	}
}

module HalfCylinder() {
	translate([0, width/2, diameter/2 + ballHeight]) {
		rotate([90, 0, 0]) cylinder(h = width, r=radius);
	}
	translate([-base/2, -width/2, 0]) {
		cube([base, width, diameter/2 + ballHeight]);
	}
	translate([0, -width/2, 0]) {
		cube([base/2, width, diameter + ballHeight]);
	}
}

module base() {
	cube([10,2.5,3]);
	translate([8,0]) cube([2,2.5,5]);
}

module SocketConnector() {
	base();
	translate([0,5]) base();
	translate([0,10]) base();
	connectors();
}
