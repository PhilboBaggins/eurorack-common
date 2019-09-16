
// Based on https://datasheet.octopart.com/35RAPC2AV-Switchcraft-datasheet-46992.pdf

module Switchcraft35RAPC2AV_MainShape(fn)
{
    translate([0, -7.5/2, 0])
    difference()
    {
        color("black")
        cube([14, 7.5, 4.4+7]);

        color("red")
        translate([1, 1, 1])
        cube([14-2, 7.5-2, 4.4+7-2]);
    }

    color("silver")
    difference()
    {
        translate([-0.5, 0, 7])
        rotate([0, 90, 0])
        cylinder(r=7/2, h=0.5, $fn=fn);

        translate([-0.5, 6/2,     5]) cube([0.5, 1, 4]);
        translate([-0.5, 6/2 - 7, 5]) cube([0.5, 1, 4]);
    }

    color("silver")
    translate([-4, 0, 7])
    rotate([0, 90, 0])
    cylinder(r=6/2, h=4, $fn=fn);
}

module Switchcraft35RAPC2AV_Pin(fn)
{
    color("silver")
    translate([0.5, 0, -3.3])
    rotate([0, 270, 0])
    difference()
    {
        hull()
        {
            cylinder(r=1, h=1, $fn=fn);
            translate([4.3-2, -1, 0]) cube([1, 2, 1]);
        }

        translate([0, 0, -1]) cylinder(r=0.5, h=3, $fn=fn);
    }
}

module Switchcraft35RAPC2AV(fn=64)
{
    difference()
    {
        Switchcraft35RAPC2AV_MainShape(fn);

        color("red")
        translate([-5, 0, 7])
        rotate([0, 90, 0])
        cylinder(r=3.6/2, h=7, $fn=fn);
    }

    translate([-4.5, 0, 0])
    {
        translate([6.1,             0, 0]) Switchcraft35RAPC2AV_Pin(fn);
        translate([6.1 + 5.3,       0, 0]) Switchcraft35RAPC2AV_Pin(fn);
        translate([6.1 + 5.3 + 5.8, 0, 0]) Switchcraft35RAPC2AV_Pin(fn);
    }
}

//Switchcraft35RAPC2AV();
