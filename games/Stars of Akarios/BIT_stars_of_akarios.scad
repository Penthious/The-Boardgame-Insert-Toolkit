include <../../boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = true;

// Focus on one box
g_isolated_print_box = "";

// Used to visualize how all of the boxes fit together.
g_b_visualization = false;

// this is the outer wall thickness.
//Default = 1.5mm
g_wall_thickness = 1.5;

// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and
// you only need to reprint the lid.
//
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;

// This adjusts the position of the lid detents downward.
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;

//300*298*119

data =
    [
        ["engine/weapons",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [64,96,50 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [61, 93, 48]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 60],
                        [CMP_CUTOUT_HEIGHT_PCT, 93],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["combat1/4/5",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [64,96,33 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [61, 93, 31]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 60],
                        [CMP_CUTOUT_HEIGHT_PCT, 93],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["scout",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [64,96,42 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [61, 93, 40]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 60],
                        [CMP_CUTOUT_HEIGHT_PCT, 93],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Combat 2",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [64,96,47 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [61, 93, 45]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 60],
                        [CMP_CUTOUT_HEIGHT_PCT, 93],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["event",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [64,96,25 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [61, 93, 23]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 60],
                        [CMP_CUTOUT_HEIGHT_PCT, 93],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["co-pilot",
            [
                [ENABLED_B, t],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [76,25,50 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [73, 22, 48]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 60],
                        [CMP_CUTOUT_HEIGHT_PCT, 70],
                        [POSITION_XY, [0, 0]],
                        [LABEL, [
                            [LBL_TEXT, "CO-PILOT"],
                        ]],
                    ]
                ],
            ]
        ],
        ["Tarrot",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [78,127,23 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [75, 124, 20]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 60],
                        [CMP_CUTOUT_HEIGHT_PCT, 69.5],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
    ];

MakeAll();
