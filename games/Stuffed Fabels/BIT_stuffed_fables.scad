include <boardgame_insert_toolkit_lib.scad>;

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

data =
[
    [   "cards",
        [
            [ BOX_SIZE_XYZ, [ 215, 99, 32] ],
            [ BOX_LID,
                [            
                    [ LID_PATTERN_RADIUS, 10],
                    [ LID_PATTERN_THICKNESS, 1.5],
                    [ LABEL,
                        [
                            [ LBL_TEXT,     "CARDS"],
                            [ LBL_SIZE,     AUTO ],
                        ]
                    ],  

                    [ LID_PATTERN_N1,               5 ],
                    [ LID_PATTERN_N2,               5 ],
                    [ LID_PATTERN_ANGLE,            10 ],
                    [ LID_PATTERN_ROW_OFFSET,       5 ],
                    [ LID_PATTERN_COL_OFFSET,       5 ],
                    [ LID_PATTERN_THICKNESS,        3 ],                    

                ],
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY,       [3,1]],
                    [CMP_COMPARTMENT_SIZE_XYZ,      [  70, 96, 30] ],
                    [POSITION_XY,                   [CENTER,CENTER]],
                    [CMP_CUTOUT_SIDES_4B,           [t,t,f,f]], // F,B,L,R
                    [CMP_CUTOUT_DEPTH_PCT,          30],
                ]
            ],                  
        ]
    ],   
];


MakeAll();