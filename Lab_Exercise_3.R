#1
X<-read.csv("train.csv")
X

# id product_uid
# 1     2      100001
# 2     3      100001
# 3     9      100002
# 4    16      100005
# 5    17      100005
# 6    18      100006
# 7    20      100006
# 8    21      100006
# 9    23      100007
# 10   27      100009
# 11   34      100010
# 12   35      100011
# 13   37      100011
# 14   38      100011
# 15   48      100012
# 16   51      100013
# 17   65      100016
# 18   69      100017
# 19   75      100017
# 20   81      100017
# 21   85      100017
# 22   88      100019
# 23   90      100019
# 24   92      100019
# 25  101      100019
# 26  105      100019
# 27  106      100019
# 28  113      100021
# 29  114      100021
# 30  117      100022
# 31  120      100022
# 32  122      100022
# 33  123      100023
# 34  125      100023
# 35  127      100023
# 36  136      100026
# 37  138      100026
# 38  143      100027
# 39  147      100028
# 40  149      100028
# 41  150      100028
# 42  157      100028
# 43  158      100028
# 44  162      100029
# 45  164      100030
# 46  165      100030
# 47  166      100030
# 48  172      100033
# 49  177      100033
# 50  178      100033
# 51  179      100033
# 52  181      100033
# 53  182      100033
# 54  186      100033
# 55  191      100033
# 56  193      100033
# 57  195      100034
# 58  201      100036
# 59  202      100036
# 60  203      100036
# 61  205      100036
# 62  210      100037
# 63  214      100038
# 64  215      100038
# 65  223      100039
# 66  226      100039
# 67  227      100039
# 68  233      100039
# 69  241      100042
# 70  245      100042
# 71  255      100045
# 72  257      100046
# 73  259      100046
# 74  261      100046
# 75  266      100046
# 76  270      100046
# 77  272      100047
# 78  275      100047
# 79  276      100047
# 80  284      100049
# 81  290      100050
# 82  293      100051
# 83  294      100051
# 84  297      100051
# 85  305      100053
# 86  314      100054
# 87  318      100054
# 88  319      100054
# 89  323      100055
# 90  327      100055
# 91  331      100055
# 92  334      100055
# 93  335      100055
# 94  340      100056
# 95  341      100057
# 96  343      100057
# 97  346      100057
# 98  347      100057
# 99  350      100057
# 100 351      100058
# 101 354      100058
# 102 355      100058
# 103 359      100059
# 104 361      100060
# 105 363      100060
# 106 365      100060
# 107 373      100063
# 108 374      100063
# 109 375      100063
# 110 385      100064
# 111 389      100065
# 112 397      100065
# 113 400      100065
# 114 401      100065
# 115 402      100065
# 116 403      100065
# 117 407      100065
# 118 408      100065
# 119 411      100065
# 120 413      100065
# 121 418      100065
# 122 421      100065
# 123 422      100065
# 124 440      100068
# 125 444      100068
# 126 445      100068
# 127 446      100068
# 128 447      100068
# 129 452      100068
# 130 454      100068
# 131 455      100068
# 132 456      100068
# 133 458      100068
# 134 459      100068
# 135 461      100069
# 136 468      100070
# 137 469      100070
# 138 470      100070
# 139 473      100070
# 140 475      100071
# 141 476      100071
# 142 478      100071
# 143 479      100071
# 144 480      100072
# 145 481      100072
# 146 485      100074
# 147 491      100076
# 148 492      100077
# 149 497      100077
# 150 500      100078
# 151 501      100079
# 152 508      100081
# 153 511      100081
# 154 516      100082
# 155 517      100083
# 156 524      100086
# 157 533      100086
# 158 536      100087
# 159 542      100088
# 160 544      100089
# 161 549      100090
# 162 551      100090
# 163 557      100090
# 164 559      100090
# 165 562      100090
# 166 563      100090
# 167 568      100092
# 168 571      100092
# 169 572      100092
# 170 573      100092
# 171 576      100092
# 172 581      100093
# 173 582      100093
# 174 583      100093
# 175 584      100093
# 176 585      100094
# 177 591      100094
# 178 593      100094
# 179 595      100095
# 180 600      100095
# 181 605      100096
# 182 606      100096
# 183 611      100096
# 184 619      100097
# 185 626      100098
# 186 630      100100
# 187 634      100101
# 188 635      100101
# 189 636      100102
# 190 637      100102
# 191 640      100104
# 192 642      100104
# 193 643      100104
# 194 644      100105
# 195 646      100105
# 196 652      100105
# 197 653      100106
# 198 659      100108
# 199 660      100109
# 200 661      100109
# product_title
# 1                                                                                   Simpson Strong-Tie 12-Gauge Angle
# 2                                                                                   Simpson Strong-Tie 12-Gauge Angle
# 3                                     BEHR Premium Textured DeckOver 1-gal. #SC-141 Tugboat Wood and Concrete Coating
# 4                                      Delta Vero 1-Handle Shower Only Faucet Trim Kit in Chrome (Valve Not Included)
# 5                                      Delta Vero 1-Handle Shower Only Faucet Trim Kit in Chrome (Valve Not Included)
# 6                    Whirlpool 1.9 cu. ft. Over the Range Convection Microwave in Stainless Steel with Sensor Cooking
# 7                    Whirlpool 1.9 cu. ft. Over the Range Convection Microwave in Stainless Steel with Sensor Cooking
# 8                    Whirlpool 1.9 cu. ft. Over the Range Convection Microwave in Stainless Steel with Sensor Cooking
# 9                                                  Lithonia Lighting Quantum 2-Light Black LED Emergency Fixture Unit
# 10                                                            House of Fara 3/4 in. x 3 in. x 8 ft. MDF Fluted Casing
# 11                                                                       Valley View Industries Metal Stakes (4-Pack)
# 12  Toro Personal Pace Recycler 22 in. Variable Speed Self-Propelled Gas Lawn Mower with Briggs &amp; Stratton Engine
# 13  Toro Personal Pace Recycler 22 in. Variable Speed Self-Propelled Gas Lawn Mower with Briggs &amp; Stratton Engine
# 14  Toro Personal Pace Recycler 22 in. Variable Speed Self-Propelled Gas Lawn Mower with Briggs &amp; Stratton Engine
# 15                                         Hampton Bay Caramel Simple Weave Bamboo Rollup Shade - 96 in. W x 72 in. L
# 16                                               InSinkErator SinkTop Switch Single Outlet for InSinkErator Disposers
# 17                                                 Sunjoy Calais 8 ft. x 5 ft. x 8 ft. Steel Tile Fabric Grill Gazebo
# 18                                             MD Building Products 36 in. x 36 in. Cloverleaf Aluminum Sheet, Silver
# 19                                             MD Building Products 36 in. x 36 in. Cloverleaf Aluminum Sheet, Silver
# 20                                             MD Building Products 36 in. x 36 in. Cloverleaf Aluminum Sheet, Silver
# 21                                             MD Building Products 36 in. x 36 in. Cloverleaf Aluminum Sheet, Silver
# 22                                          House of Fara 8 Linear ft. MDF Overlapping Wainscot Interior Paneling Kit
# 23                                          House of Fara 8 Linear ft. MDF Overlapping Wainscot Interior Paneling Kit
# 24                                          House of Fara 8 Linear ft. MDF Overlapping Wainscot Interior Paneling Kit
# 25                                          House of Fara 8 Linear ft. MDF Overlapping Wainscot Interior Paneling Kit
# 26                                          House of Fara 8 Linear ft. MDF Overlapping Wainscot Interior Paneling Kit
# 27                                          House of Fara 8 Linear ft. MDF Overlapping Wainscot Interior Paneling Kit
# 28                                                                1804 Dual Spray Half Pattern 4 in Pop-Up Spray Head
# 29                                                                1804 Dual Spray Half Pattern 4 in Pop-Up Spray Head
# 30                                             Samsung 4.2 cu. ft. Front Load Washer with Steam in White, ENERGY STAR
# 31                                             Samsung 4.2 cu. ft. Front Load Washer with Steam in White, ENERGY STAR
# 32                                             Samsung 4.2 cu. ft. Front Load Washer with Steam in White, ENERGY STAR
# 33                                                                           Quikrete 80 lb. Crack-Resistant Concrete
# 34                                                                           Quikrete 80 lb. Crack-Resistant Concrete
# 35                                                                           Quikrete 80 lb. Crack-Resistant Concrete
# 36             Nantucket Pavers Patio-on-a-Pallet 10 ft. x 10 ft. Concrete Tan Variegated Basketweave Yorkstone Paver
# 37             Nantucket Pavers Patio-on-a-Pallet 10 ft. x 10 ft. Concrete Tan Variegated Basketweave Yorkstone Paver
# 38                                                                         UltraTouch 48 in. x 24 ft. Radiant Barrier
# 39                                                                 Backyard X-Scapes 6 ft. H. x 16 ft. L Reed Fencing
# 40                                                                 Backyard X-Scapes 6 ft. H. x 16 ft. L Reed Fencing
# 41                                                                 Backyard X-Scapes 6 ft. H. x 16 ft. L Reed Fencing
# 42                                                                 Backyard X-Scapes 6 ft. H. x 16 ft. L Reed Fencing
# 43                                                                 Backyard X-Scapes 6 ft. H. x 16 ft. L Reed Fencing
# 44                                                               DecoArt Americana Decor 16-oz. Whisper Chalky Finish
# 45                                                                     9.1 in. x 5.8 in. White Designer Shelf Bracket
# 46                                                                     9.1 in. x 5.8 in. White Designer Shelf Bracket
# 47                                                                     9.1 in. x 5.8 in. White Designer Shelf Bracket
# 48                          HDX 48 in. W x 72 in. H x 18 in. D Decorative Wire Chrome Finish Commercial Shelving Unit
# 49                          HDX 48 in. W x 72 in. H x 18 in. D Decorative Wire Chrome Finish Commercial Shelving Unit
# 50                          HDX 48 in. W x 72 in. H x 18 in. D Decorative Wire Chrome Finish Commercial Shelving Unit
# 51                          HDX 48 in. W x 72 in. H x 18 in. D Decorative Wire Chrome Finish Commercial Shelving Unit
# 52                          HDX 48 in. W x 72 in. H x 18 in. D Decorative Wire Chrome Finish Commercial Shelving Unit
# 53                          HDX 48 in. W x 72 in. H x 18 in. D Decorative Wire Chrome Finish Commercial Shelving Unit
# 54                          HDX 48 in. W x 72 in. H x 18 in. D Decorative Wire Chrome Finish Commercial Shelving Unit
# 55                          HDX 48 in. W x 72 in. H x 18 in. D Decorative Wire Chrome Finish Commercial Shelving Unit
# 56                          HDX 48 in. W x 72 in. H x 18 in. D Decorative Wire Chrome Finish Commercial Shelving Unit
# 57                                                                                         Marshalltown Masonry Brush
# 58                                                                           Rubbermaid 12 in. D Single Track Bracket
# 59                                                                           Rubbermaid 12 in. D Single Track Bracket
# 60                                                                           Rubbermaid 12 in. D Single Track Bracket
# 61                                                                           Rubbermaid 12 in. D Single Track Bracket
# 62                                                                                   Husky 9-Pocket Maintenance Pouch
# 63                                                                RIDGID X4 18-Volt 1/2 in. Impact Wrench (Tool Only)
# 64                                                                RIDGID X4 18-Volt 1/2 in. Impact Wrench (Tool Only)
# 65                                                 Emberglow 25,000 BTU Vent-Free Dual Fuel Gas Stove with Thermostat
# 66                                                 Emberglow 25,000 BTU Vent-Free Dual Fuel Gas Stove with Thermostat
# 67                                                 Emberglow 25,000 BTU Vent-Free Dual Fuel Gas Stove with Thermostat
# 68                                                 Emberglow 25,000 BTU Vent-Free Dual Fuel Gas Stove with Thermostat
# 69                                      American Standard Cadet 3 FloWise 2-piece 1.28 GPF Round Front Toilet in Bone
# 70                                      American Standard Cadet 3 FloWise 2-piece 1.28 GPF Round Front Toilet in Bone
# 71                                           Sumner Street Home Hardware Grayson 2-1/2 in. Oil Rubbed Bronze Cup Pull
# 72                                                                    HDX 6 ft. Heavy Duty Steel Green Painted T-Post
# 73                                                                    HDX 6 ft. Heavy Duty Steel Green Painted T-Post
# 74                                                                    HDX 6 ft. Heavy Duty Steel Green Painted T-Post
# 75                                                                    HDX 6 ft. Heavy Duty Steel Green Painted T-Post
# 76                                                                    HDX 6 ft. Heavy Duty Steel Green Painted T-Post
# 77                                                    Crown Bolt 24 in. x 1/2 in. x 12 in. Plain Metal Expanded Sheet
# 78                                                    Crown Bolt 24 in. x 1/2 in. x 12 in. Plain Metal Expanded Sheet
# 79                                                    Crown Bolt 24 in. x 1/2 in. x 12 in. Plain Metal Expanded Sheet
# 80                                                                             Henry 587 4.75 Gal. White Roof Coating
# 81                                           Hampton Bay Beverly Patio Dining Arm Chairs with Custom Cushion (2-Pack)
# 82                        Hampton Bay Spring Haven Brown All-Weather Wicker Patio Lounge Chair with Sky Blue Cushions
# 83                        Hampton Bay Spring Haven Brown All-Weather Wicker Patio Lounge Chair with Sky Blue Cushions
# 84                        Hampton Bay Spring Haven Brown All-Weather Wicker Patio Lounge Chair with Sky Blue Cushions
# 85                                                                                      60 in. x 150 ft. 10/10 Remesh
# 86                        Stanley Doors 36 in. x 80 in. Chatham 3/4 Lite 1-Panel Prefinished Steel Prehung Front Door
# 87                        Stanley Doors 36 in. x 80 in. Chatham 3/4 Lite 1-Panel Prefinished Steel Prehung Front Door
# 88                        Stanley Doors 36 in. x 80 in. Chatham 3/4 Lite 1-Panel Prefinished Steel Prehung Front Door
# 89             MOEN Essie Single-Handle Pull-Down Sprayer Kitchen Faucet in Spot Resist Stainless with Soap Dispenser
# 90             MOEN Essie Single-Handle Pull-Down Sprayer Kitchen Faucet in Spot Resist Stainless with Soap Dispenser
# 91             MOEN Essie Single-Handle Pull-Down Sprayer Kitchen Faucet in Spot Resist Stainless with Soap Dispenser
# 92             MOEN Essie Single-Handle Pull-Down Sprayer Kitchen Faucet in Spot Resist Stainless with Soap Dispenser
# 93             MOEN Essie Single-Handle Pull-Down Sprayer Kitchen Faucet in Spot Resist Stainless with Soap Dispenser
# 94                                                                         Bare Ground 4 Gal. Liquid De-Icer (Case-4)
# 95                                                    Owens Corning R-19 Kraft Faced Insulation Batts 15 in. x 93 in.
# 96                                                    Owens Corning R-19 Kraft Faced Insulation Batts 15 in. x 93 in.
# 97                                                    Owens Corning R-19 Kraft Faced Insulation Batts 15 in. x 93 in.
# 98                                                    Owens Corning R-19 Kraft Faced Insulation Batts 15 in. x 93 in.
# 99                                                    Owens Corning R-19 Kraft Faced Insulation Batts 15 in. x 93 in.
# 100                                                  Gama Sonic 40-LED Rechargeable Battery-Powered Emergency Lantern
# 101                                                  Gama Sonic 40-LED Rechargeable Battery-Powered Emergency Lantern
# 102                                                  Gama Sonic 40-LED Rechargeable Battery-Powered Emergency Lantern
# 103                                                                          12 in. Dia. Dark Blue Ceramic Rivage Pot
# 104                        RDI Porch and Newel 5 in. x 5 in. x 108 in. Vinyl Turned Fence Post with 5000 lb. Capacity
# 105                        RDI Porch and Newel 5 in. x 5 in. x 108 in. Vinyl Turned Fence Post with 5000 lb. Capacity
# 106                        RDI Porch and Newel 5 in. x 5 in. x 108 in. Vinyl Turned Fence Post with 5000 lb. Capacity
# 107                                  BAZZ 10 ft. Multi-Color Self-Adhesive Cuttable Rope Lighting with Remote Control
# 108                                  BAZZ 10 ft. Multi-Color Self-Adhesive Cuttable Rope Lighting with Remote Control
# 109                                  BAZZ 10 ft. Multi-Color Self-Adhesive Cuttable Rope Lighting with Remote Control
# 110                     TrafficMASTER Allure 6 in. x 36 in. Cherry Resilient Vinyl Plank Flooring (24 sq. ft. / case)
# 111                                 Glacier Bay 2-piece High Efficiency Dual Flush Complete Elongated Toilet in White
# 112                                 Glacier Bay 2-piece High Efficiency Dual Flush Complete Elongated Toilet in White
# 113                                 Glacier Bay 2-piece High Efficiency Dual Flush Complete Elongated Toilet in White
# 114                                 Glacier Bay 2-piece High Efficiency Dual Flush Complete Elongated Toilet in White
# 115                                 Glacier Bay 2-piece High Efficiency Dual Flush Complete Elongated Toilet in White
# 116                                 Glacier Bay 2-piece High Efficiency Dual Flush Complete Elongated Toilet in White
# 117                                 Glacier Bay 2-piece High Efficiency Dual Flush Complete Elongated Toilet in White
# 118                                 Glacier Bay 2-piece High Efficiency Dual Flush Complete Elongated Toilet in White
# 119                                 Glacier Bay 2-piece High Efficiency Dual Flush Complete Elongated Toilet in White
# 120                                 Glacier Bay 2-piece High Efficiency Dual Flush Complete Elongated Toilet in White
# 121                                 Glacier Bay 2-piece High Efficiency Dual Flush Complete Elongated Toilet in White
# 122                                 Glacier Bay 2-piece High Efficiency Dual Flush Complete Elongated Toilet in White
# 123                                 Glacier Bay 2-piece High Efficiency Dual Flush Complete Elongated Toilet in White
# 124                    Rheem Performance Plus 50 Gal. Tall 9 Year 40,000 BTU High Efficiency Natural Gas Water Heater
# 125                    Rheem Performance Plus 50 Gal. Tall 9 Year 40,000 BTU High Efficiency Natural Gas Water Heater
# 126                    Rheem Performance Plus 50 Gal. Tall 9 Year 40,000 BTU High Efficiency Natural Gas Water Heater
# 127                    Rheem Performance Plus 50 Gal. Tall 9 Year 40,000 BTU High Efficiency Natural Gas Water Heater
# 128                    Rheem Performance Plus 50 Gal. Tall 9 Year 40,000 BTU High Efficiency Natural Gas Water Heater
# 129                    Rheem Performance Plus 50 Gal. Tall 9 Year 40,000 BTU High Efficiency Natural Gas Water Heater
# 130                    Rheem Performance Plus 50 Gal. Tall 9 Year 40,000 BTU High Efficiency Natural Gas Water Heater
# 131                    Rheem Performance Plus 50 Gal. Tall 9 Year 40,000 BTU High Efficiency Natural Gas Water Heater
# 132                    Rheem Performance Plus 50 Gal. Tall 9 Year 40,000 BTU High Efficiency Natural Gas Water Heater
# 133                    Rheem Performance Plus 50 Gal. Tall 9 Year 40,000 BTU High Efficiency Natural Gas Water Heater
# 134                    Rheem Performance Plus 50 Gal. Tall 9 Year 40,000 BTU High Efficiency Natural Gas Water Heater
# 135                                                                 Shark Rotator Slim-Light Lift-Away Vacuum Cleaner
# 136                                                 GE 18 in. Direct Wire LED Under Cabinet Light Bar with Hi/Low/Off
# 137                                                 GE 18 in. Direct Wire LED Under Cabinet Light Bar with Hi/Low/Off
# 138                                                 GE 18 in. Direct Wire LED Under Cabinet Light Bar with Hi/Low/Off
# 139                                                 GE 18 in. Direct Wire LED Under Cabinet Light Bar with Hi/Low/Off
# 140                                                  Steves &amp; Sons Retrofit Prehung Primed White Steel Patio Door
# 141                                                  Steves &amp; Sons Retrofit Prehung Primed White Steel Patio Door
# 142                                                  Steves &amp; Sons Retrofit Prehung Primed White Steel Patio Door
# 143                                                  Steves &amp; Sons Retrofit Prehung Primed White Steel Patio Door
# 144                                                Duck 1.41 in. x 60 yds. Blue Clean Release Masking Tape, (16-Pack)
# 145                                                Duck 1.41 in. x 60 yds. Blue Clean Release Masking Tape, (16-Pack)
# 146                                                                   Kaleen Soho Thames Beige 4 ft. x 6 ft. Area Rug
# 147                                          4 in. x 4 in. x 5-1/3 ft. Pressure-Treated Pine 2-Hole Fence Corner Post
# 148                                                          Mueller Global 3/4 in. Black Malleable Iron Threaded Tee
# 149                                                          Mueller Global 3/4 in. Black Malleable Iron Threaded Tee
# 150                                                   Safavieh Courtyard Natural/Brown 8 ft. 11 in. x 12 ft. Area Rug
# 151                                                 Frigidaire 18 cu. ft. Top Freezer Refrigerator in Stainless Steel
# 152                                             STERLING Accord 30 in. x 60 in. x 72 in. Bath and Shower Kit in White
# 153                                             STERLING Accord 30 in. x 60 in. x 72 in. Bath and Shower Kit in White
# 154                                                                            Corner Baker&#39;s Rack with Slate Top
#   155                                                            Shape Products Thick &amp; Strong Flat Area Well Cover
# 156                                Rust-Oleum EpoxyShield 2 gal. Tan 2-Part High-Gloss Epoxy Garage Floor Coating Kit
# 157                                Rust-Oleum EpoxyShield 2 gal. Tan 2-Part High-Gloss Epoxy Garage Floor Coating Kit
# 158                                                                          YuTrax Arch XL Folding Aluminum ATV Ramp
# 159            Werner 7 ft. - 9 ft., 18 in. x 24 in. Compact Aluminum Attic Ladder with 250 lb. Maximum Load Capacity
# 160                                                                             Melnor Adjustable Rear Trigger Nozzle
# 161                                                          LG Electronics 5,000 BTU 115-Volt Window Air Conditioner
# 162                                                          LG Electronics 5,000 BTU 115-Volt Window Air Conditioner
# 163                                                          LG Electronics 5,000 BTU 115-Volt Window Air Conditioner
# 164                                                          LG Electronics 5,000 BTU 115-Volt Window Air Conditioner
# 165                                                          LG Electronics 5,000 BTU 115-Volt Window Air Conditioner
# 166                                                          LG Electronics 5,000 BTU 115-Volt Window Air Conditioner
# 167                                                                            Rust-Oleum Restore 1-gal. 4X Deck Coat
# 168                                                                            Rust-Oleum Restore 1-gal. 4X Deck Coat
# 169                                                                            Rust-Oleum Restore 1-gal. 4X Deck Coat
# 170                                                                            Rust-Oleum Restore 1-gal. 4X Deck Coat
# 171                                                                            Rust-Oleum Restore 1-gal. 4X Deck Coat
# 172                  Milwaukee M18 FUEL 18-Volt Brushless Lithium-Ion Hole Hawg 1/2 in. Right Angle Drill (Bare Tool)
# 173                  Milwaukee M18 FUEL 18-Volt Brushless Lithium-Ion Hole Hawg 1/2 in. Right Angle Drill (Bare Tool)
# 174                  Milwaukee M18 FUEL 18-Volt Brushless Lithium-Ion Hole Hawg 1/2 in. Right Angle Drill (Bare Tool)
# 175                  Milwaukee M18 FUEL 18-Volt Brushless Lithium-Ion Hole Hawg 1/2 in. Right Angle Drill (Bare Tool)
# 176                             Ariens Deluxe 28 in. Two-Stage Electric Start Gas Snow Blower with Auto-Turn Steering
# 177                             Ariens Deluxe 28 in. Two-Stage Electric Start Gas Snow Blower with Auto-Turn Steering
# 178                             Ariens Deluxe 28 in. Two-Stage Electric Start Gas Snow Blower with Auto-Turn Steering
# 179                              GE Adora 5.0 cu. ft. Gas Range with Self-Cleaning Convection Oven in Stainless Steel
# 180                              GE Adora 5.0 cu. ft. Gas Range with Self-Cleaning Convection Oven in Stainless Steel
# 181                                  Woodgrain Millwork LWM 623 1/2 in. x 3-1/4 in. x 96 in. Primed MDF Base Moulding
# 182                                  Woodgrain Millwork LWM 623 1/2 in. x 3-1/4 in. x 96 in. Primed MDF Base Moulding
# 183                                  Woodgrain Millwork LWM 623 1/2 in. x 3-1/4 in. x 96 in. Primed MDF Base Moulding
# 184                                            Hampton Bay Woodbury 7-Piece Patio Dining Set with Dragonfruit Cushion
# 185                                                     Gardener&#39;s Blue Ribbon 16 in. Plastic Rolling Plant Caddy
#   186                                              Dimex EasyFlex 24 ft. Aluminum Landscape Edging Project Kit in Black
# 187          Intertape Polymer Group PG 21 2.0 in. x 60 yd. Lacquer Resistant Performance Grade Masking Tape (6-Pack)
# 188          Intertape Polymer Group PG 21 2.0 in. x 60 yd. Lacquer Resistant Performance Grade Masking Tape (6-Pack)
# 189                                    Teks #12 1-1/2 in. External Hex Flange Hex-Head Self-Drilling Screws (80-Pack)
# 190                                    Teks #12 1-1/2 in. External Hex Flange Hex-Head Self-Drilling Screws (80-Pack)
# 191                                                    GE All Purpose Silicone I 10.1-oz. Clear Window and Door Caulk
# 192                                                    GE All Purpose Silicone I 10.1-oz. Clear Window and Door Caulk
# 193                                                    GE All Purpose Silicone I 10.1-oz. Clear Window and Door Caulk
# 194                                 RIDGID X4 18-Volt Lithium-Ion Cordless Drill and Impact Driver Combo Kit (2-Tool)
# 195                                 RIDGID X4 18-Volt Lithium-Ion Cordless Drill and Impact Driver Combo Kit (2-Tool)
# 196                                 RIDGID X4 18-Volt Lithium-Ion Cordless Drill and Impact Driver Combo Kit (2-Tool)
# 197                            Sun Joe Shredder Joe 12 in. 13 Amp 16:1 Reduction Ratio Electric Leaf Mulcher/Shredder
# 198                                            American Standard Colorado FloWise Elongated Toilet Bowl Only in White
# 199                                       Shark Navigator Lift-Away Deluxe Bagless Vacuum Cleaner with Appliance Wand
# 200                                       Shark Navigator Lift-Away Deluxe Bagless Vacuum Cleaner with Appliance Wand
# search_term relevance
# 1                                     angle bracket      3.00
# 2                                         l bracket      2.50
# 3                                         deck over      3.00
# 4                                  rain shower head      2.33
# 5                                shower only faucet      2.67
# 6                                    convection otr      3.00
# 7                              microwave over stove      2.67
# 8                                        microwaves      3.00
# 9                                   emergency light      2.67
# 10                                          mdf 3/4      3.00
# 11                                     steele stake      2.67
# 12                   briggs and stratton lawn mower      3.00
# 13                                         gas mowe      3.00
# 14                                      honda mower      2.00
# 15               hampton bay chestnut pull up shade      2.67
# 16                                         disposer      2.67
# 17                                     grill gazebo      3.00
# 18                                      door guards      1.00
# 19                           metal plate cover gcfi      1.67
# 20                                   radiator grate      2.33
# 21                                  windows screens      2.33
# 22                         1x1 rail decorative wood      1.33
# 23                           4*8 beadboard paneling      2.67
# 24                                 4x8wood paneling      2.33
# 25                                          MDF 4x8      1.33
# 26                              wainscot chair rail      2.33
# 27                          wainscot plank paneling      2.33
# 28                                   lawn sprkinler      2.00
# 29                               rainbird sprinkler      2.33
# 30                             PLATFORM FOR WASHERS      2.67
# 31                    samsung front load washer 3.7      2.00
# 32           upholstery washing machines with steam      2.33
# 33              CONCRETE & MASONRY CLEANER & ETCHER      3.00
# 34                               concrete for ponds      2.00
# 35                              flexlock for cracks      2.00
# 36                             Belgium block pavers      2.00
# 37                               ourdoor patio tile      2.33
# 38                                  insulation roll      2.33
# 39                             6ft h bamboo fencing      2.00
# 40                           balcony privacy screen      2.67
# 41                                           bamboo      1.67
# 42                           privacy lattice panels      2.33
# 43                                   privacy panels      1.67
# 44                                      chalk paint      3.00
# 45                                   8 4616809045 9      1.67
# 46                                    shelf bracket      3.00
# 47                                   white 4shelves      1.67
# 48                                  6 teir shelving      3.00
# 49                                hdx wire shelving      3.00
# 50                        kitchen  cabinet finishes      1.00
# 51                        kitchen wire shelf tiered      3.00
# 52                                      pantry rack      2.67
# 53                            plastic storage racks      2.67
# 54                                    Shelves Metal      3.00
# 55                                   steel shelving      2.67
# 56                                   storage shelve      3.00
# 57                                     mortar tools      1.00
# 58                              12 boltless bracket      2.33
# 59              12 in.  16 in single track brackets      2.33
# 60                            12 wire shelf bracket      3.00
# 61                                      shelf track      2.33
# 62                                   husky tool bag      2.50
# 63              impact driver drill battery powered      2.33
# 64                                    impact wrench      3.00
# 65                                     pellet stove      2.33
# 66                                register for fuel      2.33
# 67                                     stove and mi      2.33
# 68                               ventless gas stove      3.00
# 69              American Standard Bone round toliet      3.00
# 70                        cadet 3 insulated in bone      2.33
# 71                                          grayson      2.33
# 72                                          6 stell      2.00
# 73                                 fece posts metal      2.00
# 74                         green painted pop rivets      2.33
# 75                                             post      2.67
# 76                           wire fencing 6 ft high      1.67
# 77                                bolt 1/2 in by 12      3.00
# 78                                      metal sheet      2.33
# 79                                      sheet metal      3.00
# 80                         elastomeric roof coating      2.00
# 81                                   outdoor dining      2.67
# 82                           cushions outdoorlounge      3.00
# 83                               hampton bay spring      3.00
# 84                                 outdoorfurniture      2.33
# 85                                         wiremesh      3.00
# 86                                      front doors      3.00
# 87                               prehung steel door      3.00
# 88                                    stanley doors      2.67
# 89                     kingsley moen kitchen faucet      2.33
# 90                              kitchen sink faucet      3.00
# 91                 pricepfister kitchen faucet g135      2.00
# 92                                   soap dispenser      2.67
# 93                           soap dispenser kitchen      2.00
# 94                                      roof melter      1.33
# 95                         6 kraft faced insulation      2.33
# 96                            fiberglass insulation      2.33
# 97                                owens corning 7-3      2.00
# 98                                             R 15      1.33
# 99                                   r19 insulation      3.00
# 100                                battery lanterns      3.00
# 101       ceiling light battery powered with remote      2.33
# 102                                 emergency light      3.00
# 103                                   planters pots      2.67
# 104                                        5x5 post      2.33
# 105                                     column post      3.00
# 106                                            post      2.33
# 107                                   bazz lighting      2.00
# 108                                        led rope      2.67
# 109                                led strip lights      2.67
# 110                                     TILES 12*12      2.67
# 111                           10  rough toilet bowl      2.33
# 112                               delta canister 17      1.33
# 113                              glaciar bay toiled      2.00
# 114                           glacie bay dual flush      2.33
# 115   glacier bay high efficiency toilet fill valve      2.00
# 116                     glacier bay tiolet tank lid      2.67
# 117                                 handicap toilet      2.67
# 118                                handycap toilets      2.33
# 119                                  high boy tolet      2.33
# 120                     kohler rosario toilet parts      1.33
# 121                                     toilet bowl      2.33
# 122                                toilet flush kit      2.67
# 123                              toilet glacier bay      3.00
# 124                      60 heater gallon gas water      2.33
# 125                               gas wayer heaters      2.00
# 126                                      heater gas      1.67
# 127                           hot water heater cost      2.67
# 128                            hot water heater gas      3.00
# 129                   rheem gas water heater prog40      2.67
# 130                          rheem water heater gas      3.00
# 131                         rheem water heater plug      2.33
# 132                              rheum water heater      3.00
# 133                          water heater certified      3.00
# 134                               water heater pans      1.67
# 135                                    shark vacuum      3.00
# 136                               under cabinet led      3.00
# 137                          under cabinet lighting      3.00
# 138             under counter fluorescent bar light      2.33
# 139                           undercounter lighting      3.00
# 140                                  doors exterior      2.33
# 141                                    Double Doors      3.00
# 142                              prehung steel door      3.00
# 143                            steel patio railings      1.33
# 144                             3 blue masking tape      1.67
# 145                                    masking tape      3.00
# 146                                             4x6      3.00
# 147                             treated fence posts      3.00
# 148                       1/2 x 5 black pipe nipple      1.67
# 149                              galvanized gas tee      3.00
# 150                                  area rugs 9x12      2.67
# 151                                  18  dishwasher      1.67
# 152 30' x 60 'molded one piece acrylic shower stall      2.33
# 153                               one piece showers      2.33
# 154                                     bakers rack      3.00
# 155                                basemetnt window      1.33
# 156                            editing garage floor      2.00
# 157                                 rustollum epoxy      3.00
# 158                                  car ramps ends      2.00
# 159                             plexiglas 18' x 24'      2.00
# 160                                          melnor      3.00
# 161                                 A/c window unit      3.00
# 162                   air /heaterconditioner window      3.00
# 163                                  room a/c units      2.67
# 164                                 spliter ac unit      2.33
# 165                               window air condit      2.33
# 166              Window Unit Air Conditioner/Heater      2.67
# 167                                  berh deck over      2.33
# 168                                       deck over      1.67
# 169                                 deck over paint      2.67
# 170                                       deckpaint      2.67
# 171                                      restore 4x      2.67
# 172                           milwaukee right angle      3.00
# 173                      milwaukee stone hole drill      3.00
# 174                     pneumatic right angle drill      2.67
# 175                               right angle drill      3.00
# 176                                  28 snow thower      3.00
# 177                          gas snowblower trailer      2.33
# 178                           toro snow blowers gas      1.33
# 179                                     gas gridlee      2.00
# 180                                  ge adora range      3.00
# 181                      base board molding boundle      2.00
# 182                               crown molding mdf      2.67
# 183                                       wall wood      2.67
# 184            hampton bay set 7-piece led aluminum      2.33
# 185                        plants moses in a cradle      1.33
# 186                                landscape edging      3.00
# 187                         intertape duct tape 3pk      1.67
# 188                                    masking tape      3.00
# 189                     1 black self tapping screws      2.67
# 190                                1 infloor flange      2.00
# 191                             10 window sping rod      1.67
# 192              clear silicone caulk windows doors      2.33
# 193                                        silicone      3.00
# 194                             combo powertool kit      2.67
# 195                                desalt impact 18      2.67
# 196         rigid lithium ion batteries fuego drill      2.33
# 197                                         chipper      1.25
# 198                                           bidet      2.33
# 199                                   shark cleaner      3.00
# 200                                    shark vacuum      3.00
# [ reached 'max' / getOption("max.print") -- omitted 73867 rows ]


#2
distinct_relevance <- function(vect) {
  distinct_values <- unique(vect)
  distinct_count <- length(distinct_values)
  return(distinct_count)
}
distinct_count <- distinct_relevance(vect = X$relevance)
distinct_count

#[1] 13

#3
count <- function(vect, value) {
  count_value <- sum(vect == value)
  return(count_value)
}
appearances_of_3 <- count(vect = X$relevance, value = 3)
appearances_of_3

#[1] 19125

#4
# Using the table function
table_result <- table(X$relevance)
appearances_of_3_table <- table_result
appearances_of_3_table

# 1  1.25  1.33   1.5  1.67  1.75     2  2.25  2.33   2.5  2.67  2.75     3 
# 2105     4  3006     5  6780     9 11730    11 16060    19 15202    11 19125 
