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
        ["Story",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [130,293,87 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "HELP"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Story"],
                            [LBL_SIZE, 15],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [127, 290, 85]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Road 1",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [130,23,75 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "HELP"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Road 1"],
                            [LBL_SIZE, 15],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [127, 20, 73]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Road 2",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [130,23,75 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "HELP"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Road 2"],
                            [LBL_SIZE, 15],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [127, 20, 73]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Road 3",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [130,13,75 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "HELP"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Road 3"],
                            [LBL_SIZE, 10],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [127, 10, 73]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Enemy",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [130,21,75 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "HELP"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Enemy"],
                            [LBL_SIZE, 15],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [127, 18, 73]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]

        ],
        ["Big Location",
            [
                [ENABLED_B, t],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [130,38,75 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "HELP"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Location"],
                            [LBL_SIZE, 15],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [127, 35, 73]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]

        ],
        ["Character box",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [64,43,94 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "character"],
                            [LBL_SIZE, 10],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [61, 40, 92]], // L, W, H
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Timer box",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [64,48,94 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Timer"],
                            [LBL_SIZE, 15],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [61, 45, 92]], // L, W, H
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Modifier box",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [64,13, 94 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "MOD"],
                            [LBL_SIZE, 8],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [61, 10, 92]], // L, W, H
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_WIDTH_PCT, 50],
                        [CMP_CUTOUT_HEIGHT_PCT, 40],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Location box",
            [
                [ENABLED_B, f],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [64, 15, 94 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "LOC"],
                            [LBL_SIZE, 8],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [61, 12, 92]], // L, W, H
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
