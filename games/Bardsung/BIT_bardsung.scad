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

m_lid_notches= false;

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
        ["C cards",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72,158,97 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "C CARDS"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 155, 95]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["b cards",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72,110,97 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "B CARDS"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 107, 95]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["fables",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72,58,97 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "FABLES"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 45, 95]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
    ],
        ["starting",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72,38,97 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "STARTING"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 35, 95]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Purple Encounters",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72,53,97 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "PURPLE"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 50, 95]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Orange Encounters",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72,53,97 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "ORANGE"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 50, 95]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["R cards",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72,33,97 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "R"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 30, 95]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["P cards",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72,18,97 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "P"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 15, 95]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["F Purple",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72,23,97 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "FP"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 20, 95]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["F Orange",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72,43,97 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "FO"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 40, 95]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["F Green",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72,33,97 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Fg"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 30, 95]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Ability",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [46,53,65 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "A"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [43, 50, 63]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Narative",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [46,33,65 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "N"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [43, 30, 63]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Wound",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [46,9,65 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "W"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [43, 6, 63]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Sage",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [46,9,65 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "S"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [43, 6, 63]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Behavior",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [46,9,65 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "B"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [43, 6, 63]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Equipment",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [46,13,65 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "E"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [43, 10, 63]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Starting Small",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [46,31,65 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "SS"],
                            [LBL_SIZE, AUTO],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [43, 28, 63]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
    ];

MakeAll();
