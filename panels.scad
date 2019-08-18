MONO_JACK_RADIUS = 3.6; // TODO: Confirm this

EURORACK_PANEL_HEIGHT = 128.5;
EURORACK_PANEL_THICKNESS = 2; // TODO: Confirm this

module EurorackPanel(width, holeXPos)
{
    HOLE_RADIUS = 1.6;

    difference()
    {
        square([width, EURORACK_PANEL_HEIGHT]);

        translate([holeXPos, 3])
        circle(r=HOLE_RADIUS);

        translate([holeXPos, EURORACK_PANEL_HEIGHT - 3])
        circle(r=HOLE_RADIUS);
    }
}

module EurorackPanel_4HP()
{
    EurorackPanel(20, 7.5);
}

module EurorackPanel_8HP()
{
    EurorackPanel(39.3, 32.9);
}

module EurorackPanel_14HP()
{
    // ????
}
