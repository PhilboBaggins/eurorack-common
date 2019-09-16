EURORACK_PANEL_HEIGHT = 128.5;
EURORACK_PANEL_THICKNESS = 2; // TODO: Confirm this

EURORACK_PANEL_WIDTH_4HP = 20;
EURORACK_PANEL_WIDTH_8HP = 40.3;
EURORACK_PANEL_WIDTH_14HP = 70.8;

EURORACK_PANEL_HOLE_RADIUS = 1.6;

EURORACK_PANEL_HOLE_Y_LOWER = 3;
EURORACK_PANEL_HOLE_Y_UPPER = EURORACK_PANEL_HEIGHT - 3;

module EurorackPanel(width, holeXList)
{
    difference()
    {
        square([width, EURORACK_PANEL_HEIGHT]);

        for (holePos = holeXList)
        {
            holeXPos = holePos[0];
            holeYPos = holePos[1];

            translate([holeXPos, holeYPos])
            circle(r=EURORACK_PANEL_HOLE_RADIUS);
        }
    }
}

module EurorackPanel_4HP()
{
    EurorackPanel(EURORACK_PANEL_WIDTH_4HP, [
        [7.5, EURORACK_PANEL_HOLE_Y_UPPER],
        [7.5, EURORACK_PANEL_HOLE_Y_LOWER],
    ]);
}

module EurorackPanel_8HP()
{
    EurorackPanel(EURORACK_PANEL_WIDTH_8HP, [
        [ 7.5, EURORACK_PANEL_HOLE_Y_LOWER],
        [32.9, EURORACK_PANEL_HOLE_Y_UPPER],
    ]);
}

module EurorackPanel_14HP()
{
    EurorackPanel(EURORACK_PANEL_WIDTH_14HP, [
        [ 7.5, EURORACK_PANEL_HOLE_Y_UPPER],
        [ 7.5, EURORACK_PANEL_HOLE_Y_LOWER],
        [58.3, EURORACK_PANEL_HOLE_Y_UPPER],
        [58.3, EURORACK_PANEL_HOLE_Y_LOWER],
    ]);
}

//translate([ 0, 0, 0]) EurorackPanel_4HP();
//translate([25, 0, 0]) EurorackPanel_8HP();
//translate([70, 0, 0]) EurorackPanel_14HP();
