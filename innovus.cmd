#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri May 12 13:25:55 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.10-p004_1 (64bit) 05/18/2021 11:58 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.10-p004_1 NR210506-1544/21_10-UB (database version 18.20.544) {superthreading v2.14}
#@(#)CDS: AAE 21.10-p006 (64bit) 05/18/2021 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.10-p004_1 () May 13 2021 20:04:41 ( )
#@(#)CDS: SYNTECH 21.10-b006_1 () Apr 18 2021 22:44:07 ( )
#@(#)CDS: CPE v21.10-p004
#@(#)CDS: IQuantus/TQuantus 20.1.2-s510 (64bit) Sun Apr 18 10:29:16 PDT 2021 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getVersion
win
setImportMode -treatUndefinedCellAsBbox 0 -keepEmptyModule 1 -useLefDef56 1
init_design
defIn am2901.def
fit
setDrawView fplan
uiSetTool layerBlk
createRouteBlk -box 2.41000 2.55000 104.23000 43.25000
undo
deleteFPObject LayerShape (240,252,10422,4326)
createRouteBlk -box -0.33000 -19.24000 108.19000 0.88000
deleteFPObject LayerShape (0,0,10710,90)
zoomBox -15.14000 -57.90000 147.94000 88.09000
zoomBox -28.51000 -95.78000 197.21000 106.29000
zoomBox -40.63000 -158.15000 271.80000 121.54000
zoomBox -53.25000 -193.81000 314.31000 135.23000
zoomBox -46.48000 -159.79000 265.95000 119.90000
zoomBox -40.72000 -130.87000 224.85000 106.87000
zoomBox -35.82000 -106.29000 189.91000 95.79000
zoomBox -31.27000 -85.31000 160.61000 86.46000
zoomBox -22.12000 -53.01000 116.52000 71.10000
zoomBox -15.50000 -29.67000 84.67000 60.00000
zoomBox -26.71000 -34.73000 91.14000 70.77000
pan 25.16000 -15.04000
zoomBox -12.53000 -47.83000 126.12000 76.29000
pan -7.53000 -34.58000
createRouteBlk -box -1.05000 -18.77000 111.24000 16.38000
getPreference InstFlightLine
zoomBox -35.73000 -64.43000 127.39000 81.60000
createRouteBlk -box 19.98000 51.85000 64.30000 63.66000
zoomBox -67.59000 -113.14000 158.19000 88.98000
createRouteBlk -box -32.54000 -38.66000 147.68000 55.39000
deleteFPObject LayerShape (0,0,10710,4536)
deleteFPObject LayerShape (0,0,10710,1638)
createRouteBlk -box -7.71000 -9.45000 4.26000 50.43000
zoomBox -56.16000 -74.24000 106.97000 71.80000
zoomBox -43.90000 -45.59000 73.97000 59.93000
zoomBox -31.67000 -25.71000 53.49000 50.53000
zoomBox -26.61000 -18.01000 45.79000 46.80000
zoomBox -23.72000 -11.93000 37.82000 43.16000
zoomBox -20.46000 -6.76000 31.85000 40.07000
zoomBox -17.70000 -2.37000 26.77000 37.44000
pan -1.15000 32.70000
zoomBox -24.99000 12.59000 36.56000 67.69000
zoomBox -28.90000 11.06000 43.51000 75.88000
pan 0.47000 6.42000
zoomBox -18.18000 -11.02000 19.62000 22.82000
deleteFPObject LayerShape (0,0,426,4536)
zoomBox -22.82000 -12.29000 21.65000 27.52000
zoomBox -28.28000 -13.79000 24.04000 33.05000
zoomBox -34.71000 -15.55000 26.85000 39.56000
pan 24.61000 20.19000
zoomBox -16.04000 -18.30000 56.39000 46.54000
zoomBox -23.03000 -22.75000 62.19000 53.54000
zoomBox -46.88000 -33.83000 71.09000 71.78000
pan 49.30000 8.93000
pan -19.84000 -43.27000
createRouteBlk -box -4.30000 -4.53000 3.18000 47.21000
deleteFPObject LayerShape (0,0,318,4536)
createRouteBlk -box -2.62000 19.74000 -1.85000 20.35000
createRouteBlk -box -1.85000 -12.92000 27.45000 19.74000
deleteFPObject LayerShape (0,0,2742,1974)
highlight -index 1
createRouteBlk -box -11.32000 32.25000 1.81000 48.89000
deleteFPObject LayerShape (0,3222,180,4536)
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer metal5 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {vdd vss} -layer metal1 -direction horizontal -width 1 -spacing 0.48 -set_to_set_distance 100 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal5 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal5 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal5(5) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal5(5) } -nets { vdd vss } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal5(5) }
zoomBox -27.92000 -45.64000 110.86000 78.60000
pan 41.11000 -14.13000
pan -3.78000 -53.62000
zoomBox 47.85000 -18.38000 133.09000 57.93000
zoomBox 56.51000 -13.37000 128.97000 51.50000
zoomBox 63.82000 -9.11000 125.41000 46.03000
zoomBox 75.57000 -2.46000 120.08000 37.39000
zoomBox 87.35000 4.20000 114.68000 28.67000
zoomBox 94.58000 8.29000 111.37000 23.32000
zoomBox 75.63000 -2.34000 120.20000 37.56000
zoomBox 47.83000 -17.84000 133.21000 58.59000
pan -41.31000 -66.45000
zoomBox -4.38000 -20.92000 96.07000 69.00000
zoomBox -17.11000 -23.66000 101.07000 82.14000
pan 14.07000 -13.12000
setDesignMode -topRoutingLayer M3
setPlaceMode -fp false
place_design
pan -30.74000 -25.21000
zoomBox -45.39000 -32.30000 93.65000 92.17000
pan 18.89000 5.71000
createRouteBlk -box -5.28000 -12.88000 1.56000 49.36000
setDesignMode -topRoutingLayer M3
setPlaceMode -fp false
place_design
zoomBox -54.18000 -62.83000 138.27000 109.45000
zoomBox -73.64000 -76.28000 152.77000 126.41000
deleteFPObject LayerShape (0,0,156,4536)
