import("raspberri_pi_camera_case_front_v0.4.2.STL");

epsilon = 0.5;
jointwidth = 5 + epsilon;
casedepth = 29.8;
casewidth = 28.8;
caseheight = 10;
wallwidth = 1.5;

jointdiagonal = sqrt(jointwidth * jointwidth * 2);
boxwidth = jointdiagonal + 4;

translate([casedepth,0,0]) {
	difference() {
		translate([-wallwidth,(casewidth-boxwidth)/2,0])
			cube([boxwidth+wallwidth,boxwidth,caseheight]);
		translate([0,(casewidth)/2,(caseheight-jointdiagonal)/2])
			rotate([45,0,0])
				cube([boxwidth,jointwidth,jointwidth]);
	}
}
