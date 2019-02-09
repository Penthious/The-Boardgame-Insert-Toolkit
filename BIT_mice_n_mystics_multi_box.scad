
include <boardgame_insert_toolkit_lib.scad>;


// 285 x 285
// 
data =
[
    [   "1",
        [
            [   "box_dimensions",                 [183, 190, 38.0] ],                       // float f -- default:[ 100, 100, 100]
            [ "enabled",                                    true ],

            [   "components",
                [
                    [   "hearts & cheese & status",
                        [
                            ["enabled",                     true ],                     // true | false
                            ["type",                        "tokens"],                  // "cards" | "tokens" | "chit_stack" | "chit_stack_vertical" | "" -- default: ""
                            ["compartment_size",            [ 57.0, 60.0, 20.0] ],      // [float, float, float]
                            ["num_compartments",            [1, 3] ],                   // [int, int]
                            ["position",                    [122, 1 ] ],                // [float, float, float]
                            ["label",
                                [
                                    ["text",                     [  ["status"],         // simple string or array representing each compartment
                                                                    ["cheese"],
                                                                    ["health"]]],
                                    ["size",                     5],                    // default 4
                                    ["rotation",                0]                      // 0 | 90 | -90 | 180 -- default = 0
                                ]
                            ]

                        ]
                    ],

                    [   "heroes",
                        [
                            ["enabled",                     true ],                     // true | false
                            ["type",                        ""],
                            ["compartment_size",            [ 30.0, 29.5, 32.0] ],
                            ["num_compartments",            [1, 6] ],
                            ["position",                    [1, 1 ] ],
                        ]
                    ],

                    [   "rats",
                        [
                            ["enabled",                     true ],                     // true | false
                            ["type",                        ""],
                            ["compartment_size",            [ 37.0, 29.5, 32.0] ],
                            ["num_compartments",            [1, 6] ],
                            ["position",                    [32, 1 ] ],                          
                        ] 
                    ],

                    [   "centipede",
                        [
                            ["enabled",                     true ],                     // true | false
                            ["type",                        ""],
                            ["compartment_size",            [ 51.0, 35.0, 36.0] ],
                            ["num_compartments",            [1, 1] ],
                            ["position",                    [70, 106 ] ],                       
                        ]
                    ],

                    [   "spider",
                        [
                            ["enabled",                     true ],                     // true | false
                            ["type",                        ""],
                            ["compartment_size",            [ 51.0, 40.0, 17.0] ],
                            ["num_compartments",            [1, 1] ],
                            ["position",                    [70, 143 ] ],                           
                        ]
                    ],

                    [   "roaches",
                        [
                            ["enabled",                     true ],                     // true | false
                            ["type",                        ""],
                            ["compartment_size",            [ 25.0, 25.0, 7.0] ],
                            ["num_compartments",            [2, 4] ],
                            ["position",                    [70, 1 ] ],                           
                        ]
                    ],

                    
                    // more components here...
                ]
            ],
        ]
    ],

    [   "2",
        [
            [   "box_dimensions",                 [93, 183, 18.0] ],                       // float f -- default:[ 100, 100, 100]
            [ "enabled",                                    true ],

            [   "components",
                [
                    [   "misc tokens",
                        [
                            ["enabled",                     true ],                     // true | false
                            ["type",                        "tokens"],
                            ["compartment_size",            [ 42.0, 59.0, 16.0] ],
                            ["num_compartments",            [2, 3] ],
                        ]
                    ],
                ]
            ],
        ]
    ],
    [   "3",
        [
            [   "box_dimensions",                 [93, 183, 18.0] ],                       // float f -- default:[ 100, 100, 100]
            [ "enabled",                                    true ],

            [   "components",
                [

                    [   "small cards",
                        [
                            ["enabled",                     true ],                     // true | false
                            ["type",                        "cards"],
                            ["compartment_size",            [ 70.0, 46.0, 12.0] ],
                            ["num_compartments",            [1, 3] ],
                            ["position",                    [ 0, "center" ] ],                       
                        ]
                    ],

                    [   "dice",
                        [
                            ["enabled",                     true ],                     // true | false
                            ["type",                        "chit_stack"],
                            ["compartment_size",            [ 17.0, 82.0, 17.0] ],
                            ["num_compartments",            [1, 1] ],
                            ["position",                    [ "max", "center" ] ],                         
                        ]
                    ],
 

                    
                    // more components here...
                ]
            ],
        ]
    ],
    [   "4",
        [
            [   "box_dimensions",                 [190, 100, 18.0] ],                       // float f -- default:[ 100, 100, 100]
            [ "enabled",                                    true ],

            [   "components",
                [
                    [   "cards",
                        [
                            ["type",                        "cards"],                   // "cards" | "chits" | "generic" -- default: "generic"
                            ["compartment_size",            [ 90.0, 65.0, 16.0] ],      // float f -- default:[ 10, 10, 10]
                            ["num_compartments",            [2, 1] ],                   // int i -- default: [1, 1]
                            ["enabled",                     true ],                     // true | false

                        ]
                    ],
                ]
            ],
        ]
    ],

    [   "5",
        [
            [   "box_dimensions",                 [100, 190, 18.0] ],                       // float f -- default:[ 100, 100, 100]
            [ "enabled",                                    true ],

            [   "components",
                [
                    [   "player cards",
                        [
                            ["type",                        "cards"],                   // "cards" | "chits" | "generic" -- default: "generic"
                            ["compartment_size",            [ 96.0, 175.0, 16.0] ],      // float f -- default:[ 10, 10, 10]
                            ["num_compartments",            [1, 1] ],                   // int i -- default: [1, 1]
                            ["enabled",                     true ],                     // true | false

                        ]
                    ],
                ]
            ],
        ]
    ],
    
];


// for printing control.
b_print_lid = true;
b_print_box = true;

b_print_box = "29cm box"; // isolate one box to print

MakeAll();
