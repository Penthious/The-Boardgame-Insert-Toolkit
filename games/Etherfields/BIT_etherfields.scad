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

//300x300x140
data =
    [
        ["story cards",
            [
                [ENABLED_B, true],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [299, 72, 94]],
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
                        [CMP_COMPARTMENT_SIZE_XYZ, [296, 69, 91]],
                        [CMP_CUTOUT_SIDES_4B, [f, f, t, t]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                        [LABEL, [
                            [LBL_TEXT, "CARDS"],
                        ]],
                    ]
                ]
            ]
        ],
        ["influence cards",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [72, 110, 94]],
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
                            [LBL_TEXT, "CARDS"],
                            [ROTATION, 90]
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [69, 104, 91]],
                        [CMP_CUTOUT_SIDES_4B, [t, t, f, f]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                    ]
                ]
            ]
        ],
        ["Slumber cards",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [200, 110, 107]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "SLUMBER CARDS"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "SLUMBER CARDS"],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [196, 104, 104]],
                        [CMP_CUTOUT_SIDES_4B, [f, f, t, t]],
                        [CMP_CUTOUT_HEIGHT_PCT, 30],
                    ]
                ]
            ]
        ],
        ["minis",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [163, 116, 39]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "Minis"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Lucid Specialist"],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [66, 64, 34]],
                        [POSITION_XY, [1, 1]],
                    ],
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Lucid Reaper"],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [66, 46, 34]],
                        [POSITION_XY, [1, 66]],
                    ],
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Lucid Gambler"],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [45, 56, 34]],
                        [POSITION_XY, [68, 1]],
                    ],
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Base Reaper"],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [45, 53, 34]],
                        [POSITION_XY, [68, 58]],
                    ],
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Lucid Tough"],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [45, 56, 34]],
                        [POSITION_XY, [114, 1]],
                    ],
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Lucid Free"],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [45, 53, 34]],
                        [POSITION_XY, [114, 58]],
                    ],
                ],
            ],
        ],
        ["Balthazar, Thorn Night",
            [
                [ENABLED_B, false],
                [TYPE, BOX],
                [BOX_SIZE_XYZ, [172, 138, 65]],
                [BOX_NO_LID_B, true], // set this to false to add lid back in
                [BOX_LID,
                    [
                        [LABEL,
                            [
                                [LBL_TEXT, "Balthazar"],
                                [LBL_SIZE, AUTO],

                            ],
                        ],
                        [LID_SOLID_B, true],
                    ]
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Balthazar"],
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [125, 133, 60]],
                        [POSITION_XY, [1, 1]],
                    ],
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Thorn Knight"],
                            [LBL_SIZE, 4]
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [40, 83, 60]],
                        [POSITION_XY, [128, 1]],
                    ],
                ],
                [BOX_COMPONENT,
                    [
                        [LABEL, [
                            [LBL_TEXT, "Tokens"],
                            [LBL_SIZE, 4]
                        ]],
                        [CMP_NUM_COMPARTMENTS_XY, [1, 1]],
                        [CMP_COMPARTMENT_SIZE_XYZ, [40, 48, 60]],
                        [POSITION_XY, [128, 86]],
                    ],
                ],
            ],
        ],
    ];

MakeAll();