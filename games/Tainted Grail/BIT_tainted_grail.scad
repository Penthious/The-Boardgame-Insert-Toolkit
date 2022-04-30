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
// White Encounter 92, 68, 22
// Blue Encounter 92, 68, 22
// Green Encounter 92, 68, 22
// Purple Encounter 92, 68, 22
// Player Combat hand  92, 68, 15 (*5)
// Player Diplomacy hand  92, 68, 15 (*5)
// Player Advancement Combat Pool 92, 68, 20 (*5)
// Player Advancement Diplomacy Pool 92, 68, 20 (*5)
// Player Skill upgrade, 71, 48, 30 (6 compartments 5mm)
// Random Event 92, 68, 16
// Chapter Events 92, 68, 30
// Chapter Setup 92 ,68, 14
// Special Events 92,68, 8
// You are Dying/insane 92,68, 8
// Secrets 71, 48, 34
// Items 71, 48, 50
// Map cards 123, 84, 45
// Help cards 123, 84, 9
data =
    [
        ["Help Cards",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [128,12,87 ]],
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
                            [LBL_TEXT, "HELP"],
                            [LBL_SIZE, 7],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [125, 9, 84]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Map Cards",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [128,48,87 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "MAP"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "MAP"],
                            [LBL_DEPTH, 1],
                            [LBL_SIZE, 13]
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [125, 45, 84]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Items",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [52,53,74 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "ITEMS"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "ITEMS"],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [49, 30, 71]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Secrets",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [52,37,74 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "CARDS"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "SECRETS"],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [49, 34, 71]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Skill Upgrade",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [52,33,74 ]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "CARDS"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [49, 30, 71]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Chapter Setup",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72, 17, 96]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "CARDS"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "CHAPTER"],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 14, 94]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Chapter Events",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72, 33, 96]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "CARDS"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "EVENTS"],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 30, 94]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Random Events",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72, 19, 96]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "CARDS"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "R.EVENTS"],
                            [LBL_DEPTH, 1],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 16, 94]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Special Events / You are dying",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72, 11, 96]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "CARDS"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 8, 96]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
            ]
        ],
        ["Player Cards",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72, 82, 96]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "CARDS"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 15, 96]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [POSITION_XY, [0, 0]],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 15, 96]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [POSITION_XY, [0, 18]],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 20, 96]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [POSITION_XY, [0, 36]],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 20, 96]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [POSITION_XY, [0, 59]],
                    ]
                ],
            ]
        ],
        ["Echos of the last past cards",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72, 38, 96]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "CARDS"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 35, 96]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                    ]
                ]
            ]
        ],
        ["Encouter Cards & 5th player base holder",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72, 24, 96]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "CARDS"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 21, 96]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                    ]
                ]
            ]
        ],
        ["mini's 1",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [180, 142, 43]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "CARDS"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [60, 114, 48]],
                        [POSITION_XY, [0, 0]],
                    ],
                ],
                [BOX_COMPONENT,
                     [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [60, 97, 48]],
                        [POSITION_XY, [63, 0]],
                    ]
                ],
                [BOX_COMPONENT,
                     [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [33, 28, 48]],
                        [POSITION_XY, [130, 0]],
                    ]
                ],
                [BOX_COMPONENT,
                     [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [33, 28, 48]],
                        [POSITION_XY, [130, 30]],
                    ]
                ],
                [BOX_COMPONENT,
                     [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [33, 28, 48]],
                        [POSITION_XY, [130, 60]],
                    ]
                ],
                [BOX_COMPONENT,
                     [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [33, 28, 48]],
                        [POSITION_XY, [130, 90]],
                    ]
                ],
                [BOX_COMPONENT,
                     [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [33, 28, 48]],
                        [POSITION_XY, [130, 0]],
                    ]
                ],
                [BOX_COMPONENT,
                     [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [45, 29, 48]],
                        [POSITION_XY, [70, 105]],
                    ]
                ],
            ]
        ],
          ["mini's 2",
            [
                [ENABLED_B, true],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [180, 142, 43]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "CARDS"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [62, 107, 48]],
                        [POSITION_XY, [0, 0]],
                    ],
                ],
                [BOX_COMPONENT,
                    [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [62, 30, 48]],
                        [POSITION_XY, [0, 109]],
                    ],
                ],
                [BOX_COMPONENT,
                     [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [62, 62, 48]],
                        [POSITION_XY, [64, 0]],
                    ]
                ],
                [BOX_COMPONENT,
                     [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [62, 75, 48]],
                        [POSITION_XY, [64, 64]],
                    ]
                ],
                [BOX_COMPONENT,
                     [
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [49, 139, 48]],
                        [POSITION_XY, [128, 0]],
                    ]
                ],
              
            ]
        ]
    ];

MakeAll();
