//Maya ASCII 2015 scene
//Name: MagnetosphereMachine.ma
//Last modified: Mon, Apr 20, 2015 03:04:16 AM
//Codeset: 1252
requires maya "2015";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2015.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201410051530-933320";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.6517110566090274 6.2432671195732086 -11.665210038916543 ;
	setAttr ".r" -type "double3" -16.538352687279737 -3387.4000000055867 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 16.918818942767714;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0.94717677011091828 -0.05346208250208534 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.2487210857699909;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" -1.681990038303341 1.4256630190469639 0.037497176906080634 ;
	setAttr ".r" -type "double3" 0 22.099250993180839 0 ;
	setAttr ".s" -type "double3" 0.43272906747669138 0.45770643297037966 1 ;
	setAttr ".rp" -type "double3" 0.023445000949972032 -0.58781371348105349 0.62303483456858322 ;
	setAttr ".sp" -type "double3" 0.054179399333359593 -1.2842592350435549 0.62303483456858322 ;
	setAttr ".spt" -type "double3" -0.030734398383384341 0.6964455215625065 0 ;
createNode transform -n "transform1" -p "pCube1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.1875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group1" -p "pCube1";
	setAttr ".t" -type "double3" -0.46634231815185384 8.8817841970012425e-016 0 ;
createNode transform -n "group2" -p "group1";
createNode transform -n "group3" -p "group1";
	setAttr ".t" -type "double3" 0 0 0.74263273694710175 ;
createNode transform -n "group";
	setAttr ".t" -type "double3" 3.5147334359190285 -0.014187194445979712 -0.80496400085822684 ;
	setAttr ".r" -type "double3" 0 23.281370536938329 0 ;
	setAttr ".rp" -type "double3" -1.7623873038599931 0.99768594035219527 0.066127037766840147 ;
	setAttr ".sp" -type "double3" -1.7623873038599931 0.99768594035219527 0.066127037766840147 ;
createNode transform -n "pasted__pCube1" -p "group";
	setAttr ".t" -type "double3" -1.5776618562620011 1.4256630190469639 0 ;
	setAttr ".s" -type "double3" 0.43272906747669138 0.45770643297037966 1 ;
createNode transform -n "pasted__transform1" -p "pasted__pCube1";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape1" -p "pasted__transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.1875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group1" -p "pasted__pCube1";
	setAttr ".t" -type "double3" -0.46634231815185384 8.8817841970012425e-016 0 ;
createNode transform -n "pasted__group2" -p "pasted__group1";
createNode transform -n "group4";
	setAttr ".r" -type "double3" 0 46.437377601566865 0 ;
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "pCylinder6";
	setAttr ".t" -type "double3" 3.4729129035245654 2.0275590502356908 5.017793403179799 ;
	setAttr ".s" -type "double3" 2.1108695349651363 2.1108695349651363 2.1108695349651363 ;
createNode mesh -n "pCylinderShape6" -p "pCylinder6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group5";
	setAttr ".r" -type "double3" 0 -23.903825268461674 0 ;
createNode transform -n "pSphere1" -p "group5";
createNode mesh -n "pSphereShape1" -p "pSphere1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape1Orig" -p "pSphere1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "twist1Handle" -p "group5";
	setAttr ".t" -type "double3" 2.9394182227138188e-008 3.0202628480610203 1.4697091127446882e-008 ;
	setAttr ".s" -type "double3" 2.9796638476757451 2.9796638476757451 2.9796638476757451 ;
	setAttr ".smd" 7;
createNode deformTwist -n "twist1HandleShape" -p "twist1Handle";
	setAttr -k off ".v";
	setAttr ".dd" -type "doubleArray" 4 -1.9875776432223198 1.2422360223573372 -5.8695652258946849
		 15 ;
	setAttr ".hw" 0.54246776666131824;
createNode transform -n "pCylinder1" -p "group5";
	setAttr ".t" -type "double3" 0 1.4593091141437913 0 ;
	setAttr ".s" -type "double3" 1.1607931247833461 0.88498460002059176 1.1607931247833461 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.65625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2" -p "group5";
	setAttr ".t" -type "double3" 0 0.17503377396029451 0 ;
	setAttr ".s" -type "double3" 4.1608667341218837 0.069445182058224988 4.1608667341218837 ;
createNode transform -n "polySurface3" -p "pCylinder2";
createNode mesh -n "polySurfaceShape7" -p "polySurface3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4" -p "pCylinder2";
createNode mesh -n "polySurfaceShape8" -p "polySurface4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform2" -p "pCylinder2";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder4" -p "group5";
	setAttr ".t" -type "double3" -0.93456503885180753 0.82606028914848217 0.37146910114183695 ;
	setAttr ".r" -type "double3" 203.10633364977284 0 89.999999999999943 ;
	setAttr ".s" -type "double3" 0.090049495407315786 0.67743306264804271 0.17528594808427331 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[41:48]" -type "float3"  -5.8704648 0 -7.7715612e-016 
		-5.8704648 0 -7.7715612e-016 -5.8704648 0 -7.7715612e-016 -5.8704648 0 -1.7208267e-015 
		-5.8704648 0 -7.7715612e-016 -5.8704648 0 -7.7715612e-016 -5.8704648 0 -7.7715612e-016 
		-5.8704648 0 -1.7208269e-015;
createNode mesh -n "polySurfaceShape3" -p "pCylinder4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 61 ".uvst[0].uvsp[0:60]" -type "float2" 0.55524272 0.10100729
		 0.5 0.078125007 0.44475728 0.10100729 0.421875 0.15625 0.44475728 0.21149272 0.5
		 0.234375 0.55524272 0.21149272 0.578125 0.15625 0.61048543 0.04576458 0.5 1.4901161e-008
		 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5 0.3125 0.61048543
		 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125 0.46875 0.3125
		 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125 0.375 0.50046992
		 0.40625 0.50046992 0.4375 0.50046992 0.46875 0.50046992 0.5 0.50046992 0.53125 0.50046992
		 0.5625 0.50046992 0.59375 0.50046992 0.625 0.50046992 0.375 0.68843985 0.40625 0.68843985
		 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985 0.53125 0.68843985 0.5625 0.68843985
		 0.59375 0.68843985 0.625 0.68843985 0.61048543 0.73326457 0.5 0.6875 0.38951457 0.73326457
		 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625 0.84375
		 0.55524272 0.78850728 0.5 0.765625 0.44475728 0.78850728 0.421875 0.84375 0.44475728
		 0.89899272 0.5 0.921875 0.55524272 0.89899272 0.578125 0.84375 0.5 0.15000001 0.5
		 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.35355335 -1 -0.35355335 0 -1 -0.49999994
		 -0.35355335 -1 -0.35355335 -0.49999994 -1 0 -0.35355335 -1 0.35355335 0 -1 0.49999997
		 0.35355338 -1 0.35355338 0.5 -1 0 0.70710671 -1 -0.70710671 0 -1 -0.99999988 -0.70710671 -1 -0.70710671
		 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994 0.70710677 -1 0.70710677
		 1 -1 0 0.70710671 0 -0.70710671 0 0 -0.99999988 -0.70710671 0 -0.70710671 -0.99999988 0 0
		 -0.70710671 0 0.70710671 0 0 0.99999994 0.70710677 0 0.70710677 1 0 0 0.70710671 1 -0.70710671
		 0 1 -0.99999988 -0.70710671 1 -0.70710671 -0.99999988 1 0 -0.70710671 1 0.70710671
		 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0 0.35355335 1 -0.35355335 0 1 -0.49999994
		 -0.35355335 1 -0.35355335 -0.49999994 1 0 -0.35355335 1 0.35355335 0 1 0.49999997
		 0.35355338 1 0.35355338 0.5 1 0 0 -1 0 0 1 0;
	setAttr -s 88 ".ed[0:87]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1
		 7 0 1 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 1 17 18 1
		 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 23 16 1 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 32 1
		 0 8 1 1 9 1 2 10 1 3 11 1 4 12 1 5 13 1 6 14 1 7 15 1 8 16 0 9 17 0 10 18 0 11 19 0
		 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0
		 23 31 0 24 32 1 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 1 40 0 1 40 1 1
		 40 2 1 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 32 41 1 33 41 1 34 41 1 35 41 1 36 41 1
		 37 41 1 38 41 1 39 41 1;
	setAttr -s 48 -ch 176 ".fc[0:47]" -type "polyFaces" 
		f 4 0 41 -9 -41
		mu 0 4 0 1 9 8
		f 4 1 42 -10 -42
		mu 0 4 1 2 10 9
		f 4 2 43 -11 -43
		mu 0 4 2 3 11 10
		f 4 3 44 -12 -44
		mu 0 4 3 4 12 11
		f 4 4 45 -13 -45
		mu 0 4 4 5 13 12
		f 4 5 46 -14 -46
		mu 0 4 5 6 14 13
		f 4 6 47 -15 -47
		mu 0 4 6 7 15 14
		f 4 7 40 -16 -48
		mu 0 4 7 0 8 15
		f 4 8 49 -17 -49
		mu 0 4 16 17 26 25
		f 4 9 50 -18 -50
		mu 0 4 17 18 27 26
		f 4 10 51 -19 -51
		mu 0 4 18 19 28 27
		f 4 11 52 -20 -52
		mu 0 4 19 20 29 28
		f 4 12 53 -21 -53
		mu 0 4 20 21 30 29
		f 4 13 54 -22 -54
		mu 0 4 21 22 31 30
		f 4 14 55 -23 -55
		mu 0 4 22 23 32 31
		f 4 15 48 -24 -56
		mu 0 4 23 24 33 32
		f 4 16 57 -25 -57
		mu 0 4 25 26 35 34
		f 4 17 58 -26 -58
		mu 0 4 26 27 36 35
		f 4 18 59 -27 -59
		mu 0 4 27 28 37 36
		f 4 19 60 -28 -60
		mu 0 4 28 29 38 37
		f 4 20 61 -29 -61
		mu 0 4 29 30 39 38
		f 4 21 62 -30 -62
		mu 0 4 30 31 40 39
		f 4 22 63 -31 -63
		mu 0 4 31 32 41 40
		f 4 23 56 -32 -64
		mu 0 4 32 33 42 41
		f 4 24 65 -33 -65
		mu 0 4 49 48 56 57
		f 4 25 66 -34 -66
		mu 0 4 48 47 55 56
		f 4 26 67 -35 -67
		mu 0 4 47 46 54 55
		f 4 27 68 -36 -68
		mu 0 4 46 45 53 54
		f 4 28 69 -37 -69
		mu 0 4 45 44 52 53
		f 4 29 70 -38 -70
		mu 0 4 44 43 51 52
		f 4 30 71 -39 -71
		mu 0 4 43 50 58 51
		f 4 31 64 -40 -72
		mu 0 4 50 49 57 58
		f 3 -1 -73 73
		mu 0 3 1 0 59
		f 3 -2 -74 74
		mu 0 3 2 1 59
		f 3 -3 -75 75
		mu 0 3 3 2 59
		f 3 -4 -76 76
		mu 0 3 4 3 59
		f 3 -5 -77 77
		mu 0 3 5 4 59
		f 3 -6 -78 78
		mu 0 3 6 5 59
		f 3 -7 -79 79
		mu 0 3 7 6 59
		f 3 -8 -80 72
		mu 0 3 0 7 59
		f 3 32 81 -81
		mu 0 3 57 56 60
		f 3 33 82 -82
		mu 0 3 56 55 60
		f 3 34 83 -83
		mu 0 3 55 54 60
		f 3 35 84 -84
		mu 0 3 54 53 60
		f 3 36 85 -85
		mu 0 3 53 52 60
		f 3 37 86 -86
		mu 0 3 52 51 60
		f 3 38 87 -87
		mu 0 3 51 58 60
		f 3 39 80 -88
		mu 0 3 58 57 60;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder5" -p "group5";
	setAttr ".t" -type "double3" 0.91322719950438414 0.82606028914848217 -0.42120919628206677 ;
	setAttr ".r" -type "double3" 23.331043951794033 -3.2265780222464487e-014 90.000000000000057 ;
	setAttr ".s" -type "double3" 0.090049495407315786 0.67743306264804282 -0.17528594808427331 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.55524272 0.10100729
		 0.5 0.078125007 0.44475728 0.10100729 0.421875 0.15625 0.44475728 0.21149272 0.5
		 0.234375 0.55524272 0.21149272 0.578125 0.15625 0.61048543 0.04576458 0.5 1.4901161e-008
		 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5 0.3125 0.61048543
		 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125 0.46875 0.3125
		 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125 0.375 0.50046992
		 0.40625 0.50046992 0.4375 0.50046992 0.46875 0.50046992 0.5 0.50046992 0.53125 0.50046992
		 0.5625 0.50046992 0.59375 0.50046992 0.625 0.50046992 0.375 0.68843985 0.40625 0.68843985
		 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985 0.53125 0.68843985 0.5625 0.68843985
		 0.59375 0.68843985 0.625 0.68843985 0.61048543 0.73326457 0.5 0.6875 0.38951457 0.73326457
		 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625 0.84375
		 0.5 0.15000001 0.61048543 0.95423543 0.5 1 0.38951457 0.95423543 0.34375 0.84375
		 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.61048543
		 0.95423543 0.5 1 0.38951457 0.95423543 0.34375 0.84375 0.38951457 0.73326457 0.5
		 0.6875 0.61048543 0.73326457 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[41:48]" -type "float3"  -5.8704648 0 -7.7715612e-016 
		-5.8704648 0 -7.7715612e-016 -5.8704648 0 -7.7715612e-016 -5.8704648 0 -1.7208267e-015 
		-5.8704648 0 -7.7715612e-016 -5.8704648 0 -7.7715612e-016 -5.8704648 0 -7.7715612e-016 
		-5.8704648 0 -1.7208269e-015;
	setAttr -s 49 ".vt[0:48]"  0.35355377 -1.000000476837 -0.35355389 0 -1 -0.50000012
		 -0.35355186 -1.000000476837 -0.35355389 -0.5 -1 -3.7252903e-007 -0.35355186 -1.000000238419 0.35355294
		 0 -1.000000238419 0.49999964 0.35355377 -1.000000238419 0.35355294 0.5 -1 -3.7252903e-007
		 0.7071085 -1 -0.70710719 0 -1 -0.99999988 -0.70710564 -1 -0.70710719 -1 -1 -3.7252903e-007
		 -0.70710564 -1.000000238419 0.70710623 0 -1 0.99999988 0.7071085 -1.000000238419 0.70710623
		 1.000000953674 -1 -3.7252903e-007 0.7071085 -1.1920929e-007 -0.70710647 0 -1.1920929e-007 -1.000000119209
		 -0.70710564 -1.1920929e-007 -0.70710647 -1 0 -1.4901161e-008 -0.70710564 0 0.70710647
		 0 0 0.99999988 0.7071085 0 0.70710647 1.000000953674 0 -1.4901161e-008 0.7071085 0.53546906 -0.70710671
		 0 0.53546911 -0.99999988 -0.70710564 0.53546906 -0.70710671 -1 0.53546917 -1.4901161e-008
		 -0.70710564 0.53546911 0.70710683 0 0.53546917 1 0.7071085 0.53546911 0.70710683
		 1.000000953674 0.53546917 -1.4901161e-008 0 -1 -3.7252903e-007 -1.42173576 1.28913653 -0.70710647
		 -1.67813492 1.20153916 -0.99999952 -1.93453503 1.11394203 -0.70710647 -2.040738583 1.077658296 1.937151e-007
		 -1.93453455 1.11394227 0.70710671 -1.67813587 1.20153916 1.000000119209 -1.42173719 1.28913617 0.70710695
		 -1.31553221 1.32542026 1.3411045e-007 -4.47554398 1.44707859 -0.70710546 -4.73194218 1.35948145 -0.99999881
		 -4.98834181 1.27188468 -0.70710665 -5.094545364 1.23560083 0 -4.98834276 1.27188468 0.70710611
		 -4.73194408 1.35948145 0.99999845 -4.47554588 1.44707799 0.70710593 -4.36934042 1.4833622 3.1292439e-007;
	setAttr -s 96 ".ed[0:95]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1
		 7 0 1 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 1 17 18 1
		 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 23 16 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1
		 29 30 1 30 31 1 31 24 1 0 8 1 1 9 1 2 10 1 3 11 1 4 12 1 5 13 1 6 14 1 7 15 1 8 16 0
		 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0 18 26 0 19 27 0
		 20 28 0 21 29 0 22 30 0 23 31 0 32 0 1 32 1 1 32 2 1 32 3 1 32 4 1 32 5 1 32 6 1
		 32 7 1 24 33 0 25 34 0 33 34 0 26 35 0 34 35 0 27 36 1 35 36 0 28 37 0 36 37 0 29 38 0
		 37 38 0 30 39 0 38 39 0 31 40 1 39 40 0 40 33 0 33 41 0 34 42 0 41 42 0 35 43 0 42 43 0
		 36 44 1 43 44 0 37 45 0 44 45 0 38 46 0 45 46 0 39 47 0 46 47 0 40 48 1 47 48 0 48 41 0;
	setAttr -s 48 -ch 184 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -9 -33
		mu 0 4 0 1 9 8
		f 4 1 34 -10 -34
		mu 0 4 1 2 10 9
		f 4 2 35 -11 -35
		mu 0 4 2 3 11 10
		f 4 3 36 -12 -36
		mu 0 4 3 4 12 11
		f 4 4 37 -13 -37
		mu 0 4 4 5 13 12
		f 4 5 38 -14 -38
		mu 0 4 5 6 14 13
		f 4 6 39 -15 -39
		mu 0 4 6 7 15 14
		f 4 7 32 -16 -40
		mu 0 4 7 0 8 15
		f 4 8 41 -17 -41
		mu 0 4 16 17 26 25
		f 4 9 42 -18 -42
		mu 0 4 17 18 27 26
		f 4 10 43 -19 -43
		mu 0 4 18 19 28 27
		f 4 11 44 -20 -44
		mu 0 4 19 20 29 28
		f 4 12 45 -21 -45
		mu 0 4 20 21 30 29
		f 4 13 46 -22 -46
		mu 0 4 21 22 31 30
		f 4 14 47 -23 -47
		mu 0 4 22 23 32 31
		f 4 15 40 -24 -48
		mu 0 4 23 24 33 32
		f 4 16 49 -25 -49
		mu 0 4 25 26 35 34
		f 4 17 50 -26 -50
		mu 0 4 26 27 36 35
		f 4 18 51 -27 -51
		mu 0 4 27 28 37 36
		f 4 19 52 -28 -52
		mu 0 4 28 29 38 37
		f 4 20 53 -29 -53
		mu 0 4 29 30 39 38
		f 4 21 54 -30 -54
		mu 0 4 30 31 40 39
		f 4 22 55 -31 -55
		mu 0 4 31 32 41 40
		f 4 23 48 -32 -56
		mu 0 4 32 33 42 41
		f 3 -1 -57 57
		mu 0 3 1 0 51
		f 3 -2 -58 58
		mu 0 3 2 1 51
		f 3 -3 -59 59
		mu 0 3 3 2 51
		f 3 -4 -60 60
		mu 0 3 4 3 51
		f 3 -5 -61 61
		mu 0 3 5 4 51
		f 3 -6 -62 62
		mu 0 3 6 5 51
		f 3 -7 -63 63
		mu 0 3 7 6 51
		f 3 -8 -64 56
		mu 0 3 0 7 51
		f 4 24 65 -67 -65
		mu 0 4 49 48 53 52
		f 4 25 67 -69 -66
		mu 0 4 48 47 54 53
		f 4 26 69 -71 -68
		mu 0 4 47 46 55 54
		f 4 27 71 -73 -70
		mu 0 4 46 45 56 55
		f 4 28 73 -75 -72
		mu 0 4 45 44 57 56
		f 4 29 75 -77 -74
		mu 0 4 44 43 58 57
		f 4 30 77 -79 -76
		mu 0 4 43 50 59 58
		f 4 31 64 -80 -78
		mu 0 4 50 49 52 59
		f 4 66 81 -83 -81
		mu 0 4 52 53 61 60
		f 4 68 83 -85 -82
		mu 0 4 53 54 62 61
		f 4 70 85 -87 -84
		mu 0 4 54 55 63 62
		f 4 72 87 -89 -86
		mu 0 4 55 56 64 63
		f 4 74 89 -91 -88
		mu 0 4 56 57 65 64
		f 4 76 91 -93 -90
		mu 0 4 57 58 66 65
		f 4 78 93 -95 -92
		mu 0 4 58 59 67 66
		f 4 79 80 -96 -94
		mu 0 4 59 52 60 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "pCylinder5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 61 ".uvst[0].uvsp[0:60]" -type "float2" 0.55524272 0.10100729
		 0.5 0.078125007 0.44475728 0.10100729 0.421875 0.15625 0.44475728 0.21149272 0.5
		 0.234375 0.55524272 0.21149272 0.578125 0.15625 0.61048543 0.04576458 0.5 1.4901161e-008
		 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5 0.3125 0.61048543
		 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125 0.46875 0.3125
		 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125 0.375 0.50046992
		 0.40625 0.50046992 0.4375 0.50046992 0.46875 0.50046992 0.5 0.50046992 0.53125 0.50046992
		 0.5625 0.50046992 0.59375 0.50046992 0.625 0.50046992 0.375 0.68843985 0.40625 0.68843985
		 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985 0.53125 0.68843985 0.5625 0.68843985
		 0.59375 0.68843985 0.625 0.68843985 0.61048543 0.73326457 0.5 0.6875 0.38951457 0.73326457
		 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625 0.84375
		 0.55524272 0.78850728 0.5 0.765625 0.44475728 0.78850728 0.421875 0.84375 0.44475728
		 0.89899272 0.5 0.921875 0.55524272 0.89899272 0.578125 0.84375 0.5 0.15000001 0.5
		 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.35355335 -1 -0.35355335 0 -1 -0.49999994
		 -0.35355335 -1 -0.35355335 -0.49999994 -1 0 -0.35355335 -1 0.35355335 0 -1 0.49999997
		 0.35355338 -1 0.35355338 0.5 -1 0 0.70710671 -1 -0.70710671 0 -1 -0.99999988 -0.70710671 -1 -0.70710671
		 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994 0.70710677 -1 0.70710677
		 1 -1 0 0.70710671 0 -0.70710671 0 0 -0.99999988 -0.70710671 0 -0.70710671 -0.99999988 0 0
		 -0.70710671 0 0.70710671 0 0 0.99999994 0.70710677 0 0.70710677 1 0 0 0.70710671 1 -0.70710671
		 0 1 -0.99999988 -0.70710671 1 -0.70710671 -0.99999988 1 0 -0.70710671 1 0.70710671
		 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0 0.35355335 1 -0.35355335 0 1 -0.49999994
		 -0.35355335 1 -0.35355335 -0.49999994 1 0 -0.35355335 1 0.35355335 0 1 0.49999997
		 0.35355338 1 0.35355338 0.5 1 0 0 -1 0 0 1 0;
	setAttr -s 88 ".ed[0:87]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1
		 7 0 1 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 1 17 18 1
		 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 23 16 1 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 32 1
		 0 8 1 1 9 1 2 10 1 3 11 1 4 12 1 5 13 1 6 14 1 7 15 1 8 16 0 9 17 0 10 18 0 11 19 0
		 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0
		 23 31 0 24 32 1 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 1 40 0 1 40 1 1
		 40 2 1 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 32 41 1 33 41 1 34 41 1 35 41 1 36 41 1
		 37 41 1 38 41 1 39 41 1;
	setAttr -s 48 -ch 176 ".fc[0:47]" -type "polyFaces" 
		f 4 0 41 -9 -41
		mu 0 4 0 1 9 8
		f 4 1 42 -10 -42
		mu 0 4 1 2 10 9
		f 4 2 43 -11 -43
		mu 0 4 2 3 11 10
		f 4 3 44 -12 -44
		mu 0 4 3 4 12 11
		f 4 4 45 -13 -45
		mu 0 4 4 5 13 12
		f 4 5 46 -14 -46
		mu 0 4 5 6 14 13
		f 4 6 47 -15 -47
		mu 0 4 6 7 15 14
		f 4 7 40 -16 -48
		mu 0 4 7 0 8 15
		f 4 8 49 -17 -49
		mu 0 4 16 17 26 25
		f 4 9 50 -18 -50
		mu 0 4 17 18 27 26
		f 4 10 51 -19 -51
		mu 0 4 18 19 28 27
		f 4 11 52 -20 -52
		mu 0 4 19 20 29 28
		f 4 12 53 -21 -53
		mu 0 4 20 21 30 29
		f 4 13 54 -22 -54
		mu 0 4 21 22 31 30
		f 4 14 55 -23 -55
		mu 0 4 22 23 32 31
		f 4 15 48 -24 -56
		mu 0 4 23 24 33 32
		f 4 16 57 -25 -57
		mu 0 4 25 26 35 34
		f 4 17 58 -26 -58
		mu 0 4 26 27 36 35
		f 4 18 59 -27 -59
		mu 0 4 27 28 37 36
		f 4 19 60 -28 -60
		mu 0 4 28 29 38 37
		f 4 20 61 -29 -61
		mu 0 4 29 30 39 38
		f 4 21 62 -30 -62
		mu 0 4 30 31 40 39
		f 4 22 63 -31 -63
		mu 0 4 31 32 41 40
		f 4 23 56 -32 -64
		mu 0 4 32 33 42 41
		f 4 24 65 -33 -65
		mu 0 4 49 48 56 57
		f 4 25 66 -34 -66
		mu 0 4 48 47 55 56
		f 4 26 67 -35 -67
		mu 0 4 47 46 54 55
		f 4 27 68 -36 -68
		mu 0 4 46 45 53 54
		f 4 28 69 -37 -69
		mu 0 4 45 44 52 53
		f 4 29 70 -38 -70
		mu 0 4 44 43 51 52
		f 4 30 71 -39 -71
		mu 0 4 43 50 58 51
		f 4 31 64 -40 -72
		mu 0 4 50 49 57 58
		f 3 -1 -73 73
		mu 0 3 1 0 59
		f 3 -2 -74 74
		mu 0 3 2 1 59
		f 3 -3 -75 75
		mu 0 3 3 2 59
		f 3 -4 -76 76
		mu 0 3 4 3 59
		f 3 -5 -77 77
		mu 0 3 5 4 59
		f 3 -6 -78 78
		mu 0 3 6 5 59
		f 3 -7 -79 79
		mu 0 3 7 6 59
		f 3 -8 -80 72
		mu 0 3 0 7 59
		f 3 32 81 -81
		mu 0 3 57 56 60
		f 3 33 82 -82
		mu 0 3 56 55 60
		f 3 34 83 -83
		mu 0 3 55 54 60
		f 3 35 84 -84
		mu 0 3 54 53 60
		f 3 36 85 -85
		mu 0 3 53 52 60
		f 3 37 86 -86
		mu 0 3 52 51 60
		f 3 38 87 -87
		mu 0 3 51 58 60
		f 3 39 80 -88
		mu 0 3 58 57 60;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group9" -p "group5";
createNode transform -n "pasted__polySurface2" -p "group9";
	setAttr ".t" -type "double3" 1.7105254859736849 0.95192264666136284 -0.79283098873999602 ;
	setAttr ".r" -type "double3" 0 23.281370536938343 0 ;
	setAttr ".s" -type "double3" 0.43272906747669126 0.45770643297037966 1 ;
createNode transform -n "transform3" -p "pasted__polySurface2";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape2" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group11" -p "group9";
createNode transform -n "polySurface6" -p "group11";
	setAttr ".t" -type "double3" 1.7105254859736851 0.95192264666136284 -0.79283098873999591 ;
	setAttr ".r" -type "double3" 0 23.281370536938351 0 ;
	setAttr ".s" -type "double3" 0.43272906747669126 0.45770643297037966 1 ;
createNode mesh -n "polySurfaceShape10" -p "|group5|group9|group11|polySurface6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32412021607160568 0.27924068458378315 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  -0.029405864 0 0.029405892 
		-2.2980831e-008 0 0.029405892 0.029405894 0 0.029405892 -0.029405916 0 5.7078844e-009 
		0.029405953 0 4.9852553e-009 -0.029405864 0 -0.029405892 -2.2980831e-008 0 -0.029405892 
		0.029405864 0 -0.029405886 -0.046883784 8.3266727e-017 0.046883799 -0.046883784 8.3266727e-017 
		-3.8860035e-010 -0.046883799 8.3266727e-017 -0.046883825 -3.2713054e-008 8.3266727e-017 
		-0.046883825 0.046883784 8.3266727e-017 -0.046883825 0.046883836 8.3266727e-017 -7.2722267e-010 
		0.046883836 8.3266727e-017 0.046883825 -3.2713054e-008 8.3266727e-017 0.046883825 
		-0.045636509 0 0.045636542 -0.045636509 0 -1.6340195e-009 -0.045636598 0 -0.045636542 
		-2.3101789e-008 0 -0.045636542 0.045636509 0 -0.045636542 0.045636509 0 -2.3526945e-009 
		0.045636509 0 0.045636576 -2.3101789e-008 0 0.045636542;
createNode transform -n "pasted__polySurface1" -p "group11";
	setAttr ".t" -type "double3" 1.7105254859736851 0.95192264666136284 -0.79283098873999591 ;
	setAttr ".r" -type "double3" 0 23.281370536938351 0 ;
	setAttr ".s" -type "double3" 0.43272906747669126 0.45770643297037966 1 ;
createNode mesh -n "pasted__polySurfaceShape1" -p "|group5|group9|group11|pasted__polySurface1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface5" -p "group11";
	setAttr ".t" -type "double3" 1.7105254859736851 0.95192264666136284 -0.79283098873999591 ;
	setAttr ".r" -type "double3" 0 23.281370536938351 0 ;
	setAttr ".s" -type "double3" 0.43272906747669126 0.45770643297037966 1 ;
createNode mesh -n "polySurfaceShape9" -p "|group5|group9|group11|polySurface5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group12" -p "group9";
	setAttr ".t" -type "double3" -3.3503410321232492 0.0026715755984318967 1.4578094714004113 ;
	setAttr ".rp" -type "double3" 1.7353388956374334 0.98648437293601199 -0.79360483704964035 ;
	setAttr ".sp" -type "double3" 1.7353388956374334 0.98648437293601199 -0.79360483704964035 ;
createNode transform -n "polySurface6" -p "group12";
	setAttr ".t" -type "double3" 1.7105254859736851 0.95192264666136284 -0.79283098873999591 ;
	setAttr ".r" -type "double3" 0 23.281370536938351 0 ;
	setAttr ".s" -type "double3" 0.43272906747669126 0.45770643297037966 1 ;
createNode mesh -n "polySurfaceShape6" -p "|group5|group9|group12|polySurface6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32412021607160568 0.27924068458378315 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 65 ".uvst[0].uvsp[0:64]" -type "float2" 0.58199465 0.90320092
		 0.58199465 0.77909827 0.7060973 0.77909827 0.7060973 0.90320092 0.48718768 0.99800789
		 0.48718768 0.77909857 0.58199465 0.65499568 0.7060973 0.65499568 0.8301999 0.77909857
		 0.8301999 0.90320092 0.7060973 0.99800789 0.48718768 0.56018871 0.7060973 0.56018871
		 0.8301999 0.65499544 0.92500687 0.77909857 0.92500687 0.99800801 0.92500687 0.56018871
		 0.16460228 0.27924064 0.16460228 0.0019920431 0.23391445 0.024925342 0.23391445 0.27924064
		 0.2695176 0.034783754 0.2695176 0.27924064 0.16460228 0.55648935 0.23391445 0.53355598
		 0.32124332 0.060331039 0.32124332 0.27924064 0.2695176 0.52369761 0.32124332 0.49815029
		 0.5770818 0.53355616 0.5770818 0.27924073 0.64639401 0.27924073 0.64639401 0.55648911
		 0.54147875 0.5236972 0.54147875 0.27924073 0.5770818 0.024925474 0.64639401 0.0019920431
		 0.48975295 0.49815017 0.48975295 0.27924073 0.54147875 0.034783822 0.48975295 0.060330875
		 0.0018463437 0.27924073 0.0018463437 0.0019920431 0.071158446 0.024925409 0.071158446
		 0.27924073 0.10676168 0.034783822 0.10676168 0.27924073 0.0018463437 0.55648941 0.071158446
		 0.53355604 0.15848732 0.060331073 0.15848732 0.27924073 0.10676168 0.52369761 0.15848732
		 0.49815029 0.32717764 0.279241 0.32717764 0.0019920431 0.39648983 0.02492574 0.39648983
		 0.279241 0.43209299 0.034783822 0.43209299 0.279241 0.32717764 0.55648929 0.39648983
		 0.53355598 0.48381871 0.06033114 0.48381871 0.279241 0.43209299 0.5236975 0.48381871
		 0.49815029;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  -0.029405864 0 0.029405892 
		-2.2980831e-008 0 0.029405892 0.029405894 0 0.029405892 -0.029405916 0 5.7078844e-009 
		0.029405953 0 4.9852553e-009 -0.029405864 0 -0.029405892 -2.2980831e-008 0 -0.029405892 
		0.029405864 0 -0.029405886 -0.046883784 8.3266727e-017 0.046883799 -0.046883784 8.3266727e-017 
		-3.8860035e-010 -0.046883799 8.3266727e-017 -0.046883825 -3.2713054e-008 8.3266727e-017 
		-0.046883825 0.046883784 8.3266727e-017 -0.046883825 0.046883836 8.3266727e-017 -7.2722267e-010 
		0.046883836 8.3266727e-017 0.046883825 -3.2713054e-008 8.3266727e-017 0.046883825 
		-0.045636509 0 0.045636542 -0.045636509 0 -1.6340195e-009 -0.045636598 0 -0.045636542 
		-2.3101789e-008 0 -0.045636542 0.045636509 0 -0.045636542 0.045636509 0 -2.3526945e-009 
		0.045636509 0 0.045636576 -2.3101789e-008 0 0.045636542;
	setAttr -s 41 ".vt[0:40]"  -0.45477796 0.44320846 0.45477864 0 0.44320846 0.45477864
		 0.45477915 0.44320846 0.45477864 -0.45477867 0.44320846 0 0.4547801 0.44320846 -1.1175871e-008
		 -0.45477796 0.44320846 -0.45477882 0 0.44320846 -0.45477882 0.45477867 0.44320846 -0.45477864
		 -0.51578259 0.2480278 0.51578313 -0.51578259 0.2480278 -3.7252903e-009 -0.51578283 0.2480278 -0.51578331
		 0 0.2480278 -0.51578331 0.51578331 0.2480278 -0.51578331 0.51578379 0.2480278 -7.4505806e-009
		 0.51578379 0.2480278 0.51578331 0 0.2480278 0.51578331 -0.47311831 0.37697363 0.47311887
		 -0.47311831 0.37697363 -3.7252903e-009 -0.47311902 0.37697363 -0.47311893 0 0.37697363 -0.47311893
		 0.47311878 0.37697363 -0.47311893 0.47311878 0.37697363 -1.1175871e-008 0.47311878 0.37697363 0.47311896
		 0 0.37697363 0.47311887 -0.40725088 0.53943706 0.40725139 0 0.53943706 0.40725133
		 -0.40725088 0.53943706 -7.4505806e-009 0.40725183 0.53943706 0.40725139 0.40725183 0.53943706 -1.1175871e-008
		 0 0.53943706 -0.40725151 -0.40725112 0.53943706 -0.40725151 0.40725183 0.53943706 -0.40725145
		 -0.23087549 0.61302304 0.23087603 4.7683716e-007 0.61302304 0.23087601 4.7683716e-007 0.61302304 -2.9802322e-008
		 -0.23087549 0.61302304 -2.2351742e-008 0.23087645 0.61302304 0.23087601 0.23087645 0.61302304 -2.6077032e-008
		 0 0.61302304 -0.23087612 -0.23087549 0.61302304 -0.23087612 0.23087692 0.61302304 -0.23087612;
	setAttr -s 76 ".ed[0:75]"  0 1 0 1 2 0 5 6 0 6 7 0 0 3 0 2 4 0 3 5 0
		 4 7 0 5 18 0 6 19 1 7 20 0 8 16 0 9 17 1 8 9 0 9 10 0 10 11 0 11 12 0 13 21 1 12 13 0
		 14 22 0 13 14 0 15 23 1 14 15 0 15 8 0 16 0 0 17 3 1 16 17 1 18 10 0 17 18 1 19 11 1
		 18 19 1 20 12 0 19 20 1 21 4 1 20 21 1 22 2 0 21 22 1 23 1 1 22 23 1 23 16 1 0 24 0
		 1 25 0 24 25 0 3 26 0 24 26 0 2 27 0 25 27 0 4 28 0 27 28 0 6 29 0 5 30 0 30 29 0
		 26 30 0 7 31 0 28 31 0 29 31 0 24 32 0 25 33 0 32 33 0 33 34 1 26 35 0 35 34 1 32 35 0
		 27 36 0 33 36 0 28 37 0 36 37 0 34 37 1 29 38 0 34 38 1 30 39 0 39 38 0 35 39 0 31 40 0
		 37 40 0 38 40 0;
	setAttr -s 36 -ch 144 ".fc[0:35]" -type "polyFaces" 
		f 4 58 59 -62 -63
		mu 0 4 0 1 2 3
		f 4 64 66 -68 -60
		mu 0 4 1 6 7 2
		f 4 61 69 -72 -73
		mu 0 4 3 2 8 9
		f 4 67 74 -76 -70
		mu 0 4 2 7 13 8
		f 4 -14 11 26 -13
		mu 0 4 17 18 19 20
		f 4 -15 12 28 27
		mu 0 4 23 17 20 24
		f 4 30 29 -16 -28
		mu 0 4 29 30 31 32
		f 4 32 31 -17 -30
		mu 0 4 30 35 36 31
		f 4 -19 -32 34 -18
		mu 0 4 41 42 43 44
		f 4 -21 17 36 -20
		mu 0 4 47 41 44 48
		f 4 -23 19 38 -22
		mu 0 4 53 54 55 56
		f 4 -24 21 39 -12
		mu 0 4 59 53 56 60
		f 4 -27 24 4 -26
		mu 0 4 20 19 21 22
		f 4 -29 25 6 8
		mu 0 4 24 20 22 27
		f 4 2 9 -31 -9
		mu 0 4 33 34 30 29
		f 4 3 10 -33 -10
		mu 0 4 34 39 35 30
		f 4 -35 -11 -8 -34
		mu 0 4 44 43 45 46
		f 4 -37 33 -6 -36
		mu 0 4 48 44 46 51
		f 4 -39 35 -2 -38
		mu 0 4 56 55 57 58
		f 4 -40 37 -1 -25
		mu 0 4 60 56 58 63
		f 4 0 41 -43 -41
		mu 0 4 63 58 62 64
		f 4 -5 40 44 -44
		mu 0 4 22 21 25 26
		f 4 1 45 -47 -42
		mu 0 4 58 57 61 62
		f 4 5 47 -49 -46
		mu 0 4 51 46 50 52
		f 4 -3 50 51 -50
		mu 0 4 34 33 37 38
		f 4 -7 43 52 -51
		mu 0 4 27 22 26 28
		f 4 7 53 -55 -48
		mu 0 4 46 45 49 50
		f 4 -4 49 55 -54
		mu 0 4 39 34 38 40
		f 4 42 57 -59 -57
		mu 0 4 4 5 1 0
		f 4 -45 56 62 -61
		mu 0 4 10 4 0 3
		f 4 46 63 -65 -58
		mu 0 4 5 11 6 1
		f 4 48 65 -67 -64
		mu 0 4 11 12 7 6
		f 4 -52 70 71 -69
		mu 0 4 14 15 9 8
		f 4 -53 60 72 -71
		mu 0 4 15 10 3 9
		f 4 54 73 -75 -66
		mu 0 4 12 16 13 7
		f 4 -56 68 75 -74
		mu 0 4 16 14 8 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__polySurface1" -p "group12";
	setAttr ".t" -type "double3" 1.7105254859736851 0.95192264666136284 -0.79283098873999591 ;
	setAttr ".r" -type "double3" 0 23.281370536938351 0 ;
	setAttr ".s" -type "double3" 0.43272906747669126 0.45770643297037966 1 ;
createNode mesh -n "pasted__polySurfaceShape1" -p "|group5|group9|group12|pasted__polySurface1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.5 0.1875 0.375
		 0.1875 0.375 0.1875 0.5 0.1875 0.625 0.1875 0.625 0.1875 0.375 0.5625 0.5 0.5625
		 0.5 0.5625 0.375 0.5625 0.625 0.5625 0.625 0.5625 0.875 0.1875 0.75 0.1875 0.75 0.1875
		 0.875 0.1875 0.25 0.1875 0.125 0.1875 0.125 0.1875 0.25 0.1875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  0 0.25 0.5 -0.5 0.25 0.5 -0.5 0.18790865 0.5
		 0 0.18790865 0.5 0.5 0.25 0.5 0.5 0.18790865 0.5 -0.5 0.25 -0.5 0 0.25 -0.5 0 0.18790865 -0.5
		 -0.5 0.18790865 -0.5 0.5 0.25 -0.5 0.5 0.18790865 -0.5 0.5 0.25 0 0.5 0.18790865 0
		 -0.5 0.25 0 -0.5 0.18790865 0;
	setAttr -s 24 ".ed[0:23]"  0 3 0 1 2 0 4 5 0 6 9 0 7 8 0 10 11 0 12 13 0
		 14 15 0 0 1 0 3 2 0 4 0 0 5 3 0 6 7 0 9 8 0 7 10 0 8 11 0 10 12 0 11 13 0 12 4 0
		 13 5 0 14 6 0 15 9 0 1 14 0 2 15 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 8 1 -10 -1
		mu 0 4 0 1 2 3
		f 4 10 0 -12 -3
		mu 0 4 4 0 3 5
		f 4 12 4 -14 -4
		mu 0 4 6 7 8 9
		f 4 14 5 -16 -5
		mu 0 4 7 10 11 8
		f 4 16 6 -18 -6
		mu 0 4 12 13 14 15
		f 4 18 2 -20 -7
		mu 0 4 13 4 5 14
		f 4 20 3 -22 -8
		mu 0 4 16 17 18 19
		f 4 22 7 -24 -2
		mu 0 4 1 16 19 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface5" -p "group12";
	setAttr ".t" -type "double3" 1.7105254859736851 0.95192264666136284 -0.79283098873999591 ;
	setAttr ".r" -type "double3" 0 23.281370536938351 0 ;
	setAttr ".s" -type "double3" 0.43272906747669126 0.45770643297037966 1 ;
createNode mesh -n "polySurfaceShape5" -p "|group5|group9|group12|polySurface5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:51]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.375 0 0.5 0 0.5
		 0.0625 0.375 0.0625 0.625 0 0.625 0.0625 0.375 0.125 0.5 0.125 0.5 0.1875 0.375 0.1875
		 0.625 0.125 0.625 0.1875 0.375 0.5625 0.5 0.5625 0.5 0.625 0.375 0.625 0.625 0.5625
		 0.625 0.625 0.375 0.6875 0.5 0.6875 0.5 0.75 0.375 0.75 0.625 0.6875 0.625 0.75 0.5
		 0.875 0.375 0.875 0.625 0.875 0.5 1 0.375 1 0.625 1 0.75 0 0.875 0 0.875 0.0625 0.75
		 0.0625 0.75 0.125 0.875 0.125 0.875 0.1875 0.75 0.1875 0.125 0 0.25 0 0.25 0.0625
		 0.125 0.0625 0.125 0.125 0.25 0.125 0.25 0.1875 0.125 0.1875 0.125 0.0625 0.25 0.0625
		 0.25 0.125 0.125 0.125 0.375 0.625 0.5 0.625 0.5 0.6875 0.375 0.6875 0.625 0.625
		 0.625 0.6875 0.75 0.0625 0.875 0.0625 0.875 0.125 0.75 0.125 0.625 0.0625 0.625 0.125
		 0.5 0.0625 0.5 0.125 0.375 0.0625 0.375 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.5
		 0.625 0.375 0.625 0.625 0.625 0.75 0.125 0.875 0.125 0.125 0.125 0.25 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 57 ".vt[0:56]"  -0.5 -0.4491514 0.5 0 -0.4491514 0.5 0.50000143 -0.4491514 0.49999997
		 -0.55395746 -0.0033502579 0.55395746 0 -0.0033502579 0.55395746 0.55395746 -0.0033502579 0.55395746
		 -0.55395675 -0.0033502579 -0.55395782 0 -0.0033502579 -0.55395746 0.55395889 -0.0033502579 -0.55395746
		 -0.5 -0.4491514 -0.49999997 0 -0.4491514 -0.5 0.5 -0.4491514 -0.5 -0.49999928 -0.4491514 0
		 0 -0.49999964 -1.1175871e-008 0.50000048 -0.4491514 -1.4901161e-008 0.55395699 -0.0033502579 -1.4901161e-008
		 -0.55395746 -0.0033502579 0 -0.49999928 -0.30084789 0 -0.5 -0.30084789 -0.49999997
		 0 -0.30084789 -0.5 0.5 -0.30084789 -0.5 0.50000048 -0.30084789 -1.4901161e-008 0.50000143 -0.30084789 0.49999997
		 0 -0.30084789 0.5 -0.5 -0.30084789 0.5 -0.55395746 0.065442085 0.55395746 0 0.065442085 0.55395746
		 0 0.18790936 0.5 -0.5 0.18790936 0.5 0.55395746 0.065442085 0.55395746 0.50000143 0.18790936 0.49999997
		 -0.5 0.18790936 -0.49999997 0 0.18790936 -0.5 0 0.065442085 -0.55395746 -0.55395675 0.065442085 -0.55395782
		 0.5 0.18790936 -0.5 0.55395889 0.065442085 -0.55395746 0.55395699 0.065442085 -1.4901161e-008
		 0.50000048 0.18790936 -1.4901161e-008 -0.55395746 0.065442085 0 -0.49999928 0.18790936 0
		 -0.46904325 -0.24226022 -1.1175871e-008 -0.46904325 -0.24226022 -0.46904334 -0.46904325 -0.0077390671 -1.1175871e-008
		 -0.46904325 -0.0077390671 -0.46904334 0 -0.0077390671 -0.46904328 0 -0.24226022 -0.46904328
		 0.46904421 -0.0077390671 -0.46904334 0.46904421 -0.24226022 -0.46904334 0.46904373 -0.24226022 0
		 0.46904373 -0.0077390671 0 0.46904373 -0.24226022 0.46904328 0.46904373 -0.0077390671 0.46904328
		 0 -0.24226022 0.46904323 0 -0.0077390671 0.46904323 -0.46904325 -0.24226022 0.46904331
		 -0.46904325 -0.0077390671 0.46904331;
	setAttr -s 108 ".ed[0:107]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 12 13 1 13 14 1 0 24 0 1 23 1 2 22 0 9 12 0 10 13 1 11 14 0 12 0 0 13 1 1
		 14 2 0 8 15 0 15 5 0 14 21 1 6 16 0 16 3 0 12 17 1 18 9 0 17 18 0 19 10 1 18 19 0
		 20 11 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 17 0 3 25 0 4 26 0 25 26 0 26 27 1
		 27 28 0 25 28 0 5 29 0 26 29 0 29 30 0 30 27 0 31 32 0 7 33 0 32 33 1 6 34 0 34 33 0
		 31 34 0 32 35 0 8 36 0 35 36 0 33 36 0 15 37 0 36 37 0 35 38 0 37 38 1 37 29 0 38 30 0
		 16 39 0 34 39 0 39 40 1 40 31 0 39 25 0 28 40 0 17 41 0 18 42 0 41 42 0 16 43 0 41 43 1
		 6 44 0 44 43 0 44 42 0 7 45 0 44 45 0 19 46 0 45 46 1 42 46 0 8 47 0 45 47 0 20 48 0
		 47 48 0 46 48 0 21 49 0 48 49 0 15 50 0 47 50 0 49 50 1 22 51 0 49 51 0 5 52 0 50 52 0
		 51 52 0 23 53 0 51 53 0 4 54 0 54 52 0 53 54 1 24 55 0 53 55 0 3 56 0 56 54 0 55 56 0
		 55 41 0 43 56 0;
	setAttr -s 52 -ch 208 ".fc[0:51]" -type "polyFaces" 
		f 4 0 11 34 -11
		mu 0 4 0 1 2 3
		f 4 1 12 33 -12
		mu 0 4 1 4 5 2
		f 4 38 39 40 -42
		mu 0 4 6 7 8 9
		f 4 43 44 45 -40
		mu 0 4 7 10 11 8
		f 4 46 48 -51 -52
		mu 0 4 12 13 14 15
		f 4 52 54 -56 -49
		mu 0 4 13 16 17 14
		f 4 28 27 -7 -26
		mu 0 4 18 19 20 21
		f 4 30 29 -8 -28
		mu 0 4 19 22 23 20
		f 4 6 14 -9 -14
		mu 0 4 21 20 24 25
		f 4 7 15 -10 -15
		mu 0 4 20 23 26 24
		f 4 8 17 -1 -17
		mu 0 4 25 24 27 28
		f 4 9 18 -2 -18
		mu 0 4 24 26 29 27
		f 4 -16 -30 31 -22
		mu 0 4 30 31 32 33
		f 4 -19 21 32 -13
		mu 0 4 4 30 33 5
		f 4 -58 -55 58 -60
		mu 0 4 34 35 36 37
		f 4 -61 59 61 -45
		mu 0 4 10 34 37 11
		f 4 13 24 26 25
		mu 0 4 38 39 40 41
		f 4 16 10 35 -25
		mu 0 4 39 0 3 40
		f 4 63 64 65 51
		mu 0 4 42 43 44 45
		f 4 66 41 67 -65
		mu 0 4 43 6 9 44
		f 4 -71 72 -75 75
		mu 0 4 46 47 48 49
		f 4 77 79 -81 -76
		mu 0 4 50 51 52 53
		f 4 82 84 -86 -80
		mu 0 4 51 54 55 52
		f 4 -88 -85 89 -91
		mu 0 4 56 57 58 59
		f 4 -93 90 94 -96
		mu 0 4 60 56 59 61
		f 4 -98 95 -100 -101
		mu 0 4 62 60 61 63
		f 4 -103 100 -105 -106
		mu 0 4 64 62 63 65
		f 4 -107 105 -108 -73
		mu 0 4 47 64 65 48
		f 4 2 37 -39 -37
		mu 0 4 66 67 7 6
		f 4 3 42 -44 -38
		mu 0 4 67 68 10 7
		f 4 -5 49 50 -48
		mu 0 4 69 70 15 14
		f 4 -6 47 55 -54
		mu 0 4 71 69 14 17
		f 4 -20 53 57 -57
		mu 0 4 72 73 35 34
		f 4 -21 56 60 -43
		mu 0 4 68 72 34 10
		f 4 22 62 -64 -50
		mu 0 4 74 75 43 42
		f 4 23 36 -67 -63
		mu 0 4 75 66 6 43
		f 4 -27 68 70 -70
		mu 0 4 41 40 47 46
		f 4 -23 73 74 -72
		mu 0 4 75 74 49 48
		f 4 4 76 -78 -74
		mu 0 4 70 69 51 50
		f 4 -29 69 80 -79
		mu 0 4 19 18 53 52
		f 4 5 81 -83 -77
		mu 0 4 69 71 54 51
		f 4 -31 78 85 -84
		mu 0 4 22 19 52 55
		f 4 -32 83 87 -87
		mu 0 4 33 32 57 56
		f 4 19 88 -90 -82
		mu 0 4 73 72 59 58
		f 4 -33 86 92 -92
		mu 0 4 5 33 56 60
		f 4 20 93 -95 -89
		mu 0 4 72 68 61 59
		f 4 -34 91 97 -97
		mu 0 4 2 5 60 62
		f 4 -4 98 99 -94
		mu 0 4 68 67 63 61
		f 4 -35 96 102 -102
		mu 0 4 3 2 62 64
		f 4 -3 103 104 -99
		mu 0 4 67 66 65 63
		f 4 -36 101 106 -69
		mu 0 4 40 3 64 47
		f 4 -24 71 107 -104
		mu 0 4 66 75 48 65;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group10" -p "group5";
	setAttr ".t" -type "double3" -3.4500938407142883 -0.041453591167752712 -0.15532243846864349 ;
	setAttr ".r" -type "double3" 0 46.902056614678685 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 1.7000054428380353 0.9735608023304505 0.79747835458814331 ;
	setAttr ".sp" -type "double3" 1.7000054428380353 0.9735608023304505 -0.79747835458814331 ;
	setAttr ".spt" -type "double3" 0 0 1.5949567091762866 ;
createNode transform -n "group6";
	setAttr ".t" -type "double3" -6.9383663775902908 0 0 ;
createNode transform -n "pCylinder7" -p "group6";
	setAttr ".t" -type "double3" 3.4729129035245654 2.0275590502356908 5.017793403179799 ;
	setAttr ".s" -type "double3" 2.1108695349651363 2.1108695349651363 2.1108695349651363 ;
createNode mesh -n "pCylinderShape7" -p "pCylinder7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.80897554755210876 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape4" -p "pCylinder7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.80897554755210876 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1728 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.55524272 0.10100729 0.52762139
		 0.089566149 0.54143202 0.056224223 0.58286405 0.073385939 0.52762139 0.089566149
		 0.5 0.078125007 0.5 0.039062511 0.54143202 0.056224223 0.54143202 0.056224223 0.5
		 0.039062511 0.5 1.4901161e-008 0.55524272 0.022882298 0.58286405 0.073385939 0.54143202
		 0.056224223 0.55524272 0.022882298 0.61048543 0.04576458 0.5 0.078125007 0.47237864
		 0.089566149 0.45856798 0.056224223 0.5 0.039062511 0.47237864 0.089566149 0.44475728
		 0.10100729 0.41713592 0.073385939 0.45856798 0.056224223 0.45856798 0.056224223 0.41713592
		 0.073385939 0.38951457 0.04576458 0.44475728 0.022882298 0.5 0.039062511 0.45856798
		 0.056224223 0.44475728 0.022882298 0.5 1.4901161e-008 0.44475728 0.10100729 0.43331614
		 0.12862864 0.3999742 0.11481796 0.41713592 0.073385939 0.43331614 0.12862864 0.421875
		 0.15625 0.3828125 0.15625 0.3999742 0.11481796 0.3999742 0.11481796 0.3828125 0.15625
		 0.34375 0.15625 0.36663228 0.10100729 0.41713592 0.073385939 0.3999742 0.11481796
		 0.36663228 0.10100729 0.38951457 0.04576458 0.421875 0.15625 0.43331614 0.18387136
		 0.39997423 0.19768204 0.3828125 0.15625 0.43331614 0.18387136 0.44475728 0.21149272
		 0.41713592 0.23911408 0.39997423 0.19768204 0.39997423 0.19768204 0.41713592 0.23911408
		 0.38951457 0.26673543 0.36663228 0.21149272 0.3828125 0.15625 0.39997423 0.19768204
		 0.36663228 0.21149272 0.34375 0.15625 0.44475728 0.21149272 0.47237864 0.22293386
		 0.45856795 0.25627577 0.41713592 0.23911408 0.47237864 0.22293386 0.5 0.234375 0.5
		 0.2734375 0.45856795 0.25627577 0.45856795 0.25627577 0.5 0.2734375 0.5 0.3125 0.44475728
		 0.28961772 0.41713592 0.23911408 0.45856795 0.25627577 0.44475728 0.28961772 0.38951457
		 0.26673543 0.5 0.234375 0.52762139 0.22293386 0.54143202 0.25627577 0.5 0.2734375
		 0.52762139 0.22293386 0.55524272 0.21149272 0.58286405 0.23911408 0.54143202 0.25627577
		 0.54143202 0.25627577 0.58286405 0.23911408 0.61048543 0.26673543 0.55524272 0.28961772
		 0.5 0.2734375 0.54143202 0.25627577 0.55524272 0.28961772 0.5 0.3125 0.55524272 0.21149272
		 0.56668389 0.18387136 0.60002577 0.19768204 0.58286405 0.23911408 0.56668389 0.18387136
		 0.578125 0.15625 0.6171875 0.15625 0.60002577 0.19768204 0.60002577 0.19768204 0.6171875
		 0.15625 0.65625 0.15625 0.63336772 0.21149272 0.58286405 0.23911408 0.60002577 0.19768204
		 0.63336772 0.21149272 0.61048543 0.26673543 0.578125 0.15625 0.56668389 0.12862864
		 0.60002577 0.11481796 0.6171875 0.15625 0.56668389 0.12862864 0.55524272 0.10100729
		 0.58286405 0.073385939 0.60002577 0.11481796 0.60002577 0.11481796 0.58286405 0.073385939
		 0.61048543 0.04576458 0.63336772 0.10100729 0.6171875 0.15625 0.60002577 0.11481796
		 0.63336772 0.10100729 0.65625 0.15625 0.375 0.3125 0.390625 0.3125 0.390625 0.32424814
		 0.375 0.32424814 0.390625 0.3125 0.40625 0.3125 0.40625 0.32424814 0.390625 0.32424814
		 0.390625 0.32424814 0.40625 0.32424814 0.40625 0.33599624 0.390625 0.33599624 0.375
		 0.32424814 0.390625 0.32424814 0.390625 0.33599624 0.375 0.33599624 0.40625 0.3125
		 0.421875 0.3125 0.421875 0.32424814 0.40625 0.32424814 0.421875 0.3125 0.4375 0.3125
		 0.4375 0.32424814 0.421875 0.32424814 0.421875 0.32424814 0.4375 0.32424814 0.4375
		 0.33599624 0.421875 0.33599624 0.40625 0.32424814 0.421875 0.32424814 0.421875 0.33599624
		 0.40625 0.33599624 0.4375 0.3125 0.453125 0.3125 0.453125 0.32424814 0.4375 0.32424814
		 0.453125 0.3125 0.46875 0.3125 0.46875 0.32424814 0.453125 0.32424814 0.453125 0.32424814
		 0.46875 0.32424814 0.46875 0.33599624 0.453125 0.33599624 0.4375 0.32424814 0.453125
		 0.32424814 0.453125 0.33599624 0.4375 0.33599624 0.46875 0.3125 0.484375 0.3125 0.484375
		 0.32424814 0.46875 0.32424814 0.484375 0.3125 0.5 0.3125 0.5 0.32424814 0.484375
		 0.32424814 0.484375 0.32424814 0.5 0.32424814 0.5 0.33599624 0.484375 0.33599624
		 0.46875 0.32424814 0.484375 0.32424814 0.484375 0.33599624 0.46875 0.33599624 0.5
		 0.3125 0.515625 0.3125 0.515625 0.32424814 0.5 0.32424814 0.515625 0.3125 0.53125
		 0.3125 0.53125 0.32424814 0.515625 0.32424814 0.515625 0.32424814 0.53125 0.32424814
		 0.53125 0.33599624 0.515625 0.33599624 0.5 0.32424814 0.515625 0.32424814 0.515625
		 0.33599624 0.5 0.33599624 0.53125 0.3125 0.546875 0.3125 0.546875 0.32424814 0.53125
		 0.32424814 0.546875 0.3125 0.5625 0.3125 0.5625 0.32424814 0.546875 0.32424814 0.546875
		 0.32424814 0.5625 0.32424814 0.5625 0.33599624 0.546875 0.33599624 0.53125 0.32424814
		 0.546875 0.32424814 0.546875 0.33599624 0.53125 0.33599624 0.5625 0.3125 0.578125
		 0.3125 0.578125 0.32424814 0.5625 0.32424814 0.578125 0.3125 0.59375 0.3125 0.59375
		 0.32424814 0.578125 0.32424814 0.578125 0.32424814 0.59375 0.32424814 0.59375 0.33599624
		 0.578125 0.33599624 0.5625 0.32424814 0.578125 0.32424814 0.578125 0.33599624 0.5625
		 0.33599624 0.59375 0.3125 0.609375 0.3125 0.609375 0.32424814 0.59375 0.32424814
		 0.609375 0.3125 0.625 0.3125 0.625 0.32424814 0.609375 0.32424814 0.609375 0.32424814
		 0.625 0.32424814;
	setAttr ".uvst[0].uvsp[250:499]" 0.625 0.33599624 0.609375 0.33599624 0.59375
		 0.32424814 0.609375 0.32424814 0.609375 0.33599624 0.59375 0.33599624 0.375 0.50046992
		 0.390625 0.50046992 0.390625 0.5474624 0.375 0.5474624 0.390625 0.50046992 0.40625
		 0.50046992 0.40625 0.5474624 0.390625 0.5474624 0.390625 0.5474624 0.40625 0.5474624
		 0.40625 0.59445488 0.390625 0.59445488 0.375 0.5474624 0.390625 0.5474624 0.390625
		 0.59445488 0.375 0.59445488 0.40625 0.50046992 0.421875 0.50046992 0.421875 0.5474624
		 0.40625 0.5474624 0.421875 0.50046992 0.4375 0.50046992 0.4375 0.5474624 0.421875
		 0.5474624 0.421875 0.5474624 0.4375 0.5474624 0.4375 0.59445488 0.421875 0.59445488
		 0.40625 0.5474624 0.421875 0.5474624 0.421875 0.59445488 0.40625 0.59445488 0.4375
		 0.50046992 0.453125 0.50046992 0.453125 0.5474624 0.4375 0.5474624 0.453125 0.50046992
		 0.46875 0.50046992 0.46875 0.5474624 0.453125 0.5474624 0.453125 0.5474624 0.46875
		 0.5474624 0.46875 0.59445488 0.453125 0.59445488 0.4375 0.5474624 0.453125 0.5474624
		 0.453125 0.59445488 0.4375 0.59445488 0.46875 0.50046992 0.484375 0.50046992 0.484375
		 0.5474624 0.46875 0.5474624 0.484375 0.50046992 0.5 0.50046992 0.5 0.5474624 0.484375
		 0.5474624 0.484375 0.5474624 0.5 0.5474624 0.5 0.59445488 0.484375 0.59445488 0.46875
		 0.5474624 0.484375 0.5474624 0.484375 0.59445488 0.46875 0.59445488 0.5 0.50046992
		 0.515625 0.50046992 0.515625 0.5474624 0.5 0.5474624 0.515625 0.50046992 0.53125
		 0.50046992 0.53125 0.5474624 0.515625 0.5474624 0.515625 0.5474624 0.53125 0.5474624
		 0.53125 0.59445488 0.515625 0.59445488 0.5 0.5474624 0.515625 0.5474624 0.515625
		 0.59445488 0.5 0.59445488 0.53125 0.50046992 0.546875 0.50046992 0.546875 0.5474624
		 0.53125 0.5474624 0.546875 0.50046992 0.5625 0.50046992 0.5625 0.5474624 0.546875
		 0.5474624 0.546875 0.5474624 0.5625 0.5474624 0.5625 0.59445488 0.546875 0.59445488
		 0.53125 0.5474624 0.546875 0.5474624 0.546875 0.59445488 0.53125 0.59445488 0.5625
		 0.50046992 0.578125 0.50046992 0.578125 0.5474624 0.5625 0.5474624 0.578125 0.50046992
		 0.59375 0.50046992 0.59375 0.5474624 0.578125 0.5474624 0.578125 0.5474624 0.59375
		 0.5474624 0.59375 0.59445488 0.578125 0.59445488 0.5625 0.5474624 0.578125 0.5474624
		 0.578125 0.59445488 0.5625 0.59445488 0.59375 0.50046992 0.609375 0.50046992 0.609375
		 0.5474624 0.59375 0.5474624 0.609375 0.50046992 0.625 0.50046992 0.625 0.5474624
		 0.609375 0.5474624 0.609375 0.5474624 0.625 0.5474624 0.625 0.59445488 0.609375 0.59445488
		 0.59375 0.5474624 0.609375 0.5474624 0.609375 0.59445488 0.59375 0.59445488 0.61048543
		 0.95423543 0.55524272 0.97711772 0.55179006 0.96878225 0.60358012 0.94733012 0.55524272
		 0.97711772 0.5 1 0.5 0.99023438 0.55179006 0.96878225 0.55179006 0.96878225 0.5 0.99023438
		 0.5 0.98046875 0.54833734 0.96044672 0.60358012 0.94733012 0.55179006 0.96878225
		 0.54833734 0.96044672 0.59667474 0.94042474 0.5 1 0.44475728 0.97711772 0.44820994
		 0.96878225 0.5 0.99023438 0.44475728 0.97711772 0.38951457 0.95423543 0.39641991
		 0.94733012 0.44820994 0.96878225 0.44820994 0.96878225 0.39641991 0.94733012 0.40332526
		 0.94042474 0.45166263 0.96044672 0.5 0.99023438 0.44820994 0.96878225 0.45166263
		 0.96044672 0.5 0.98046875 0.38951457 0.95423543 0.36663228 0.89899272 0.37496775
		 0.89554006 0.39641991 0.94733012 0.36663228 0.89899272 0.34375 0.84375 0.35351563
		 0.84375 0.37496775 0.89554006 0.37496775 0.89554006 0.35351563 0.84375 0.36328125
		 0.84375 0.38330325 0.89208734 0.39641991 0.94733012 0.37496775 0.89554006 0.38330325
		 0.89208734 0.40332526 0.94042474 0.34375 0.84375 0.36663228 0.78850728 0.37496775
		 0.79195994 0.35351563 0.84375 0.36663228 0.78850728 0.38951457 0.73326457 0.39641991
		 0.74016988 0.37496775 0.79195994 0.37496775 0.79195994 0.39641991 0.74016988 0.40332526
		 0.74707526 0.38330325 0.79541266 0.35351563 0.84375 0.37496775 0.79195994 0.38330325
		 0.79541266 0.36328125 0.84375 0.38951457 0.73326457 0.44475728 0.71038228 0.44820994
		 0.71871775 0.39641991 0.74016988 0.44475728 0.71038228 0.5 0.6875 0.5 0.69726563
		 0.44820994 0.71871775 0.44820994 0.71871775 0.5 0.69726563 0.5 0.70703125 0.45166263
		 0.72705328 0.39641991 0.74016988 0.44820994 0.71871775 0.45166263 0.72705328 0.40332526
		 0.74707526 0.5 0.6875 0.55524272 0.71038228 0.55179006 0.71871775 0.5 0.69726563
		 0.55524272 0.71038228 0.61048543 0.73326457 0.60358012 0.74016988 0.55179006 0.71871775
		 0.55179006 0.71871775 0.60358012 0.74016988 0.59667474 0.74707526 0.54833734 0.72705328
		 0.5 0.69726563 0.55179006 0.71871775 0.54833734 0.72705328 0.5 0.70703125 0.61048543
		 0.73326457 0.63336772 0.78850728 0.62503225 0.79195994 0.60358012 0.74016988 0.63336772
		 0.78850728 0.65625 0.84375 0.64648438 0.84375 0.62503225 0.79195994 0.62503225 0.79195994
		 0.64648438 0.84375 0.63671875 0.84375 0.61669672 0.79541266 0.60358012 0.74016988
		 0.62503225 0.79195994 0.61669672 0.79541266 0.59667474 0.74707526 0.65625 0.84375
		 0.63336772 0.89899272 0.62503225 0.89554006 0.64648438 0.84375;
	setAttr ".uvst[0].uvsp[500:749]" 0.63336772 0.89899272 0.61048543 0.95423543
		 0.60358012 0.94733012 0.62503225 0.89554006 0.62503225 0.89554006 0.60358012 0.94733012
		 0.59667474 0.94042474 0.61669672 0.89208734 0.64648438 0.84375 0.62503225 0.89554006
		 0.61669672 0.89208734 0.63671875 0.84375 0.5 0.078125007 0.52762139 0.089566149 0.51841426
		 0.10971078 0.5 0.1140625 0.55524272 0.10100729 0.52762139 0.12550364 0.51841426 0.10971078
		 0.52762139 0.089566149 0.5 0.15000001 0.5 0.1140625 0.51841426 0.10971078 0.52762139
		 0.12550364 0.44475728 0.10100729 0.47237864 0.089566149 0.4815858 0.10971078 0.47237864
		 0.12550364 0.5 0.078125007 0.5 0.1140625 0.4815858 0.10971078 0.47237864 0.089566149
		 0.5 0.15000001 0.47237864 0.12550364 0.4815858 0.10971078 0.5 0.1140625 0.421875
		 0.15625 0.43331614 0.12862864 0.45554411 0.13575244 0.4609375 0.153125 0.44475728
		 0.10100729 0.47237864 0.12550364 0.45554411 0.13575244 0.43331614 0.12862864 0.5
		 0.15000001 0.4609375 0.153125 0.45554411 0.13575244 0.47237864 0.12550364 0.44475728
		 0.21149272 0.43331614 0.18387136 0.45554411 0.17258091 0.47237864 0.18074636 0.421875
		 0.15625 0.4609375 0.153125 0.45554411 0.17258091 0.43331614 0.18387136 0.5 0.15000001
		 0.47237864 0.18074636 0.45554411 0.17258091 0.4609375 0.153125 0.5 0.234375 0.47237864
		 0.22293386 0.4815858 0.19862258 0.5 0.1921875 0.44475728 0.21149272 0.47237864 0.18074636
		 0.4815858 0.19862258 0.47237864 0.22293386 0.5 0.15000001 0.5 0.1921875 0.4815858
		 0.19862258 0.47237864 0.18074636 0.55524272 0.21149272 0.52762139 0.22293386 0.51841426
		 0.19862258 0.52762139 0.18074636 0.5 0.234375 0.5 0.1921875 0.51841426 0.19862258
		 0.52762139 0.22293386 0.5 0.15000001 0.52762139 0.18074636 0.51841426 0.19862258
		 0.5 0.1921875 0.578125 0.15625 0.56668389 0.18387136 0.54445595 0.17258091 0.5390625
		 0.153125 0.55524272 0.21149272 0.52762139 0.18074636 0.54445595 0.17258091 0.56668389
		 0.18387136 0.5 0.15000001 0.5390625 0.153125 0.54445595 0.17258091 0.52762139 0.18074636
		 0.55524272 0.10100729 0.56668389 0.12862864 0.54445595 0.13575244 0.52762139 0.12550364
		 0.578125 0.15625 0.5390625 0.153125 0.54445595 0.13575244 0.56668389 0.12862864 0.5
		 0.15000001 0.52762139 0.12550364 0.54445595 0.13575244 0.5390625 0.153125 0.55524272
		 0.89899272 0.52762139 0.91043389 0.51841426 0.88612258 0.52762139 0.86824632 0.5
		 0.921875 0.5 0.87968749 0.51841426 0.88612258 0.52762139 0.91043389 0.5 0.83749998
		 0.52762139 0.86824632 0.51841426 0.88612258 0.5 0.87968749 0.5 0.921875 0.47237864
		 0.91043389 0.4815858 0.88612258 0.5 0.87968749 0.44475728 0.89899272 0.47237864 0.86824632
		 0.4815858 0.88612258 0.47237864 0.91043389 0.5 0.83749998 0.5 0.87968749 0.4815858
		 0.88612258 0.47237864 0.86824632 0.44475728 0.89899272 0.43331614 0.87137139 0.45554411
		 0.86008096 0.47237864 0.86824632 0.421875 0.84375 0.4609375 0.84062499 0.45554411
		 0.86008096 0.43331614 0.87137139 0.5 0.83749998 0.47237864 0.86824632 0.45554411
		 0.86008096 0.4609375 0.84062499 0.421875 0.84375 0.43331614 0.81612861 0.45554411
		 0.82325244 0.4609375 0.84062499 0.44475728 0.78850728 0.47237864 0.81300366 0.45554411
		 0.82325244 0.43331614 0.81612861 0.5 0.83749998 0.4609375 0.84062499 0.45554411 0.82325244
		 0.47237864 0.81300366 0.44475728 0.78850728 0.47237864 0.77706611 0.4815858 0.79721081
		 0.47237864 0.81300366 0.5 0.765625 0.5 0.80156249 0.4815858 0.79721081 0.47237864
		 0.77706611 0.5 0.83749998 0.47237864 0.81300366 0.4815858 0.79721081 0.5 0.80156249
		 0.5 0.765625 0.52762139 0.77706611 0.51841426 0.79721081 0.5 0.80156249 0.55524272
		 0.78850728 0.52762139 0.81300366 0.51841426 0.79721081 0.52762139 0.77706611 0.5
		 0.83749998 0.5 0.80156249 0.51841426 0.79721081 0.52762139 0.81300366 0.55524272
		 0.78850728 0.56668389 0.81612861 0.54445595 0.82325244 0.52762139 0.81300366 0.578125
		 0.84375 0.5390625 0.84062499 0.54445595 0.82325244 0.56668389 0.81612861 0.5 0.83749998
		 0.52762139 0.81300366 0.54445595 0.82325244 0.5390625 0.84062499 0.578125 0.84375
		 0.56668389 0.87137139 0.54445595 0.86008096 0.5390625 0.84062499 0.55524272 0.89899272
		 0.52762139 0.86824632 0.54445595 0.86008096 0.56668389 0.87137139 0.5 0.83749998
		 0.5390625 0.84062499 0.54445595 0.86008096 0.52762139 0.86824632 0.40625 0.59445488
		 0.421875 0.59445488 0.421875 0.6179511 0.40625 0.61795115 0.421875 0.59445488 0.4375
		 0.59445488 0.4375 0.61795115 0.421875 0.6179511 0.421875 0.6179511 0.4375 0.61795115
		 0.4375 0.64144737 0.421875 0.64144737 0.40625 0.61795115 0.421875 0.6179511 0.421875
		 0.64144737 0.40625 0.64144737 0.375 0.59445488 0.390625 0.59445488 0.390625 0.6179511
		 0.375 0.61795115 0.390625 0.59445488 0.40625 0.59445488 0.40625 0.61795115 0.390625
		 0.6179511 0.390625 0.6179511 0.40625 0.61795115 0.40625 0.64144737 0.390625 0.64144737
		 0.375 0.61795115 0.390625 0.6179511 0.390625 0.64144737 0.375 0.64144737 0.59375
		 0.59445488 0.609375 0.59445488 0.609375 0.6179511 0.59375 0.61795115 0.609375 0.59445488
		 0.625 0.59445488 0.625 0.61795115 0.609375 0.6179511 0.609375 0.6179511 0.625 0.61795115
		 0.625 0.64144737 0.609375 0.64144737 0.59375 0.61795115 0.609375 0.6179511;
	setAttr ".uvst[0].uvsp[750:999]" 0.609375 0.64144737 0.59375 0.64144737 0.5625
		 0.59445488 0.578125 0.59445488 0.578125 0.6179511 0.5625 0.61795115 0.578125 0.59445488
		 0.59375 0.59445488 0.59375 0.61795115 0.578125 0.6179511 0.578125 0.6179511 0.59375
		 0.61795115 0.59375 0.64144737 0.578125 0.64144737 0.5625 0.61795115 0.578125 0.6179511
		 0.578125 0.64144737 0.5625 0.64144737 0.53125 0.59445488 0.546875 0.59445488 0.546875
		 0.6179511 0.53125 0.61795115 0.546875 0.59445488 0.5625 0.59445488 0.5625 0.61795115
		 0.546875 0.6179511 0.546875 0.6179511 0.5625 0.61795115 0.5625 0.64144737 0.546875
		 0.64144737 0.53125 0.61795115 0.546875 0.6179511 0.546875 0.64144737 0.53125 0.64144737
		 0.5 0.59445488 0.515625 0.59445488 0.515625 0.6179511 0.5 0.61795115 0.515625 0.59445488
		 0.53125 0.59445488 0.53125 0.61795115 0.515625 0.6179511 0.515625 0.6179511 0.53125
		 0.61795115 0.53125 0.64144737 0.515625 0.64144737 0.5 0.61795115 0.515625 0.6179511
		 0.515625 0.64144737 0.5 0.64144737 0.46875 0.59445488 0.484375 0.59445488 0.484375
		 0.6179511 0.46875 0.61795115 0.484375 0.59445488 0.5 0.59445488 0.5 0.61795115 0.484375
		 0.6179511 0.484375 0.6179511 0.5 0.61795115 0.5 0.64144737 0.484375 0.64144737 0.46875
		 0.61795115 0.484375 0.6179511 0.484375 0.64144737 0.46875 0.64144737 0.4375 0.59445488
		 0.453125 0.59445488 0.453125 0.6179511 0.4375 0.61795115 0.453125 0.59445488 0.46875
		 0.59445488 0.46875 0.61795115 0.453125 0.6179511 0.453125 0.6179511 0.46875 0.61795115
		 0.46875 0.64144737 0.453125 0.64144737 0.4375 0.61795115 0.453125 0.6179511 0.453125
		 0.64144737 0.4375 0.64144737 0.40625 0.64144737 0.421875 0.64144737 0.421875 0.6531955
		 0.40625 0.6531955 0.421875 0.64144737 0.4375 0.64144737 0.4375 0.6531955 0.421875
		 0.6531955 0.421875 0.6531955 0.4375 0.6531955 0.4375 0.66494358 0.421875 0.66494358
		 0.40625 0.6531955 0.421875 0.6531955 0.421875 0.66494358 0.40625 0.66494358 0.375
		 0.64144737 0.390625 0.64144737 0.390625 0.6531955 0.375 0.6531955 0.390625 0.64144737
		 0.40625 0.64144737 0.40625 0.6531955 0.390625 0.6531955 0.390625 0.6531955 0.40625
		 0.6531955 0.40625 0.66494358 0.390625 0.66494358 0.375 0.6531955 0.390625 0.6531955
		 0.390625 0.66494358 0.375 0.66494358 0.59375 0.64144737 0.609375 0.64144737 0.609375
		 0.6531955 0.59375 0.6531955 0.609375 0.64144737 0.625 0.64144737 0.625 0.6531955
		 0.609375 0.6531955 0.609375 0.6531955 0.625 0.6531955 0.625 0.66494358 0.609375 0.66494358
		 0.59375 0.6531955 0.609375 0.6531955 0.609375 0.66494358 0.59375 0.66494358 0.5625
		 0.64144737 0.578125 0.64144737 0.578125 0.6531955 0.5625 0.6531955 0.578125 0.64144737
		 0.59375 0.64144737 0.59375 0.6531955 0.578125 0.6531955 0.578125 0.6531955 0.59375
		 0.6531955 0.59375 0.66494358 0.578125 0.66494358 0.5625 0.6531955 0.578125 0.6531955
		 0.578125 0.66494358 0.5625 0.66494358 0.53125 0.64144737 0.546875 0.64144737 0.546875
		 0.6531955 0.53125 0.6531955 0.546875 0.64144737 0.5625 0.64144737 0.5625 0.6531955
		 0.546875 0.6531955 0.546875 0.6531955 0.5625 0.6531955 0.5625 0.66494358 0.546875
		 0.66494358 0.53125 0.6531955 0.546875 0.6531955 0.546875 0.66494358 0.53125 0.66494358
		 0.5 0.64144737 0.515625 0.64144737 0.515625 0.6531955 0.5 0.6531955 0.515625 0.64144737
		 0.53125 0.64144737 0.53125 0.6531955 0.515625 0.6531955 0.515625 0.6531955 0.53125
		 0.6531955 0.53125 0.66494358 0.515625 0.66494358 0.5 0.6531955 0.515625 0.6531955
		 0.515625 0.66494358 0.5 0.66494358 0.46875 0.64144737 0.484375 0.64144737 0.484375
		 0.6531955 0.46875 0.6531955 0.484375 0.64144737 0.5 0.64144737 0.5 0.6531955 0.484375
		 0.6531955 0.484375 0.6531955 0.5 0.6531955 0.5 0.66494358 0.484375 0.66494358 0.46875
		 0.6531955 0.484375 0.6531955 0.484375 0.66494358 0.46875 0.66494358 0.4375 0.64144737
		 0.453125 0.64144737 0.453125 0.6531955 0.4375 0.6531955 0.453125 0.64144737 0.46875
		 0.64144737 0.46875 0.6531955 0.453125 0.6531955 0.453125 0.6531955 0.46875 0.6531955
		 0.46875 0.66494358 0.453125 0.66494358 0.4375 0.6531955 0.453125 0.6531955 0.453125
		 0.66494358 0.4375 0.66494358 0.40625 0.40648496 0.421875 0.40648496 0.421875 0.45347744
		 0.40625 0.45347744 0.421875 0.40648496 0.4375 0.40648496 0.4375 0.45347744 0.421875
		 0.45347744 0.421875 0.45347744 0.4375 0.45347744 0.4375 0.50046992 0.421875 0.50046992
		 0.40625 0.45347744 0.421875 0.45347744 0.421875 0.50046992 0.40625 0.50046992 0.375
		 0.40648496 0.390625 0.40648496 0.390625 0.45347744 0.375 0.45347744 0.390625 0.40648496
		 0.40625 0.40648496 0.40625 0.45347744 0.390625 0.45347744 0.390625 0.45347744 0.40625
		 0.45347744 0.40625 0.50046992 0.390625 0.50046992 0.375 0.45347744 0.390625 0.45347744
		 0.390625 0.50046992 0.375 0.50046992 0.59375 0.40648496 0.609375 0.40648496 0.609375
		 0.45347744 0.59375 0.45347744 0.609375 0.40648496 0.625 0.40648496 0.625 0.45347744
		 0.609375 0.45347744;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.609375 0.45347744 0.625 0.45347744 0.625
		 0.50046992 0.609375 0.50046992 0.59375 0.45347744 0.609375 0.45347744 0.609375 0.50046992
		 0.59375 0.50046992 0.5625 0.40648496 0.578125 0.40648496 0.578125 0.45347744 0.5625
		 0.45347744 0.578125 0.40648496 0.59375 0.40648496 0.59375 0.45347744 0.578125 0.45347744
		 0.578125 0.45347744 0.59375 0.45347744 0.59375 0.50046992 0.578125 0.50046992 0.5625
		 0.45347744 0.578125 0.45347744 0.578125 0.50046992 0.5625 0.50046992 0.53125 0.40648496
		 0.546875 0.40648496 0.546875 0.45347744 0.53125 0.45347744 0.546875 0.40648496 0.5625
		 0.40648496 0.5625 0.45347744 0.546875 0.45347744 0.546875 0.45347744 0.5625 0.45347744
		 0.5625 0.50046992 0.546875 0.50046992 0.53125 0.45347744 0.546875 0.45347744 0.546875
		 0.50046992 0.53125 0.50046992 0.5 0.40648496 0.515625 0.40648496 0.515625 0.45347744
		 0.5 0.45347744 0.515625 0.40648496 0.53125 0.40648496 0.53125 0.45347744 0.515625
		 0.45347744 0.515625 0.45347744 0.53125 0.45347744 0.53125 0.50046992 0.515625 0.50046992
		 0.5 0.45347744 0.515625 0.45347744 0.515625 0.50046992 0.5 0.50046992 0.46875 0.40648496
		 0.484375 0.40648496 0.484375 0.45347744 0.46875 0.45347744 0.484375 0.40648496 0.5
		 0.40648496 0.5 0.45347744 0.484375 0.45347744 0.484375 0.45347744 0.5 0.45347744
		 0.5 0.50046992 0.484375 0.50046992 0.46875 0.45347744 0.484375 0.45347744 0.484375
		 0.50046992 0.46875 0.50046992 0.4375 0.40648496 0.453125 0.40648496 0.453125 0.45347744
		 0.4375 0.45347744 0.453125 0.40648496 0.46875 0.40648496 0.46875 0.45347744 0.453125
		 0.45347744 0.453125 0.45347744 0.46875 0.45347744 0.46875 0.50046992 0.453125 0.50046992
		 0.4375 0.45347744 0.453125 0.45347744 0.453125 0.50046992 0.4375 0.50046992 0.40625
		 0.35949248 0.421875 0.35949248 0.421875 0.38298872 0.40625 0.38298872 0.421875 0.35949248
		 0.4375 0.35949248 0.4375 0.38298872 0.421875 0.38298872 0.421875 0.38298872 0.4375
		 0.38298872 0.4375 0.40648496 0.421875 0.40648496 0.40625 0.38298872 0.421875 0.38298872
		 0.421875 0.40648496 0.40625 0.40648496 0.375 0.35949248 0.390625 0.35949248 0.390625
		 0.38298872 0.375 0.38298872 0.390625 0.35949248 0.40625 0.35949248 0.40625 0.38298872
		 0.390625 0.38298872 0.390625 0.38298872 0.40625 0.38298872 0.40625 0.40648496 0.390625
		 0.40648496 0.375 0.38298872 0.390625 0.38298872 0.390625 0.40648496 0.375 0.40648496
		 0.59375 0.35949248 0.609375 0.35949248 0.609375 0.38298872 0.59375 0.38298872 0.609375
		 0.35949248 0.625 0.35949248 0.625 0.38298872 0.609375 0.38298872 0.609375 0.38298872
		 0.625 0.38298872 0.625 0.40648496 0.609375 0.40648496 0.59375 0.38298872 0.609375
		 0.38298872 0.609375 0.40648496 0.59375 0.40648496 0.5625 0.35949248 0.578125 0.35949248
		 0.578125 0.38298872 0.5625 0.38298872 0.578125 0.35949248 0.59375 0.35949248 0.59375
		 0.38298872 0.578125 0.38298872 0.578125 0.38298872 0.59375 0.38298872 0.59375 0.40648496
		 0.578125 0.40648496 0.5625 0.38298872 0.578125 0.38298872 0.578125 0.40648496 0.5625
		 0.40648496 0.53125 0.35949248 0.546875 0.35949248 0.546875 0.38298872 0.53125 0.38298872
		 0.546875 0.35949248 0.5625 0.35949248 0.5625 0.38298872 0.546875 0.38298872 0.546875
		 0.38298872 0.5625 0.38298872 0.5625 0.40648496 0.546875 0.40648496 0.53125 0.38298872
		 0.546875 0.38298872 0.546875 0.40648496 0.53125 0.40648496 0.5 0.35949248 0.515625
		 0.35949248 0.515625 0.38298872 0.5 0.38298872 0.515625 0.35949248 0.53125 0.35949248
		 0.53125 0.38298872 0.515625 0.38298872 0.515625 0.38298872 0.53125 0.38298872 0.53125
		 0.40648496 0.515625 0.40648496 0.5 0.38298872 0.515625 0.38298872 0.515625 0.40648496
		 0.5 0.40648496 0.46875 0.35949248 0.484375 0.35949248 0.484375 0.38298872 0.46875
		 0.38298872 0.484375 0.35949248 0.5 0.35949248 0.5 0.38298872 0.484375 0.38298872
		 0.484375 0.38298872 0.5 0.38298872 0.5 0.40648496 0.484375 0.40648496 0.46875 0.38298872
		 0.484375 0.38298872 0.484375 0.40648496 0.46875 0.40648496 0.4375 0.35949248 0.453125
		 0.35949248 0.453125 0.38298872 0.4375 0.38298872 0.453125 0.35949248 0.46875 0.35949248
		 0.46875 0.38298872 0.453125 0.38298872 0.453125 0.38298872 0.46875 0.38298872 0.46875
		 0.40648496 0.453125 0.40648496 0.4375 0.38298872 0.453125 0.38298872 0.453125 0.40648496
		 0.4375 0.40648496 0.40625 0.33599624 0.421875 0.33599624 0.421875 0.34774435 0.40625
		 0.34774435 0.421875 0.33599624 0.4375 0.33599624 0.4375 0.34774435 0.421875 0.34774435
		 0.421875 0.34774435 0.4375 0.34774435 0.4375 0.35949248 0.421875 0.35949248 0.40625
		 0.34774435 0.421875 0.34774435 0.421875 0.35949248 0.40625 0.35949248 0.375 0.33599624
		 0.390625 0.33599624 0.390625 0.34774435 0.375 0.34774435 0.390625 0.33599624 0.40625
		 0.33599624 0.40625 0.34774435 0.390625 0.34774435 0.390625 0.34774435 0.40625 0.34774435
		 0.40625 0.35949248 0.390625 0.35949248 0.375 0.34774435 0.390625 0.34774435 0.390625
		 0.35949248 0.375 0.35949248 0.59375 0.33599624 0.609375 0.33599624;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.609375 0.34774435 0.59375 0.34774435 0.609375
		 0.33599624 0.625 0.33599624 0.625 0.34774435 0.609375 0.34774435 0.609375 0.34774435
		 0.625 0.34774435 0.625 0.35949248 0.609375 0.35949248 0.59375 0.34774435 0.609375
		 0.34774435 0.609375 0.35949248 0.59375 0.35949248 0.5625 0.33599624 0.578125 0.33599624
		 0.578125 0.34774435 0.5625 0.34774435 0.578125 0.33599624 0.59375 0.33599624 0.59375
		 0.34774435 0.578125 0.34774435 0.578125 0.34774435 0.59375 0.34774435 0.59375 0.35949248
		 0.578125 0.35949248 0.5625 0.34774435 0.578125 0.34774435 0.578125 0.35949248 0.5625
		 0.35949248 0.53125 0.33599624 0.546875 0.33599624 0.546875 0.34774435 0.53125 0.34774435
		 0.546875 0.33599624 0.5625 0.33599624 0.5625 0.34774435 0.546875 0.34774435 0.546875
		 0.34774435 0.5625 0.34774435 0.5625 0.35949248 0.546875 0.35949248 0.53125 0.34774435
		 0.546875 0.34774435 0.546875 0.35949248 0.53125 0.35949248 0.5 0.33599624 0.515625
		 0.33599624 0.515625 0.34774435 0.5 0.34774435 0.515625 0.33599624 0.53125 0.33599624
		 0.53125 0.34774435 0.515625 0.34774435 0.515625 0.34774435 0.53125 0.34774435 0.53125
		 0.35949248 0.515625 0.35949248 0.5 0.34774435 0.515625 0.34774435 0.515625 0.35949248
		 0.5 0.35949248 0.46875 0.33599624 0.484375 0.33599624 0.484375 0.34774435 0.46875
		 0.34774435 0.484375 0.33599624 0.5 0.33599624 0.5 0.34774435 0.484375 0.34774435
		 0.484375 0.34774435 0.5 0.34774435 0.5 0.35949248 0.484375 0.35949248 0.46875 0.34774435
		 0.484375 0.34774435 0.484375 0.35949248 0.46875 0.35949248 0.4375 0.33599624 0.453125
		 0.33599624 0.453125 0.34774435 0.4375 0.34774435 0.453125 0.33599624 0.46875 0.33599624
		 0.46875 0.34774435 0.453125 0.34774435 0.453125 0.34774435 0.46875 0.34774435 0.46875
		 0.35949248 0.453125 0.35949248 0.4375 0.34774435 0.453125 0.34774435 0.453125 0.35949248
		 0.4375 0.35949248 0.40625 0.66494358 0.421875 0.66494358 0.421875 0.67669171 0.40625
		 0.67669171 0.421875 0.66494358 0.4375 0.66494358 0.4375 0.67669171 0.421875 0.67669171
		 0.421875 0.67669171 0.4375 0.67669171 0.4375 0.68843985 0.421875 0.68843985 0.40625
		 0.67669171 0.421875 0.67669171 0.421875 0.68843985 0.40625 0.68843985 0.375 0.66494358
		 0.390625 0.66494358 0.390625 0.67669171 0.375 0.67669171 0.390625 0.66494358 0.40625
		 0.66494358 0.40625 0.67669171 0.390625 0.67669171 0.390625 0.67669171 0.40625 0.67669171
		 0.40625 0.68843985 0.390625 0.68843985 0.375 0.67669171 0.390625 0.67669171 0.390625
		 0.68843985 0.375 0.68843985 0.59375 0.66494358 0.609375 0.66494358 0.609375 0.67669171
		 0.59375 0.67669171 0.609375 0.66494358 0.625 0.66494358 0.625 0.67669171 0.609375
		 0.67669171 0.609375 0.67669171 0.625 0.67669171 0.625 0.68843985 0.609375 0.68843985
		 0.59375 0.67669171 0.609375 0.67669171 0.609375 0.68843985 0.59375 0.68843985 0.5625
		 0.66494358 0.578125 0.66494358 0.578125 0.67669171 0.5625 0.67669171 0.578125 0.66494358
		 0.59375 0.66494358 0.59375 0.67669171 0.578125 0.67669171 0.578125 0.67669171 0.59375
		 0.67669171 0.59375 0.68843985 0.578125 0.68843985 0.5625 0.67669171 0.578125 0.67669171
		 0.578125 0.68843985 0.5625 0.68843985 0.53125 0.66494358 0.546875 0.66494358 0.546875
		 0.67669171 0.53125 0.67669171 0.546875 0.66494358 0.5625 0.66494358 0.5625 0.67669171
		 0.546875 0.67669171 0.546875 0.67669171 0.5625 0.67669171 0.5625 0.68843985 0.546875
		 0.68843985 0.53125 0.67669171 0.546875 0.67669171 0.546875 0.68843985 0.53125 0.68843985
		 0.5 0.66494358 0.515625 0.66494358 0.515625 0.67669171 0.5 0.67669171 0.515625 0.66494358
		 0.53125 0.66494358 0.53125 0.67669171 0.515625 0.67669171 0.515625 0.67669171 0.53125
		 0.67669171 0.53125 0.68843985 0.515625 0.68843985 0.5 0.67669171 0.515625 0.67669171
		 0.515625 0.68843985 0.5 0.68843985 0.46875 0.66494358 0.484375 0.66494358 0.484375
		 0.67669171 0.46875 0.67669171 0.484375 0.66494358 0.5 0.66494358 0.5 0.67669171 0.484375
		 0.67669171 0.484375 0.67669171 0.5 0.67669171 0.5 0.68843985 0.484375 0.68843985
		 0.46875 0.67669171 0.484375 0.67669171 0.484375 0.68843985 0.46875 0.68843985 0.4375
		 0.66494358 0.453125 0.66494358 0.453125 0.67669171 0.4375 0.67669171 0.453125 0.66494358
		 0.46875 0.66494358 0.46875 0.67669171 0.453125 0.67669171 0.453125 0.67669171 0.46875
		 0.67669171 0.46875 0.68843985 0.453125 0.68843985 0.4375 0.67669171 0.453125 0.67669171
		 0.453125 0.68843985 0.4375 0.68843985 0.41713592 0.92661405 0.39997423 0.88518202
		 0.41664517 0.87827671 0.43094659 0.91280341 0.39997423 0.88518202 0.3828125 0.84375
		 0.40234375 0.84375 0.41664517 0.87827671 0.41664517 0.87827671 0.40234375 0.84375
		 0.421875 0.84375 0.43331614 0.87137139 0.43094659 0.91280341 0.41664517 0.87827671
		 0.43331614 0.87137139 0.44475728 0.89899272 0.5 0.9609375 0.45856798 0.94377577 0.46547329
		 0.92710483 0.5 0.94140625 0.45856798 0.94377577 0.41713592 0.92661405 0.43094659
		 0.91280341 0.46547329 0.92710483 0.46547329 0.92710483 0.43094659 0.91280341 0.44475728
		 0.89899272 0.47237864 0.91043389;
	setAttr ".uvst[0].uvsp[1500:1727]" 0.5 0.94140625 0.46547329 0.92710483 0.47237864
		 0.91043389 0.5 0.921875 0.58286405 0.92661405 0.54143202 0.94377577 0.53452671 0.92710483
		 0.56905341 0.91280341 0.54143202 0.94377577 0.5 0.9609375 0.5 0.94140625 0.53452671
		 0.92710483 0.53452671 0.92710483 0.5 0.94140625 0.5 0.921875 0.52762139 0.91043389
		 0.56905341 0.91280341 0.53452671 0.92710483 0.52762139 0.91043389 0.55524272 0.89899272
		 0.6171875 0.84375 0.60002577 0.88518202 0.58335483 0.87827671 0.59765625 0.84375
		 0.60002577 0.88518202 0.58286405 0.92661405 0.56905341 0.91280341 0.58335483 0.87827671
		 0.58335483 0.87827671 0.56905341 0.91280341 0.55524272 0.89899272 0.56668389 0.87137139
		 0.59765625 0.84375 0.58335483 0.87827671 0.56668389 0.87137139 0.578125 0.84375 0.58286405
		 0.76088595 0.60002577 0.80231798 0.58335483 0.80922329 0.56905341 0.77469659 0.60002577
		 0.80231798 0.6171875 0.84375 0.59765625 0.84375 0.58335483 0.80922329 0.58335483
		 0.80922329 0.59765625 0.84375 0.578125 0.84375 0.56668389 0.81612861 0.56905341 0.77469659
		 0.58335483 0.80922329 0.56668389 0.81612861 0.55524272 0.78850728 0.5 0.7265625 0.54143202
		 0.74372423 0.53452671 0.76039517 0.5 0.74609375 0.54143202 0.74372423 0.58286405
		 0.76088595 0.56905341 0.77469659 0.53452671 0.76039517 0.53452671 0.76039517 0.56905341
		 0.77469659 0.55524272 0.78850728 0.52762139 0.77706611 0.5 0.74609375 0.53452671
		 0.76039517 0.52762139 0.77706611 0.5 0.765625 0.41713592 0.76088595 0.45856798 0.74372423
		 0.46547329 0.76039517 0.43094659 0.77469659 0.45856798 0.74372423 0.5 0.7265625 0.5
		 0.74609375 0.46547329 0.76039517 0.46547329 0.76039517 0.5 0.74609375 0.5 0.765625
		 0.47237864 0.77706611 0.43094659 0.77469659 0.46547329 0.76039517 0.47237864 0.77706611
		 0.44475728 0.78850728 0.3828125 0.84375 0.39997423 0.80231798 0.41664517 0.80922329
		 0.40234375 0.84375 0.39997423 0.80231798 0.41713592 0.76088595 0.43094659 0.77469659
		 0.41664517 0.80922329 0.41664517 0.80922329 0.43094659 0.77469659 0.44475728 0.78850728
		 0.43331614 0.81612861 0.40234375 0.84375 0.41664517 0.80922329 0.43331614 0.81612861
		 0.421875 0.84375 0.40332526 0.94042474 0.38330325 0.89208734 0.39163876 0.88863468
		 0.41023058 0.93351936 0.38330325 0.89208734 0.36328125 0.84375 0.37304688 0.84375
		 0.39163876 0.88863468 0.39163876 0.88863468 0.37304688 0.84375 0.3828125 0.84375
		 0.39997423 0.88518202 0.41023058 0.93351936 0.39163876 0.88863468 0.39997423 0.88518202
		 0.41713592 0.92661405 0.5 0.98046875 0.45166263 0.96044672 0.45511529 0.95211124
		 0.5 0.97070313 0.45166263 0.96044672 0.40332526 0.94042474 0.41023058 0.93351936
		 0.45511529 0.95211124 0.45511529 0.95211124 0.41023058 0.93351936 0.41713592 0.92661405
		 0.45856798 0.94377577 0.5 0.97070313 0.45511529 0.95211124 0.45856798 0.94377577
		 0.5 0.9609375 0.59667474 0.94042474 0.54833734 0.96044672 0.54488468 0.95211124 0.58976936
		 0.93351936 0.54833734 0.96044672 0.5 0.98046875 0.5 0.97070313 0.54488468 0.95211124
		 0.54488468 0.95211124 0.5 0.97070313 0.5 0.9609375 0.54143202 0.94377577 0.58976936
		 0.93351936 0.54488468 0.95211124 0.54143202 0.94377577 0.58286405 0.92661405 0.63671875
		 0.84375 0.61669672 0.89208734 0.60836124 0.88863468 0.62695313 0.84375 0.61669672
		 0.89208734 0.59667474 0.94042474 0.58976936 0.93351936 0.60836124 0.88863468 0.60836124
		 0.88863468 0.58976936 0.93351936 0.58286405 0.92661405 0.60002577 0.88518202 0.62695313
		 0.84375 0.60836124 0.88863468 0.60002577 0.88518202 0.6171875 0.84375 0.59667474
		 0.74707526 0.61669672 0.79541266 0.60836124 0.79886532 0.58976936 0.75398064 0.61669672
		 0.79541266 0.63671875 0.84375 0.62695313 0.84375 0.60836124 0.79886532 0.60836124
		 0.79886532 0.62695313 0.84375 0.6171875 0.84375 0.60002577 0.80231798 0.58976936
		 0.75398064 0.60836124 0.79886532 0.60002577 0.80231798 0.58286405 0.76088595 0.5
		 0.70703125 0.54833734 0.72705328 0.54488468 0.73538876 0.5 0.71679688 0.54833734
		 0.72705328 0.59667474 0.74707526 0.58976936 0.75398064 0.54488468 0.73538876 0.54488468
		 0.73538876 0.58976936 0.75398064 0.58286405 0.76088595 0.54143202 0.74372423 0.5
		 0.71679688 0.54488468 0.73538876 0.54143202 0.74372423 0.5 0.7265625 0.40332526 0.74707526
		 0.45166263 0.72705328 0.45511532 0.73538876 0.41023058 0.75398064 0.45166263 0.72705328
		 0.5 0.70703125 0.5 0.71679688 0.45511532 0.73538876 0.45511532 0.73538876 0.5 0.71679688
		 0.5 0.7265625 0.45856798 0.74372423 0.41023058 0.75398064 0.45511532 0.73538876 0.45856798
		 0.74372423 0.41713592 0.76088595 0.36328125 0.84375 0.38330325 0.79541266 0.39163873
		 0.79886532 0.37304688 0.84375 0.38330325 0.79541266 0.40332526 0.74707526 0.41023058
		 0.75398064 0.39163873 0.79886532 0.39163873 0.79886532 0.41023058 0.75398064 0.41713592
		 0.76088595 0.39997423 0.80231798 0.37304688 0.84375 0.39163873 0.79886532 0.39997423
		 0.80231798 0.3828125 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 209 ".pt";
	setAttr ".pt[24]" -type "float3" -0.023589743 -0.063719854 0.023589745 ;
	setAttr ".pt[25]" -type "float3" 3.2013339e-009 -0.063719854 0.033360939 ;
	setAttr ".pt[26]" -type "float3" 0.023589741 -0.063719854 0.023589745 ;
	setAttr ".pt[27]" -type "float3" 0.033360943 -0.063719854 1.1579281e-009 ;
	setAttr ".pt[28]" -type "float3" 0.023589741 -0.063719854 -0.023589743 ;
	setAttr ".pt[29]" -type "float3" 2.860765e-009 -0.063719854 -0.033360939 ;
	setAttr ".pt[30]" -type "float3" -0.023589743 -0.063719854 -0.023589749 ;
	setAttr ".pt[31]" -type "float3" -0.033360939 -0.063719854 1.0217016e-009 ;
	setAttr ".pt[32]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[33]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[34]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[35]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[36]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[37]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[38]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[39]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[41]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[50]" -type "float3" 0.023964193 -0.054577801 0.023964193 ;
	setAttr ".pt[51]" -type "float3" 3.40567e-009 -0.054577801 0.033890449 ;
	setAttr ".pt[52]" -type "float3" -0.023964198 -0.054577801 0.023964191 ;
	setAttr ".pt[53]" -type "float3" -0.033890475 -0.054577801 7.4924789e-010 ;
	setAttr ".pt[54]" -type "float3" -0.023964191 -0.054577801 -0.023964191 ;
	setAttr ".pt[55]" -type "float3" 3.133219e-009 -0.054577801 -0.033890482 ;
	setAttr ".pt[56]" -type "float3" 0.023964204 -0.054577801 -0.023964198 ;
	setAttr ".pt[57]" -type "float3" 0.033890482 -0.054577801 9.5358865e-010 ;
	setAttr ".pt[82]" -type "float3" 0.023964185 -0.059720192 0.023964185 ;
	setAttr ".pt[83]" -type "float3" 3.4056709e-009 -0.059720192 0.033890478 ;
	setAttr ".pt[84]" -type "float3" -0.023964183 -0.059720192 0.023964183 ;
	setAttr ".pt[85]" -type "float3" -0.033890482 -0.059720192 7.4924789e-010 ;
	setAttr ".pt[86]" -type "float3" -0.023964183 -0.059720192 -0.023964183 ;
	setAttr ".pt[87]" -type "float3" 3.1332181e-009 -0.059720192 -0.033890482 ;
	setAttr ".pt[88]" -type "float3" 0.023964196 -0.059720192 -0.023964183 ;
	setAttr ".pt[89]" -type "float3" 0.033890482 -0.059720192 9.5358799e-010 ;
	setAttr ".pt[90]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[91]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[92]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[93]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[94]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[95]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[96]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[97]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[98]" -type "float3" -2.6077032e-008 1.0128133e-008 0 ;
	setAttr ".pt[99]" -type "float3" 3.7252903e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".pt[100]" -type "float3" -1.3322676e-015 1.0128133e-008 -3.3527613e-008 ;
	setAttr ".pt[101]" -type "float3" -7.4505806e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".pt[102]" -type "float3" 4.0978193e-008 1.0128133e-008 0 ;
	setAttr ".pt[103]" -type "float3" -3.7252903e-009 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".pt[104]" -type "float3" -1.3322676e-015 1.0128133e-008 3.3527613e-008 ;
	setAttr ".pt[105]" -type "float3" 3.7252903e-009 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".pt[106]" -type "float3" -1.3322676e-015 1.0128133e-008 -1.4901161e-008 ;
	setAttr ".pt[107]" -type "float3" 2.2351742e-008 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".pt[108]" -type "float3" 1.8626451e-008 1.0128133e-008 0 ;
	setAttr ".pt[109]" -type "float3" 2.2351742e-008 1.0128133e-008 7.4505806e-009 ;
	setAttr ".pt[110]" -type "float3" -1.3322676e-015 1.0128133e-008 1.4901161e-008 ;
	setAttr ".pt[111]" -type "float3" -3.7252903e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".pt[176]" -type "float3" -0.012726761 -0.063719854 0.030725151 ;
	setAttr ".pt[177]" -type "float3" 0 1.0128133e-008 0 ;
	setAttr ".pt[178]" -type "float3" -1.3322676e-015 1.0128133e-008 0 ;
	setAttr ".pt[179]" -type "float3" -3.7252903e-009 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".pt[180]" -type "float3" 0.012726758 -0.063719854 0.030725151 ;
	setAttr ".pt[181]" -type "float3" -1.4901161e-008 1.0128133e-008 0 ;
	setAttr ".pt[182]" -type "float3" -9.3132257e-009 1.0128133e-008 0 ;
	setAttr ".pt[183]" -type "float3" 0.030725153 -0.063719854 0.012726755 ;
	setAttr ".pt[184]" -type "float3" 2.9802322e-008 1.0128133e-008 0 ;
	setAttr ".pt[185]" -type "float3" -3.7252903e-009 1.0128133e-008 1.8626451e-009 ;
	setAttr ".pt[186]" -type "float3" 0.030725153 -0.063719854 -0.012726753 ;
	setAttr ".pt[187]" -type "float3" -1.4901161e-008 1.0128133e-008 0 ;
	setAttr ".pt[188]" -type "float3" 1.1175871e-008 1.0128133e-008 -1.8626451e-009 ;
	setAttr ".pt[189]" -type "float3" 0.012726758 -0.063719854 -0.030725151 ;
	setAttr ".pt[190]" -type "float3" -1.7763568e-015 1.0128133e-008 -2.9802322e-008 ;
	setAttr ".pt[191]" -type "float3" -9.3132257e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".pt[192]" -type "float3" -0.01272676 -0.063719854 -0.030725151 ;
	setAttr ".pt[193]" -type "float3" 0 1.0128133e-008 0 ;
	setAttr ".pt[194]" -type "float3" -3.7252903e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".pt[195]" -type "float3" -0.030725151 -0.063719854 -0.012726756 ;
	setAttr ".pt[196]" -type "float3" 0 1.0128133e-008 1.110223e-016 ;
	setAttr ".pt[197]" -type "float3" -1.1175871e-008 1.0128133e-008 -1.8626451e-009 ;
	setAttr ".pt[198]" -type "float3" -0.030725151 -0.063719854 0.012726755 ;
	setAttr ".pt[199]" -type "float3" -1.1175871e-008 1.0128133e-008 1.8626451e-009 ;
	setAttr ".pt[208]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[209]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[210]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[211]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[212]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[213]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[214]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[215]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[216]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[217]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[218]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[219]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[220]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[221]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[222]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[223]" -type "float3" 0 0.13710925 0 ;
	setAttr ".pt[224]" -type "float3" 3.2694438e-009 -0.050578136 0.033890482 ;
	setAttr ".pt[225]" -type "float3" 0.023964193 -0.050578136 0.023964191 ;
	setAttr ".pt[226]" -type "float3" 0.012928779 -0.054577801 0.031212855 ;
	setAttr ".pt[227]" -type "float3" -0.023964196 -0.050578136 0.023964191 ;
	setAttr ".pt[228]" -type "float3" -0.012928776 -0.054577801 0.031212855 ;
	setAttr ".pt[229]" -type "float3" -0.033890449 -0.050578136 8.1736096e-010 ;
	setAttr ".pt[230]" -type "float3" -0.031212844 -0.054577801 0.01292878 ;
	setAttr ".pt[231]" -type "float3" -0.023964198 -0.050578136 -0.023964191 ;
	setAttr ".pt[232]" -type "float3" -0.031212855 -0.054577801 -0.012928776 ;
	setAttr ".pt[233]" -type "float3" 2.9969907e-009 -0.050578136 -0.033890482 ;
	setAttr ".pt[234]" -type "float3" -0.012928778 -0.054577801 -0.031212855 ;
	setAttr ".pt[235]" -type "float3" 0.023964193 -0.050578136 -0.023964198 ;
	setAttr ".pt[236]" -type "float3" 0.012928779 -0.054577801 -0.031212844 ;
	setAttr ".pt[237]" -type "float3" 0.033890475 -0.050578136 1.0898155e-009 ;
	setAttr ".pt[238]" -type "float3" 0.03121287 -0.054577801 -0.012928776 ;
	setAttr ".pt[239]" -type "float3" 0.03121287 -0.054577801 0.01292878 ;
	setAttr ".pt[240]" -type "float3" 3.2694438e-009 -0.057434678 0.033890482 ;
	setAttr ".pt[241]" -type "float3" 0.023964193 -0.057434678 0.023964191 ;
	setAttr ".pt[242]" -type "float3" 0.012928787 -0.059720192 0.031212848 ;
	setAttr ".pt[243]" -type "float3" -0.023964196 -0.057434678 0.023964191 ;
	setAttr ".pt[244]" -type "float3" -0.012928776 -0.059720192 0.031212848 ;
	setAttr ".pt[245]" -type "float3" -0.033890449 -0.057434678 8.1736096e-010 ;
	setAttr ".pt[246]" -type "float3" -0.031212844 -0.059720192 0.012928783 ;
	setAttr ".pt[247]" -type "float3" -0.023964198 -0.057434678 -0.023964191 ;
	setAttr ".pt[248]" -type "float3" -0.031212848 -0.059720192 -0.01292878 ;
	setAttr ".pt[249]" -type "float3" 2.9969907e-009 -0.057434678 -0.033890482 ;
	setAttr ".pt[250]" -type "float3" -0.012928778 -0.059720192 -0.031212848 ;
	setAttr ".pt[251]" -type "float3" 0.023964193 -0.057434678 -0.023964198 ;
	setAttr ".pt[252]" -type "float3" 0.012928787 -0.059720192 -0.031212844 ;
	setAttr ".pt[253]" -type "float3" 0.033890475 -0.057434678 1.0898155e-009 ;
	setAttr ".pt[254]" -type "float3" 0.03121285 -0.059720192 -0.012928779 ;
	setAttr ".pt[255]" -type "float3" 0.03121285 -0.059720192 0.012928783 ;
	setAttr ".pt[296]" -type "float3" 3.2694456e-009 -0.062005706 0.033890482 ;
	setAttr ".pt[297]" -type "float3" 0.023964185 -0.062005706 0.023964183 ;
	setAttr ".pt[298]" -type "float3" -0.023964183 -0.062005706 0.023964183 ;
	setAttr ".pt[299]" -type "float3" -0.033890478 -0.062005706 8.173614e-010 ;
	setAttr ".pt[300]" -type "float3" -0.023964183 -0.062005706 -0.023964183 ;
	setAttr ".pt[301]" -type "float3" 2.9969915e-009 -0.062005706 -0.033890482 ;
	setAttr ".pt[302]" -type "float3" 0.023964185 -0.062005706 -0.023964183 ;
	setAttr ".pt[303]" -type "float3" 0.033890482 -0.062005706 1.089815e-009 ;
	setAttr ".pt[304]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[305]" -type "float3" 0.018306574 0.11270406 0.018306572 ;
	setAttr ".pt[306]" -type "float3" 0.025889406 0.11270406 0 ;
	setAttr ".pt[307]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[308]" -type "float3" 1.3320395e-009 0.11270406 0.025889406 ;
	setAttr ".pt[309]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[310]" -type "float3" -0.018306572 0.11270406 0.018306574 ;
	setAttr ".pt[311]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[312]" -type "float3" -0.025889406 0.11270406 -1.6650492e-010 ;
	setAttr ".pt[313]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[314]" -type "float3" -0.018306574 0.11270406 -0.018306574 ;
	setAttr ".pt[315]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[316]" -type "float3" 1.1655346e-009 0.11270406 -0.025889406 ;
	setAttr ".pt[317]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[318]" -type "float3" 0.018306574 0.11270406 -0.018306574 ;
	setAttr ".pt[319]" -type "float3" 0 0.071453251 0 ;
	setAttr ".pt[320]" -type "float3" -3.7252903e-009 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".pt[321]" -type "float3" 1.1175871e-008 1.0128133e-008 0 ;
	setAttr ".pt[346]" -type "float3" 0 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".pt[347]" -type "float3" 1.8626451e-008 1.0128133e-008 0 ;
	setAttr ".pt[348]" -type "float3" -7.4505806e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".pt[349]" -type "float3" -7.4505806e-009 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".pt[350]" -type "float3" 1.8626451e-008 1.0128133e-008 7.4505806e-009 ;
	setAttr ".pt[351]" -type "float3" -1.8626451e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".pt[352]" -type "float3" 7.4505806e-009 1.0128133e-008 -1.6763806e-008 ;
	setAttr ".pt[353]" -type "float3" 7.4505806e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".pt[362]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[363]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[364]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[365]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[366]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[367]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[368]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[369]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".pt[370]" -type "float3" 0.012928779 -0.050578136 0.031212855 ;
	setAttr ".pt[371]" -type "float3" -0.012928776 -0.050578136 0.031212855 ;
	setAttr ".pt[372]" -type "float3" -0.031212844 -0.050578136 0.01292878 ;
	setAttr ".pt[373]" -type "float3" -0.031212855 -0.050578136 -0.012928776 ;
	setAttr ".pt[374]" -type "float3" -0.012928778 -0.050578136 -0.031212855 ;
	setAttr ".pt[375]" -type "float3" 0.012928779 -0.050578136 -0.031212844 ;
	setAttr ".pt[376]" -type "float3" 0.03121287 -0.050578136 -0.012928776 ;
	setAttr ".pt[377]" -type "float3" 0.03121287 -0.050578136 0.01292878 ;
	setAttr ".pt[378]" -type "float3" 0.012928779 -0.057434678 0.031212855 ;
	setAttr ".pt[379]" -type "float3" -0.012928776 -0.057434678 0.031212855 ;
	setAttr ".pt[380]" -type "float3" -0.031212844 -0.057434678 0.01292878 ;
	setAttr ".pt[381]" -type "float3" -0.031212855 -0.057434678 -0.012928776 ;
	setAttr ".pt[382]" -type "float3" -0.012928778 -0.057434678 -0.031212855 ;
	setAttr ".pt[383]" -type "float3" 0.012928779 -0.057434678 -0.031212844 ;
	setAttr ".pt[384]" -type "float3" 0.03121287 -0.057434678 -0.012928776 ;
	setAttr ".pt[385]" -type "float3" 0.03121287 -0.057434678 0.01292878 ;
	setAttr ".pt[410]" -type "float3" 0.012928787 -0.062005706 0.031212848 ;
	setAttr ".pt[411]" -type "float3" -0.012928776 -0.062005706 0.031212848 ;
	setAttr ".pt[412]" -type "float3" -0.031212844 -0.062005706 0.012928783 ;
	setAttr ".pt[413]" -type "float3" -0.031212848 -0.062005706 -0.01292878 ;
	setAttr ".pt[414]" -type "float3" -0.012928778 -0.062005706 -0.031212848 ;
	setAttr ".pt[415]" -type "float3" 0.012928787 -0.062005706 -0.031212844 ;
	setAttr ".pt[416]" -type "float3" 0.03121285 -0.062005706 -0.012928779 ;
	setAttr ".pt[417]" -type "float3" 0.03121285 -0.062005706 0.012928783 ;
	setAttr ".pt[418]" -type "float3" 0.023843924 0.11270406 0.0098764757 ;
	setAttr ".pt[419]" -type "float3" 0.0098764757 0.11270406 0.023843922 ;
	setAttr ".pt[420]" -type "float3" -0.0098764729 0.11270406 0.023843922 ;
	setAttr ".pt[421]" -type "float3" -0.023843924 0.11270406 0.0098764757 ;
	setAttr ".pt[422]" -type "float3" -0.023843924 0.11270406 -0.0098764757 ;
	setAttr ".pt[423]" -type "float3" -0.0098764747 0.11270406 -0.023843922 ;
	setAttr ".pt[424]" -type "float3" 0.0098764757 0.11270406 -0.023843922 ;
	setAttr ".pt[425]" -type "float3" 0.023843924 0.11270406 -0.0098764757 ;
	setAttr ".pt[426]" -type "float3" 0 1.0128133e-008 1.8626451e-009 ;
	setAttr ".pt[427]" -type "float3" -3.7252903e-009 1.0128133e-008 3.7252903e-009 ;
	setAttr ".pt[428]" -type "float3" 0 1.0128133e-008 3.7252903e-009 ;
	setAttr ".pt[429]" -type "float3" 0 1.0128133e-008 1.8626451e-009 ;
	setAttr ".pt[430]" -type "float3" 0 1.0128133e-008 -1.8626451e-009 ;
	setAttr ".pt[431]" -type "float3" 0 1.0128133e-008 -3.7252903e-009 ;
	setAttr ".pt[432]" -type "float3" -3.7252903e-009 1.0128133e-008 -3.7252903e-009 ;
	setAttr ".pt[433]" -type "float3" 0 1.0128133e-008 -1.8626451e-009 ;
	setAttr -s 434 ".vt";
	setAttr ".vt[0:165]"  0.33395204 -1 -0.33395201 0 -1 -0.47227946 -0.33395201 -1 -0.33395201
		 -0.47227946 -1 0 -0.33395201 -1 0.33395201 1.8626451e-009 -1 0.47227946 0.33395204 -1 0.33395204
		 0.47227949 -1 0 0.6143719 -0.984375 -0.61437196 0 -0.984375 -0.86885309 -0.6143719 -0.984375 -0.6143719
		 -0.86885309 -0.984375 0 -0.6143719 -0.984375 0.6143719 5.5879354e-009 -0.984375 0.86885321
		 0.61437196 -0.984375 0.61437196 0.86885321 -0.984375 5.5879354e-009 0.65533006 0 -0.65533006
		 3.7252903e-009 0 -0.92677653 -0.65533006 0 -0.65533 -0.92677653 0 -3.7252903e-009
		 -0.65533 0 0.65533006 9.3132257e-009 0 0.92677659 0.65533006 0 0.65533012 0.92677677 0 3.7252903e-009
		 0.64509052 0.984375 -0.64509046 1.8626451e-009 0.984375 -0.9122957 -0.64509046 0.984375 -0.64509046
		 -0.9122957 0.984375 -1.8626451e-009 -0.64509046 0.984375 0.64509046 1.1175871e-008 0.984375 0.9122957
		 0.64509052 0.984375 0.64509058 0.91229582 0.984375 1.8626451e-009 0.31347296 1 -0.31347296
		 9.3132257e-010 1 -0.44331768 -0.31347296 1 -0.31347296 -0.44331768 1 -9.3132257e-010
		 -0.31347296 1 0.31347296 1.3969839e-009 1 0.44331768 0.31347296 1 0.31347299 0.44331777 1 4.6566129e-009
		 2.0954758e-009 -1 1.8626451e-009 2.3283064e-009 1 1.9790605e-009 -0.65533 0.46875 -0.65533006
		 3.7252903e-009 0.46875 -0.92677665 0.65533006 0.46875 -0.65533 0.92677677 0.46875 5.5879354e-009
		 0.65533012 0.46875 0.65533012 5.5879354e-009 0.46875 0.92677665 -0.65533006 0.46875 0.65533
		 -0.92677665 0.46875 -3.7252903e-009 -0.65533 0.734375 -0.65533006 -3.7252903e-009 0.734375 -0.92677653
		 0.65533006 0.734375 -0.65533 0.92677677 0.734375 9.3132257e-009 0.65533012 0.734375 0.65533006
		 3.7252903e-009 0.734375 0.92677665 -0.65533006 0.734375 0.65533 -0.92677653 0.734375 3.7252903e-009
		 -0.65533006 -0.46875 -0.65533 -3.7252903e-009 -0.46875 -0.92677665 0.65533006 -0.46875 -0.65533006
		 0.92677677 -0.46875 5.5879354e-009 0.65533012 -0.46875 0.65533006 5.5879354e-009 -0.46875 0.92677665
		 -0.65533 -0.46875 0.65533006 -0.92677665 -0.46875 3.7252903e-009 -0.65533006 -0.734375 -0.65533
		 -3.7252903e-009 -0.734375 -0.92677665 0.65533006 -0.734375 -0.65533006 0.92677677 -0.734375 5.5879354e-009
		 0.65533012 -0.734375 0.65533006 5.5879354e-009 -0.734375 0.92677665 -0.65533 -0.734375 0.65533006
		 -0.92677665 -0.734375 3.7252903e-009 -0.65533 -0.875 -0.65533006 3.7252903e-009 -0.875 -0.92677665
		 0.65533006 -0.875 -0.65533 0.92677677 -0.875 5.5879354e-009 0.65533012 -0.875 0.65533012
		 5.5879354e-009 -0.875 0.92677665 -0.65533006 -0.875 0.65533 -0.92677665 -0.875 -3.7252903e-009
		 -0.65533 0.875 -0.65533006 -3.7252903e-009 0.875 -0.92677653 0.65533006 0.875 -0.65533
		 0.92677677 0.875 9.3132257e-009 0.65533012 0.875 0.65533006 3.7252903e-009 0.875 0.92677665
		 -0.65533006 0.875 0.65533 -0.92677653 0.875 3.7252903e-009 -0.68060154 1 -9.3132257e-010
		 -0.48125798 1 -0.48125798 0 1 -0.68060154 0.48125798 1 -0.48125798 0.6806016 1 0
		 0.48125798 1 0.48125798 0 1 0.68060154 -0.48125798 1 0.48125798 -0.81092948 1 0 -0.57341373 1 -0.57341373
		 0 1 -0.81092948 0.57341379 1 -0.57341373 0.81092954 1 0 0.57341373 1 0.57341373 0 1 0.81092954
		 -0.57341373 1 0.57341373 0 1 -0.75300598 0.53245568 1 -0.53245568 0.75300598 1 0
		 0.53245568 1 0.53245568 0 1 0.75300598 -0.53245568 1 0.53245568 0.18738329 -1 -0.45238325
		 0.49149758 -1 -0.49149752 0 -1 -0.69508243 0.33145627 -0.984375 -0.80020618 -0.18738329 -1 -0.45238325
		 -0.49149755 -1 -0.49149752 -0.33145627 -0.984375 -0.80020618 -0.45238325 -1 -0.18738329
		 -0.69508243 -1 0 -0.80020618 -0.984375 -0.33145627 -0.45238325 -1 0.18738329 -0.49149752 -1 0.49149755
		 -0.80020618 -0.984375 0.33145627 -0.18738329 -1 0.45238325 0 -1 0.69508249 -0.33145627 -0.984375 0.80020618
		 0.18738329 -1 0.45238328 0.49149758 -1 0.49149758 0.3314563 -0.984375 0.80020624
		 0.45238328 -1 0.18738329 0.69508255 -1 0 0.8002063 -0.984375 0.3314563 0.45238328 -1 -0.18738329
		 0.80020624 -0.984375 -0.33145627 0.65533 -0.9375 -0.65533 0 -0.9375 -0.92677659 0.35355335 -0.875 -0.8535533
		 -0.65533 -0.9375 -0.65533 -0.35355335 -0.875 -0.8535533 -0.92677659 -0.9375 0 -0.8535533 -0.875 -0.35355335
		 -0.65533 -0.9375 0.65533 -0.8535533 -0.875 0.35355335 7.4505806e-009 -0.9375 0.92677665
		 -0.35355335 -0.875 0.8535533 0.65533006 -0.9375 0.65533006 0.35355338 -0.875 0.85355335
		 0.92677665 -0.9375 7.4505806e-009 0.85355341 -0.875 0.35355338 0.85355335 -0.875 -0.35355335
		 0.35355335 0 -0.8535533 0.65533 0.25 -0.65533 0 0.25 -0.92677659 0.35355335 0.46875 -0.8535533
		 -0.35355335 0 -0.8535533 -0.65533 0.25 -0.65533 -0.35355335 0.46875 -0.8535533 -0.8535533 0 -0.35355335
		 -0.92677659 0.25 0 -0.8535533 0.46875 -0.35355335 -0.8535533 0 0.35355335 -0.65533 0.25 0.65533
		 -0.8535533 0.46875 0.35355335 -0.35355335 0 0.8535533;
	setAttr ".vt[166:331]" 7.4505806e-009 0.25 0.92677665 -0.35355335 0.46875 0.8535533
		 0.35355338 0 0.85355335 0.65533006 0.25 0.65533006 0.35355338 0.46875 0.85355335
		 0.85355341 0 0.35355338 0.92677665 0.25 7.4505806e-009 0.85355341 0.46875 0.35355338
		 0.85355335 0 -0.35355335 0.85355335 0.46875 -0.35355335 0.34802908 0.984375 -0.84021652
		 0.6143719 1 -0.6143719 0 1 -0.86885303 0.30935919 1 -0.74685919 -0.34802908 0.984375 -0.84021652
		 -0.6143719 1 -0.6143719 -0.30935919 1 -0.74685907 -0.84021652 0.984375 -0.34802908
		 -0.86885303 1 0 -0.74685919 1 -0.30935919 -0.84021652 0.984375 0.34802908 -0.6143719 1 0.6143719
		 -0.74685907 1 0.30935919 -0.34802908 0.984375 0.84021652 7.4505806e-009 1 0.86885309
		 -0.30935919 1 0.74685919 0.34802911 0.984375 0.84021658 0.61437196 1 0.6143719 0.30935919 1 0.74685919
		 0.84021664 0.984375 0.34802911 0.86885309 1 7.4505806e-009 0.74685919 1 0.30935919
		 0.84021658 0.984375 -0.34802908 0.74685919 1 -0.30935919 0 -1 -0.28244668 0.19972 -1 -0.19971998
		 -0.19971997 -1 -0.19971998 -0.28244668 -1 0 -0.19971998 -1 0.19971997 3.7252903e-009 -1 0.28244668
		 0.19972 -1 0.19972 0.28244674 -1 3.7252903e-009 0.17147338 1 -0.41397336 0.19972 1 -0.19971998
		 0 1 -0.28244668 -0.17147338 1 -0.41397336 -0.19971997 1 -0.19971998 -0.41397336 1 -0.17147338
		 -0.28244668 1 0 -0.41397336 1 0.17147338 -0.19971998 1 0.19971997 -0.17147338 1 0.41397336
		 3.7252903e-009 1 0.28244668 0.17147338 1 0.41397336 0.19972 1 0.19972 0.41397339 1 0.17147338
		 0.28244674 1 3.7252903e-009 0.41397339 1 -0.17147338 0 0.625 -0.92677659 -0.65533 0.625 -0.65533
		 -0.35355335 0.734375 -0.8535533 0.65533 0.625 -0.65533 0.35355335 0.734375 -0.8535533
		 0.92677665 0.625 7.4505806e-009 0.85355335 0.734375 -0.35355335 0.65533006 0.625 0.65533006
		 0.85355341 0.734375 0.35355338 7.4505806e-009 0.625 0.92677665 0.35355338 0.734375 0.85355335
		 -0.65533 0.625 0.65533 -0.35355335 0.734375 0.8535533 -0.92677659 0.625 0 -0.8535533 0.734375 0.35355335
		 -0.8535533 0.734375 -0.35355335 0 0.8125 -0.92677659 -0.65533 0.8125 -0.65533 -0.35355335 0.875 -0.8535533
		 0.65533 0.8125 -0.65533 0.35355335 0.875 -0.8535533 0.92677665 0.8125 7.4505806e-009
		 0.85355335 0.875 -0.35355335 0.65533006 0.8125 0.65533006 0.85355341 0.875 0.35355338
		 7.4505806e-009 0.8125 0.92677665 0.35355338 0.875 0.85355335 -0.65533 0.8125 0.65533
		 -0.35355335 0.875 0.8535533 -0.92677659 0.8125 0 -0.8535533 0.875 0.35355335 -0.8535533 0.875 -0.35355335
		 -0.35355335 -0.46875 -0.8535533 0 -0.25 -0.92677659 -0.65533 -0.25 -0.65533 0.35355335 -0.46875 -0.8535533
		 0.65533 -0.25 -0.65533 0.85355335 -0.46875 -0.35355335 0.92677665 -0.25 7.4505806e-009
		 0.85355341 -0.46875 0.35355338 0.65533006 -0.25 0.65533006 0.35355338 -0.46875 0.85355335
		 7.4505806e-009 -0.25 0.92677665 -0.35355335 -0.46875 0.8535533 -0.65533 -0.25 0.65533
		 -0.8535533 -0.46875 0.35355335 -0.92677659 -0.25 0 -0.8535533 -0.46875 -0.35355335
		 -0.35355335 -0.734375 -0.8535533 0 -0.625 -0.92677659 -0.65533 -0.625 -0.65533 0.35355335 -0.734375 -0.8535533
		 0.65533 -0.625 -0.65533 0.85355335 -0.734375 -0.35355335 0.92677665 -0.625 7.4505806e-009
		 0.85355341 -0.734375 0.35355338 0.65533006 -0.625 0.65533006 0.35355338 -0.734375 0.85355335
		 7.4505806e-009 -0.625 0.92677665 -0.35355335 -0.734375 0.8535533 -0.65533 -0.625 0.65533
		 -0.8535533 -0.734375 0.35355335 -0.92677659 -0.625 0 -0.8535533 -0.734375 -0.35355335
		 0 -0.8125 -0.92677659 -0.65533 -0.8125 -0.65533 0.65533 -0.8125 -0.65533 0.92677665 -0.8125 7.4505806e-009
		 0.65533006 -0.8125 0.65533006 7.4505806e-009 -0.8125 0.92677665 -0.65533 -0.8125 0.65533
		 -0.92677659 -0.8125 0 0 0.9375 -0.92677659 -0.65533 0.9375 -0.65533 0.65533 0.9375 -0.65533
		 0.92677665 0.9375 7.4505806e-009 0.65533006 0.9375 0.65533006 7.4505806e-009 0.9375 0.92677665
		 -0.65533 0.9375 0.65533 -0.92677659 0.9375 0 -0.62682819 1 -0.25964075 -0.40958127 1 -0.40958124
		 -0.57923537 1 0 -0.25964075 1 -0.62682819 0 1 -0.57923537 0.25964075 1 -0.62682819
		 0.40958127 1 -0.40958127 0.62682825 1 -0.25964075 0.57923543 1 3.7252903e-009 0.62682825 1 0.25964075
		 0.4095813 1 0.4095813 0.25964075 1 0.62682819 3.7252903e-009 1 0.57923537 -0.25964075 1 0.62682819
		 -0.40958124 1 0.40958127 -0.62682819 1 0.25964075 -0.53245568 1 -0.53245568 -0.75300598 1 0
		 0.26516503 -1 -0.64016497 -0.26516503 -1 -0.64016497 -0.64016497 -1 -0.26516503 -0.64016497 -1 0.26516503
		 -0.26516503 -1 0.64016497 0.26516503 -1 0.64016503 0.64016503 -1 0.26516503 0.64016503 -1 -0.26516503
		 0.35355335 -0.9375 -0.8535533 -0.35355335 -0.9375 -0.8535533;
	setAttr ".vt[332:433]" -0.8535533 -0.9375 -0.35355335 -0.8535533 -0.9375 0.35355335
		 -0.35355335 -0.9375 0.8535533 0.35355338 -0.9375 0.85355335 0.85355341 -0.9375 0.35355338
		 0.85355335 -0.9375 -0.35355335 0.35355335 0.25 -0.8535533 -0.35355335 0.25 -0.8535533
		 -0.8535533 0.25 -0.35355335 -0.8535533 0.25 0.35355335 -0.35355335 0.25 0.8535533
		 0.35355338 0.25 0.85355335 0.85355341 0.25 0.35355338 0.85355335 0.25 -0.35355335
		 0.33145627 1 -0.80020624 -0.33145627 1 -0.80020618 -0.80020624 1 -0.33145627 -0.80020618 1 0.33145627
		 -0.33145627 1 0.80020624 0.3314563 1 0.8002063 0.8002063 1 0.3314563 0.8002063 1 -0.33145627
		 0.11785112 -1 -0.28451777 -0.11785112 -1 -0.28451777 -0.28451777 -1 -0.11785112 -0.28451777 -1 0.11785112
		 -0.11785112 -1 0.28451777 0.11785113 -1 0.28451779 0.28451779 -1 0.11785113 0.28451779 -1 -0.11785112
		 0.11785112 1 -0.28451777 -0.11785112 1 -0.28451777 -0.28451777 1 -0.11785112 -0.28451777 1 0.11785112
		 -0.11785112 1 0.28451777 0.11785113 1 0.28451779 0.28451779 1 0.11785113 0.28451779 1 -0.11785112
		 -0.35355335 0.625 -0.8535533 0.35355335 0.625 -0.8535533 0.85355335 0.625 -0.35355335
		 0.85355341 0.625 0.35355338 0.35355338 0.625 0.85355335 -0.35355335 0.625 0.8535533
		 -0.8535533 0.625 0.35355335 -0.8535533 0.625 -0.35355335 -0.35355335 0.8125 -0.8535533
		 0.35355335 0.8125 -0.8535533 0.85355335 0.8125 -0.35355335 0.85355341 0.8125 0.35355338
		 0.35355338 0.8125 0.85355335 -0.35355335 0.8125 0.8535533 -0.8535533 0.8125 0.35355335
		 -0.8535533 0.8125 -0.35355335 -0.35355335 -0.25 -0.8535533 0.35355335 -0.25 -0.8535533
		 0.85355335 -0.25 -0.35355335 0.85355341 -0.25 0.35355338 0.35355338 -0.25 0.85355335
		 -0.35355335 -0.25 0.8535533 -0.8535533 -0.25 0.35355335 -0.8535533 -0.25 -0.35355335
		 -0.35355335 -0.625 -0.8535533 0.35355335 -0.625 -0.8535533 0.85355335 -0.625 -0.35355335
		 0.85355341 -0.625 0.35355338 0.35355338 -0.625 0.85355335 -0.35355335 -0.625 0.8535533
		 -0.8535533 -0.625 0.35355335 -0.8535533 -0.625 -0.35355335 -0.35355335 -0.8125 -0.8535533
		 0.35355335 -0.8125 -0.8535533 0.85355335 -0.8125 -0.35355335 0.85355341 -0.8125 0.35355338
		 0.35355338 -0.8125 0.85355335 -0.35355335 -0.8125 0.8535533 -0.8535533 -0.8125 0.35355335
		 -0.8535533 -0.8125 -0.35355335 -0.35355335 0.9375 -0.8535533 0.35355335 0.9375 -0.8535533
		 0.85355335 0.9375 -0.35355335 0.85355341 0.9375 0.35355338 0.35355338 0.9375 0.85355335
		 -0.35355335 0.9375 0.8535533 -0.8535533 0.9375 0.35355335 -0.8535533 0.9375 -0.35355335
		 -0.53347081 1 -0.22097085 -0.22097085 1 -0.53347081 0.22097085 1 -0.53347081 0.53347087 1 -0.22097085
		 0.53347087 1 0.22097087 0.22097087 1 0.53347081 -0.22097085 1 0.53347081 -0.53347081 1 0.22097085
		 -0.69351208 1 -0.28726211 -0.28726211 1 -0.69351208 0.28726211 1 -0.69351208 0.69351208 1 -0.28726211
		 0.69351208 1 0.28726211 0.28726211 1 0.69351208 -0.28726211 1 0.69351208 -0.69351208 1 0.28726211;
	setAttr -s 864 ".ed";
	setAttr ".ed[0:165]"  0 112 1 112 1 1 1 116 1 116 2 1 2 119 1 119 3 1 3 122 1
		 122 4 1 4 125 1 125 5 1 5 128 1 128 6 1 6 131 1 131 7 1 7 134 1 134 0 1 8 115 1 115 9 1
		 9 118 1 118 10 1 10 121 1 121 11 1 11 124 1 124 12 1 12 127 1 127 13 1 13 130 1 130 14 1
		 14 133 1 133 15 1 15 135 1 135 8 1 16 152 1 152 17 1 17 156 1 156 18 1 18 159 1 159 19 1
		 19 162 1 162 20 1 20 165 1 165 21 1 21 168 1 168 22 1 22 171 1 171 23 1 23 174 1
		 174 16 1 24 176 1 176 25 1 25 180 1 180 26 1 26 183 1 183 27 1 27 186 1 186 28 1
		 28 189 1 189 29 1 29 192 1 192 30 1 30 195 1 195 31 1 31 198 1 198 24 1 32 208 1
		 208 33 1 33 211 1 211 34 1 34 213 1 213 35 1 35 215 1 215 36 1 36 217 1 217 37 1
		 37 219 1 219 38 1 38 221 1 221 39 1 39 223 1 223 32 1 0 113 1 113 8 1 1 114 1 114 9 1
		 2 117 1 117 10 1 3 120 1 120 11 1 4 123 1 123 12 1 5 126 1 126 13 1 6 129 1 129 14 1
		 7 132 1 132 15 1 8 136 1 136 76 1 9 137 1 137 75 1 10 139 1 139 74 1 11 141 1 141 81 1
		 12 143 1 143 80 1 13 145 1 145 79 1 14 147 1 147 78 1 15 149 1 149 77 1 16 153 1
		 153 44 1 17 154 1 154 43 1 18 157 1 157 42 1 19 160 1 160 49 1 20 163 1 163 48 1
		 21 166 1 166 47 1 22 169 1 169 46 1 23 172 1 172 45 1 24 177 1 177 101 1 25 178 1
		 178 100 1 26 181 1 181 99 1 27 184 1 184 98 1 28 187 1 187 105 1 29 190 1 190 104 1
		 30 193 1 193 103 1 31 196 1 196 102 1 40 201 1 201 0 1 40 200 1 200 1 1 40 202 1
		 202 2 1 40 203 1 203 3 1 40 204 1 204 4 1 40 205 1 205 5 1 40 206 1 206 6 1 40 207 1
		 207 7 1 32 209 1 209 41 1 33 210 1 210 41 1 34 212 1 212 41 1;
	setAttr ".ed[166:331]" 35 214 1 214 41 1 36 216 1 216 41 1 37 218 1 218 41 1
		 38 220 1 220 41 1 39 222 1 222 41 1 42 225 1 225 50 1 43 224 1 224 51 1 42 158 1
		 158 43 1 44 227 1 227 52 1 43 155 1 155 44 1 45 229 1 229 53 1 44 175 1 175 45 1
		 46 231 1 231 54 1 45 173 1 173 46 1 47 233 1 233 55 1 46 170 1 170 47 1 48 235 1
		 235 56 1 47 167 1 167 48 1 49 237 1 237 57 1 48 164 1 164 49 1 49 161 1 161 42 1
		 50 241 1 241 82 1 51 240 1 240 83 1 50 226 1 226 51 1 52 243 1 243 84 1 51 228 1
		 228 52 1 53 245 1 245 85 1 52 230 1 230 53 1 54 247 1 247 86 1 53 232 1 232 54 1
		 55 249 1 249 87 1 54 234 1 234 55 1 56 251 1 251 88 1 55 236 1 236 56 1 57 253 1
		 253 89 1 56 238 1 238 57 1 57 239 1 239 50 1 58 258 1 258 18 1 59 257 1 257 17 1
		 58 256 1 256 59 1 60 260 1 260 16 1 59 259 1 259 60 1 61 262 1 262 23 1 60 261 1
		 261 61 1 62 264 1 264 22 1 61 263 1 263 62 1 63 266 1 266 21 1 62 265 1 265 63 1
		 64 268 1 268 20 1 63 267 1 267 64 1 65 270 1 270 19 1 64 269 1 269 65 1 65 271 1
		 271 58 1 66 274 1 274 58 1 67 273 1 273 59 1 66 272 1 272 67 1 68 276 1 276 60 1
		 67 275 1 275 68 1 69 278 1 278 61 1 68 277 1 277 69 1 70 280 1 280 62 1 69 279 1
		 279 70 1 71 282 1 282 63 1 70 281 1 281 71 1 72 284 1 284 64 1 71 283 1 283 72 1
		 73 286 1 286 65 1 72 285 1 285 73 1 73 287 1 287 66 1 74 289 1 289 66 1 75 288 1
		 288 67 1 74 140 1 140 75 1 76 290 1 290 68 1 75 138 1 138 76 1 77 291 1 291 69 1
		 76 151 1 151 77 1 78 292 1 292 70 1 77 150 1 150 78 1 79 293 1 293 71 1 78 148 1
		 148 79 1 80 294 1 294 72 1 79 146 1 146 80 1 81 295 1 295 73 1;
	setAttr ".ed[332:497]" 80 144 1 144 81 1 81 142 1 142 74 1 82 297 1 297 26 1
		 83 296 1 296 25 1 82 242 1 242 83 1 84 298 1 298 24 1 83 244 1 244 84 1 85 299 1
		 299 31 1 84 246 1 246 85 1 86 300 1 300 30 1 85 248 1 248 86 1 87 301 1 301 29 1
		 86 250 1 250 87 1 88 302 1 302 28 1 87 252 1 252 88 1 89 303 1 303 27 1 88 254 1
		 254 89 1 89 255 1 255 82 1 90 306 1 306 35 1 91 305 1 305 34 1 90 304 1 304 91 1
		 92 308 1 308 33 1 91 307 1 307 92 1 93 310 1 310 32 1 92 309 1 309 93 1 94 312 1
		 312 39 1 93 311 1 311 94 1 95 314 1 314 38 1 94 313 1 313 95 1 96 316 1 316 37 1
		 95 315 1 315 96 1 97 318 1 318 36 1 96 317 1 317 97 1 97 319 1 319 90 1 98 321 1
		 321 90 1 99 320 1 320 91 1 98 185 1 185 99 1 100 106 1 106 92 1 99 182 1 182 100 1
		 101 107 1 107 93 1 100 179 1 179 101 1 102 108 1 108 94 1 101 199 1 199 102 1 103 109 1
		 109 95 1 102 197 1 197 103 1 104 110 1 110 96 1 103 194 1 194 104 1 105 111 1 111 97 1
		 104 191 1 191 105 1 105 188 1 188 98 1 112 322 1 322 113 1 114 322 1 115 322 1 116 323 1
		 323 114 1 117 323 1 118 323 1 119 324 1 324 117 1 120 324 1 121 324 1 122 325 1 325 120 1
		 123 325 1 124 325 1 125 326 1 326 123 1 126 326 1 127 326 1 128 327 1 327 126 1 129 327 1
		 130 327 1 131 328 1 328 129 1 132 328 1 133 328 1 134 329 1 329 132 1 113 329 1 135 329 1
		 115 330 1 330 136 1 137 330 1 138 330 1 118 331 1 331 137 1 139 331 1 140 331 1 121 332 1
		 332 139 1 141 332 1 142 332 1 124 333 1 333 141 1 143 333 1 144 333 1 127 334 1 334 143 1
		 145 334 1 146 334 1 130 335 1 335 145 1 147 335 1 148 335 1 133 336 1 336 147 1 149 336 1
		 150 336 1 135 337 1 337 149 1 136 337 1 151 337 1 152 338 1 338 153 1;
	setAttr ".ed[498:663]" 154 338 1 155 338 1 156 339 1 339 154 1 157 339 1 158 339 1
		 159 340 1 340 157 1 160 340 1 161 340 1 162 341 1 341 160 1 163 341 1 164 341 1 165 342 1
		 342 163 1 166 342 1 167 342 1 168 343 1 343 166 1 169 343 1 170 343 1 171 344 1 344 169 1
		 172 344 1 173 344 1 174 345 1 345 172 1 153 345 1 175 345 1 176 346 1 346 177 1 178 346 1
		 179 346 1 180 347 1 347 178 1 181 347 1 182 347 1 183 348 1 348 181 1 184 348 1 185 348 1
		 186 349 1 349 184 1 187 349 1 188 349 1 189 350 1 350 187 1 190 350 1 191 350 1 192 351 1
		 351 190 1 193 351 1 194 351 1 195 352 1 352 193 1 196 352 1 197 352 1 198 353 1 353 196 1
		 177 353 1 199 353 1 112 354 1 354 200 1 201 354 1 116 355 1 355 202 1 200 355 1 119 356 1
		 356 203 1 202 356 1 122 357 1 357 204 1 203 357 1 125 358 1 358 205 1 204 358 1 128 359 1
		 359 206 1 205 359 1 131 360 1 360 207 1 206 360 1 134 361 1 361 201 1 207 361 1 208 362 1
		 362 209 1 210 362 1 211 363 1 363 210 1 212 363 1 213 364 1 364 212 1 214 364 1 215 365 1
		 365 214 1 216 365 1 217 366 1 366 216 1 218 366 1 219 367 1 367 218 1 220 367 1 221 368 1
		 368 220 1 222 368 1 223 369 1 369 222 1 209 369 1 158 370 1 370 224 1 225 370 1 226 370 1
		 155 371 1 371 227 1 224 371 1 228 371 1 175 372 1 372 229 1 227 372 1 230 372 1 173 373 1
		 373 231 1 229 373 1 232 373 1 170 374 1 374 233 1 231 374 1 234 374 1 167 375 1 375 235 1
		 233 375 1 236 375 1 164 376 1 376 237 1 235 376 1 238 376 1 161 377 1 377 225 1 237 377 1
		 239 377 1 226 378 1 378 240 1 241 378 1 242 378 1 228 379 1 379 243 1 240 379 1 244 379 1
		 230 380 1 380 245 1 243 380 1 246 380 1 232 381 1 381 247 1 245 381 1 248 381 1 234 382 1
		 382 249 1 247 382 1 250 382 1 236 383 1 383 251 1 249 383 1 252 383 1;
	setAttr ".ed[664:829]" 238 384 1 384 253 1 251 384 1 254 384 1 239 385 1 385 241 1
		 253 385 1 255 385 1 256 386 1 386 257 1 258 386 1 156 386 1 259 387 1 387 260 1 257 387 1
		 152 387 1 261 388 1 388 262 1 260 388 1 174 388 1 263 389 1 389 264 1 262 389 1 171 389 1
		 265 390 1 390 266 1 264 390 1 168 390 1 267 391 1 391 268 1 266 391 1 165 391 1 269 392 1
		 392 270 1 268 392 1 162 392 1 271 393 1 393 258 1 270 393 1 159 393 1 272 394 1 394 273 1
		 274 394 1 256 394 1 275 395 1 395 276 1 273 395 1 259 395 1 277 396 1 396 278 1 276 396 1
		 261 396 1 279 397 1 397 280 1 278 397 1 263 397 1 281 398 1 398 282 1 280 398 1 265 398 1
		 283 399 1 399 284 1 282 399 1 267 399 1 285 400 1 400 286 1 284 400 1 269 400 1 287 401 1
		 401 274 1 286 401 1 271 401 1 140 402 1 402 288 1 289 402 1 272 402 1 138 403 1 403 290 1
		 288 403 1 275 403 1 151 404 1 404 291 1 290 404 1 277 404 1 150 405 1 405 292 1 291 405 1
		 279 405 1 148 406 1 406 293 1 292 406 1 281 406 1 146 407 1 407 294 1 293 407 1 283 407 1
		 144 408 1 408 295 1 294 408 1 285 408 1 142 409 1 409 289 1 295 409 1 287 409 1 242 410 1
		 410 296 1 297 410 1 180 410 1 244 411 1 411 298 1 296 411 1 176 411 1 246 412 1 412 299 1
		 298 412 1 198 412 1 248 413 1 413 300 1 299 413 1 195 413 1 250 414 1 414 301 1 300 414 1
		 192 414 1 252 415 1 415 302 1 301 415 1 189 415 1 254 416 1 416 303 1 302 416 1 186 416 1
		 255 417 1 417 297 1 303 417 1 183 417 1 304 418 1 418 305 1 306 418 1 213 418 1 307 419 1
		 419 308 1 305 419 1 211 419 1 309 420 1 420 310 1 308 420 1 208 420 1 311 421 1 421 312 1
		 310 421 1 223 421 1 313 422 1 422 314 1 312 422 1 221 422 1 315 423 1 423 316 1 314 423 1
		 219 423 1 317 424 1 424 318 1 316 424 1 217 424 1 319 425 1 425 306 1;
	setAttr ".ed[830:863]" 318 425 1 215 425 1 185 426 1 426 320 1 321 426 1 304 426 1
		 182 427 1 427 106 1 320 427 1 307 427 1 179 428 1 428 107 1 106 428 1 309 428 1 199 429 1
		 429 108 1 107 429 1 311 429 1 197 430 1 430 109 1 108 430 1 313 430 1 194 431 1 431 110 1
		 109 431 1 315 431 1 191 432 1 432 111 1 110 432 1 317 432 1 188 433 1 433 321 1 111 433 1
		 319 433 1;
	setAttr -s 432 -ch 1728 ".fc[0:431]" -type "polyFaces" 
		f 4 0 432 433 -81
		mu 0 4 516 513 13 118
		f 4 1 82 434 -433
		mu 0 4 513 528 28 13
		f 4 -435 83 -18 435
		mu 0 4 13 28 10 14
		f 4 -434 -436 -17 -82
		mu 0 4 118 13 14 122
		f 4 2 436 437 -83
		mu 0 4 528 525 29 28
		f 4 3 84 438 -437
		mu 0 4 525 540 44 29
		f 4 -439 85 -20 439
		mu 0 4 29 44 26 30
		f 4 -438 -440 -19 -84
		mu 0 4 28 29 30 10
		f 4 4 440 441 -85
		mu 0 4 540 537 45 44
		f 4 5 86 442 -441
		mu 0 4 537 552 60 45
		f 4 -443 87 -22 443
		mu 0 4 45 60 42 46
		f 4 -442 -444 -21 -86
		mu 0 4 44 45 46 26
		f 4 6 444 445 -87
		mu 0 4 552 549 61 60
		f 4 7 88 446 -445
		mu 0 4 549 564 76 61
		f 4 -447 89 -24 447
		mu 0 4 61 76 58 62
		f 4 -446 -448 -23 -88
		mu 0 4 60 61 62 42
		f 4 8 448 449 -89
		mu 0 4 564 561 77 76
		f 4 9 90 450 -449
		mu 0 4 561 576 92 77
		f 4 -451 91 -26 451
		mu 0 4 77 92 74 78
		f 4 -450 -452 -25 -90
		mu 0 4 76 77 78 58
		f 4 10 452 453 -91
		mu 0 4 576 573 93 92
		f 4 11 92 454 -453
		mu 0 4 573 588 108 93
		f 4 -455 93 -28 455
		mu 0 4 93 108 90 94
		f 4 -454 -456 -27 -92
		mu 0 4 92 93 94 74
		f 4 12 456 457 -93
		mu 0 4 588 585 109 108
		f 4 13 94 458 -457
		mu 0 4 585 600 124 109
		f 4 -459 95 -30 459
		mu 0 4 109 124 106 110
		f 4 -458 -460 -29 -94
		mu 0 4 108 109 110 90
		f 4 14 460 461 -95
		mu 0 4 600 597 125 124
		f 4 15 80 462 -461
		mu 0 4 597 516 118 125
		f 4 -463 81 -32 463
		mu 0 4 125 118 122 126
		f 4 -462 -464 -31 -96
		mu 0 4 124 125 126 106
		f 4 16 464 465 -97
		mu 0 4 128 129 141 131
		f 4 17 98 466 -465
		mu 0 4 129 133 156 141
		f 4 -467 99 312 467
		mu 0 4 141 156 138 1233
		f 4 -466 -468 313 -98
		mu 0 4 131 141 1233 143
		f 4 18 468 469 -99
		mu 0 4 133 145 157 156
		f 4 19 100 470 -469
		mu 0 4 145 149 172 157
		f 4 -471 101 308 471
		mu 0 4 157 172 1328 1217
		f 4 -470 -472 309 -100
		mu 0 4 156 157 1217 138
		f 4 20 472 473 -101
		mu 0 4 149 161 173 172
		f 4 21 102 474 -473
		mu 0 4 161 165 188 173
		f 4 -475 103 334 475
		mu 0 4 173 188 170 1329
		f 4 -474 -476 335 -102
		mu 0 4 172 173 1329 1328
		f 4 22 476 477 -103
		mu 0 4 165 177 189 188
		f 4 23 104 478 -477
		mu 0 4 177 181 204 189
		f 4 -479 105 332 479
		mu 0 4 189 204 186 1313
		f 4 -478 -480 333 -104
		mu 0 4 188 189 1313 170
		f 4 24 480 481 -105
		mu 0 4 181 193 205 204
		f 4 25 106 482 -481
		mu 0 4 193 197 220 205
		f 4 -483 107 328 483
		mu 0 4 205 220 202 1297
		f 4 -482 -484 329 -106
		mu 0 4 204 205 1297 186
		f 4 26 484 485 -107
		mu 0 4 197 209 221 220
		f 4 27 108 486 -485
		mu 0 4 209 213 236 221
		f 4 -487 109 324 487
		mu 0 4 221 236 218 1281
		f 4 -486 -488 325 -108
		mu 0 4 220 221 1281 202
		f 4 28 488 489 -109
		mu 0 4 213 225 237 236
		f 4 29 110 490 -489
		mu 0 4 225 229 252 237
		f 4 -491 111 320 491
		mu 0 4 237 252 234 1265
		f 4 -490 -492 321 -110
		mu 0 4 236 237 1265 218
		f 4 30 492 493 -111
		mu 0 4 229 241 253 252
		f 4 31 96 494 -493
		mu 0 4 241 245 246 253
		f 4 -495 97 316 495
		mu 0 4 253 246 250 1249
		f 4 -494 -496 317 -112
		mu 0 4 252 253 1249 234
		f 4 32 496 497 -113
		mu 0 4 991 987 269 259
		f 4 33 114 498 -497
		mu 0 4 987 975 284 269
		f 4 -499 115 184 499
		mu 0 4 269 284 266 721
		f 4 -498 -500 185 -114
		mu 0 4 259 269 721 271
		f 4 34 500 501 -115
		mu 0 4 975 971 285 284
		f 4 35 116 502 -501
		mu 0 4 971 1087 300 285
		f 4 -503 117 180 503
		mu 0 4 285 300 816 705
		f 4 -502 -504 181 -116
		mu 0 4 284 285 705 266
		f 4 36 504 505 -117
		mu 0 4 1087 1083 301 300
		f 4 37 118 506 -505
		mu 0 4 1083 1071 316 301
		f 4 -507 119 206 507
		mu 0 4 301 316 298 817
		f 4 -506 -508 207 -118
		mu 0 4 300 301 817 816
		f 4 38 508 509 -119
		mu 0 4 1071 1067 317 316
		f 4 39 120 510 -509
		mu 0 4 1067 1055 332 317
		f 4 -511 121 204 511
		mu 0 4 317 332 314 801
		f 4 -510 -512 205 -120
		mu 0 4 316 317 801 298
		f 4 40 512 513 -121
		mu 0 4 1055 1051 333 332
		f 4 41 122 514 -513
		mu 0 4 1051 1039 348 333
		f 4 -515 123 200 515
		mu 0 4 333 348 330 785
		f 4 -514 -516 201 -122
		mu 0 4 332 333 785 314
		f 4 42 516 517 -123
		mu 0 4 1039 1035 349 348
		f 4 43 124 518 -517
		mu 0 4 1035 1023 364 349
		f 4 -519 125 196 519
		mu 0 4 349 364 346 769
		f 4 -518 -520 197 -124
		mu 0 4 348 349 769 330
		f 4 44 520 521 -125
		mu 0 4 1023 1019 365 364
		f 4 45 126 522 -521
		mu 0 4 1019 1007 380 365
		f 4 -523 127 192 523
		mu 0 4 365 380 362 753
		f 4 -522 -524 193 -126
		mu 0 4 364 365 753 346
		f 4 46 524 525 -127
		mu 0 4 1007 1003 381 380
		f 4 47 112 526 -525
		mu 0 4 1003 373 374 381
		f 4 -527 113 188 527
		mu 0 4 381 374 378 737
		f 4 -526 -528 189 -128
		mu 0 4 380 381 737 362
		f 4 48 528 529 -129
		mu 0 4 384 388 397 502
		f 4 49 130 530 -529
		mu 0 4 388 400 412 397
		f 4 -531 131 412 531
		mu 0 4 397 412 394 1633
		f 4 -530 -532 413 -130
		mu 0 4 502 397 1633 506
		f 4 50 532 533 -131
		mu 0 4 400 404 413 412
		f 4 51 132 534 -533
		mu 0 4 404 416 428 413
		f 4 -535 133 408 535
		mu 0 4 413 428 410 1617
		f 4 -534 -536 409 -132
		mu 0 4 412 413 1617 394
		f 4 52 536 537 -133
		mu 0 4 416 420 429 428
		f 4 53 134 538 -537
		mu 0 4 420 432 444 429
		f 4 -539 135 404 539
		mu 0 4 429 444 1712 1601
		f 4 -538 -540 405 -134
		mu 0 4 428 429 1601 410
		f 4 54 540 541 -135
		mu 0 4 432 436 445 444
		f 4 55 136 542 -541
		mu 0 4 436 448 460 445
		f 4 -543 137 430 543
		mu 0 4 445 460 442 1713
		f 4 -542 -544 431 -136
		mu 0 4 444 445 1713 1712
		f 4 56 544 545 -137
		mu 0 4 448 452 461 460
		f 4 57 138 546 -545
		mu 0 4 452 464 476 461
		f 4 -547 139 428 547
		mu 0 4 461 476 458 1697
		f 4 -546 -548 429 -138
		mu 0 4 460 461 1697 442
		f 4 58 548 549 -139
		mu 0 4 464 468 477 476
		f 4 59 140 550 -549
		mu 0 4 468 480 492 477
		f 4 -551 141 424 551
		mu 0 4 477 492 474 1681
		f 4 -550 -552 425 -140
		mu 0 4 476 477 1681 458
		f 4 60 552 553 -141
		mu 0 4 480 484 493 492
		f 4 61 142 554 -553
		mu 0 4 484 496 508 493
		f 4 -555 143 420 555
		mu 0 4 493 508 490 1665
		f 4 -554 -556 421 -142
		mu 0 4 492 493 1665 474
		f 4 62 556 557 -143
		mu 0 4 496 500 509 508
		f 4 63 128 558 -557
		mu 0 4 500 384 502 509
		f 4 -559 129 416 559
		mu 0 4 509 502 506 1649
		f 4 -558 -560 417 -144
		mu 0 4 508 509 1649 490
		f 4 -2 560 561 147
		mu 0 4 528 513 522 529
		f 4 -146 562 -561 -1
		mu 0 4 516 605 522 513
		f 4 146 -562 -563 -145
		mu 0 4 592 529 522 605
		f 4 -4 563 564 149
		mu 0 4 540 525 534 541
		f 4 -148 565 -564 -3
		mu 0 4 528 529 534 525
		f 4 148 -565 -566 -147
		mu 0 4 592 541 534 529
		f 4 -6 566 567 151
		mu 0 4 552 537 546 553
		f 4 -150 568 -567 -5
		mu 0 4 540 541 546 537
		f 4 150 -568 -569 -149
		mu 0 4 592 553 546 541
		f 4 -8 569 570 153
		mu 0 4 564 549 558 565
		f 4 -152 571 -570 -7
		mu 0 4 552 553 558 549
		f 4 152 -571 -572 -151
		mu 0 4 592 565 558 553
		f 4 -10 572 573 155
		mu 0 4 576 561 570 577
		f 4 -154 574 -573 -9
		mu 0 4 564 565 570 561
		f 4 154 -574 -575 -153
		mu 0 4 592 577 570 565
		f 4 -12 575 576 157
		mu 0 4 588 573 582 589
		f 4 -156 577 -576 -11
		mu 0 4 576 577 582 573
		f 4 156 -577 -578 -155
		mu 0 4 592 589 582 577
		f 4 -14 578 579 159
		mu 0 4 600 585 594 601
		f 4 -158 580 -579 -13
		mu 0 4 588 589 594 585
		f 4 158 -580 -581 -157
		mu 0 4 592 601 594 589
		f 4 -16 581 582 145
		mu 0 4 516 597 606 605
		f 4 -160 583 -582 -15
		mu 0 4 600 601 606 597
		f 4 144 -583 -584 -159
		mu 0 4 592 605 606 601
		f 4 64 584 585 -161
		mu 0 4 1519 1515 618 697
		f 4 162 586 -585 65
		mu 0 4 1503 629 618 1515
		f 4 -162 -586 -587 163
		mu 0 4 700 697 618 629
		f 4 66 587 588 -163
		mu 0 4 1503 1499 630 629
		f 4 164 589 -588 67
		mu 0 4 1487 641 630 1499
		f 4 -164 -589 -590 165
		mu 0 4 700 629 630 641
		f 4 68 590 591 -165
		mu 0 4 1487 1483 642 641
		f 4 166 592 -591 69
		mu 0 4 1599 653 642 1483
		f 4 -166 -592 -593 167
		mu 0 4 700 641 642 653
		f 4 70 593 594 -167
		mu 0 4 1599 1595 654 653
		f 4 168 595 -594 71
		mu 0 4 1583 665 654 1595
		f 4 -168 -595 -596 169
		mu 0 4 700 653 654 665
		f 4 72 596 597 -169
		mu 0 4 1583 1579 666 665
		f 4 170 598 -597 73
		mu 0 4 1567 677 666 1579
		f 4 -170 -598 -599 171
		mu 0 4 700 665 666 677
		f 4 74 599 600 -171
		mu 0 4 1567 1563 678 677
		f 4 172 601 -600 75
		mu 0 4 1551 689 678 1563
		f 4 -172 -601 -602 173
		mu 0 4 700 677 678 689
		f 4 76 602 603 -173
		mu 0 4 1551 1547 690 689
		f 4 174 604 -603 77
		mu 0 4 1535 701 690 1547
		f 4 -174 -604 -605 175
		mu 0 4 700 689 690 701
		f 4 78 605 606 -175
		mu 0 4 1535 1531 702 701
		f 4 160 607 -606 79
		mu 0 4 1519 697 702 1531
		f 4 -176 -607 -608 161
		mu 0 4 700 701 702 697
		f 4 -182 608 609 -179
		mu 0 4 266 705 717 726
		f 4 -181 176 610 -609
		mu 0 4 705 816 828 717
		f 4 -611 177 212 611
		mu 0 4 717 828 944 833
		f 4 -610 -612 213 -180
		mu 0 4 726 717 833 730
		f 4 -186 612 613 -183
		mu 0 4 271 721 733 723
		f 4 -185 178 614 -613
		mu 0 4 721 266 726 733
		f 4 -615 179 216 615
		mu 0 4 733 726 730 849
		f 4 -614 -616 217 -184
		mu 0 4 723 733 849 735
		f 4 -190 616 617 -187
		mu 0 4 362 737 749 758
		f 4 -189 182 618 -617
		mu 0 4 737 378 742 749
		f 4 -619 183 220 619
		mu 0 4 749 742 746 865
		f 4 -618 -620 221 -188
		mu 0 4 758 749 865 762
		f 4 -194 620 621 -191
		mu 0 4 346 753 765 774
		f 4 -193 186 622 -621
		mu 0 4 753 362 758 765
		f 4 -623 187 224 623
		mu 0 4 765 758 762 881
		f 4 -622 -624 225 -192
		mu 0 4 774 765 881 778
		f 4 -198 624 625 -195
		mu 0 4 330 769 781 790
		f 4 -197 190 626 -625
		mu 0 4 769 346 774 781
		f 4 -627 191 228 627
		mu 0 4 781 774 778 897
		f 4 -626 -628 229 -196
		mu 0 4 790 781 897 794
		f 4 -202 628 629 -199
		mu 0 4 314 785 797 806
		f 4 -201 194 630 -629
		mu 0 4 785 330 790 797
		f 4 -631 195 232 631
		mu 0 4 797 790 794 913
		f 4 -630 -632 233 -200
		mu 0 4 806 797 913 810
		f 4 -206 632 633 -203
		mu 0 4 298 801 813 822
		f 4 -205 198 634 -633
		mu 0 4 801 314 806 813
		f 4 -635 199 236 635
		mu 0 4 813 806 810 929
		f 4 -634 -636 237 -204
		mu 0 4 822 813 929 826
		f 4 -208 636 637 -177
		mu 0 4 816 817 829 828
		f 4 -207 202 638 -637
		mu 0 4 817 298 822 829
		f 4 -639 203 238 639
		mu 0 4 829 822 826 945
		f 4 -638 -640 239 -178
		mu 0 4 828 829 945 944
		f 4 -214 640 641 -211
		mu 0 4 730 833 845 854
		f 4 -213 208 642 -641
		mu 0 4 833 944 956 845
		f 4 -643 209 340 643
		mu 0 4 845 956 1456 1345
		f 4 -642 -644 341 -212
		mu 0 4 854 845 1345 858
		f 4 -218 644 645 -215
		mu 0 4 735 849 861 851
		f 4 -217 210 646 -645
		mu 0 4 849 730 854 861
		f 4 -647 211 344 647
		mu 0 4 861 854 858 1361
		f 4 -646 -648 345 -216
		mu 0 4 851 861 1361 863
		f 4 -222 648 649 -219
		mu 0 4 762 865 877 886
		f 4 -221 214 650 -649
		mu 0 4 865 746 870 877
		f 4 -651 215 348 651
		mu 0 4 877 870 874 1377
		f 4 -650 -652 349 -220
		mu 0 4 886 877 1377 890
		f 4 -226 652 653 -223
		mu 0 4 778 881 893 902
		f 4 -225 218 654 -653
		mu 0 4 881 762 886 893
		f 4 -655 219 352 655
		mu 0 4 893 886 890 1393
		f 4 -654 -656 353 -224
		mu 0 4 902 893 1393 906
		f 4 -230 656 657 -227
		mu 0 4 794 897 909 918
		f 4 -229 222 658 -657
		mu 0 4 897 778 902 909
		f 4 -659 223 356 659
		mu 0 4 909 902 906 1409
		f 4 -658 -660 357 -228
		mu 0 4 918 909 1409 922
		f 4 -234 660 661 -231
		mu 0 4 810 913 925 934
		f 4 -233 226 662 -661
		mu 0 4 913 794 918 925
		f 4 -663 227 360 663
		mu 0 4 925 918 922 1425
		f 4 -662 -664 361 -232
		mu 0 4 934 925 1425 938
		f 4 -238 664 665 -235
		mu 0 4 826 929 941 950
		f 4 -237 230 666 -665
		mu 0 4 929 810 934 941
		f 4 -667 231 364 667
		mu 0 4 941 934 938 1441
		f 4 -666 -668 365 -236
		mu 0 4 950 941 1441 954
		f 4 -240 668 669 -209
		mu 0 4 944 945 957 956
		f 4 -239 234 670 -669
		mu 0 4 945 826 950 957
		f 4 -671 235 366 671
		mu 0 4 957 950 954 1457
		f 4 -670 -672 367 -210
		mu 0 4 956 957 1457 1456
		f 4 -246 672 673 -243
		mu 0 4 1103 1099 973 982
		f 4 -245 240 674 -673
		mu 0 4 1099 1215 1084 973
		f 4 -675 241 -36 675
		mu 0 4 973 1084 1087 971
		f 4 -674 -676 -35 -244
		mu 0 4 982 973 971 975
		f 4 -250 676 677 -247
		mu 0 4 1119 1115 989 979
		f 4 -249 242 678 -677
		mu 0 4 1115 1103 982 989
		f 4 -679 243 -34 679
		mu 0 4 989 982 975 987
		f 4 -678 -680 -33 -248
		mu 0 4 979 989 987 991
		f 4 -254 680 681 -251
		mu 0 4 1135 1131 1005 1014
		f 4 -253 246 682 -681
		mu 0 4 1131 997 998 1005
		f 4 -683 247 -48 683
		mu 0 4 1005 998 373 1003
		f 4 -682 -684 -47 -252
		mu 0 4 1014 1005 1003 1007
		f 4 -258 684 685 -255
		mu 0 4 1151 1147 1021 1030
		f 4 -257 250 686 -685
		mu 0 4 1147 1135 1014 1021
		f 4 -687 251 -46 687
		mu 0 4 1021 1014 1007 1019
		f 4 -686 -688 -45 -256
		mu 0 4 1030 1021 1019 1023
		f 4 -262 688 689 -259
		mu 0 4 1167 1163 1037 1046
		f 4 -261 254 690 -689
		mu 0 4 1163 1151 1030 1037
		f 4 -691 255 -44 691
		mu 0 4 1037 1030 1023 1035
		f 4 -690 -692 -43 -260
		mu 0 4 1046 1037 1035 1039
		f 4 -266 692 693 -263
		mu 0 4 1183 1179 1053 1062
		f 4 -265 258 694 -693
		mu 0 4 1179 1167 1046 1053
		f 4 -695 259 -42 695
		mu 0 4 1053 1046 1039 1051
		f 4 -694 -696 -41 -264
		mu 0 4 1062 1053 1051 1055
		f 4 -270 696 697 -267
		mu 0 4 1199 1195 1069 1078
		f 4 -269 262 698 -697
		mu 0 4 1195 1183 1062 1069
		f 4 -699 263 -40 699
		mu 0 4 1069 1062 1055 1067
		f 4 -698 -700 -39 -268
		mu 0 4 1078 1069 1067 1071
		f 4 -272 700 701 -241
		mu 0 4 1215 1211 1085 1084
		f 4 -271 266 702 -701
		mu 0 4 1211 1199 1078 1085
		f 4 -703 267 -38 703
		mu 0 4 1085 1078 1071 1083
		f 4 -702 -704 -37 -242
		mu 0 4 1084 1085 1083 1087
		f 4 -278 704 705 -275
		mu 0 4 1231 1227 1101 1110
		f 4 -277 272 706 -705
		mu 0 4 1227 1343 1212 1101
		f 4 -707 273 244 707
		mu 0 4 1101 1212 1215 1099
		f 4 -706 -708 245 -276
		mu 0 4 1110 1101 1099 1103
		f 4 -282 708 709 -279
		mu 0 4 1247 1243 1117 1107
		f 4 -281 274 710 -709
		mu 0 4 1243 1231 1110 1117
		f 4 -711 275 248 711
		mu 0 4 1117 1110 1103 1115
		f 4 -710 -712 249 -280
		mu 0 4 1107 1117 1115 1119
		f 4 -286 712 713 -283
		mu 0 4 1263 1259 1133 1142
		f 4 -285 278 714 -713
		mu 0 4 1259 1125 1126 1133
		f 4 -715 279 252 715
		mu 0 4 1133 1126 997 1131
		f 4 -714 -716 253 -284
		mu 0 4 1142 1133 1131 1135
		f 4 -290 716 717 -287
		mu 0 4 1279 1275 1149 1158
		f 4 -289 282 718 -717
		mu 0 4 1275 1263 1142 1149
		f 4 -719 283 256 719
		mu 0 4 1149 1142 1135 1147
		f 4 -718 -720 257 -288
		mu 0 4 1158 1149 1147 1151
		f 4 -294 720 721 -291
		mu 0 4 1295 1291 1165 1174
		f 4 -293 286 722 -721
		mu 0 4 1291 1279 1158 1165
		f 4 -723 287 260 723
		mu 0 4 1165 1158 1151 1163
		f 4 -722 -724 261 -292
		mu 0 4 1174 1165 1163 1167
		f 4 -298 724 725 -295
		mu 0 4 1311 1307 1181 1190
		f 4 -297 290 726 -725
		mu 0 4 1307 1295 1174 1181
		f 4 -727 291 264 727
		mu 0 4 1181 1174 1167 1179
		f 4 -726 -728 265 -296
		mu 0 4 1190 1181 1179 1183
		f 4 -302 728 729 -299
		mu 0 4 1327 1323 1197 1206
		f 4 -301 294 730 -729
		mu 0 4 1323 1311 1190 1197
		f 4 -731 295 268 731
		mu 0 4 1197 1190 1183 1195
		f 4 -730 -732 269 -300
		mu 0 4 1206 1197 1195 1199
		f 4 -304 732 733 -273
		mu 0 4 1343 1339 1213 1212
		f 4 -303 298 734 -733
		mu 0 4 1339 1327 1206 1213
		f 4 -735 299 270 735
		mu 0 4 1213 1206 1199 1211
		f 4 -734 -736 271 -274
		mu 0 4 1212 1213 1211 1215
		f 4 -310 736 737 -307
		mu 0 4 138 1217 1229 1238
		f 4 -309 304 738 -737
		mu 0 4 1217 1328 1340 1229
		f 4 -739 305 276 739
		mu 0 4 1229 1340 1343 1227
		f 4 -738 -740 277 -308
		mu 0 4 1238 1229 1227 1231
		f 4 -314 740 741 -311
		mu 0 4 143 1233 1245 1235
		f 4 -313 306 742 -741
		mu 0 4 1233 138 1238 1245
		f 4 -743 307 280 743
		mu 0 4 1245 1238 1231 1243
		f 4 -742 -744 281 -312
		mu 0 4 1235 1245 1243 1247
		f 4 -318 744 745 -315
		mu 0 4 234 1249 1261 1270
		f 4 -317 310 746 -745
		mu 0 4 1249 250 1254 1261
		f 4 -747 311 284 747
		mu 0 4 1261 1254 1125 1259
		f 4 -746 -748 285 -316
		mu 0 4 1270 1261 1259 1263
		f 4 -322 748 749 -319
		mu 0 4 218 1265 1277 1286
		f 4 -321 314 750 -749
		mu 0 4 1265 234 1270 1277
		f 4 -751 315 288 751
		mu 0 4 1277 1270 1263 1275
		f 4 -750 -752 289 -320
		mu 0 4 1286 1277 1275 1279
		f 4 -326 752 753 -323
		mu 0 4 202 1281 1293 1302
		f 4 -325 318 754 -753
		mu 0 4 1281 218 1286 1293
		f 4 -755 319 292 755
		mu 0 4 1293 1286 1279 1291
		f 4 -754 -756 293 -324
		mu 0 4 1302 1293 1291 1295
		f 4 -330 756 757 -327
		mu 0 4 186 1297 1309 1318
		f 4 -329 322 758 -757
		mu 0 4 1297 202 1302 1309
		f 4 -759 323 296 759
		mu 0 4 1309 1302 1295 1307
		f 4 -758 -760 297 -328
		mu 0 4 1318 1309 1307 1311
		f 4 -334 760 761 -331
		mu 0 4 170 1313 1325 1334
		f 4 -333 326 762 -761
		mu 0 4 1313 186 1318 1325
		f 4 -763 327 300 763
		mu 0 4 1325 1318 1311 1323
		f 4 -762 -764 301 -332
		mu 0 4 1334 1325 1323 1327
		f 4 -336 764 765 -305
		mu 0 4 1328 1329 1341 1340
		f 4 -335 330 766 -765
		mu 0 4 1329 170 1334 1341
		f 4 -767 331 302 767
		mu 0 4 1341 1334 1327 1339
		f 4 -766 -768 303 -306
		mu 0 4 1340 1341 1339 1343
		f 4 -342 768 769 -339
		mu 0 4 858 1345 1357 1366
		f 4 -341 336 770 -769
		mu 0 4 1345 1456 1468 1357
		f 4 -771 337 -52 771
		mu 0 4 1357 1468 1471 1355
		f 4 -770 -772 -51 -340
		mu 0 4 1366 1357 1355 1359
		f 4 -346 772 773 -343
		mu 0 4 863 1361 1373 1363
		f 4 -345 338 774 -773
		mu 0 4 1361 858 1366 1373
		f 4 -775 339 -50 775
		mu 0 4 1373 1366 1359 1371
		f 4 -774 -776 -49 -344
		mu 0 4 1363 1373 1371 1375
		f 4 -350 776 777 -347
		mu 0 4 890 1377 1389 1398
		f 4 -349 342 778 -777
		mu 0 4 1377 874 1382 1389
		f 4 -779 343 -64 779
		mu 0 4 1389 1382 1386 1387
		f 4 -778 -780 -63 -348
		mu 0 4 1398 1389 1387 1391
		f 4 -354 780 781 -351
		mu 0 4 906 1393 1405 1414
		f 4 -353 346 782 -781
		mu 0 4 1393 890 1398 1405
		f 4 -783 347 -62 783
		mu 0 4 1405 1398 1391 1403
		f 4 -782 -784 -61 -352
		mu 0 4 1414 1405 1403 1407
		f 4 -358 784 785 -355
		mu 0 4 922 1409 1421 1430
		f 4 -357 350 786 -785
		mu 0 4 1409 906 1414 1421
		f 4 -787 351 -60 787
		mu 0 4 1421 1414 1407 1419
		f 4 -786 -788 -59 -356
		mu 0 4 1430 1421 1419 1423
		f 4 -362 788 789 -359
		mu 0 4 938 1425 1437 1446
		f 4 -361 354 790 -789
		mu 0 4 1425 922 1430 1437
		f 4 -791 355 -58 791
		mu 0 4 1437 1430 1423 1435
		f 4 -790 -792 -57 -360
		mu 0 4 1446 1437 1435 1439
		f 4 -366 792 793 -363
		mu 0 4 954 1441 1453 1462
		f 4 -365 358 794 -793
		mu 0 4 1441 938 1446 1453
		f 4 -795 359 -56 795
		mu 0 4 1453 1446 1439 1451
		f 4 -794 -796 -55 -364
		mu 0 4 1462 1453 1451 1455
		f 4 -368 796 797 -337
		mu 0 4 1456 1457 1469 1468
		f 4 -367 362 798 -797
		mu 0 4 1457 954 1462 1469
		f 4 -799 363 -54 799
		mu 0 4 1469 1462 1455 1467
		f 4 -798 -800 -53 -338
		mu 0 4 1468 1469 1467 1471
		f 4 -374 800 801 -371
		mu 0 4 1615 1611 1485 1494
		f 4 -373 368 802 -801
		mu 0 4 1611 1727 1596 1485
		f 4 -803 369 -70 803
		mu 0 4 1485 1596 1599 1483
		f 4 -802 -804 -69 -372
		mu 0 4 1494 1485 1483 1487
		f 4 -378 804 805 -375
		mu 0 4 1631 1627 1501 1510
		f 4 -377 370 806 -805
		mu 0 4 1627 1615 1494 1501
		f 4 -807 371 -68 807
		mu 0 4 1501 1494 1487 1499
		f 4 -806 -808 -67 -376
		mu 0 4 1510 1501 1499 1503
		f 4 -382 808 809 -379
		mu 0 4 1647 1643 1517 1526
		f 4 -381 374 810 -809
		mu 0 4 1643 1631 1510 1517
		f 4 -811 375 -66 811
		mu 0 4 1517 1510 1503 1515
		f 4 -810 -812 -65 -380
		mu 0 4 1526 1517 1515 1519
		f 4 -386 812 813 -383
		mu 0 4 1663 1659 1533 1542
		f 4 -385 378 814 -813
		mu 0 4 1659 1647 1526 1533
		f 4 -815 379 -80 815
		mu 0 4 1533 1526 1519 1531
		f 4 -814 -816 -79 -384
		mu 0 4 1542 1533 1531 1535
		f 4 -390 816 817 -387
		mu 0 4 1679 1675 1549 1558
		f 4 -389 382 818 -817
		mu 0 4 1675 1663 1542 1549
		f 4 -819 383 -78 819
		mu 0 4 1549 1542 1535 1547
		f 4 -818 -820 -77 -388
		mu 0 4 1558 1549 1547 1551
		f 4 -394 820 821 -391
		mu 0 4 1695 1691 1565 1574
		f 4 -393 386 822 -821
		mu 0 4 1691 1679 1558 1565
		f 4 -823 387 -76 823
		mu 0 4 1565 1558 1551 1563
		f 4 -822 -824 -75 -392
		mu 0 4 1574 1565 1563 1567
		f 4 -398 824 825 -395
		mu 0 4 1711 1707 1581 1590
		f 4 -397 390 826 -825
		mu 0 4 1707 1695 1574 1581
		f 4 -827 391 -74 827
		mu 0 4 1581 1574 1567 1579
		f 4 -826 -828 -73 -396
		mu 0 4 1590 1581 1579 1583
		f 4 -400 828 829 -369
		mu 0 4 1727 1723 1597 1596
		f 4 -399 394 830 -829
		mu 0 4 1723 1711 1590 1597
		f 4 -831 395 -72 831
		mu 0 4 1597 1590 1583 1595
		f 4 -830 -832 -71 -370
		mu 0 4 1596 1597 1595 1599
		f 4 -406 832 833 -403
		mu 0 4 410 1601 1613 1622
		f 4 -405 400 834 -833
		mu 0 4 1601 1712 1724 1613
		f 4 -835 401 372 835
		mu 0 4 1613 1724 1727 1611
		f 4 -834 -836 373 -404
		mu 0 4 1622 1613 1611 1615
		f 4 -410 836 837 -407
		mu 0 4 394 1617 1629 1638
		f 4 -409 402 838 -837
		mu 0 4 1617 410 1622 1629
		f 4 -839 403 376 839
		mu 0 4 1629 1622 1615 1627
		f 4 -838 -840 377 -408
		mu 0 4 1638 1629 1627 1631
		f 4 -414 840 841 -411
		mu 0 4 506 1633 1645 1654
		f 4 -413 406 842 -841
		mu 0 4 1633 394 1638 1645
		f 4 -843 407 380 843
		mu 0 4 1645 1638 1631 1643
		f 4 -842 -844 381 -412
		mu 0 4 1654 1645 1643 1647
		f 4 -418 844 845 -415
		mu 0 4 490 1649 1661 1670
		f 4 -417 410 846 -845
		mu 0 4 1649 506 1654 1661
		f 4 -847 411 384 847
		mu 0 4 1661 1654 1647 1659
		f 4 -846 -848 385 -416
		mu 0 4 1670 1661 1659 1663
		f 4 -422 848 849 -419
		mu 0 4 474 1665 1677 1686
		f 4 -421 414 850 -849
		mu 0 4 1665 490 1670 1677
		f 4 -851 415 388 851
		mu 0 4 1677 1670 1663 1675
		f 4 -850 -852 389 -420
		mu 0 4 1686 1677 1675 1679
		f 4 -426 852 853 -423
		mu 0 4 458 1681 1693 1702
		f 4 -425 418 854 -853
		mu 0 4 1681 474 1686 1693
		f 4 -855 419 392 855
		mu 0 4 1693 1686 1679 1691
		f 4 -854 -856 393 -424
		mu 0 4 1702 1693 1691 1695
		f 4 -430 856 857 -427
		mu 0 4 442 1697 1709 1718
		f 4 -429 422 858 -857
		mu 0 4 1697 458 1702 1709
		f 4 -859 423 396 859
		mu 0 4 1709 1702 1695 1707
		f 4 -858 -860 397 -428
		mu 0 4 1718 1709 1707 1711
		f 4 -432 860 861 -401
		mu 0 4 1712 1713 1725 1724
		f 4 -431 426 862 -861
		mu 0 4 1713 442 1718 1725
		f 4 -863 427 398 863
		mu 0 4 1725 1718 1711 1723
		f 4 -862 -864 399 -402
		mu 0 4 1724 1725 1723 1727;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group7";
createNode transform -n "pCylinder8" -p "group7";
	setAttr ".t" -type "double3" 3.5265406547380964 0.40314267917801783 2.8961371479600277 ;
	setAttr ".r" -type "double3" 90 0 90 ;
	setAttr ".s" -type "double3" 0.23958881803654217 0.23958881803654217 0.23958881803654217 ;
createNode mesh -n "pCylinderShape8" -p "|group7|pCylinder8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2" -p "group7";
	setAttr ".t" -type "double3" 3.5296898211418704 0.43777346980917908 3.0366226713692437 ;
	setAttr ".s" -type "double3" 0.60369554659738145 0.42653249361090084 0.41774768015175379 ;
createNode mesh -n "pCubeShape2" -p "|group7|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group8";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "pCylinder8" -p "group8";
	setAttr ".t" -type "double3" 3.5265406547380964 0.40314267917801783 2.8961371479600277 ;
	setAttr ".r" -type "double3" 90 0 90 ;
	setAttr ".s" -type "double3" 0.23958881803654217 0.23958881803654217 0.23958881803654217 ;
createNode mesh -n "pCylinderShape8" -p "|group8|pCylinder8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6" -p "|group8|pCylinder8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1216 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.55524272 0.10100729 0.52762139
		 0.089566149 0.54143202 0.056224223 0.58286405 0.073385939 0.52762139 0.089566149
		 0.5 0.078125007 0.5 0.039062511 0.54143202 0.056224223 0.54143202 0.056224223 0.5
		 0.039062511 0.5 1.4901161e-008 0.55524272 0.022882298 0.58286405 0.073385939 0.54143202
		 0.056224223 0.55524272 0.022882298 0.61048543 0.04576458 0.5 0.078125007 0.47237864
		 0.089566149 0.45856798 0.056224223 0.5 0.039062511 0.47237864 0.089566149 0.44475728
		 0.10100729 0.41713592 0.073385939 0.45856798 0.056224223 0.45856798 0.056224223 0.41713592
		 0.073385939 0.38951457 0.04576458 0.44475728 0.022882298 0.5 0.039062511 0.45856798
		 0.056224223 0.44475728 0.022882298 0.5 1.4901161e-008 0.44475728 0.10100729 0.43331614
		 0.12862864 0.3999742 0.11481796 0.41713592 0.073385939 0.43331614 0.12862864 0.421875
		 0.15625 0.3828125 0.15625 0.3999742 0.11481796 0.3999742 0.11481796 0.3828125 0.15625
		 0.34375 0.15625 0.36663228 0.10100729 0.41713592 0.073385939 0.3999742 0.11481796
		 0.36663228 0.10100729 0.38951457 0.04576458 0.421875 0.15625 0.43331614 0.18387136
		 0.39997423 0.19768204 0.3828125 0.15625 0.43331614 0.18387136 0.44475728 0.21149272
		 0.41713592 0.23911408 0.39997423 0.19768204 0.39997423 0.19768204 0.41713592 0.23911408
		 0.38951457 0.26673543 0.36663228 0.21149272 0.3828125 0.15625 0.39997423 0.19768204
		 0.36663228 0.21149272 0.34375 0.15625 0.44475728 0.21149272 0.47237864 0.22293386
		 0.45856795 0.25627577 0.41713592 0.23911408 0.47237864 0.22293386 0.5 0.234375 0.5
		 0.2734375 0.45856795 0.25627577 0.45856795 0.25627577 0.5 0.2734375 0.5 0.3125 0.44475728
		 0.28961772 0.41713592 0.23911408 0.45856795 0.25627577 0.44475728 0.28961772 0.38951457
		 0.26673543 0.5 0.234375 0.52762139 0.22293386 0.54143202 0.25627577 0.5 0.2734375
		 0.52762139 0.22293386 0.55524272 0.21149272 0.58286405 0.23911408 0.54143202 0.25627577
		 0.54143202 0.25627577 0.58286405 0.23911408 0.61048543 0.26673543 0.55524272 0.28961772
		 0.5 0.2734375 0.54143202 0.25627577 0.55524272 0.28961772 0.5 0.3125 0.55524272 0.21149272
		 0.56668389 0.18387136 0.60002577 0.19768204 0.58286405 0.23911408 0.56668389 0.18387136
		 0.578125 0.15625 0.6171875 0.15625 0.60002577 0.19768204 0.60002577 0.19768204 0.6171875
		 0.15625 0.65625 0.15625 0.63336772 0.21149272 0.58286405 0.23911408 0.60002577 0.19768204
		 0.63336772 0.21149272 0.61048543 0.26673543 0.578125 0.15625 0.56668389 0.12862864
		 0.60002577 0.11481796 0.6171875 0.15625 0.56668389 0.12862864 0.55524272 0.10100729
		 0.58286405 0.073385939 0.60002577 0.11481796 0.60002577 0.11481796 0.58286405 0.073385939
		 0.61048543 0.04576458 0.63336772 0.10100729 0.6171875 0.15625 0.60002577 0.11481796
		 0.63336772 0.10100729 0.65625 0.15625 0.375 0.3125 0.390625 0.3125 0.390625 0.40648496
		 0.375 0.40648496 0.390625 0.3125 0.40625 0.3125 0.40625 0.40648496 0.390625 0.40648496
		 0.390625 0.40648496 0.40625 0.40648496 0.40625 0.50046992 0.390625 0.50046992 0.375
		 0.40648496 0.390625 0.40648496 0.390625 0.50046992 0.375 0.50046992 0.40625 0.3125
		 0.421875 0.3125 0.421875 0.40648496 0.40625 0.40648496 0.421875 0.3125 0.4375 0.3125
		 0.4375 0.40648496 0.421875 0.40648496 0.421875 0.40648496 0.4375 0.40648496 0.4375
		 0.50046992 0.421875 0.50046992 0.40625 0.40648496 0.421875 0.40648496 0.421875 0.50046992
		 0.40625 0.50046992 0.4375 0.3125 0.453125 0.3125 0.453125 0.40648496 0.4375 0.40648496
		 0.453125 0.3125 0.46875 0.3125 0.46875 0.40648496 0.453125 0.40648496 0.453125 0.40648496
		 0.46875 0.40648496 0.46875 0.50046992 0.453125 0.50046992 0.4375 0.40648496 0.453125
		 0.40648496 0.453125 0.50046992 0.4375 0.50046992 0.46875 0.3125 0.484375 0.3125 0.484375
		 0.40648496 0.46875 0.40648496 0.484375 0.3125 0.5 0.3125 0.5 0.40648496 0.484375
		 0.40648496 0.484375 0.40648496 0.5 0.40648496 0.5 0.50046992 0.484375 0.50046992
		 0.46875 0.40648496 0.484375 0.40648496 0.484375 0.50046992 0.46875 0.50046992 0.5
		 0.3125 0.515625 0.3125 0.515625 0.40648496 0.5 0.40648496 0.515625 0.3125 0.53125
		 0.3125 0.53125 0.40648496 0.515625 0.40648496 0.515625 0.40648496 0.53125 0.40648496
		 0.53125 0.50046992 0.515625 0.50046992 0.5 0.40648496 0.515625 0.40648496 0.515625
		 0.50046992 0.5 0.50046992 0.53125 0.3125 0.546875 0.3125 0.546875 0.40648496 0.53125
		 0.40648496 0.546875 0.3125 0.5625 0.3125 0.5625 0.40648496 0.546875 0.40648496 0.546875
		 0.40648496 0.5625 0.40648496 0.5625 0.50046992 0.546875 0.50046992 0.53125 0.40648496
		 0.546875 0.40648496 0.546875 0.50046992 0.53125 0.50046992 0.5625 0.3125 0.578125
		 0.3125 0.578125 0.40648496 0.5625 0.40648496 0.578125 0.3125 0.59375 0.3125 0.59375
		 0.40648496 0.578125 0.40648496 0.578125 0.40648496 0.59375 0.40648496 0.59375 0.50046992
		 0.578125 0.50046992 0.5625 0.40648496 0.578125 0.40648496 0.578125 0.50046992 0.5625
		 0.50046992 0.59375 0.3125 0.609375 0.3125 0.609375 0.40648496 0.59375 0.40648496
		 0.609375 0.3125 0.625 0.3125 0.625 0.40648496 0.609375 0.40648496 0.609375 0.40648496
		 0.625 0.40648496;
	setAttr ".uvst[0].uvsp[250:499]" 0.625 0.50046992 0.609375 0.50046992 0.59375
		 0.40648496 0.609375 0.40648496 0.609375 0.50046992 0.59375 0.50046992 0.375 0.50046992
		 0.390625 0.50046992 0.390625 0.59445488 0.375 0.59445488 0.390625 0.50046992 0.40625
		 0.50046992 0.40625 0.59445488 0.390625 0.59445488 0.390625 0.59445488 0.40625 0.59445488
		 0.40625 0.68843985 0.390625 0.68843985 0.375 0.59445488 0.390625 0.59445488 0.390625
		 0.68843985 0.375 0.68843985 0.40625 0.50046992 0.421875 0.50046992 0.421875 0.59445488
		 0.40625 0.59445488 0.421875 0.50046992 0.4375 0.50046992 0.4375 0.59445488 0.421875
		 0.59445488 0.421875 0.59445488 0.4375 0.59445488 0.4375 0.68843985 0.421875 0.68843985
		 0.40625 0.59445488 0.421875 0.59445488 0.421875 0.68843985 0.40625 0.68843985 0.4375
		 0.50046992 0.453125 0.50046992 0.453125 0.59445488 0.4375 0.59445488 0.453125 0.50046992
		 0.46875 0.50046992 0.46875 0.59445488 0.453125 0.59445488 0.453125 0.59445488 0.46875
		 0.59445488 0.46875 0.68843985 0.453125 0.68843985 0.4375 0.59445488 0.453125 0.59445488
		 0.453125 0.68843985 0.4375 0.68843985 0.46875 0.50046992 0.484375 0.50046992 0.484375
		 0.59445488 0.46875 0.59445488 0.484375 0.50046992 0.5 0.50046992 0.5 0.59445488 0.484375
		 0.59445488 0.484375 0.59445488 0.5 0.59445488 0.5 0.68843985 0.484375 0.68843985
		 0.46875 0.59445488 0.484375 0.59445488 0.484375 0.68843985 0.46875 0.68843985 0.5
		 0.50046992 0.515625 0.50046992 0.515625 0.59445488 0.5 0.59445488 0.515625 0.50046992
		 0.53125 0.50046992 0.53125 0.59445488 0.515625 0.59445488 0.515625 0.59445488 0.53125
		 0.59445488 0.53125 0.68843985 0.515625 0.68843985 0.5 0.59445488 0.515625 0.59445488
		 0.515625 0.68843985 0.5 0.68843985 0.53125 0.50046992 0.546875 0.50046992 0.546875
		 0.59445488 0.53125 0.59445488 0.546875 0.50046992 0.5625 0.50046992 0.5625 0.59445488
		 0.546875 0.59445488 0.546875 0.59445488 0.5625 0.59445488 0.5625 0.68843985 0.546875
		 0.68843985 0.53125 0.59445488 0.546875 0.59445488 0.546875 0.68843985 0.53125 0.68843985
		 0.5625 0.50046992 0.578125 0.50046992 0.578125 0.59445488 0.5625 0.59445488 0.578125
		 0.50046992 0.59375 0.50046992 0.59375 0.59445488 0.578125 0.59445488 0.578125 0.59445488
		 0.59375 0.59445488 0.59375 0.68843985 0.578125 0.68843985 0.5625 0.59445488 0.578125
		 0.59445488 0.578125 0.68843985 0.5625 0.68843985 0.59375 0.50046992 0.609375 0.50046992
		 0.609375 0.59445488 0.59375 0.59445488 0.609375 0.50046992 0.625 0.50046992 0.625
		 0.59445488 0.609375 0.59445488 0.609375 0.59445488 0.625 0.59445488 0.625 0.68843985
		 0.609375 0.68843985 0.59375 0.59445488 0.609375 0.59445488 0.609375 0.68843985 0.59375
		 0.68843985 0.61048543 0.95423543 0.55524272 0.97711772 0.54143202 0.94377583 0.58286405
		 0.92661405 0.55524272 0.97711772 0.5 1 0.5 0.9609375 0.54143202 0.94377583 0.54143202
		 0.94377583 0.5 0.9609375 0.5 0.921875 0.52762139 0.91043389 0.58286405 0.92661405
		 0.54143202 0.94377583 0.52762139 0.91043389 0.55524272 0.89899272 0.5 1 0.44475728
		 0.97711772 0.45856798 0.94377577 0.5 0.9609375 0.44475728 0.97711772 0.38951457 0.95423543
		 0.41713592 0.92661405 0.45856798 0.94377577 0.45856798 0.94377577 0.41713592 0.92661405
		 0.44475728 0.89899272 0.47237864 0.91043389 0.5 0.9609375 0.45856798 0.94377577 0.47237864
		 0.91043389 0.5 0.921875 0.38951457 0.95423543 0.36663228 0.89899272 0.39997423 0.88518208
		 0.41713592 0.92661405 0.36663228 0.89899272 0.34375 0.84375 0.3828125 0.84375 0.39997423
		 0.88518208 0.39997423 0.88518208 0.3828125 0.84375 0.421875 0.84375 0.43331614 0.87137139
		 0.41713592 0.92661405 0.39997423 0.88518208 0.43331614 0.87137139 0.44475728 0.89899272
		 0.34375 0.84375 0.36663228 0.78850728 0.39997423 0.80231798 0.3828125 0.84375 0.36663228
		 0.78850728 0.38951457 0.73326457 0.41713592 0.76088595 0.39997423 0.80231798 0.39997423
		 0.80231798 0.41713592 0.76088595 0.44475728 0.78850728 0.43331614 0.81612861 0.3828125
		 0.84375 0.39997423 0.80231798 0.43331614 0.81612861 0.421875 0.84375 0.38951457 0.73326457
		 0.44475728 0.71038228 0.45856798 0.74372417 0.41713592 0.76088595 0.44475728 0.71038228
		 0.5 0.6875 0.5 0.7265625 0.45856798 0.74372417 0.45856798 0.74372417 0.5 0.7265625
		 0.5 0.765625 0.47237864 0.77706611 0.41713592 0.76088595 0.45856798 0.74372417 0.47237864
		 0.77706611 0.44475728 0.78850728 0.5 0.6875 0.55524272 0.71038228 0.54143202 0.74372423
		 0.5 0.7265625 0.55524272 0.71038228 0.61048543 0.73326457 0.58286405 0.76088595 0.54143202
		 0.74372423 0.54143202 0.74372423 0.58286405 0.76088595 0.55524272 0.78850728 0.52762139
		 0.77706611 0.5 0.7265625 0.54143202 0.74372423 0.52762139 0.77706611 0.5 0.765625
		 0.61048543 0.73326457 0.63336772 0.78850728 0.60002577 0.80231792 0.58286405 0.76088595
		 0.63336772 0.78850728 0.65625 0.84375 0.6171875 0.84375 0.60002577 0.80231792 0.60002577
		 0.80231792 0.6171875 0.84375 0.578125 0.84375 0.56668389 0.81612861 0.58286405 0.76088595
		 0.60002577 0.80231792 0.56668389 0.81612861 0.55524272 0.78850728 0.65625 0.84375
		 0.63336772 0.89899272 0.60002577 0.88518202 0.6171875 0.84375;
	setAttr ".uvst[0].uvsp[500:749]" 0.63336772 0.89899272 0.61048543 0.95423543
		 0.58286405 0.92661405 0.60002577 0.88518202 0.60002577 0.88518202 0.58286405 0.92661405
		 0.55524272 0.89899272 0.56668389 0.87137139 0.6171875 0.84375 0.60002577 0.88518202
		 0.56668389 0.87137139 0.578125 0.84375 0.5 0.078125007 0.52762139 0.089566149 0.51841426
		 0.10971078 0.5 0.1140625 0.55524272 0.10100729 0.52762139 0.12550364 0.51841426 0.10971078
		 0.52762139 0.089566149 0.5 0.15000001 0.5 0.1140625 0.51841426 0.10971078 0.52762139
		 0.12550364 0.44475728 0.10100729 0.47237864 0.089566149 0.4815858 0.10971078 0.47237864
		 0.12550364 0.5 0.078125007 0.5 0.1140625 0.4815858 0.10971078 0.47237864 0.089566149
		 0.5 0.15000001 0.47237864 0.12550364 0.4815858 0.10971078 0.5 0.1140625 0.421875
		 0.15625 0.43331614 0.12862864 0.45554411 0.13575244 0.4609375 0.153125 0.44475728
		 0.10100729 0.47237864 0.12550364 0.45554411 0.13575244 0.43331614 0.12862864 0.5
		 0.15000001 0.4609375 0.153125 0.45554411 0.13575244 0.47237864 0.12550364 0.44475728
		 0.21149272 0.43331614 0.18387136 0.45554411 0.17258091 0.47237864 0.18074636 0.421875
		 0.15625 0.4609375 0.153125 0.45554411 0.17258091 0.43331614 0.18387136 0.5 0.15000001
		 0.47237864 0.18074636 0.45554411 0.17258091 0.4609375 0.153125 0.5 0.234375 0.47237864
		 0.22293386 0.4815858 0.19862258 0.5 0.1921875 0.44475728 0.21149272 0.47237864 0.18074636
		 0.4815858 0.19862258 0.47237864 0.22293386 0.5 0.15000001 0.5 0.1921875 0.4815858
		 0.19862258 0.47237864 0.18074636 0.55524272 0.21149272 0.52762139 0.22293386 0.51841426
		 0.19862258 0.52762139 0.18074636 0.5 0.234375 0.5 0.1921875 0.51841426 0.19862258
		 0.52762139 0.22293386 0.5 0.15000001 0.52762139 0.18074636 0.51841426 0.19862258
		 0.5 0.1921875 0.578125 0.15625 0.56668389 0.18387136 0.54445595 0.17258091 0.5390625
		 0.153125 0.55524272 0.21149272 0.52762139 0.18074636 0.54445595 0.17258091 0.56668389
		 0.18387136 0.5 0.15000001 0.5390625 0.153125 0.54445595 0.17258091 0.52762139 0.18074636
		 0.55524272 0.10100729 0.56668389 0.12862864 0.54445595 0.13575244 0.52762139 0.12550364
		 0.578125 0.15625 0.5390625 0.153125 0.54445595 0.13575244 0.56668389 0.12862864 0.5
		 0.15000001 0.52762139 0.12550364 0.54445595 0.13575244 0.5390625 0.153125 0.55524272
		 0.89899272 0.52762139 0.91043389 0.51841426 0.88612258 0.52762139 0.86824632 0.5
		 0.921875 0.5 0.87968749 0.51841426 0.88612258 0.52762139 0.91043389 0.5 0.83749998
		 0.52762139 0.86824632 0.51841426 0.88612258 0.5 0.87968749 0.5 0.921875 0.47237864
		 0.91043389 0.4815858 0.88612258 0.5 0.87968749 0.44475728 0.89899272 0.47237864 0.86824632
		 0.4815858 0.88612258 0.47237864 0.91043389 0.5 0.83749998 0.5 0.87968749 0.4815858
		 0.88612258 0.47237864 0.86824632 0.44475728 0.89899272 0.43331614 0.87137139 0.45554411
		 0.86008096 0.47237864 0.86824632 0.421875 0.84375 0.4609375 0.84062499 0.45554411
		 0.86008096 0.43331614 0.87137139 0.5 0.83749998 0.47237864 0.86824632 0.45554411
		 0.86008096 0.4609375 0.84062499 0.421875 0.84375 0.43331614 0.81612861 0.45554411
		 0.82325244 0.4609375 0.84062499 0.44475728 0.78850728 0.47237864 0.81300366 0.45554411
		 0.82325244 0.43331614 0.81612861 0.5 0.83749998 0.4609375 0.84062499 0.45554411 0.82325244
		 0.47237864 0.81300366 0.44475728 0.78850728 0.47237864 0.77706611 0.4815858 0.79721081
		 0.47237864 0.81300366 0.5 0.765625 0.5 0.80156249 0.4815858 0.79721081 0.47237864
		 0.77706611 0.5 0.83749998 0.47237864 0.81300366 0.4815858 0.79721081 0.5 0.80156249
		 0.5 0.765625 0.52762139 0.77706611 0.51841426 0.79721081 0.5 0.80156249 0.55524272
		 0.78850728 0.52762139 0.81300366 0.51841426 0.79721081 0.52762139 0.77706611 0.5
		 0.83749998 0.5 0.80156249 0.51841426 0.79721081 0.52762139 0.81300366 0.55524272
		 0.78850728 0.56668389 0.81612861 0.54445595 0.82325244 0.52762139 0.81300366 0.578125
		 0.84375 0.5390625 0.84062499 0.54445595 0.82325244 0.56668389 0.81612861 0.5 0.83749998
		 0.52762139 0.81300366 0.54445595 0.82325244 0.5390625 0.84062499 0.578125 0.84375
		 0.56668389 0.87137139 0.54445595 0.86008096 0.5390625 0.84062499 0.55524272 0.89899272
		 0.52762139 0.86824632 0.54445595 0.86008096 0.56668389 0.87137139 0.5 0.83749998
		 0.5390625 0.84062499 0.54445595 0.86008096 0.52762139 0.86824632 0.5 1.4901161e-008
		 0.55524272 0.022882298 0.55524272 0.022882298 0.5 1.4901161e-008 0.55524272 0.022882298
		 0.61048543 0.04576458 0.61048543 0.04576458 0.55524272 0.022882298 0.55524272 0.022882298
		 0.61048543 0.04576458 0.61048543 0.04576458 0.55524272 0.022882298 0.5 1.4901161e-008
		 0.55524272 0.022882298 0.55524272 0.022882298 0.5 1.4901161e-008 0.38951457 0.04576458
		 0.44475728 0.022882298 0.44475728 0.022882298 0.38951457 0.04576458 0.44475728 0.022882298
		 0.5 1.4901161e-008 0.5 1.4901161e-008 0.44475728 0.022882298 0.44475728 0.022882298
		 0.5 1.4901161e-008 0.5 1.4901161e-008 0.44475728 0.022882298 0.38951457 0.04576458
		 0.44475728 0.022882298 0.44475728 0.022882298 0.38951457 0.04576458 0.34375 0.15625
		 0.36663228 0.10100729 0.36663228 0.10100729 0.34375 0.15625 0.36663228 0.10100729
		 0.38951457 0.04576458 0.38951457 0.04576458 0.36663228 0.10100729 0.36663228 0.10100729
		 0.38951457 0.04576458 0.38951457 0.04576458 0.36663228 0.10100729 0.34375 0.15625
		 0.36663228 0.10100729;
	setAttr ".uvst[0].uvsp[750:999]" 0.36663228 0.10100729 0.34375 0.15625 0.38951457
		 0.26673543 0.36663228 0.21149272 0.36663228 0.21149272 0.38951457 0.26673543 0.36663228
		 0.21149272 0.34375 0.15625 0.34375 0.15625 0.36663228 0.21149272 0.36663228 0.21149272
		 0.34375 0.15625 0.34375 0.15625 0.36663228 0.21149272 0.38951457 0.26673543 0.36663228
		 0.21149272 0.36663228 0.21149272 0.38951457 0.26673543 0.5 0.3125 0.44475728 0.28961772
		 0.44475728 0.28961772 0.5 0.3125 0.44475728 0.28961772 0.38951457 0.26673543 0.38951457
		 0.26673543 0.44475728 0.28961772 0.44475728 0.28961772 0.38951457 0.26673543 0.38951457
		 0.26673543 0.44475728 0.28961772 0.5 0.3125 0.44475728 0.28961772 0.44475728 0.28961772
		 0.5 0.3125 0.61048543 0.26673543 0.55524272 0.28961772 0.55524272 0.28961772 0.61048543
		 0.26673543 0.55524272 0.28961772 0.5 0.3125 0.5 0.3125 0.55524272 0.28961772 0.55524272
		 0.28961772 0.5 0.3125 0.5 0.3125 0.55524272 0.28961772 0.61048543 0.26673543 0.55524272
		 0.28961772 0.55524272 0.28961772 0.61048543 0.26673543 0.65625 0.15625 0.63336772
		 0.21149272 0.63336772 0.21149272 0.65625 0.15625 0.63336772 0.21149272 0.61048543
		 0.26673543 0.61048543 0.26673543 0.63336772 0.21149272 0.63336772 0.21149272 0.61048543
		 0.26673543 0.61048543 0.26673543 0.63336772 0.21149272 0.65625 0.15625 0.63336772
		 0.21149272 0.63336772 0.21149272 0.65625 0.15625 0.61048543 0.04576458 0.63336772
		 0.10100729 0.63336772 0.10100728 0.61048543 0.04576458 0.63336772 0.10100729 0.65625
		 0.15625 0.65625 0.15625 0.63336772 0.10100728 0.63336772 0.10100728 0.65625 0.15625
		 0.65625 0.15625 0.63336772 0.10100729 0.61048543 0.04576458 0.63336772 0.10100728
		 0.63336772 0.10100729 0.61048543 0.04576458 0.5 1.4901161e-008 0.55524272 0.022882298
		 0.55524272 0.022882298 0.5 1.4901161e-008 0.55524272 0.022882298 0.61048543 0.04576458
		 0.61048543 0.04576458 0.55524272 0.022882298 0.55524272 0.022882298 0.61048543 0.04576458
		 0.61048543 0.04576458 0.55524272 0.022882298 0.5 1.4901161e-008 0.55524272 0.022882298
		 0.55524272 0.022882298 0.5 1.4901161e-008 0.38951457 0.04576458 0.44475728 0.022882298
		 0.44475728 0.022882298 0.38951457 0.04576458 0.44475728 0.022882298 0.5 1.4901161e-008
		 0.5 1.4901161e-008 0.44475728 0.022882298 0.44475728 0.022882298 0.5 1.4901161e-008
		 0.5 1.4901161e-008 0.44475728 0.022882298 0.38951457 0.04576458 0.44475728 0.022882298
		 0.44475728 0.022882298 0.38951457 0.04576458 0.34375 0.15625 0.36663228 0.10100729
		 0.36663228 0.10100729 0.34375 0.15625 0.36663228 0.10100729 0.38951457 0.04576458
		 0.38951457 0.04576458 0.36663228 0.10100729 0.36663228 0.10100729 0.38951457 0.04576458
		 0.38951457 0.04576458 0.36663228 0.10100729 0.34375 0.15625 0.36663228 0.10100729
		 0.36663228 0.10100729 0.34375 0.15625 0.38951457 0.26673543 0.36663228 0.21149272
		 0.36663228 0.21149272 0.38951457 0.26673543 0.36663228 0.21149272 0.34375 0.15625
		 0.34375 0.15625 0.36663228 0.21149272 0.36663228 0.21149272 0.34375 0.15625 0.34375
		 0.15625 0.36663228 0.21149272 0.38951457 0.26673543 0.36663228 0.21149272 0.36663228
		 0.21149272 0.38951457 0.26673543 0.5 0.3125 0.44475728 0.28961772 0.44475728 0.28961772
		 0.5 0.3125 0.44475728 0.28961772 0.38951457 0.26673543 0.38951457 0.26673543 0.44475728
		 0.28961772 0.44475728 0.28961772 0.38951457 0.26673543 0.38951457 0.26673543 0.44475728
		 0.28961772 0.5 0.3125 0.44475728 0.28961772 0.44475728 0.28961772 0.5 0.3125 0.61048543
		 0.26673543 0.55524272 0.28961772 0.55524272 0.28961772 0.61048543 0.26673543 0.55524272
		 0.28961772 0.5 0.3125 0.5 0.3125 0.55524272 0.28961772 0.55524272 0.28961772 0.5
		 0.3125 0.5 0.3125 0.55524272 0.28961772 0.61048543 0.26673543 0.55524272 0.28961772
		 0.55524272 0.28961772 0.61048543 0.26673543 0.65625 0.15625 0.63336772 0.21149272
		 0.63336772 0.21149272 0.65625 0.15625 0.63336772 0.21149272 0.61048543 0.26673543
		 0.61048543 0.26673543 0.63336772 0.21149272 0.63336772 0.21149272 0.61048543 0.26673543
		 0.61048543 0.26673543 0.63336772 0.21149272 0.65625 0.15625 0.63336772 0.21149272
		 0.63336772 0.21149272 0.65625 0.15625 0.61048543 0.04576458 0.63336772 0.10100729
		 0.63336772 0.10100728 0.61048543 0.04576458 0.63336772 0.10100729 0.65625 0.15625
		 0.65625 0.15625 0.63336772 0.10100728 0.63336772 0.10100728 0.65625 0.15625 0.65625
		 0.15625 0.63336772 0.10100729 0.61048543 0.04576458 0.63336772 0.10100728 0.63336772
		 0.10100729 0.61048543 0.04576458 0.5 1.4901161e-008 0.55524272 0.022882298 0.55524272
		 0.022882298 0.5 1.4901161e-008 0.55524272 0.022882298 0.61048543 0.04576458 0.61048543
		 0.04576458 0.55524272 0.022882298 0.55524272 0.022882298 0.61048543 0.04576458 0.61048543
		 0.04576458 0.55524272 0.022882298 0.5 1.4901161e-008 0.55524272 0.022882298 0.55524272
		 0.022882298 0.5 1.4901161e-008 0.38951457 0.04576458 0.44475728 0.022882298 0.44475728
		 0.022882298 0.38951457 0.04576458 0.44475728 0.022882298 0.5 1.4901161e-008 0.5 1.4901161e-008
		 0.44475728 0.022882298 0.44475728 0.022882298 0.5 1.4901161e-008 0.5 1.4901161e-008
		 0.44475728 0.022882298 0.38951457 0.04576458 0.44475728 0.022882298 0.44475728 0.022882298
		 0.38951457 0.04576458 0.34375 0.15625 0.36663228 0.10100729 0.36663228 0.10100729
		 0.34375 0.15625 0.36663228 0.10100729 0.38951457 0.04576458 0.38951457 0.04576458
		 0.36663228 0.10100729;
	setAttr ".uvst[0].uvsp[1000:1215]" 0.36663228 0.10100729 0.38951457 0.04576458
		 0.38951457 0.04576458 0.36663228 0.10100729 0.34375 0.15625 0.36663228 0.10100729
		 0.36663228 0.10100729 0.34375 0.15625 0.38951457 0.26673543 0.36663228 0.21149272
		 0.36663228 0.21149272 0.38951457 0.26673543 0.36663228 0.21149272 0.34375 0.15625
		 0.34375 0.15625 0.36663228 0.21149272 0.36663228 0.21149272 0.34375 0.15625 0.34375
		 0.15625 0.36663228 0.21149272 0.38951457 0.26673543 0.36663228 0.21149272 0.36663228
		 0.21149272 0.38951457 0.26673543 0.5 0.3125 0.44475728 0.28961772 0.44475728 0.28961772
		 0.5 0.3125 0.44475728 0.28961772 0.38951457 0.26673543 0.38951457 0.26673543 0.44475728
		 0.28961772 0.44475728 0.28961772 0.38951457 0.26673543 0.38951457 0.26673543 0.44475728
		 0.28961772 0.5 0.3125 0.44475728 0.28961772 0.44475728 0.28961772 0.5 0.3125 0.61048543
		 0.26673543 0.55524272 0.28961772 0.55524272 0.28961772 0.61048543 0.26673543 0.55524272
		 0.28961772 0.5 0.3125 0.5 0.3125 0.55524272 0.28961772 0.55524272 0.28961772 0.5
		 0.3125 0.5 0.3125 0.55524272 0.28961772 0.61048543 0.26673543 0.55524272 0.28961772
		 0.55524272 0.28961772 0.61048543 0.26673543 0.65625 0.15625 0.63336772 0.21149272
		 0.63336772 0.21149272 0.65625 0.15625 0.63336772 0.21149272 0.61048543 0.26673543
		 0.61048543 0.26673543 0.63336772 0.21149272 0.63336772 0.21149272 0.61048543 0.26673543
		 0.61048543 0.26673543 0.63336772 0.21149272 0.65625 0.15625 0.63336772 0.21149272
		 0.63336772 0.21149272 0.65625 0.15625 0.61048543 0.04576458 0.63336772 0.10100729
		 0.63336772 0.10100728 0.61048543 0.04576458 0.63336772 0.10100729 0.65625 0.15625
		 0.65625 0.15625 0.63336772 0.10100728 0.63336772 0.10100728 0.65625 0.15625 0.65625
		 0.15625 0.63336772 0.10100729 0.61048543 0.04576458 0.63336772 0.10100728 0.63336772
		 0.10100729 0.61048543 0.04576458 0.5 1.4901161e-008 0.55524272 0.022882298 0.55524272
		 0.022882298 0.5 1.4901161e-008 0.55524272 0.022882298 0.61048543 0.04576458 0.61048543
		 0.04576458 0.55524272 0.022882298 0.55524272 0.022882298 0.61048543 0.04576458 0.61048543
		 0.04576458 0.55524272 0.022882298 0.5 1.4901161e-008 0.55524272 0.022882298 0.55524272
		 0.022882298 0.5 1.4901161e-008 0.38951457 0.04576458 0.44475728 0.022882298 0.44475728
		 0.022882298 0.38951457 0.04576458 0.44475728 0.022882298 0.5 1.4901161e-008 0.5 1.4901161e-008
		 0.44475728 0.022882298 0.44475728 0.022882298 0.5 1.4901161e-008 0.5 1.4901161e-008
		 0.44475728 0.022882298 0.38951457 0.04576458 0.44475728 0.022882298 0.44475728 0.022882298
		 0.38951457 0.04576458 0.34375 0.15625 0.36663228 0.10100729 0.36663228 0.10100729
		 0.34375 0.15625 0.36663228 0.10100729 0.38951457 0.04576458 0.38951457 0.04576458
		 0.36663228 0.10100729 0.36663228 0.10100729 0.38951457 0.04576458 0.38951457 0.04576458
		 0.36663228 0.10100729 0.34375 0.15625 0.36663228 0.10100729 0.36663228 0.10100729
		 0.34375 0.15625 0.38951457 0.26673543 0.36663228 0.21149272 0.36663228 0.21149272
		 0.38951457 0.26673543 0.36663228 0.21149272 0.34375 0.15625 0.34375 0.15625 0.36663228
		 0.21149272 0.36663228 0.21149272 0.34375 0.15625 0.34375 0.15625 0.36663228 0.21149272
		 0.38951457 0.26673543 0.36663228 0.21149272 0.36663228 0.21149272 0.38951457 0.26673543
		 0.5 0.3125 0.44475728 0.28961772 0.44475728 0.28961772 0.5 0.3125 0.44475728 0.28961772
		 0.38951457 0.26673543 0.38951457 0.26673543 0.44475728 0.28961772 0.44475728 0.28961772
		 0.38951457 0.26673543 0.38951457 0.26673543 0.44475728 0.28961772 0.5 0.3125 0.44475728
		 0.28961772 0.44475728 0.28961772 0.5 0.3125 0.61048543 0.26673543 0.55524272 0.28961772
		 0.55524272 0.28961772 0.61048543 0.26673543 0.55524272 0.28961772 0.5 0.3125 0.5
		 0.3125 0.55524272 0.28961772 0.55524272 0.28961772 0.5 0.3125 0.5 0.3125 0.55524272
		 0.28961772 0.61048543 0.26673543 0.55524272 0.28961772 0.55524272 0.28961772 0.61048543
		 0.26673543 0.65625 0.15625 0.63336772 0.21149272 0.63336772 0.21149272 0.65625 0.15625
		 0.63336772 0.21149272 0.61048543 0.26673543 0.61048543 0.26673543 0.63336772 0.21149272
		 0.63336772 0.21149272 0.61048543 0.26673543 0.61048543 0.26673543 0.63336772 0.21149272
		 0.65625 0.15625 0.63336772 0.21149272 0.63336772 0.21149272 0.65625 0.15625 0.61048543
		 0.04576458 0.63336772 0.10100729 0.63336772 0.10100728 0.61048543 0.04576458 0.63336772
		 0.10100729 0.65625 0.15625 0.65625 0.15625 0.63336772 0.10100728 0.63336772 0.10100728
		 0.65625 0.15625 0.65625 0.15625 0.63336772 0.10100729 0.61048543 0.04576458 0.63336772
		 0.10100728 0.63336772 0.10100729 0.61048543 0.04576458;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 306 ".vt";
	setAttr ".vt[0:165]"  0.65533036 -0.99683177 -0.65532613 3.9115548e-007 -0.99683177 -0.92677283
		 -0.65532994 -0.99683177 -0.65532613 -0.92677635 -0.99683177 3.8146973e-006 -0.65532988 -0.99683177 0.65533376
		 3.9115548e-007 -0.99683177 0.92678058 0.65533042 -0.99683177 0.65533447 0.9267773 -0.99683177 3.9339066e-006
		 0.65533042 3.8146973e-006 -0.65532613 3.837049e-007 3.8146973e-006 -0.92677283 -0.65532988 3.8146973e-006 -0.65532613
		 -0.92677635 3.8146973e-006 3.8146973e-006 -0.65532988 3.8146973e-006 0.65533376 3.837049e-007 3.8146973e-006 0.92678058
		 0.65533036 3.8146973e-006 0.65533447 0.9267773 3.8146973e-006 3.9339066e-006 0.61437219 0.87500381 -0.61436808
		 3.8743019e-007 0.87500381 -0.86884934 -0.61437172 0.87500381 -0.61436808 -0.86885279 0.87500381 3.8146973e-006
		 -0.61437172 0.87500381 0.61437571 3.8743019e-007 0.87500381 0.86885703 0.61437225 0.87500381 0.61437631
		 0.86885369 0.87500381 3.9190054e-006 0.33395222 1.000003814697 -0.33394843 4.1769817e-007 1.000003814697 -0.47227579
		 -0.33395165 1.000003814697 -0.33394846 -0.47227907 1.000003814697 3.8151629e-006
		 -0.33395165 1.000003814697 0.33395606 4.1769817e-007 1.000003814697 0.47228342 0.33395222 1.000003814697 0.33395615
		 0.47227973 1.000003814697 3.8300641e-006 4.4330955e-007 1.000003814697 3.8176076e-006
		 3.9115548e-007 -2.0091955662 -1.061130762 0.65533036 -2.027269602 -0.79489827 -0.65532994 -2.027269363 -0.79489815
		 -0.92677635 -2.07090354 -0.15215661 -0.65532988 -2.11453724 0.490585 3.9115548e-007 -2.13261104 0.75681752
		 0.65533042 -2.11453724 0.49058571 0.9267773 -2.07090354 -0.15215649 3.9860606e-007 -3.29843044 -2.011594296
		 0.65533078 -3.42494726 -1.7766484 -0.65533018 -3.42494702 -1.77664852 -0.92677671 -3.73038507 -1.20943642
		 -0.65532988 -4.035821915 -0.64222491 3.6880374e-007 -4.16233873 -0.40727824 0.65533024 -4.035822868 -0.64222419
		 0.9267776 -3.73038507 -1.2094363 6.0535967e-007 -5.018692493 -3.39571214 0.65533274 -5.17676401 -3.18222094
		 -0.65533161 -5.17676258 -3.18222189 -0.92677867 -5.55837917 -2.66680884 -0.65532941 -5.93999624 -2.15139604
		 4.7683716e-007 -6.09806776 -1.93790483 0.65532917 -5.93999577 -2.15139532 0.92677921 -5.55837965 -2.66680837
		 0.33395338 -7.11614513 -6.0090622902 1.7657876e-006 -6.98750305 -6.059920311 1.3336539e-006 -6.430583 -5.82186842
		 0.61437476 -6.65376234 -5.71206427 -0.33395132 -7.11614466 -6.0090622902 -0.61437333 -6.65376043 -5.71206427
		 -0.47228059 -7.42670488 -5.88628244 -0.86885542 -7.19255686 -5.44697475 -0.3339501 -7.73726511 -5.76350355
		 -0.61437023 -7.73135376 -5.18188524 4.9173832e-007 -7.86590576 -5.71264553 1.44355e-006 -7.95453215 -5.072081089
		 0.33394948 -7.73726511 -5.76350403 0.61437017 -7.73135376 -5.18188477 0.47228003 -7.42670393 -5.88628197
		 0.86885482 -7.19255686 -5.44697332 4.5669731e-007 -7.42670488 -5.88628054 -0.65533185 -6.010865688 -4.52683163
		 -0.92677909 -6.49011707 -4.12905025 -0.65532887 -6.96936893 -3.73126984 1.0505319e-006 -7.16788292 -3.56650376
		 0.65532875 -6.96936941 -3.73126912 0.92677891 -6.49011755 -4.1290493 0.18738495 -7.0060071945 -6.052604675
		 0.49149966 -6.96963263 -6.066985607 1.6838312e-006 -6.78030396 -6.14183617 0.33145863 -6.49078608 -5.79224873
		 -0.18738195 -7.0060071945 -6.052604675 -0.49149781 -6.96963167 -6.066985607 -0.3314563 -6.49078465 -5.79224873
		 -0.45238397 -7.25244713 -5.95517445 -0.69508433 -7.42670441 -5.88628197 -0.80020869 -6.90187407 -5.58999157
		 -0.45238298 -7.60096312 -5.81738949 -0.49149558 -7.88377666 -5.70558071 -0.80020672 -7.48324013 -5.30395746
		 -0.18738146 -7.84740257 -5.71996117 1.0579824e-006 -8.073104858 -5.63073063 -0.33145404 -7.89433002 -5.10170174
		 0.18738195 -7.84740257 -5.71996117 0.49149513 -7.88377619 -5.70557976 0.3314558 -7.89433002 -5.10170078
		 0.45238206 -7.60096169 -5.81738997 0.6950835 -7.42670393 -5.88628197 0.80020583 -7.48324013 -5.30395699
		 0.45238456 -7.25244617 -5.95517445 0.80020893 -6.90187502 -5.58999109 0.35355371 -0.99683177 -0.85354948
		 0.65533042 -0.49999619 -0.65532613 3.8743019e-007 -0.49999619 -0.92677283 0.35355371 3.8146973e-006 -0.85354948
		 -0.35355312 -0.99683177 -0.85354948 -0.65532994 -0.49999619 -0.65532613 -0.35355312 3.8146973e-006 -0.85354948
		 -0.85355318 -0.99683177 -0.35354948 -0.92677641 -0.49999619 3.8146973e-006 -0.85355318 3.8146973e-006 -0.35354948
		 -0.85355318 -0.99683177 0.35355711 -0.65532988 -0.49999619 0.65533376 -0.85355318 3.8146973e-006 0.35355711
		 -0.35355312 -0.99683177 0.85355711 3.8743019e-007 -0.49999619 0.92678058 -0.35355312 3.8146973e-006 0.85355711
		 0.35355371 -0.99683177 0.85355759 0.65533042 -0.49999619 0.65533447 0.35355371 3.8146973e-006 0.85355759
		 0.85355389 -0.99683177 0.35355759 0.92677736 -0.49999619 3.9339066e-006 0.85355389 3.8146973e-006 0.35355759
		 0.85355389 -0.99683177 -0.35354948 0.85355389 3.8146973e-006 -0.35354948 0.65533042 0.50000381 -0.65532613
		 3.8743019e-007 0.50000381 -0.92677283 0.3314566 0.87500381 -0.80020243 -0.65532994 0.50000381 -0.65532613
		 -0.33145601 0.87500381 -0.80020243 -0.92677641 0.50000381 3.8146973e-006 -0.80020607 0.87500381 -0.33145243
		 -0.65532988 0.50000381 0.65533376 -0.80020607 0.87500381 0.33146006 3.8743019e-007 0.50000381 0.92678058
		 -0.33145601 0.87500381 0.80021006 0.65533042 0.50000381 0.65533447 0.3314566 0.87500381 0.80021048
		 0.92677736 0.50000381 3.9339066e-006 0.80020678 0.87500381 0.33146048 0.80020678 0.87500381 -0.33145243
		 0.49149776 1.000003814697 -0.49149382 4.0233135e-007 1.000003814697 -0.69507873 0.18738359 1.000003814697 -0.45237958
		 -0.49149725 1.000003814697 -0.49149382 -0.18738288 1.000003814697 -0.45237958 -0.69508219 1.000003814697 3.8146973e-006
		 -0.45238286 1.000003814697 -0.1873796 -0.49149728 1.000003814697 0.49150145 -0.45238286 1.000003814697 0.18738723
		 4.0233135e-007 1.000003814697 0.69508642 -0.18738288 1.000003814697 0.45238724 0.49149776 1.000003814697 0.49150181
		 0.18738359 1.000003814697 0.45238733 0.6950829 1.000003814697 3.8743019e-006 0.45238346 1.000003814697 0.18738732
		 0.45238346 1.000003814697 -0.1873796 1.3262033e-006 -7.16404104 -5.99012566 0.19972101 -7.24097395 -5.95971012
		 -0.19971929 -7.24097443 -5.95971012 -0.28244656 -7.42670536 -5.88628149 -0.19971898 -7.61243534 -5.81285381
		 1.6391277e-007 -7.68936777 -5.78243923;
	setAttr ".vt[166:305]" 0.19971886 -7.61243534 -5.81285381 0.28244668 -7.42670441 -5.88628149
		 0.19972026 1.000003814697 -0.1997163 3.9860606e-007 1.000003814697 -0.28244299 -0.19971955 1.000003814697 -0.1997163
		 -0.28244627 1.000003814697 3.8184226e-006 -0.19971955 1.000003814697 0.19972396 3.9860606e-007 1.000003814697 0.28245068
		 0.19972026 1.000003814697 0.19972396 0.28244695 1.000003814697 3.8184226e-006 3.8743019e-007 -1.48733854 -0.92677283
		 0.65533042 -1.48733854 -0.65532613 0.35355371 -2.014070988 -0.98931384 -0.65532994 -1.48733854 -0.65532613
		 -0.35355312 -2.014070988 -0.98931384 -0.92677641 -1.48733854 3.8146973e-006 -0.85355318 -2.047362566 -0.49891847
		 -0.65532988 -1.48733854 0.65533376 -0.85355318 -2.094443798 0.19460523 3.8743019e-007 -1.48733854 0.92678058
		 -0.35355312 -2.12773561 0.6850006 0.65533042 -1.48733854 0.65533447 0.35355371 -2.12773561 0.68500108
		 0.92677736 -1.48733854 3.9339066e-006 0.85355389 -2.094444036 0.19460571 0.85355389 -2.047362566 -0.49891847
		 3.8743019e-007 -2.60008144 -1.46420383 0.65533042 -2.67237663 -1.2136147 0.35355389 -3.33255863 -1.94821727
		 -0.65532994 -2.67237663 -1.2136147 -0.35355327 -3.33255863 -1.94821739 -0.92677641 -2.84691262 -0.60863787
		 -0.85355347 -3.56560016 -1.51544976 -0.65532988 -3.021448135 -0.0036613345 -0.8535533 -3.89516973 -0.90342331
		 3.8743019e-007 -3.093743324 0.24692822 -0.35355306 -4.12821102 -0.47065568 0.65533042 -3.021448374 -0.0036606193
		 0.35355356 -4.12821102 -0.4706552 0.92677736 -2.84691286 -0.60863775 0.85355401 -3.89516973 -0.90342283
		 0.85355425 -3.5656004 -1.51544964 4.5448542e-007 -4.14267635 -2.57890415 0.65533173 -4.28726673 -2.34917188
		 0.35355514 -5.061332703 -3.33812237 -0.6553309 -4.28726625 -2.34917259 -0.35355395 -5.061332226 -3.33812332
		 -0.92677766 -4.63633823 -1.79454875 -0.8535555 -5.35249567 -2.94487643 -0.6553297 -4.98540974 -1.23992538
		 -0.85355407 -5.76426315 -2.38874125 3.2782555e-007 -5.13000011 -1.010192871 -0.3535524 -6.055427551 -1.99549472
		 0.65532976 -4.98540974 -1.23992467 0.35355285 -6.055427551 -1.99549437 0.92677844 -4.63633823 -1.79454851
		 0.85355407 -5.76426363 -2.38874078 0.85355639 -5.35249615 -2.94487572 9.3877316e-007 -5.81235313 -4.69159698
		 0.6553331 -6.010867119 -4.52683067 0.26516712 -6.83137608 -6.12164497 -0.2651642 -6.83137608 -6.12164497
		 -0.64016658 -7.18011236 -5.9837718 -0.64016503 -7.67329693 -5.78879261 -0.26516283 -8.022032738 -5.65092182
		 0.26516396 -8.022032738 -5.65092134 0.64016396 -7.67329597 -5.78879261 0.64016694 -7.18011236 -5.98377228
		 0.35355371 -0.49999619 -0.85354948 -0.35355312 -0.49999619 -0.85354948 -0.85355318 -0.49999619 -0.35354948
		 -0.85355318 -0.49999619 0.35355711 -0.35355312 -0.49999619 0.85355711 0.35355371 -0.49999619 0.85355759
		 0.85355389 -0.49999619 0.35355759 0.85355389 -0.49999619 -0.35354948 0.35355371 0.50000381 -0.85354948
		 -0.35355312 0.50000381 -0.85354948 -0.85355318 0.50000381 -0.35354948 -0.85355318 0.50000381 0.35355711
		 -0.35355312 0.50000381 0.85355711 0.35355371 0.50000381 0.85355759 0.85355389 0.50000381 0.35355759
		 0.85355389 0.50000381 -0.35354948 0.26516533 1.000003814697 -0.64016128 -0.26516467 1.000003814697 -0.64016128
		 -0.64016473 1.000003814697 -0.26516128 -0.64016473 1.000003814697 0.26516891 -0.26516467 1.000003814697 0.64016891
		 0.26516533 1.000003814697 0.64016914 0.64016533 1.000003814697 0.26516914 0.64016533 1.000003814697 -0.26516128
		 0.11785237 -7.16211557 -5.99088717 -0.11784972 -7.16211557 -5.99088717 -0.28451785 -7.31710958 -5.92961025
		 -0.28451732 -7.53630114 -5.84295368 -0.11784971 -7.69129419 -5.78167772 0.11784999 -7.69129419 -5.78167772
		 0.28451681 -7.53630018 -5.84295368 0.28451863 -7.31710863 -5.92961025 0.11785145 1.000003814697 -0.2845141
		 -0.11785067 1.000003814697 -0.2845141 -0.28451735 1.000003814697 -0.11784744 -0.28451735 1.000003814697 0.11785508
		 -0.11785067 1.000003814697 0.28452176 0.11785145 1.000003814697 0.28452176 0.284518 1.000003814697 0.11785508
		 0.284518 1.000003814697 -0.11784744 0.35355371 -1.48733854 -0.85354948 -0.35355312 -1.48733854 -0.85354948
		 -0.85355318 -1.48733854 -0.35354948 -0.85355318 -1.48733854 0.35355711 -0.35355312 -1.48733854 0.85355711
		 0.35355371 -1.48733854 0.85355759 0.85355389 -1.48733854 0.35355759 0.85355389 -1.48733854 -0.35354948
		 0.35355371 -2.61958337 -1.39660692 -0.35355312 -2.61958337 -1.39660692 -0.85355318 -2.75274992 -0.93502545
		 -0.85355318 -2.94107533 -0.2822504 -0.35355312 -3.074241638 0.17933106 0.35355371 -3.074241877 0.17933154
		 0.85355389 -2.94107556 -0.28224993 0.85355389 -2.75274992 -0.93502545 0.35355449 -4.18167973 -2.51693344
		 -0.35355362 -4.18167973 -2.51693392 -0.85355449 -4.44801235 -2.093770742 -0.85355371 -4.82466364 -1.495327
		 -0.35355282 -5.090996742 -1.07216382 0.35355318 -5.090996742 -1.072163343 0.85355413 -4.82466364 -1.49532652
		 0.85355532 -4.44801283 -2.093770266 0.35355559 -5.86590385 -4.64715099 -0.35355386 -5.86590242 -4.64715147
		 -0.85355598 -6.23155928 -4.34365463 -0.85355407 -6.74867535 -3.91444588 -0.35355169 -7.11433315 -3.61094999
		 0.35355291 -7.11433315 -3.61094952 0.85355353 -6.74867582 -3.91444516 0.85355651 -6.23155975 -4.34365416;
	setAttr -s 608 ".ed";
	setAttr ".ed[0:165]"  0 104 1 104 1 1 1 108 1 108 2 1 2 111 1 111 3 1 3 114 1
		 114 4 1 4 117 1 117 5 1 5 120 1 120 6 1 6 123 1 123 7 1 7 126 1 126 0 1 8 107 1 107 9 1
		 9 110 1 110 10 1 10 113 1 113 11 1 11 116 1 116 12 1 12 119 1 119 13 1 13 122 1 122 14 1
		 14 125 1 125 15 1 15 127 1 127 8 1 16 130 1 130 17 1 17 132 1 132 18 1 18 134 1 134 19 1
		 19 136 1 136 20 1 20 138 1 138 21 1 21 140 1 140 22 1 22 142 1 142 23 1 23 143 1
		 143 16 1 24 146 1 146 25 1 25 148 1 148 26 1 26 150 1 150 27 1 27 152 1 152 28 1
		 28 154 1 154 29 1 29 156 1 156 30 1 30 158 1 158 31 1 31 159 1 159 24 1 0 105 1 105 8 1
		 1 106 1 106 9 1 2 109 1 109 10 1 3 112 1 112 11 1 4 115 1 115 12 1 5 118 1 118 13 1
		 6 121 1 121 14 1 7 124 1 124 15 1 8 128 1 128 16 1 9 129 1 129 17 1 10 131 1 131 18 1
		 11 133 1 133 19 1 12 135 1 135 20 1 13 137 1 137 21 1 14 139 1 139 22 1 15 141 1
		 141 23 1 16 144 1 144 24 1 17 145 1 145 25 1 18 147 1 147 26 1 19 149 1 149 27 1
		 20 151 1 151 28 1 21 153 1 153 29 1 22 155 1 155 30 1 23 157 1 157 31 1 24 168 1
		 168 32 1 25 169 1 169 32 1 26 170 1 170 32 1 27 171 1 171 32 1 28 172 1 172 32 1
		 29 173 1 173 32 1 30 174 1 174 32 1 31 175 1 175 32 1 1 176 1 176 33 1 0 177 1 177 34 1
		 34 178 1 178 33 1 2 179 1 179 35 1 33 180 1 180 35 1 3 181 1 181 36 1 35 182 1 182 36 1
		 4 183 1 183 37 1 36 184 1 184 37 1 5 185 1 185 38 1 37 186 1 186 38 1 6 187 1 187 39 1
		 38 188 1 188 39 1 7 189 1 189 40 1 39 190 1 190 40 1 40 191 1 191 34 1 33 192 1 192 41 1
		 34 193 1 193 42 1 42 194 1 194 41 1;
	setAttr ".ed[166:331]" 35 195 1 195 43 1 41 196 1 196 43 1 36 197 1 197 44 1
		 43 198 1 198 44 1 37 199 1 199 45 1 44 200 1 200 45 1 38 201 1 201 46 1 45 202 1
		 202 46 1 39 203 1 203 47 1 46 204 1 204 47 1 40 205 1 205 48 1 47 206 1 206 48 1
		 48 207 1 207 42 1 41 208 1 208 49 1 42 209 1 209 50 1 50 210 1 210 49 1 43 211 1
		 211 51 1 49 212 1 212 51 1 44 213 1 213 52 1 51 214 1 214 52 1 45 215 1 215 53 1
		 52 216 1 216 53 1 46 217 1 217 54 1 53 218 1 218 54 1 47 219 1 219 55 1 54 220 1
		 220 55 1 48 221 1 221 56 1 55 222 1 222 56 1 56 223 1 223 50 1 57 80 1 80 58 1 49 224 1
		 224 59 1 58 82 1 82 59 1 50 225 1 225 60 1 60 83 1 83 59 1 57 81 1 81 60 1 58 84 1
		 84 61 1 51 74 1 74 62 1 61 85 1 85 62 1 59 86 1 86 62 1 61 87 1 87 63 1 52 75 1 75 64 1
		 63 88 1 88 64 1 62 89 1 89 64 1 63 90 1 90 65 1 53 76 1 76 66 1 65 91 1 91 66 1 64 92 1
		 92 66 1 65 93 1 93 67 1 54 77 1 77 68 1 67 94 1 94 68 1 66 95 1 95 68 1 67 96 1 96 69 1
		 55 78 1 78 70 1 69 97 1 97 70 1 68 98 1 98 70 1 69 99 1 99 71 1 56 79 1 79 72 1 71 100 1
		 100 72 1 70 101 1 101 72 1 71 102 1 102 57 1 72 103 1 103 60 1 73 161 1 161 57 1
		 73 160 1 160 58 1 73 162 1 162 61 1 73 163 1 163 63 1 73 164 1 164 65 1 73 165 1
		 165 67 1 73 166 1 166 69 1 73 167 1 167 71 1 80 226 1 226 81 1 82 226 1 83 226 1
		 84 227 1 227 82 1 85 227 1 86 227 1 87 228 1 228 85 1 88 228 1 89 228 1 90 229 1
		 229 88 1 91 229 1 92 229 1 93 230 1 230 91 1 94 230 1 95 230 1 96 231 1 231 94 1
		 97 231 1 98 231 1 99 232 1 232 97 1 100 232 1 101 232 1;
	setAttr ".ed[332:497]" 102 233 1 233 100 1 81 233 1 103 233 1 104 234 1 234 105 1
		 106 234 1 107 234 1 108 235 1 235 106 1 109 235 1 110 235 1 111 236 1 236 109 1 112 236 1
		 113 236 1 114 237 1 237 112 1 115 237 1 116 237 1 117 238 1 238 115 1 118 238 1 119 238 1
		 120 239 1 239 118 1 121 239 1 122 239 1 123 240 1 240 121 1 124 240 1 125 240 1 126 241 1
		 241 124 1 105 241 1 127 241 1 107 242 1 242 128 1 129 242 1 130 242 1 110 243 1 243 129 1
		 131 243 1 132 243 1 113 244 1 244 131 1 133 244 1 134 244 1 116 245 1 245 133 1 135 245 1
		 136 245 1 119 246 1 246 135 1 137 246 1 138 246 1 122 247 1 247 137 1 139 247 1 140 247 1
		 125 248 1 248 139 1 141 248 1 142 248 1 127 249 1 249 141 1 128 249 1 143 249 1 130 250 1
		 250 144 1 145 250 1 146 250 1 132 251 1 251 145 1 147 251 1 148 251 1 134 252 1 252 147 1
		 149 252 1 150 252 1 136 253 1 253 149 1 151 253 1 152 253 1 138 254 1 254 151 1 153 254 1
		 154 254 1 140 255 1 255 153 1 155 255 1 156 255 1 142 256 1 256 155 1 157 256 1 158 256 1
		 143 257 1 257 157 1 144 257 1 159 257 1 80 258 1 258 160 1 161 258 1 84 259 1 259 162 1
		 160 259 1 87 260 1 260 163 1 162 260 1 90 261 1 261 164 1 163 261 1 93 262 1 262 165 1
		 164 262 1 96 263 1 263 166 1 165 263 1 99 264 1 264 167 1 166 264 1 102 265 1 265 161 1
		 167 265 1 146 266 1 266 168 1 169 266 1 148 267 1 267 169 1 170 267 1 150 268 1 268 170 1
		 171 268 1 152 269 1 269 171 1 172 269 1 154 270 1 270 172 1 173 270 1 156 271 1 271 173 1
		 174 271 1 158 272 1 272 174 1 175 272 1 159 273 1 273 175 1 168 273 1 104 274 1 274 176 1
		 177 274 1 178 274 1 108 275 1 275 179 1 176 275 1 180 275 1 111 276 1 276 181 1 179 276 1
		 182 276 1 114 277 1 277 183 1 181 277 1 184 277 1 117 278 1 278 185 1;
	setAttr ".ed[498:607]" 183 278 1 186 278 1 120 279 1 279 187 1 185 279 1 188 279 1
		 123 280 1 280 189 1 187 280 1 190 280 1 126 281 1 281 177 1 189 281 1 191 281 1 178 282 1
		 282 192 1 193 282 1 194 282 1 180 283 1 283 195 1 192 283 1 196 283 1 182 284 1 284 197 1
		 195 284 1 198 284 1 184 285 1 285 199 1 197 285 1 200 285 1 186 286 1 286 201 1 199 286 1
		 202 286 1 188 287 1 287 203 1 201 287 1 204 287 1 190 288 1 288 205 1 203 288 1 206 288 1
		 191 289 1 289 193 1 205 289 1 207 289 1 194 290 1 290 208 1 209 290 1 210 290 1 196 291 1
		 291 211 1 208 291 1 212 291 1 198 292 1 292 213 1 211 292 1 214 292 1 200 293 1 293 215 1
		 213 293 1 216 293 1 202 294 1 294 217 1 215 294 1 218 294 1 204 295 1 295 219 1 217 295 1
		 220 295 1 206 296 1 296 221 1 219 296 1 222 296 1 207 297 1 297 209 1 221 297 1 223 297 1
		 210 298 1 298 224 1 225 298 1 83 298 1 212 299 1 299 74 1 224 299 1 86 299 1 214 300 1
		 300 75 1 74 300 1 89 300 1 216 301 1 301 76 1 75 301 1 92 301 1 218 302 1 302 77 1
		 76 302 1 95 302 1 220 303 1 303 78 1 77 303 1 98 303 1 222 304 1 304 79 1 78 304 1
		 101 304 1 223 305 1 305 225 1 79 305 1 103 305 1;
	setAttr -s 304 -ch 1216 ".fc[0:303]" -type "polyFaces" 
		f 4 224 304 305 -235
		mu 0 4 516 513 13 118
		f 4 225 228 306 -305
		mu 0 4 513 528 28 13
		f 4 -307 229 -234 307
		mu 0 4 13 28 1114 1099
		f 4 -306 -308 -233 -236
		mu 0 4 118 13 1099 122
		f 4 236 308 309 -229
		mu 0 4 528 525 29 28
		f 4 237 240 310 -309
		mu 0 4 525 540 44 29
		f 4 -311 241 -244 311
		mu 0 4 29 44 1130 1115
		f 4 -310 -312 -243 -230
		mu 0 4 28 29 1115 1114
		f 4 244 312 313 -241
		mu 0 4 540 537 45 44
		f 4 245 248 314 -313
		mu 0 4 537 552 60 45
		f 4 -315 249 -252 315
		mu 0 4 45 60 1146 1131
		f 4 -314 -316 -251 -242
		mu 0 4 44 45 1131 1130
		f 4 252 316 317 -249
		mu 0 4 552 549 61 60
		f 4 253 256 318 -317
		mu 0 4 549 564 76 61
		f 4 -319 257 -260 319
		mu 0 4 61 76 1162 1147
		f 4 -318 -320 -259 -250
		mu 0 4 60 61 1147 1146
		f 4 260 320 321 -257
		mu 0 4 564 561 77 76
		f 4 261 264 322 -321
		mu 0 4 561 576 92 77
		f 4 -323 265 -268 323
		mu 0 4 77 92 1178 1163
		f 4 -322 -324 -267 -258
		mu 0 4 76 77 1163 1162
		f 4 268 324 325 -265
		mu 0 4 576 573 93 92
		f 4 269 272 326 -325
		mu 0 4 573 588 108 93
		f 4 -327 273 -276 327
		mu 0 4 93 108 1194 1179
		f 4 -326 -328 -275 -266
		mu 0 4 92 93 1179 1178
		f 4 276 328 329 -273
		mu 0 4 588 585 109 108
		f 4 277 280 330 -329
		mu 0 4 585 600 124 109
		f 4 -331 281 -284 331
		mu 0 4 109 124 1210 1195
		f 4 -330 -332 -283 -274
		mu 0 4 108 109 1195 1194
		f 4 284 332 333 -281
		mu 0 4 600 597 125 124
		f 4 285 234 334 -333
		mu 0 4 597 516 118 125
		f 4 -335 235 -288 335
		mu 0 4 125 118 122 1211
		f 4 -334 -336 -287 -282
		mu 0 4 124 125 1211 1210
		f 4 0 336 337 -65
		mu 0 4 128 132 141 131
		f 4 1 66 338 -337
		mu 0 4 132 144 156 141
		f 4 -339 67 -18 339
		mu 0 4 141 156 261 257
		f 4 -338 -340 -17 -66
		mu 0 4 131 141 257 143
		f 4 2 340 341 -67
		mu 0 4 144 148 157 156
		f 4 3 68 342 -341
		mu 0 4 148 160 172 157
		f 4 -343 69 -20 343
		mu 0 4 157 172 277 273
		f 4 -342 -344 -19 -68
		mu 0 4 156 157 273 261
		f 4 4 344 345 -69
		mu 0 4 160 164 173 172
		f 4 5 70 346 -345
		mu 0 4 164 176 188 173
		f 4 -347 71 -22 347
		mu 0 4 173 188 293 289
		f 4 -346 -348 -21 -70
		mu 0 4 172 173 289 277
		f 4 6 348 349 -71
		mu 0 4 176 180 189 188
		f 4 7 72 350 -349
		mu 0 4 180 192 204 189
		f 4 -351 73 -24 351
		mu 0 4 189 204 309 305
		f 4 -350 -352 -23 -72
		mu 0 4 188 189 305 293
		f 4 8 352 353 -73
		mu 0 4 192 196 205 204
		f 4 9 74 354 -353
		mu 0 4 196 208 220 205
		f 4 -355 75 -26 355
		mu 0 4 205 220 325 321
		f 4 -354 -356 -25 -74
		mu 0 4 204 205 321 309
		f 4 10 356 357 -75
		mu 0 4 208 212 221 220
		f 4 11 76 358 -357
		mu 0 4 212 224 236 221
		f 4 -359 77 -28 359
		mu 0 4 221 236 341 337
		f 4 -358 -360 -27 -76
		mu 0 4 220 221 337 325
		f 4 12 360 361 -77
		mu 0 4 224 228 237 236
		f 4 13 78 362 -361
		mu 0 4 228 240 252 237
		f 4 -363 79 -30 363
		mu 0 4 237 252 357 353
		f 4 -362 -364 -29 -78
		mu 0 4 236 237 353 341
		f 4 14 364 365 -79
		mu 0 4 240 244 253 252
		f 4 15 64 366 -365
		mu 0 4 244 245 246 253
		f 4 -367 65 -32 367
		mu 0 4 253 246 373 369
		f 4 -366 -368 -31 -80
		mu 0 4 252 253 369 357
		f 4 16 368 369 -81
		mu 0 4 143 257 269 259
		f 4 17 82 370 -369
		mu 0 4 257 261 284 269
		f 4 -371 83 -34 371
		mu 0 4 269 284 266 270
		f 4 -370 -372 -33 -82
		mu 0 4 259 269 270 271
		f 4 18 372 373 -83
		mu 0 4 261 273 285 284
		f 4 19 84 374 -373
		mu 0 4 273 277 300 285
		f 4 -375 85 -36 375
		mu 0 4 285 300 282 286
		f 4 -374 -376 -35 -84
		mu 0 4 284 285 286 266
		f 4 20 376 377 -85
		mu 0 4 277 289 301 300
		f 4 21 86 378 -377
		mu 0 4 289 293 316 301
		f 4 -379 87 -38 379
		mu 0 4 301 316 298 302
		f 4 -378 -380 -37 -86
		mu 0 4 300 301 302 282
		f 4 22 380 381 -87
		mu 0 4 293 305 317 316
		f 4 23 88 382 -381
		mu 0 4 305 309 332 317
		f 4 -383 89 -40 383
		mu 0 4 317 332 314 318
		f 4 -382 -384 -39 -88
		mu 0 4 316 317 318 298
		f 4 24 384 385 -89
		mu 0 4 309 321 333 332
		f 4 25 90 386 -385
		mu 0 4 321 325 348 333
		f 4 -387 91 -42 387
		mu 0 4 333 348 330 334
		f 4 -386 -388 -41 -90
		mu 0 4 332 333 334 314
		f 4 26 388 389 -91
		mu 0 4 325 337 349 348
		f 4 27 92 390 -389
		mu 0 4 337 341 364 349
		f 4 -391 93 -44 391
		mu 0 4 349 364 346 350
		f 4 -390 -392 -43 -92
		mu 0 4 348 349 350 330
		f 4 28 392 393 -93
		mu 0 4 341 353 365 364
		f 4 29 94 394 -393
		mu 0 4 353 357 380 365
		f 4 -395 95 -46 395
		mu 0 4 365 380 362 366
		f 4 -394 -396 -45 -94
		mu 0 4 364 365 366 346
		f 4 30 396 397 -95
		mu 0 4 357 369 381 380
		f 4 31 80 398 -397
		mu 0 4 369 373 374 381
		f 4 -399 81 -48 399
		mu 0 4 381 374 378 382
		f 4 -398 -400 -47 -96
		mu 0 4 380 381 382 362
		f 4 32 400 401 -97
		mu 0 4 501 385 397 502
		f 4 33 98 402 -401
		mu 0 4 385 389 412 397
		f 4 -403 99 -50 403
		mu 0 4 397 412 612 609
		f 4 -402 -404 -49 -98
		mu 0 4 502 397 609 696
		f 4 34 404 405 -99
		mu 0 4 389 401 413 412
		f 4 35 100 406 -405
		mu 0 4 401 405 428 413
		f 4 -407 101 -52 407
		mu 0 4 413 428 624 621
		f 4 -406 -408 -51 -100
		mu 0 4 412 413 621 612
		f 4 36 408 409 -101
		mu 0 4 405 417 429 428
		f 4 37 102 410 -409
		mu 0 4 417 421 444 429
		f 4 -411 103 -54 411
		mu 0 4 429 444 636 633
		f 4 -410 -412 -53 -102
		mu 0 4 428 429 633 624
		f 4 38 412 413 -103
		mu 0 4 421 433 445 444
		f 4 39 104 414 -413
		mu 0 4 433 437 460 445
		f 4 -415 105 -56 415
		mu 0 4 445 460 648 645
		f 4 -414 -416 -55 -104
		mu 0 4 444 445 645 636
		f 4 40 416 417 -105
		mu 0 4 437 449 461 460
		f 4 41 106 418 -417
		mu 0 4 449 453 476 461
		f 4 -419 107 -58 419
		mu 0 4 461 476 660 657
		f 4 -418 -420 -57 -106
		mu 0 4 460 461 657 648
		f 4 42 420 421 -107
		mu 0 4 453 465 477 476
		f 4 43 108 422 -421
		mu 0 4 465 469 492 477
		f 4 -423 109 -60 423
		mu 0 4 477 492 672 669
		f 4 -422 -424 -59 -108
		mu 0 4 476 477 669 660
		f 4 44 424 425 -109
		mu 0 4 469 481 493 492
		f 4 45 110 426 -425
		mu 0 4 481 485 508 493
		f 4 -427 111 -62 427
		mu 0 4 493 508 684 681
		f 4 -426 -428 -61 -110
		mu 0 4 492 493 681 672
		f 4 46 428 429 -111
		mu 0 4 485 497 509 508
		f 4 47 96 430 -429
		mu 0 4 497 501 502 509
		f 4 -431 97 -64 431
		mu 0 4 509 502 696 693
		f 4 -430 -432 -63 -112
		mu 0 4 508 509 693 684
		f 4 -226 432 433 291
		mu 0 4 528 513 522 529
		f 4 -290 434 -433 -225
		mu 0 4 516 605 522 513
		f 4 290 -434 -435 -289
		mu 0 4 592 529 522 605
		f 4 -238 435 436 293
		mu 0 4 540 525 534 541
		f 4 -292 437 -436 -237
		mu 0 4 528 529 534 525
		f 4 292 -437 -438 -291
		mu 0 4 592 541 534 529
		f 4 -246 438 439 295
		mu 0 4 552 537 546 553
		f 4 -294 440 -439 -245
		mu 0 4 540 541 546 537
		f 4 294 -440 -441 -293
		mu 0 4 592 553 546 541
		f 4 -254 441 442 297
		mu 0 4 564 549 558 565
		f 4 -296 443 -442 -253
		mu 0 4 552 553 558 549
		f 4 296 -443 -444 -295
		mu 0 4 592 565 558 553
		f 4 -262 444 445 299
		mu 0 4 576 561 570 577
		f 4 -298 446 -445 -261
		mu 0 4 564 565 570 561
		f 4 298 -446 -447 -297
		mu 0 4 592 577 570 565
		f 4 -270 447 448 301
		mu 0 4 588 573 582 589
		f 4 -300 449 -448 -269
		mu 0 4 576 577 582 573
		f 4 300 -449 -450 -299
		mu 0 4 592 589 582 577
		f 4 -278 450 451 303
		mu 0 4 600 585 594 601
		f 4 -302 452 -451 -277
		mu 0 4 588 589 594 585
		f 4 302 -452 -453 -301
		mu 0 4 592 601 594 589
		f 4 -286 453 454 289
		mu 0 4 516 597 606 605
		f 4 -304 455 -454 -285
		mu 0 4 600 601 606 597
		f 4 288 -455 -456 -303
		mu 0 4 592 605 606 601
		f 4 48 456 457 -113
		mu 0 4 696 609 618 697
		f 4 114 458 -457 49
		mu 0 4 612 629 618 609
		f 4 -114 -458 -459 115
		mu 0 4 700 697 618 629
		f 4 50 459 460 -115
		mu 0 4 612 621 630 629
		f 4 116 461 -460 51
		mu 0 4 624 641 630 621
		f 4 -116 -461 -462 117
		mu 0 4 700 629 630 641
		f 4 52 462 463 -117
		mu 0 4 624 633 642 641
		f 4 118 464 -463 53
		mu 0 4 636 653 642 633
		f 4 -118 -464 -465 119
		mu 0 4 700 641 642 653
		f 4 54 465 466 -119
		mu 0 4 636 645 654 653
		f 4 120 467 -466 55
		mu 0 4 648 665 654 645
		f 4 -120 -467 -468 121
		mu 0 4 700 653 654 665
		f 4 56 468 469 -121
		mu 0 4 648 657 666 665
		f 4 122 470 -469 57
		mu 0 4 660 677 666 657
		f 4 -122 -470 -471 123
		mu 0 4 700 665 666 677
		f 4 58 471 472 -123
		mu 0 4 660 669 678 677
		f 4 124 473 -472 59
		mu 0 4 672 689 678 669
		f 4 -124 -473 -474 125
		mu 0 4 700 677 678 689
		f 4 60 474 475 -125
		mu 0 4 672 681 690 689
		f 4 126 476 -475 61
		mu 0 4 684 701 690 681
		f 4 -126 -476 -477 127
		mu 0 4 700 689 690 701
		f 4 62 477 478 -127
		mu 0 4 684 693 702 701
		f 4 112 479 -478 63
		mu 0 4 696 697 702 693
		f 4 -128 -479 -480 113
		mu 0 4 700 701 702 697
		f 4 -2 480 481 -129
		mu 0 4 725 705 717 726
		f 4 -1 130 482 -481
		mu 0 4 705 709 828 717
		f 4 -483 131 132 483
		mu 0 4 717 828 837 833
		f 4 -482 -484 133 -130
		mu 0 4 726 717 833 853
		f 4 -4 484 485 -135
		mu 0 4 741 721 733 742
		f 4 -3 128 486 -485
		mu 0 4 721 725 726 733
		f 4 -487 129 136 487
		mu 0 4 733 726 853 849
		f 4 -486 -488 137 -136
		mu 0 4 742 733 849 869
		f 4 -6 488 489 -139
		mu 0 4 757 737 749 758
		f 4 -5 134 490 -489
		mu 0 4 737 741 742 749
		f 4 -491 135 140 491
		mu 0 4 749 742 869 865
		f 4 -490 -492 141 -140
		mu 0 4 758 749 865 885
		f 4 -8 492 493 -143
		mu 0 4 773 753 765 774
		f 4 -7 138 494 -493
		mu 0 4 753 757 758 765
		f 4 -495 139 144 495
		mu 0 4 765 758 885 881
		f 4 -494 -496 145 -144
		mu 0 4 774 765 881 901
		f 4 -10 496 497 -147
		mu 0 4 789 769 781 790
		f 4 -9 142 498 -497
		mu 0 4 769 773 774 781
		f 4 -499 143 148 499
		mu 0 4 781 774 901 897
		f 4 -498 -500 149 -148
		mu 0 4 790 781 897 917
		f 4 -12 500 501 -151
		mu 0 4 805 785 797 806
		f 4 -11 146 502 -501
		mu 0 4 785 789 790 797
		f 4 -503 147 152 503
		mu 0 4 797 790 917 913
		f 4 -502 -504 153 -152
		mu 0 4 806 797 913 933
		f 4 -14 504 505 -155
		mu 0 4 821 801 813 822
		f 4 -13 150 506 -505
		mu 0 4 801 805 806 813
		f 4 -507 151 156 507
		mu 0 4 813 806 933 929
		f 4 -506 -508 157 -156
		mu 0 4 822 813 929 949
		f 4 -16 508 509 -131
		mu 0 4 709 817 829 828
		f 4 -15 154 510 -509
		mu 0 4 817 821 822 829
		f 4 -511 155 158 511
		mu 0 4 829 822 949 945
		f 4 -510 -512 159 -132
		mu 0 4 828 829 945 837
		f 4 -134 512 513 -161
		mu 0 4 853 833 845 854
		f 4 -133 162 514 -513
		mu 0 4 833 837 956 845
		f 4 -515 163 164 515
		mu 0 4 845 956 965 961
		f 4 -514 -516 165 -162
		mu 0 4 854 845 961 981
		f 4 -138 516 517 -167
		mu 0 4 869 849 861 870
		f 4 -137 160 518 -517
		mu 0 4 849 853 854 861
		f 4 -519 161 168 519
		mu 0 4 861 854 981 977
		f 4 -518 -520 169 -168
		mu 0 4 870 861 977 997
		f 4 -142 520 521 -171
		mu 0 4 885 865 877 886
		f 4 -141 166 522 -521
		mu 0 4 865 869 870 877
		f 4 -523 167 172 523
		mu 0 4 877 870 997 993
		f 4 -522 -524 173 -172
		mu 0 4 886 877 993 1013
		f 4 -146 524 525 -175
		mu 0 4 901 881 893 902
		f 4 -145 170 526 -525
		mu 0 4 881 885 886 893
		f 4 -527 171 176 527
		mu 0 4 893 886 1013 1009
		f 4 -526 -528 177 -176
		mu 0 4 902 893 1009 1029
		f 4 -150 528 529 -179
		mu 0 4 917 897 909 918
		f 4 -149 174 530 -529
		mu 0 4 897 901 902 909
		f 4 -531 175 180 531
		mu 0 4 909 902 1029 1025
		f 4 -530 -532 181 -180
		mu 0 4 918 909 1025 1045
		f 4 -154 532 533 -183
		mu 0 4 933 913 925 934
		f 4 -153 178 534 -533
		mu 0 4 913 917 918 925
		f 4 -535 179 184 535
		mu 0 4 925 918 1045 1041
		f 4 -534 -536 185 -184
		mu 0 4 934 925 1041 1061
		f 4 -158 536 537 -187
		mu 0 4 949 929 941 950
		f 4 -157 182 538 -537
		mu 0 4 929 933 934 941
		f 4 -539 183 188 539
		mu 0 4 941 934 1061 1057
		f 4 -538 -540 189 -188
		mu 0 4 950 941 1057 1077
		f 4 -160 540 541 -163
		mu 0 4 837 945 957 956
		f 4 -159 186 542 -541
		mu 0 4 945 949 950 957
		f 4 -543 187 190 543
		mu 0 4 957 950 1077 1073
		f 4 -542 -544 191 -164
		mu 0 4 956 957 1073 965
		f 4 -166 544 545 -193
		mu 0 4 981 961 973 982
		f 4 -165 194 546 -545
		mu 0 4 961 965 1084 973
		f 4 -547 195 196 547
		mu 0 4 973 1084 1093 1089
		f 4 -546 -548 197 -194
		mu 0 4 982 973 1089 1109
		f 4 -170 548 549 -199
		mu 0 4 997 977 989 998
		f 4 -169 192 550 -549
		mu 0 4 977 981 982 989
		f 4 -551 193 200 551
		mu 0 4 989 982 1109 1105
		f 4 -550 -552 201 -200
		mu 0 4 998 989 1105 1125
		f 4 -174 552 553 -203
		mu 0 4 1013 993 1005 1014
		f 4 -173 198 554 -553
		mu 0 4 993 997 998 1005
		f 4 -555 199 204 555
		mu 0 4 1005 998 1125 1121
		f 4 -554 -556 205 -204
		mu 0 4 1014 1005 1121 1141
		f 4 -178 556 557 -207
		mu 0 4 1029 1009 1021 1030
		f 4 -177 202 558 -557
		mu 0 4 1009 1013 1014 1021
		f 4 -559 203 208 559
		mu 0 4 1021 1014 1141 1137
		f 4 -558 -560 209 -208
		mu 0 4 1030 1021 1137 1157
		f 4 -182 560 561 -211
		mu 0 4 1045 1025 1037 1046
		f 4 -181 206 562 -561
		mu 0 4 1025 1029 1030 1037
		f 4 -563 207 212 563
		mu 0 4 1037 1030 1157 1153
		f 4 -562 -564 213 -212
		mu 0 4 1046 1037 1153 1173
		f 4 -186 564 565 -215
		mu 0 4 1061 1041 1053 1062
		f 4 -185 210 566 -565
		mu 0 4 1041 1045 1046 1053
		f 4 -567 211 216 567
		mu 0 4 1053 1046 1173 1169
		f 4 -566 -568 217 -216
		mu 0 4 1062 1053 1169 1189
		f 4 -190 568 569 -219
		mu 0 4 1077 1057 1069 1078
		f 4 -189 214 570 -569
		mu 0 4 1057 1061 1062 1069
		f 4 -571 215 220 571
		mu 0 4 1069 1062 1189 1185
		f 4 -570 -572 221 -220
		mu 0 4 1078 1069 1185 1205
		f 4 -192 572 573 -195
		mu 0 4 965 1073 1085 1084
		f 4 -191 218 574 -573
		mu 0 4 1073 1077 1078 1085
		f 4 -575 219 222 575
		mu 0 4 1085 1078 1205 1201
		f 4 -574 -576 223 -196
		mu 0 4 1084 1085 1201 1093
		f 4 -198 576 577 -227
		mu 0 4 1109 1089 1101 1110
		f 4 -197 230 578 -577
		mu 0 4 1089 1093 1212 1101
		f 4 -579 231 232 579
		mu 0 4 1101 1212 122 1099
		f 4 -578 -580 233 -228
		mu 0 4 1110 1101 1099 1114
		f 4 -202 580 581 -239
		mu 0 4 1125 1105 1117 1126
		f 4 -201 226 582 -581
		mu 0 4 1105 1109 1110 1117
		f 4 -583 227 242 583
		mu 0 4 1117 1110 1114 1115
		f 4 -582 -584 243 -240
		mu 0 4 1126 1117 1115 1130
		f 4 -206 584 585 -247
		mu 0 4 1141 1121 1133 1142
		f 4 -205 238 586 -585
		mu 0 4 1121 1125 1126 1133
		f 4 -587 239 250 587
		mu 0 4 1133 1126 1130 1131
		f 4 -586 -588 251 -248
		mu 0 4 1142 1133 1131 1146
		f 4 -210 588 589 -255
		mu 0 4 1157 1137 1149 1158
		f 4 -209 246 590 -589
		mu 0 4 1137 1141 1142 1149
		f 4 -591 247 258 591
		mu 0 4 1149 1142 1146 1147
		f 4 -590 -592 259 -256
		mu 0 4 1158 1149 1147 1162
		f 4 -214 592 593 -263
		mu 0 4 1173 1153 1165 1174
		f 4 -213 254 594 -593
		mu 0 4 1153 1157 1158 1165
		f 4 -595 255 266 595
		mu 0 4 1165 1158 1162 1163
		f 4 -594 -596 267 -264
		mu 0 4 1174 1165 1163 1178
		f 4 -218 596 597 -271
		mu 0 4 1189 1169 1181 1190
		f 4 -217 262 598 -597
		mu 0 4 1169 1173 1174 1181
		f 4 -599 263 274 599
		mu 0 4 1181 1174 1178 1179
		f 4 -598 -600 275 -272
		mu 0 4 1190 1181 1179 1194
		f 4 -222 600 601 -279
		mu 0 4 1205 1185 1197 1206
		f 4 -221 270 602 -601
		mu 0 4 1185 1189 1190 1197
		f 4 -603 271 282 603
		mu 0 4 1197 1190 1194 1195
		f 4 -602 -604 283 -280
		mu 0 4 1206 1197 1195 1210
		f 4 -224 604 605 -231
		mu 0 4 1093 1201 1213 1212
		f 4 -223 278 606 -605
		mu 0 4 1201 1205 1206 1213
		f 4 -607 279 286 607
		mu 0 4 1213 1206 1210 1211
		f 4 -606 -608 287 -232
		mu 0 4 1212 1213 1211 122;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "group8";
	setAttr ".t" -type "double3" 3.5296898211418704 0.43777346980917908 3.0366226713692437 ;
	setAttr ".s" -type "double3" 0.60369554659738145 0.42653249361090084 0.41774768015175379 ;
createNode mesh -n "pCubeShape2" -p "|group8|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape5" -p "|group8|pCube2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 384 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.4375 0 0.4375 0.0625
		 0.375 0.0625 0.4375 0 0.5 0 0.5 0.0625 0.4375 0.0625 0.4375 0.0625 0.5 0.0625 0.5
		 0.125 0.4375 0.125 0.375 0.0625 0.4375 0.0625 0.4375 0.125 0.375 0.125 0.5 0 0.5625
		 0 0.5625 0.0625 0.5 0.0625 0.5625 0 0.625 0 0.625 0.0625 0.5625 0.0625 0.5625 0.0625
		 0.625 0.0625 0.625 0.125 0.5625 0.125 0.5 0.0625 0.5625 0.0625 0.5625 0.125 0.5 0.125
		 0.375 0.125 0.4375 0.125 0.4375 0.1875 0.375 0.1875 0.4375 0.125 0.5 0.125 0.5 0.1875
		 0.4375 0.1875 0.4375 0.1875 0.5 0.1875 0.5 0.25 0.4375 0.25 0.375 0.1875 0.4375 0.1875
		 0.4375 0.25 0.375 0.25 0.5 0.125 0.5625 0.125 0.5625 0.1875 0.5 0.1875 0.5625 0.125
		 0.625 0.125 0.625 0.1875 0.5625 0.1875 0.5625 0.1875 0.625 0.1875 0.625 0.25 0.5625
		 0.25 0.5 0.1875 0.5625 0.1875 0.5625 0.25 0.5 0.25 0.375 0.25 0.4375 0.25 0.4375
		 0.3125 0.375 0.3125 0.4375 0.25 0.5 0.25 0.5 0.3125 0.4375 0.3125 0.4375 0.3125 0.5
		 0.3125 0.5 0.375 0.4375 0.375 0.375 0.3125 0.4375 0.3125 0.4375 0.375 0.375 0.375
		 0.5 0.25 0.5625 0.25 0.5625 0.3125 0.5 0.3125 0.5625 0.25 0.625 0.25 0.625 0.3125
		 0.5625 0.3125 0.5625 0.3125 0.625 0.3125 0.625 0.375 0.5625 0.375 0.5 0.3125 0.5625
		 0.3125 0.5625 0.375 0.5 0.375 0.375 0.375 0.4375 0.375 0.4375 0.4375 0.375 0.4375
		 0.4375 0.375 0.5 0.375 0.5 0.4375 0.4375 0.4375 0.4375 0.4375 0.5 0.4375 0.5 0.5
		 0.4375 0.5 0.375 0.4375 0.4375 0.4375 0.4375 0.5 0.375 0.5 0.5 0.375 0.5625 0.375
		 0.5625 0.4375 0.5 0.4375 0.5625 0.375 0.625 0.375 0.625 0.4375 0.5625 0.4375 0.5625
		 0.4375 0.625 0.4375 0.625 0.5 0.5625 0.5 0.5 0.4375 0.5625 0.4375 0.5625 0.5 0.5
		 0.5 0.375 0.5 0.4375 0.5 0.4375 0.5625 0.375 0.5625 0.4375 0.5 0.5 0.5 0.5 0.5625
		 0.4375 0.5625 0.4375 0.5625 0.5 0.5625 0.5 0.625 0.4375 0.625 0.375 0.5625 0.4375
		 0.5625 0.4375 0.625 0.375 0.625 0.5 0.5 0.5625 0.5 0.5625 0.5625 0.5 0.5625 0.5625
		 0.5 0.625 0.5 0.625 0.5625 0.5625 0.5625 0.5625 0.5625 0.625 0.5625 0.625 0.625 0.5625
		 0.625 0.5 0.5625 0.5625 0.5625 0.5625 0.625 0.5 0.625 0.375 0.625 0.4375 0.625 0.4375
		 0.6875 0.375 0.6875 0.4375 0.625 0.5 0.625 0.5 0.6875 0.4375 0.6875 0.4375 0.6875
		 0.5 0.6875 0.5 0.75 0.4375 0.75 0.375 0.6875 0.4375 0.6875 0.4375 0.75 0.375 0.75
		 0.5 0.625 0.5625 0.625 0.5625 0.6875 0.5 0.6875 0.5625 0.625 0.625 0.625 0.625 0.6875
		 0.5625 0.6875 0.5625 0.6875 0.625 0.6875 0.625 0.75 0.5625 0.75 0.5 0.6875 0.5625
		 0.6875 0.5625 0.75 0.5 0.75 0.375 0.75 0.4375 0.75 0.4375 0.8125 0.375 0.8125 0.4375
		 0.75 0.5 0.75 0.5 0.8125 0.4375 0.8125 0.4375 0.8125 0.5 0.8125 0.5 0.875 0.4375
		 0.875 0.375 0.8125 0.4375 0.8125 0.4375 0.875 0.375 0.875 0.5 0.75 0.5625 0.75 0.5625
		 0.8125 0.5 0.8125 0.5625 0.75 0.625 0.75 0.625 0.8125 0.5625 0.8125 0.5625 0.8125
		 0.625 0.8125 0.625 0.875 0.5625 0.875 0.5 0.8125 0.5625 0.8125 0.5625 0.875 0.5 0.875
		 0.375 0.875 0.4375 0.875 0.4375 0.9375 0.375 0.9375 0.4375 0.875 0.5 0.875 0.5 0.9375
		 0.4375 0.9375 0.4375 0.9375 0.5 0.9375 0.5 1 0.4375 1 0.375 0.9375 0.4375 0.9375
		 0.4375 1 0.375 1 0.5 0.875 0.5625 0.875 0.5625 0.9375 0.5 0.9375 0.5625 0.875 0.625
		 0.875 0.625 0.9375 0.5625 0.9375 0.5625 0.9375 0.625 0.9375;
	setAttr ".uvst[0].uvsp[250:383]" 0.625 1 0.5625 1 0.5 0.9375 0.5625 0.9375
		 0.5625 1 0.5 1 0.75 0 0.8125 0 0.8125 0.0625 0.75 0.0625 0.8125 0 0.875 0 0.875 0.0625
		 0.8125 0.0625 0.8125 0.0625 0.875 0.0625 0.875 0.125 0.8125 0.125 0.75 0.0625 0.8125
		 0.0625 0.8125 0.125 0.75 0.125 0.625 0 0.6875 0 0.6875 0.0625 0.625 0.0625 0.6875
		 0 0.75 0 0.75 0.0625 0.6875 0.0625 0.6875 0.0625 0.75 0.0625 0.75 0.125 0.6875 0.125
		 0.625 0.0625 0.6875 0.0625 0.6875 0.125 0.625 0.125 0.75 0.125 0.8125 0.125 0.8125
		 0.1875 0.75 0.1875 0.8125 0.125 0.875 0.125 0.875 0.1875 0.8125 0.1875 0.8125 0.1875
		 0.875 0.1875 0.875 0.25 0.8125 0.25 0.75 0.1875 0.8125 0.1875 0.8125 0.25 0.75 0.25
		 0.625 0.125 0.6875 0.125 0.6875 0.1875 0.625 0.1875 0.6875 0.125 0.75 0.125 0.75
		 0.1875 0.6875 0.1875 0.6875 0.1875 0.75 0.1875 0.75 0.25 0.6875 0.25 0.625 0.1875
		 0.6875 0.1875 0.6875 0.25 0.625 0.25 0.125 0 0.1875 0 0.1875 0.0625 0.125 0.0625
		 0.1875 0 0.25 0 0.25 0.0625 0.1875 0.0625 0.1875 0.0625 0.25 0.0625 0.25 0.125 0.1875
		 0.125 0.125 0.0625 0.1875 0.0625 0.1875 0.125 0.125 0.125 0.25 0 0.3125 0 0.3125
		 0.0625 0.25 0.0625 0.3125 0 0.375 0 0.375 0.0625 0.3125 0.0625 0.3125 0.0625 0.375
		 0.0625 0.375 0.125 0.3125 0.125 0.25 0.0625 0.3125 0.0625 0.3125 0.125 0.25 0.125
		 0.125 0.125 0.1875 0.125 0.1875 0.1875 0.125 0.1875 0.1875 0.125 0.25 0.125 0.25
		 0.1875 0.1875 0.1875 0.1875 0.1875 0.25 0.1875 0.25 0.25 0.1875 0.25 0.125 0.1875
		 0.1875 0.1875 0.1875 0.25 0.125 0.25 0.25 0.125 0.3125 0.125 0.3125 0.1875 0.25 0.1875
		 0.3125 0.125 0.375 0.125 0.375 0.1875 0.3125 0.1875 0.3125 0.1875 0.375 0.1875 0.375
		 0.25 0.3125 0.25 0.25 0.1875 0.3125 0.1875 0.3125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 98 ".vt[0:97]"  -0.3888889 -0.3888889 0.38888893 0 -0.4375 0.4375
		 0.3888889 -0.3888889 0.38888893 -0.4375 0 0.4375 0 0 0.5 0.4375 0 0.4375 -0.3888889 0.3888889 0.38888893
		 0 0.4375 0.4375 0.3888889 0.3888889 0.38888893 -0.4375 0.4375 0 0 0.5 0 0.4375 0.4375 0
		 -0.3888889 0.38888893 -0.3888889 0 0.4375 -0.4375 0.3888889 0.38888893 -0.3888889
		 -0.4375 0 -0.4375 0 0 -0.5 0.4375 0 -0.4375 -0.3888889 -0.3888889 -0.38888893 0 -0.4375 -0.4375
		 0.3888889 -0.3888889 -0.38888893 -0.4375 -0.4375 0 0 -0.5 0 0.4375 -0.4375 0 0.5 0 0
		 -0.5 0 0 0 -0.25 0.5 -0.25 0 0.5 0.25 -0.4375 0.4375 0.4375 -0.25 0.4375 0.25 0 0.5
		 -0.4375 0.25 0.4375 0 0.25 0.5 -0.25 0.4375 0.4375 0.4375 0.25 0.4375 0.25 0.4375 0.4375
		 -0.4375 0.4375 0.25 0 0.5 0.25 -0.25 0.5 0 0.4375 0.4375 0.25 0.25 0.5 0 -0.4375 0.4375 -0.25
		 0 0.5 -0.25 -0.25 0.4375 -0.4375 0.4375 0.4375 -0.25 0.25 0.4375 -0.4375 -0.4375 0.25 -0.4375
		 0 0.25 -0.5 -0.25 0 -0.5 0.4375 0.25 -0.4375 0.25 0 -0.5 -0.4375 -0.25 -0.4375 0 -0.25 -0.5
		 -0.25 -0.4375 -0.4375 0.4375 -0.25 -0.4375 0.25 -0.4375 -0.4375 -0.4375 -0.4375 -0.25
		 0 -0.5 -0.25 -0.25 -0.5 0 0.4375 -0.4375 -0.25 0.25 -0.5 0 -0.4375 -0.4375 0.25 0 -0.5 0.25
		 0.4375 -0.4375 0.25 0.5 -0.25 0 0.5 0 -0.25 0.5 0 0.25 0.5 0.25 0 -0.5 -0.25 0 -0.5 0 -0.25
		 -0.5 0 0.25 -0.5 0.25 0 -0.25 -0.4375 0.4375 -0.4375 -0.25 0.4375 -0.25 -0.25 0.5
		 0.25 -0.25 0.5 -0.25 0.25 0.5 0.25 0.25 0.5 -0.25 0.5 0.25 0.25 0.5 0.25 -0.25 0.5 -0.25
		 0.25 0.5 -0.25 -0.25 0.25 -0.5 0.25 0.25 -0.5 -0.25 -0.25 -0.5 0.25 -0.25 -0.5 -0.25 -0.5 -0.25
		 0.25 -0.5 -0.25 -0.25 -0.5 0.25 0.25 -0.5 0.25 0.5 -0.25 -0.25 0.5 -0.25 0.25 0.5 0.25 -0.25
		 0.5 0.25 0.25 -0.5 -0.25 -0.25 -0.5 -0.25 0.25 -0.5 0.25 -0.25 -0.5 0.25 0.25;
	setAttr -s 192 ".ed";
	setAttr ".ed[0:165]"  0 72 1 72 1 1 1 28 1 28 2 1 3 27 1 27 4 1 4 30 1 30 5 1
		 6 33 1 33 7 1 7 35 1 35 8 1 9 38 1 38 10 1 10 40 1 40 11 1 12 43 1 43 13 1 13 45 1
		 45 14 1 15 48 1 48 16 1 16 50 1 50 17 1 18 53 1 53 19 1 19 55 1 55 20 1 21 58 1 58 22 1
		 22 60 1 60 23 1 0 73 1 73 3 1 1 26 1 26 4 1 2 29 1 29 5 1 3 31 1 31 6 1 4 32 1 32 7 1
		 5 34 1 34 8 1 6 36 1 36 9 1 7 37 1 37 10 1 8 39 1 39 11 1 9 41 1 41 12 1 10 42 1
		 42 13 1 11 44 1 44 14 1 12 46 1 46 15 1 13 47 1 47 16 1 14 49 1 49 17 1 15 51 1 51 18 1
		 16 52 1 52 19 1 17 54 1 54 20 1 18 56 1 56 21 1 19 57 1 57 22 1 20 59 1 59 23 1 21 61 1
		 61 0 1 22 62 1 62 1 1 23 63 1 63 2 1 17 65 1 65 24 1 24 66 1 66 5 1 23 64 1 64 24 1
		 24 67 1 67 11 1 15 69 1 69 25 1 25 70 1 70 3 1 21 68 1 68 25 1 25 71 1 71 9 1 72 74 1
		 74 73 1 26 74 1 27 74 1 28 75 1 75 26 1 29 75 1 30 75 1 27 76 1 76 31 1 32 76 1 33 76 1
		 30 77 1 77 32 1 34 77 1 35 77 1 33 78 1 78 36 1 37 78 1 38 78 1 35 79 1 79 37 1 39 79 1
		 40 79 1 38 80 1 80 41 1 42 80 1 43 80 1 40 81 1 81 42 1 44 81 1 45 81 1 43 82 1 82 46 1
		 47 82 1 48 82 1 45 83 1 83 47 1 49 83 1 50 83 1 48 84 1 84 51 1 52 84 1 53 84 1 50 85 1
		 85 52 1 54 85 1 55 85 1 53 86 1 86 56 1 57 86 1 58 86 1 55 87 1 87 57 1 59 87 1 60 87 1
		 58 88 1 88 61 1 62 88 1 72 88 1 60 89 1 89 62 1 63 89 1 28 89 1 59 90 1 90 64 1 54 90 1
		 65 90 1 63 91 1 91 29 1;
	setAttr ".ed[166:191]" 64 91 1 66 91 1 65 92 1 92 67 1 49 92 1 44 92 1 66 93 1
		 93 34 1 67 93 1 39 93 1 56 94 1 94 51 1 68 94 1 69 94 1 61 95 1 95 68 1 73 95 1 70 95 1
		 69 96 1 96 46 1 71 96 1 41 96 1 70 97 1 97 71 1 31 97 1 36 97 1;
	setAttr -s 96 -ch 384 ".fc[0:95]" -type "polyFaces" 
		f 4 0 96 97 -33
		mu 0 4 0 4 13 342
		f 4 1 34 98 -97
		mu 0 4 4 16 28 13
		f 4 -99 35 -6 99
		mu 0 4 13 28 37 33
		f 4 -98 -100 -5 -34
		mu 0 4 342 13 33 346
		f 4 2 100 101 -35
		mu 0 4 16 20 29 28
		f 4 3 36 102 -101
		mu 0 4 20 272 284 29
		f 4 -103 37 -8 103
		mu 0 4 29 284 304 49
		f 4 -102 -104 -7 -36
		mu 0 4 28 29 49 37
		f 4 4 104 105 -39
		mu 0 4 346 33 45 374
		f 4 5 40 106 -105
		mu 0 4 33 37 60 45
		f 4 -107 41 -10 107
		mu 0 4 45 60 69 65
		f 4 -106 -108 -9 -40
		mu 0 4 374 45 65 378
		f 4 6 108 109 -41
		mu 0 4 37 49 61 60
		f 4 7 42 110 -109
		mu 0 4 49 304 316 61
		f 4 -111 43 -12 111
		mu 0 4 61 316 85 81
		f 4 -110 -112 -11 -42
		mu 0 4 60 61 81 69
		f 4 8 112 113 -45
		mu 0 4 378 65 77 67
		f 4 9 46 114 -113
		mu 0 4 65 69 92 77
		f 4 -115 47 -14 115
		mu 0 4 77 92 101 97
		f 4 -114 -116 -13 -46
		mu 0 4 67 77 97 79
		f 4 10 116 117 -47
		mu 0 4 69 81 93 92
		f 4 11 48 118 -117
		mu 0 4 81 85 89 93
		f 4 -119 49 -16 119
		mu 0 4 93 89 117 113
		f 4 -118 -120 -15 -48
		mu 0 4 92 93 113 101
		f 4 12 120 121 -51
		mu 0 4 79 97 109 99
		f 4 13 52 122 -121
		mu 0 4 97 101 124 109
		f 4 -123 53 -18 123
		mu 0 4 109 124 133 129
		f 4 -122 -124 -17 -52
		mu 0 4 99 109 129 111
		f 4 14 124 125 -53
		mu 0 4 101 113 125 124
		f 4 15 54 126 -125
		mu 0 4 113 117 121 125
		f 4 -127 55 -20 127
		mu 0 4 125 121 149 145
		f 4 -126 -128 -19 -54
		mu 0 4 124 125 145 133
		f 4 16 128 129 -57
		mu 0 4 111 129 141 131
		f 4 17 58 130 -129
		mu 0 4 129 133 156 141
		f 4 -131 59 -22 131
		mu 0 4 141 156 165 161
		f 4 -130 -132 -21 -58
		mu 0 4 131 141 161 143
		f 4 18 132 133 -59
		mu 0 4 133 145 157 156
		f 4 19 60 134 -133
		mu 0 4 145 149 153 157
		f 4 -135 61 -24 135
		mu 0 4 157 153 181 177
		f 4 -134 -136 -23 -60
		mu 0 4 156 157 177 165
		f 4 20 136 137 -63
		mu 0 4 143 161 173 163
		f 4 21 64 138 -137
		mu 0 4 161 165 188 173
		f 4 -139 65 -26 139
		mu 0 4 173 188 197 193
		f 4 -138 -140 -25 -64
		mu 0 4 163 173 193 175
		f 4 22 140 141 -65
		mu 0 4 165 177 189 188
		f 4 23 66 142 -141
		mu 0 4 177 181 185 189
		f 4 -143 67 -28 143
		mu 0 4 189 185 213 209
		f 4 -142 -144 -27 -66
		mu 0 4 188 189 209 197
		f 4 24 144 145 -69
		mu 0 4 175 193 205 195
		f 4 25 70 146 -145
		mu 0 4 193 197 220 205
		f 4 -147 71 -30 147
		mu 0 4 205 220 229 225
		f 4 -146 -148 -29 -70
		mu 0 4 195 205 225 207
		f 4 26 148 149 -71
		mu 0 4 197 209 221 220
		f 4 27 72 150 -149
		mu 0 4 209 213 217 221
		f 4 -151 73 -32 151
		mu 0 4 221 217 245 241
		f 4 -150 -152 -31 -72
		mu 0 4 220 221 241 229
		f 4 28 152 153 -75
		mu 0 4 207 225 237 227
		f 4 29 76 154 -153
		mu 0 4 225 229 252 237
		f 4 -155 77 -2 155
		mu 0 4 237 252 255 235
		f 4 -154 -156 -1 -76
		mu 0 4 227 237 235 239
		f 4 30 156 157 -77
		mu 0 4 229 241 253 252
		f 4 31 78 158 -157
		mu 0 4 241 245 249 253
		f 4 -159 79 -4 159
		mu 0 4 253 249 250 251
		f 4 -158 -160 -3 -78
		mu 0 4 252 253 251 255
		f 4 -74 160 161 -85
		mu 0 4 277 257 269 278
		f 4 -73 -68 162 -161
		mu 0 4 257 261 262 269
		f 4 -163 -67 80 163
		mu 0 4 269 262 266 289
		f 4 -162 -164 81 -86
		mu 0 4 278 269 289 309
		f 4 -80 164 165 -37
		mu 0 4 272 273 285 284
		f 4 -79 84 166 -165
		mu 0 4 273 277 278 285
		f 4 -167 85 82 167
		mu 0 4 285 278 309 305
		f 4 -166 -168 83 -38
		mu 0 4 284 285 305 304
		f 4 -82 168 169 -87
		mu 0 4 309 289 301 310
		f 4 -81 -62 170 -169
		mu 0 4 289 266 294 301
		f 4 -171 -61 -56 171
		mu 0 4 301 294 298 299
		f 4 -170 -172 -55 -88
		mu 0 4 310 301 299 303
		f 4 -84 172 173 -43
		mu 0 4 304 305 317 316
		f 4 -83 86 174 -173
		mu 0 4 305 309 310 317
		f 4 -175 87 -50 175
		mu 0 4 317 310 303 315
		f 4 -174 -176 -49 -44
		mu 0 4 316 317 315 85
		f 4 68 176 177 63
		mu 0 4 320 321 333 332
		f 4 69 92 178 -177
		mu 0 4 321 325 348 333
		f 4 -179 93 -90 179
		mu 0 4 333 348 357 353
		f 4 -178 -180 -89 62
		mu 0 4 332 333 353 352
		f 4 74 180 181 -93
		mu 0 4 325 337 349 348
		f 4 75 32 182 -181
		mu 0 4 337 0 342 349
		f 4 -183 33 -92 183
		mu 0 4 349 342 346 369
		f 4 -182 -184 -91 -94
		mu 0 4 348 349 369 357
		f 4 88 184 185 57
		mu 0 4 352 353 365 364
		f 4 89 94 186 -185
		mu 0 4 353 357 380 365
		f 4 -187 95 50 187
		mu 0 4 365 380 383 363
		f 4 -186 -188 51 56
		mu 0 4 364 365 363 367
		f 4 90 188 189 -95
		mu 0 4 357 369 381 380
		f 4 91 38 190 -189
		mu 0 4 369 346 374 381
		f 4 -191 39 44 191
		mu 0 4 381 374 378 379
		f 4 -190 -192 45 -96
		mu 0 4 380 381 379 383;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "box:polySurface1";
	setAttr ".t" -type "double3" 1.2066572046748125 0.68853362395118289 -3.8535342404995956 ;
	setAttr ".r" -type "double3" 0 108.47963193281559 0 ;
	setAttr ".s" -type "double3" 0.45411853506603828 0.45411853506603828 0.45411853506603828 ;
	setAttr ".rp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
	setAttr ".sp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
createNode mesh -n "box:polySurfaceShape1" -p "box:polySurface1";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:31]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[32:127]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "vtx[0:145]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 512 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0 0 0 1 0 1 0 0 0 1 0 0
		 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 1
		 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1
		 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1
		 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1
		 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1 1
		 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1
		 0 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 1 0 1 0 1 0
		 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0
		 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 1 0 0
		 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 0 1 0 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 0
		 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0
		 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1
		 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1
		 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1
		 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0
		 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1;
	setAttr ".uvst[0].uvsp[500:511]" 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0
		 0 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 146 ".vt[0:145]"  -2.48131704 0.178654 2.75388694 -2.30557203 0.18639299 2.56610608
		 -2.11397791 0.178654 2.394526 -2.35452199 0.178654 2.88349605 -2.16292906 0.18639299 2.71191597
		 -1.98718405 0.178654 2.52413511 -2.44087791 0.18639299 2.841151 -2.23425007 0.196343 2.63901091
		 -2.027621984 0.18639299 2.4368701 -2.18749905 0.18639299 2.45059705 -2.28100204 0.18639299 2.827425
		 -2.044855118 0.18639299 2.59640694 -2.40012288 0.18639299 2.88281107 -2.19349504 0.196343 2.68067098
		 -2.35232306 0.196343 2.75451994 -1.98686695 0.18639299 2.47852993 -2.11617708 0.196343 2.52350211
		 -2.48163295 0.18639299 2.79949093 -2.2750051 0.196343 2.59735107 -2.068377018 0.18639299 2.39521003
		 -2.42364502 0.18639299 2.68161511 -2.31156802 0.196343 2.79618001 -2.075422049 0.196343 2.56516194
		 -2.39307809 0.196343 2.71286011 -2.15693212 0.196343 2.48184204 -2.43383408 0.156543 2.67120004
		 -2.51220012 0.156543 2.76824594 -2.31576109 0.156543 2.555691 -2.1976881 0.156543 2.44018197
		 -2.098943949 0.156543 2.36396503 -2.27081299 0.156543 2.83784008 -2.15274 0.156543 2.72233105
		 -2.3695569 0.156543 2.91405606 -2.034667015 0.156543 2.60682201 -1.95630002 0.156543 2.50977492
		 -1.95734894 0.156543 2.44965291 -1.99810398 0.156543 2.40799308 -2.038858891 0.156543 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.47039604 0.156543 2.87002802 -2.51115203 0.156543 2.82836795
		 -2.51220012 0.116743 2.76824594 -2.31576109 0.116743 2.555691 -2.098943949 0.116743 2.36396503
		 -2.51220012 0.046128999 2.76824594 -2.31576109 0.046128999 2.555691 -2.098943949 0.046128999 2.36396503
		 -2.47039604 0.046128999 2.87002802 -1.99810398 0.046128999 2.40799308 -2.36955595 0.046128999 2.91405606
		 -2.15274 0.046128999 2.72233105 -1.95630002 0.046128999 2.50977492 -2.36955595 0.116743 2.91405606
		 -2.15274 0.116743 2.72233105 -1.95630002 0.116743 2.50977492 -1.99810398 0.116743 2.40799308
		 -2.47039604 0.116743 2.87002802 -2.48131704 0.031148 2.75388694 -2.30557203 0.030399 2.56610608
		 -2.23425007 0.029436 2.63901091 -2.44087791 0.030399 2.841151 -2.11397791 0.031148 2.394526
		 -2.027621984 0.030399 2.4368701 -2.16292906 0.030399 2.71191597 -2.35452199 0.031148 2.88349605
		 -1.98718405 0.031148 2.52413511 -2.31576109 0.156543 2.555691 -2.43383408 0.116743 2.67120004
		 -2.098943949 0.156543 2.36396503 -2.1976881 0.116743 2.44018197 -2.51220012 0.076943003 2.76824594
		 -2.31576109 0.076943003 2.555691 -2.43383408 0.046128999 2.67120004 -2.098943949 0.076943003 2.36396503
		 -2.1976881 0.046128999 2.44018197 -2.42364502 0.030399 2.68161511 -2.48163295 0.030399 2.79949093
		 -2.2750051 0.029436 2.59735107 -2.35232306 0.029436 2.75451994 -2.18749905 0.030399 2.45059705
		 -2.068377018 0.030399 2.39521003 -2.11617708 0.029436 2.52350211 -2.40012288 0.030399 2.88281107
		 -2.19349504 0.029436 2.68067098 -2.28100204 0.030399 2.827425 -1.98686695 0.030399 2.47852993
		 -2.044855118 0.030399 2.59640694 -2.27081299 0.046128999 2.83784008 -2.3695569 0.076943003 2.91405606
		 -2.15274 0.076943003 2.72233105 -2.27081299 0.116743 2.83784008 -2.034667015 0.046128999 2.60682201
		 -1.95630002 0.076943003 2.50977492 -2.034667015 0.116743 2.60682201 -2.3695569 0.156543 2.91405606
		 -2.15274 0.156543 2.72233105 -1.95630002 0.156543 2.50977492 -1.99810398 0.156543 2.40799308
		 -1.95734894 0.116743 2.44965291 -2.038858891 0.116743 2.36633301 -1.99810398 0.076943003 2.40799308
		 -1.95734894 0.046128999 2.44965291 -2.038858891 0.046128999 2.36633301 -2.47039604 0.156543 2.87002802
		 -2.42964101 0.116743 2.91168809 -2.51115203 0.116743 2.82836795 -2.47039604 0.076943003 2.87002802
		 -2.42964101 0.046128999 2.91168809 -2.51115203 0.046128999 2.82836795 -2.51220012 0.033289 2.76824594
		 -2.31576109 0.033289 2.555691 -2.47039604 0.033289 2.87002802 -2.098943949 0.033289 2.36396503
		 -1.99810398 0.033289 2.40799308 -2.15274 0.033289 2.72233105 -2.3695569 0.033289 2.91405606
		 -1.95630002 0.033289 2.50977492 -2.51220012 0.156543 2.76824594 -2.43383408 0.156543 2.67120004
		 -2.1976881 0.156543 2.44018197 -2.43383408 0.076943003 2.67120004 -2.1976881 0.076943003 2.44018197
		 -2.39307809 0.029436 2.71286011 -2.15693212 0.029436 2.48184204 -2.31156802 0.029436 2.79618001
		 -2.075422049 0.029436 2.56516194 -2.27081299 0.076943003 2.83784008 -2.034667015 0.076943003 2.60682201
		 -2.27081299 0.156543 2.83784008 -2.034667015 0.156543 2.60682201 -1.95734894 0.156543 2.44965291
		 -2.038858891 0.156543 2.36633301 -1.95734894 0.076943003 2.44965291 -2.038858891 0.076943003 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.51115203 0.156543 2.82836795 -2.42964101 0.076943003 2.91168809
		 -2.51115203 0.076943003 2.82836795 -2.43383408 0.033289 2.67120004 -2.51115203 0.033289 2.82836795
		 -2.1976881 0.033289 2.44018197 -2.038858891 0.033289 2.36633301 -2.27081299 0.033289 2.83784008
		 -2.42964101 0.033289 2.91168809 -1.95734894 0.033289 2.44965291 -2.034667015 0.033289 2.60682201;
	setAttr -s 272 ".ed";
	setAttr ".ed[0:165]"  0 20 0 20 25 0 25 26 0 26 0 0 20 1 0 1 27 0 27 25 0
		 1 9 0 9 28 0 28 27 0 9 2 0 2 29 0 29 28 0 30 31 0 31 4 0 4 10 0 10 30 0 32 30 0 10 3 0
		 3 32 0 33 34 0 34 5 0 5 11 0 11 33 0 31 33 0 11 4 0 10 21 0 21 12 0 12 3 0 4 13 0
		 13 21 0 13 7 0 7 14 0 14 21 0 14 6 0 6 12 0 11 22 0 22 13 0 5 15 0 15 22 0 15 8 0
		 8 16 0 16 22 0 16 7 0 14 23 0 23 17 0 17 6 0 7 18 0 18 23 0 18 1 0 20 23 0 0 17 0
		 16 24 0 24 18 0 8 19 0 19 24 0 19 2 0 9 24 0 15 35 0 35 36 0 36 8 0 34 35 0 19 37 0
		 37 29 0 36 37 0 12 38 0 38 32 0 6 39 0 39 38 0 17 40 0 40 39 0 26 40 0 118 66 0 66 42 0
		 42 67 0 67 118 0 117 118 0 67 41 0 41 117 0 119 68 0 68 43 0 43 69 0 69 119 0 66 119 0
		 69 42 0 67 120 0 120 70 0 70 41 0 42 71 0 71 120 0 71 45 0 45 72 0 72 120 0 72 44 0
		 44 70 0 69 121 0 121 71 0 43 73 0 73 121 0 73 46 0 46 74 0 74 121 0 74 45 0 57 75 0
		 75 122 0 122 76 0 76 57 0 75 58 0 58 77 0 77 122 0 77 59 0 59 78 0 78 122 0 78 60 0
		 60 76 0 58 79 0 79 123 0 123 77 0 79 61 0 61 80 0 80 123 0 80 62 0 62 81 0 81 123 0
		 81 59 0 78 124 0 124 82 0 82 60 0 59 83 0 83 124 0 83 63 0 63 84 0 84 124 0 84 64 0
		 64 82 0 81 125 0 125 83 0 62 85 0 85 125 0 85 65 0 65 86 0 86 125 0 86 63 0 49 87 0
		 87 126 0 126 88 0 88 49 0 87 50 0 50 89 0 89 126 0 89 53 0 53 90 0 90 126 0 90 52 0
		 52 88 0 50 91 0 91 127 0 127 89 0 91 51 0 51 92 0 92 127 0 92 54 0 54 93 0 93 127 0
		 93 53 0 90 128 0;
	setAttr ".ed[166:271]" 128 94 0 94 52 0 53 95 0 95 128 0 93 129 0 129 95 0
		 54 96 0 96 129 0 130 96 0 54 98 0 98 130 0 97 130 0 98 55 0 55 97 0 131 97 0 55 99 0
		 99 131 0 68 131 0 99 43 0 98 132 0 132 100 0 100 55 0 92 132 0 51 101 0 101 132 0
		 101 48 0 48 100 0 99 133 0 133 73 0 100 133 0 48 102 0 102 133 0 102 46 0 134 103 0
		 103 56 0 56 104 0 104 134 0 94 134 0 104 52 0 135 117 0 41 105 0 105 135 0 103 135 0
		 105 56 0 104 136 0 136 88 0 56 106 0 106 136 0 106 47 0 47 107 0 107 136 0 107 49 0
		 105 137 0 137 106 0 70 137 0 44 108 0 108 137 0 108 47 0 72 138 0 138 109 0 109 44 0
		 45 110 0 110 138 0 110 58 0 75 138 0 57 109 0 108 139 0 139 111 0 111 47 0 109 139 0
		 76 139 0 60 111 0 74 140 0 140 110 0 46 112 0 112 140 0 112 61 0 79 140 0 102 141 0
		 141 112 0 48 113 0 113 141 0 113 62 0 80 141 0 87 142 0 142 114 0 114 50 0 49 115 0
		 115 142 0 115 64 0 84 142 0 63 114 0 107 143 0 143 115 0 111 143 0 82 143 0 101 144 0
		 144 113 0 51 116 0 116 144 0 116 65 0 85 144 0 91 145 0 145 116 0 114 145 0 86 145 0;
	setAttr -s 512 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.52629298 0.809928 -0.25890601 -0.42148501
		 0.82520002 -0.376026 -0.65006101 0.461981 -0.60332 -0.70441198 0.619452 -0.34652999
		 -0.42148501 0.82520002 -0.376026 -0.39437401 0.82580698 -0.40312901 -0.62843603 0.438642
		 -0.64238697 -0.65006101 0.461981 -0.60332 -0.39437401 0.82580698 -0.40312901 -0.36668199
		 0.82520002 -0.42963901 -0.58890301 0.461981 -0.663149 -0.62843603 0.438642 -0.64238697
		 -0.36668199 0.82520002 -0.42963901 -0.247289 0.809928 -0.53184998 -0.33098099 0.61945099
		 -0.711851 -0.58890301 0.461981 -0.663149 0.58890301 0.461981 0.663149 0.62843603
		 0.438642 0.64238697 0.39437401 0.82580698 0.40312901 0.36668199 0.82520002 0.42963901
		 0.33098099 0.619452 0.71184999 0.58890301 0.461981 0.663149 0.36668199 0.82520002
		 0.42963901 0.247289 0.809928 0.53184998 0.65006101 0.461981 0.60332 0.70441198 0.619452
		 0.34652901 0.52629298 0.809928 0.25890601 0.42148501 0.82520002 0.376026 0.62843603
		 0.438642 0.64238697 0.65006101 0.461981 0.60332 0.42148501 0.82520002 0.376026 0.39437401
		 0.82580698 0.40312901 0.247289 0.809928 0.53184998 0.36668199 0.82520002 0.42963901
		 0.042675 0.99486399 0.091783002 -0.077308998 0.96430999 0.25323999 0.36668199 0.82520002
		 0.42963901 0.39437401 0.82580698 0.40312901 0.067901 0.99527502 0.069408 0.042675
		 0.99486399 0.091783002 0.042675 0.99486399 0.091783002 0.067901 0.99527502 0.069408
		 0 1 0 -0.024591001 0.99940801 0.024057001 -0.077308998 0.96430999 0.25323999 0.042675
		 0.99486399 0.091783002 -0.024591001 0.99940801 0.024057001 -0.167448 0.97217703 0.163811
		 0.39437401 0.82580698 0.40312901 0.42148501 0.82520002 0.376026 0.090824001 0.99486399
		 0.044679999 0.067901 0.99527502 0.069408 0.42148501 0.82520002 0.376026 0.52629298
		 0.809928 0.25890601 0.25487599 0.96430999 -0.071731001 0.090824001 0.99486399 0.044679999
		 0.090824001 0.99486399 0.044679999 0.25487599 0.96430999 -0.071731001 0.167448 0.97217703
		 -0.163811 0.024591001 0.99940801 -0.024057001 0.067901 0.99527502 0.069408 0.090824001
		 0.99486399 0.044679999 0.024591001 0.99940801 -0.024057001 0 1 0 -0.167448 0.97217703
		 0.163811 -0.024591001 0.99940801 0.024057001 -0.090824001 0.99486399 -0.044679999
		 -0.25487599 0.96430999 0.071731001 -0.024591001 0.99940801 0.024057001 0 1 0 -0.067901
		 0.99527502 -0.069408 -0.090824001 0.99486399 -0.044679999 -0.090824001 0.99486399
		 -0.044679999 -0.067901 0.99527502 -0.069408 -0.39437401 0.82580698 -0.40312901 -0.42148501
		 0.82520002 -0.376026 -0.25487599 0.96430999 0.071731001 -0.090824001 0.99486399 -0.044679999
		 -0.42148501 0.82520002 -0.376026 -0.52629298 0.809928 -0.25890601 0 1 0 0.024591001
		 0.99940801 -0.024057001 -0.042675 0.99486399 -0.091783002 -0.067901 0.99527502 -0.069408
		 0.024591001 0.99940801 -0.024057001 0.167448 0.97217703 -0.163811 0.077308998 0.96430898
		 -0.25323999 -0.042675 0.99486399 -0.091783002 -0.042675 0.99486399 -0.091783002 0.077308998
		 0.96430898 -0.25323999 -0.247289 0.809928 -0.53184998 -0.36668199 0.82520002 -0.42963901
		 -0.067901 0.99527502 -0.069408 -0.042675 0.99486399 -0.091783002 -0.36668199 0.82520002
		 -0.42963901 -0.39437401 0.82580698 -0.40312901 0.167448 0.97217703 -0.163811 0.25487599
		 0.96430999 -0.071731001 0.53995699 0.809349 -0.231087 0.41876701 0.81043297 -0.40967301
		 0.25487599 0.96430999 -0.071731001 0.52629298 0.809928 0.25890601 0.70441198 0.619452
		 0.34652901 0.53995699 0.809349 -0.231087 -0.247289 0.809928 -0.53184998 0.077308998
		 0.96430898 -0.25323999 0.24288499 0.809349 -0.53475398 -0.33098099 0.61945099 -0.711851
		 0.077308998 0.96430898 -0.25323999 0.167448 0.97217703 -0.163811 0.41876701 0.81043297
		 -0.40967301 0.24288499 0.809349 -0.53475398 0.247289 0.809928 0.53184998 -0.077308998
		 0.96430999 0.25323999 -0.24288601 0.809349 0.53475302 0.33098099 0.619452 0.71184999
		 -0.077308998 0.96430999 0.25323999 -0.167448 0.97217703 0.163811 -0.41876701 0.81043398
		 0.40967199 -0.24288601 0.809349 0.53475302 -0.167448 0.97217703 0.163811 -0.25487599
		 0.96430999 0.071731001 -0.53995597 0.809349 0.231087 -0.41876701 0.81043398 0.40967199
		 -0.25487599 0.96430999 0.071731001 -0.52629298 0.809928 -0.25890601 -0.70441198 0.619452
		 -0.34652999 -0.53995597 0.809349 0.231087 -0.73439997 0 -0.67871702 -0.69930202 0
		 -0.714827 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 -1e-006 -0.44141999
		 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775 -0.66242999 0 -0.74912399
		 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202
		 0 -0.714827 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702
		 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.69930202
		 0 -0.714827 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827
		 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.69930202 0 -0.714827
		 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775;
	setAttr ".n[166:331]" -type "float3"  -0.42161399 0 -0.906775 -0.66242999 0
		 -0.74912399 -0.66242999 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775
		 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999
		 0 -0.74912399 -0.69930202 0 -0.714827 -0.060573999 -0.99771899 -0.029798999 -0.052843001
		 -0.99750501 -0.046805002 -0.008986 -0.99994999 -0.0044200001 -0.02781 -0.999587 0.0071720001
		 -0.052843001 -0.99750501 -0.046805002 -0.046137001 -0.99782097 -0.047161002 -0.0066049998
		 -0.999955 -0.0067520002 -0.008986 -0.99994999 -0.0044200001 -0.008986 -0.99994999
		 -0.0044200001 -0.0066049998 -0.999955 -0.0067520002 0 -1 0 -0.002382 -0.99999398
		 0.0023310001 -0.02781 -0.999587 0.0071720001 -0.008986 -0.99994999 -0.0044200001
		 -0.002382 -0.99999398 0.0023310001 -0.016672 -0.99972802 0.016310001 -0.046137001
		 -0.99782097 -0.047161002 -0.045634001 -0.99750501 -0.053858001 -0.004222 -0.99994999
		 -0.0090810005 -0.0066049998 -0.999955 -0.0067520002 -0.045634001 -0.99750501 -0.053858001
		 -0.028462 -0.99771899 -0.061213002 0.0077809999 -0.999587 -0.027646 -0.004222 -0.99994999
		 -0.0090810005 -0.004222 -0.99994999 -0.0090810005 0.0077809999 -0.999587 -0.027646
		 0.016672 -0.99972802 -0.016310001 0.002382 -0.99999398 -0.0023310001 -0.0066049998
		 -0.999955 -0.0067520002 -0.004222 -0.99994999 -0.0090810005 0.002382 -0.99999398
		 -0.0023310001 0 -1 0 -0.016672 -0.99972802 0.016310001 -0.002382 -0.99999398 0.0023310001
		 0.004222 -0.99994999 0.0090810005 -0.0077809999 -0.999587 0.027646 -0.002382 -0.99999398
		 0.0023310001 0 -1 0 0.0066049998 -0.999955 0.0067520002 0.004222 -0.99994999 0.0090810005
		 0.004222 -0.99994999 0.0090810005 0.0066049998 -0.999955 0.0067520002 0.046137001
		 -0.99782097 0.047161002 0.045634001 -0.99750501 0.053856999 -0.0077809999 -0.999587
		 0.027646 0.004222 -0.99994999 0.0090810005 0.045634001 -0.99750501 0.053856999 0.028462
		 -0.99771899 0.061213002 0 -1 0 0.002382 -0.99999398 -0.0023310001 0.008986 -0.99994999
		 0.0044209999 0.0066049998 -0.999955 0.0067520002 0.002382 -0.99999398 -0.0023310001
		 0.016672 -0.99972802 -0.016310001 0.02781 -0.99958801 -0.0071720001 0.008986 -0.99994999
		 0.0044209999 0.008986 -0.99994999 0.0044209999 0.02781 -0.99958801 -0.0071720001
		 0.060573999 -0.99771899 0.029798999 0.052843001 -0.99750501 0.046805002 0.0066049998
		 -0.999955 0.0067520002 0.008986 -0.99994999 0.0044209999 0.052843001 -0.99750501
		 0.046805002 0.046137001 -0.99782097 0.047161002 0.42161399 0 0.906775 0.66242999
		 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.90677601 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.66242999 0
		 0.74912399 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.42161399
		 0 0.90677601 0.66242999 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775
		 0.69930202 0 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202
		 0 0.714827 0.73439997 0 0.67871702 0.89730102 0 0.44141901 0.89730102 0 0.44141999
		 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.89730102 0 0.44141999 0.89730102
		 0 0.44141999 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997 0 0.67871702
		 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.42161399 0 0.906775 0.66242999 0
		 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.69930202 0
		 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997
		 0 0.67871702 0.89730102 0 0.44141999 0.89730102 0 0.44141901 0.73439997 0 0.67871702
		 0.92501998 0 -0.37991899 0.89730102 0 0.44141901 0.89730102 0 0.44141999 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899
		 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457
		 -0.42161399 0 -0.906775 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.89730102 0 0.44141999
		 0.89730102 0 0.44141999 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.89730102
		 0 0.44141999 0.89730102 0 0.44141901 0.92501998 0 -0.37991899 0.714827 0 -0.69930202
		 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.714827 0 -0.69930202 -0.42161399
		 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457;
	setAttr ".n[332:497]" -type "float3"  -0.42161399 0 -0.906775 0.400134 0 -0.916457
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 -0.40013501 -1e-006 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.40013501 -1e-006 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775 -0.92501998
		 -1e-006 0.37991801 -0.89730102 -1e-006 -0.44141999 -0.89730102 0 -0.44141999 -0.92501998
		 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 -1e-006 0.37991801 -0.92501998 0
		 0.37991801 -0.714827 0 0.69930202 0.42161399 0 0.906775 -0.40013501 0 0.91645598
		 -0.40013501 0 0.91645598 0.42161399 0 0.90677601 -0.40013501 0 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598
		 -0.714827 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399
		 0 0.90677601 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.714827 0 0.69930202 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.714827
		 0 0.69930202 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102 0 -0.44141999
		 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102
		 0 -0.44141999 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 0 0.37991801
		 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.56217402 -0.642546 -0.52066702 -0.66634798 -0.66971999 -0.327804
		 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.51303899 -0.679533 -0.52442902
		 -0.56217402 -0.642546 -0.52066702 -0.56217402 -0.642546 -0.52066702 -0.51303899 -0.679533
		 -0.52442902 -0.046137001 -0.99782097 -0.047161002 -0.052843001 -0.99750501 -0.046805002
		 -0.66634798 -0.66971999 -0.327804 -0.56217402 -0.642546 -0.52066702 -0.052843001
		 -0.99750501 -0.046805002 -0.060573999 -0.99771899 -0.029798999 -0.714827 0 0.69930202
		 -0.92501998 0 0.37991801 -0.37985 -0.91122502 0.159319 -0.25446099 -0.93449497 0.248934
		 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.66634798 -0.66971999 -0.327804
		 -0.37985 -0.91122502 0.159319 -0.37985 -0.91122502 0.159319 -0.66634798 -0.66971999
		 -0.327804 -0.060573999 -0.99771899 -0.029798999 -0.02781 -0.999587 0.0071720001 -0.25446099
		 -0.93449497 0.248934 -0.37985 -0.91122502 0.159319 -0.02781 -0.999587 0.0071720001
		 -0.016672 -0.99972802 0.016310001 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399
		 -0.50819898 -0.64254802 -0.57346898 -0.51303899 -0.679533 -0.52442902 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.31309599 -0.66972101 -0.673383 -0.50819898
		 -0.64254802 -0.57346898 -0.50819898 -0.64254802 -0.57346898 -0.31309599 -0.66972101
		 -0.673383 -0.028462 -0.99771899 -0.061213002 -0.045634001 -0.99750501 -0.053858001
		 -0.51303899 -0.679533 -0.52442902 -0.50819898 -0.64254802 -0.57346898 -0.045634001
		 -0.99750501 -0.053858001 -0.046137001 -0.99782097 -0.047161002 -0.42161399 0 -0.906775
		 0.400134 0 -0.916457 0.16762 -0.91122502 -0.376261 -0.31309599 -0.66972101 -0.673383
		 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.25446099 -0.93449497 -0.248935 0.16762
		 -0.91122502 -0.376261 0.16762 -0.91122502 -0.376261 0.25446099 -0.93449497 -0.248935
		 0.016672 -0.99972802 -0.016310001 0.0077809999 -0.999587 -0.027646 -0.31309599 -0.66972101
		 -0.673383 0.16762 -0.91122502 -0.376261 0.0077809999 -0.999587 -0.027646 -0.028462
		 -0.99771899 -0.061213002 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.50819999
		 -0.642546 0.57347 0.51303899 -0.679533 0.52442902 0.66242999 0 0.74912399 0.42161399
		 0 0.906775 0.31309599 -0.66971999 0.67338401 0.50819999 -0.642546 0.57347 0.50819999
		 -0.642546 0.57347 0.31309599 -0.66971999 0.67338401 0.028462 -0.99771899 0.061213002
		 0.045634001 -0.99750501 0.053856999 0.51303899 -0.679533 0.52442902 0.50819999 -0.642546
		 0.57347 0.045634001 -0.99750501 0.053856999 0.046137001 -0.99782097 0.047161002 0.42161399
		 0 0.906775 -0.40013501 0 0.91645598 -0.16762 -0.91122502 0.376261 0.31309599 -0.66971999
		 0.67338401 -0.40013501 0 0.91645598 -0.714827 0 0.69930202 -0.25446099 -0.93449497
		 0.248934 -0.16762 -0.91122502 0.376261 -0.16762 -0.91122502 0.376261 -0.25446099
		 -0.93449497 0.248934 -0.016672 -0.99972802 0.016310001 -0.0077809999 -0.999587 0.027646
		 0.31309599 -0.66971999 0.67338401 -0.16762 -0.91122502 0.376261 -0.0077809999 -0.999587
		 0.027646 0.028462 -0.99771899 0.061213002 0.714827 0 -0.69930202 0.92501998 0 -0.37991899
		 0.37985 -0.91122502 -0.15932 0.25446099 -0.93449497 -0.248935 0.92501998 0 -0.37991899
		 0.89730102 0 0.44141901 0.66634798 -0.66971999 0.327804 0.37985 -0.91122502 -0.15932
		 0.37985 -0.91122502 -0.15932 0.66634798 -0.66971999 0.327804 0.060573999 -0.99771899
		 0.029798999 0.02781 -0.99958801 -0.0071720001 0.25446099 -0.93449497 -0.248935 0.37985
		 -0.91122502 -0.15932 0.02781 -0.99958801 -0.0071720001 0.016672 -0.99972802 -0.016310001
		 0.89730102 0 0.44141901 0.73439997 0 0.67871702;
	setAttr ".n[498:511]" -type "float3"  0.56217402 -0.642546 0.52066702 0.66634798
		 -0.66971999 0.327804 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.51303899 -0.679533
		 0.52442902 0.56217402 -0.642546 0.52066702 0.56217402 -0.642546 0.52066702 0.51303899
		 -0.679533 0.52442902 0.046137001 -0.99782097 0.047161002 0.052843001 -0.99750501
		 0.046805002 0.66634798 -0.66971999 0.327804 0.56217402 -0.642546 0.52066702 0.052843001
		 -0.99750501 0.046805002 0.060573999 -0.99771899 0.029798999;
	setAttr -s 128 -ch 512 ".fc[0:127]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 65 66 3
		f 4 4 5 6 -2
		mu 0 4 1 67 68 2
		f 4 7 8 9 -6
		mu 0 4 4 69 70 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 16
		mu 0 4 71 72 73 74
		f 4 17 -17 18 19
		mu 0 4 16 10 13 17
		f 4 20 21 22 23
		mu 0 4 75 18 19 76
		f 4 24 -24 25 -15
		mu 0 4 11 14 15 12
		f 4 -19 26 27 28
		mu 0 4 20 77 78 79
		f 4 -16 29 30 -27
		mu 0 4 21 80 81 82
		f 4 -31 31 32 33
		mu 0 4 83 84 85 86
		f 4 -28 -34 34 35
		mu 0 4 23 22 87 88
		f 4 -26 36 37 -30
		mu 0 4 24 89 90 91
		f 4 -23 38 39 -37
		mu 0 4 28 33 92 93
		f 4 -40 40 41 42
		mu 0 4 94 34 95 96
		f 4 -38 -43 43 -32
		mu 0 4 25 29 97 98
		f 4 -35 44 45 46
		mu 0 4 27 99 100 101
		f 4 -33 47 48 -45
		mu 0 4 26 102 103 104
		f 4 -49 49 -5 50
		mu 0 4 105 106 107 108
		f 4 -46 -51 -1 51
		mu 0 4 32 31 37 38
		f 4 -44 52 53 -48
		mu 0 4 30 109 110 111
		f 4 -42 54 55 -53
		mu 0 4 35 39 112 113
		f 4 -56 56 -11 57
		mu 0 4 114 42 44 115
		f 4 -54 -58 -8 -50
		mu 0 4 36 40 43 41
		f 4 -41 58 59 60
		mu 0 4 116 117 118 119
		f 4 -39 -22 61 -59
		mu 0 4 46 49 50 47
		f 4 -57 62 63 -12
		mu 0 4 53 120 121 54
		f 4 -55 -61 64 -63
		mu 0 4 51 45 48 52
		f 4 -29 65 66 -20
		mu 0 4 55 122 123 58
		f 4 -36 67 68 -66
		mu 0 4 56 124 125 57
		f 4 -47 69 70 -68
		mu 0 4 59 126 127 60
		f 4 -52 -4 71 -70
		mu 0 4 61 63 64 62
		f 4 72 73 74 75
		mu 0 4 269 270 271 272
		f 4 76 -76 77 78
		mu 0 4 132 128 273 274
		f 4 79 80 81 82
		mu 0 4 275 135 276 277
		f 4 83 -83 84 -74
		mu 0 4 129 134 278 279
		f 4 -78 85 86 87
		mu 0 4 133 280 281 282
		f 4 -75 88 89 -86
		mu 0 4 131 283 284 285
		f 4 -90 90 91 92
		mu 0 4 286 287 288 289
		f 4 -87 -93 93 94
		mu 0 4 139 138 290 291
		f 4 -85 95 96 -89
		mu 0 4 130 292 293 294
		f 4 -82 97 98 -96
		mu 0 4 137 136 295 296
		f 4 -99 99 100 101
		mu 0 4 297 145 298 299
		f 4 -97 -102 102 -91
		mu 0 4 140 144 300 301
		f 4 103 104 105 106
		mu 0 4 302 303 304 305
		f 4 107 108 109 -105
		mu 0 4 306 307 308 309
		f 4 -110 110 111 112
		mu 0 4 310 311 312 313
		f 4 -106 -113 113 114
		mu 0 4 314 150 315 316
		f 4 115 116 117 -109
		mu 0 4 317 318 319 320
		f 4 118 119 120 -117
		mu 0 4 321 322 323 324
		f 4 -121 121 122 123
		mu 0 4 325 326 327 328
		f 4 -118 -124 124 -111
		mu 0 4 153 158 329 330
		f 4 -114 125 126 127
		mu 0 4 331 332 333 334
		f 4 -112 128 129 -126
		mu 0 4 155 335 336 337
		f 4 -130 130 131 132
		mu 0 4 338 339 340 341
		f 4 -127 -133 133 134
		mu 0 4 342 163 343 344
		f 4 -125 135 136 -129
		mu 0 4 154 345 346 347
		f 4 -123 137 138 -136
		mu 0 4 162 348 349 350
		f 4 -139 139 140 141
		mu 0 4 351 352 353 354
		f 4 -137 -142 142 -131
		mu 0 4 165 169 355 356
		f 4 143 144 145 146
		mu 0 4 357 358 359 360
		f 4 147 148 149 -145
		mu 0 4 361 362 363 364
		f 4 -150 150 151 152
		mu 0 4 365 366 367 368
		f 4 -146 -153 153 154
		mu 0 4 176 175 369 370
		f 4 155 156 157 -149
		mu 0 4 371 372 373 374
		f 4 158 159 160 -157
		mu 0 4 375 376 377 378
		f 4 -161 161 162 163
		mu 0 4 379 185 380 381
		f 4 -158 -164 164 -151
		mu 0 4 178 183 382 383
		f 4 -154 165 166 167
		mu 0 4 181 384 385 189
		f 4 -152 168 169 -166
		mu 0 4 180 386 387 188
		f 4 -165 170 171 -169
		mu 0 4 179 388 389 190
		f 4 -163 172 173 -171
		mu 0 4 187 186 192 191
		f 4 174 -173 175 176
		mu 0 4 390 194 391 392
		f 4 177 -177 178 179
		mu 0 4 393 193 394 395
		f 4 180 -180 181 182
		mu 0 4 396 197 397 398
		f 4 183 -183 184 -81
		mu 0 4 201 199 399 400
		f 4 -179 185 186 187
		mu 0 4 401 402 403 404
		f 4 -176 -162 188 -186
		mu 0 4 196 195 405 406
		f 4 -189 -160 189 190
		mu 0 4 407 205 408 409
		f 4 -187 -191 191 192
		mu 0 4 410 203 411 412
		f 4 -185 193 194 -98
		mu 0 4 202 413 414 415
		f 4 -182 -188 195 -194
		mu 0 4 200 198 416 417
		f 4 -196 -193 196 197
		mu 0 4 418 204 419 420
		f 4 -195 -198 198 -100
		mu 0 4 210 209 421 422
		f 4 199 200 201 202
		mu 0 4 423 424 425 426
		f 4 203 -203 204 -168
		mu 0 4 217 213 427 428
		f 4 205 -79 206 207
		mu 0 4 429 220 430 431
		f 4 208 -208 209 -201
		mu 0 4 214 219 432 433
		f 4 -205 210 211 -155
		mu 0 4 218 434 435 436
		f 4 -202 212 213 -211
		mu 0 4 216 437 438 439
		f 4 -214 214 215 216
		mu 0 4 440 441 442 443
		f 4 -212 -217 217 -147
		mu 0 4 224 223 444 445
		f 4 -210 218 219 -213
		mu 0 4 215 446 447 448
		f 4 -207 -88 220 -219
		mu 0 4 222 221 449 450
		f 4 -221 -95 221 222
		mu 0 4 451 230 452 453
		f 4 -220 -223 223 -215
		mu 0 4 225 229 454 455
		f 4 -94 224 225 226
		mu 0 4 143 456 457 234
		f 4 -92 227 228 -225
		mu 0 4 142 458 459 233
		f 4 -229 229 -108 230
		mu 0 4 460 461 462 463
		f 4 -226 -231 -104 231
		mu 0 4 464 236 149 465
		f 4 -224 232 233 234
		mu 0 4 466 467 468 469
		f 4 -222 -227 235 -233
		mu 0 4 232 231 241 239
		f 4 -236 -232 -107 236
		mu 0 4 470 238 148 471
		f 4 -234 -237 -115 237
		mu 0 4 472 242 151 473
		f 4 -103 238 239 -228
		mu 0 4 141 474 475 235
		f 4 -101 240 241 -239
		mu 0 4 147 146 245 244
		f 4 -242 242 -119 243
		mu 0 4 476 477 478 479
		f 4 -240 -244 -116 -230
		mu 0 4 237 246 157 152
		f 4 -199 244 245 -241
		mu 0 4 212 480 481 249
		f 4 -197 246 247 -245
		mu 0 4 211 482 483 248
		f 4 -248 248 -122 249
		mu 0 4 484 485 486 487
		f 4 -246 -250 -120 -243
		mu 0 4 247 251 160 159
		f 4 -148 250 251 252
		mu 0 4 488 489 490 491
		f 4 -144 253 254 -251
		mu 0 4 174 173 255 253
		f 4 -255 255 -134 256
		mu 0 4 492 493 494 495
		f 4 -252 -257 -132 257
		mu 0 4 496 256 167 497
		f 4 -218 258 259 -254
		mu 0 4 228 498 499 260
		f 4 -216 -235 260 -259
		mu 0 4 227 226 240 259
		f 4 -261 -238 -128 261
		mu 0 4 500 243 156 501
		f 4 -260 -262 -135 -256
		mu 0 4 257 261 164 168
		f 4 -192 262 263 -247
		mu 0 4 208 502 503 250
		f 4 -190 264 265 -263
		mu 0 4 207 206 263 262
		f 4 -266 266 -140 267
		mu 0 4 504 505 506 507
		f 4 -264 -268 -138 -249
		mu 0 4 252 264 170 161
		f 4 -159 268 269 -265
		mu 0 4 184 508 509 267
		f 4 -156 -253 270 -269
		mu 0 4 182 177 254 266
		f 4 -271 -258 -143 271
		mu 0 4 510 258 166 511
		f 4 -270 -272 -141 -267
		mu 0 4 265 268 172 171;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface9";
	setAttr ".t" -type "double3" 1.1568749209200515 0.68853362395118289 -3.7661086932438597 ;
	setAttr ".r" -type "double3" 0 108.47963193281559 0 ;
	setAttr ".s" -type "double3" 0.45411853506603828 0.45411853506603828 0.45411853506603828 ;
	setAttr ".rp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
	setAttr ".sp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
createNode mesh -n "polySurfaceShape9" -p "|polySurface9";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:31]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[32:127]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "vtx[0:145]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 512 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0 0 0 1 0 1 0 0 0 1 0 0
		 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 1
		 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1
		 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1
		 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1
		 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1 1
		 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1
		 0 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 1 0 1 0 1 0
		 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0
		 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 1 0 0
		 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 0 1 0 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 0
		 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0
		 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1
		 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1
		 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1
		 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0
		 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1;
	setAttr ".uvst[0].uvsp[500:511]" 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0
		 0 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 146 ".vt[0:145]"  -2.48131704 0.178654 2.75388694 -2.30557203 0.18639299 2.56610608
		 -2.11397791 0.178654 2.394526 -2.35452199 0.178654 2.88349605 -2.16292906 0.18639299 2.71191597
		 -1.98718405 0.178654 2.52413511 -2.44087791 0.18639299 2.841151 -2.23425007 0.196343 2.63901091
		 -2.027621984 0.18639299 2.4368701 -2.18749905 0.18639299 2.45059705 -2.28100204 0.18639299 2.827425
		 -2.044855118 0.18639299 2.59640694 -2.40012288 0.18639299 2.88281107 -2.19349504 0.196343 2.68067098
		 -2.35232306 0.196343 2.75451994 -1.98686695 0.18639299 2.47852993 -2.11617708 0.196343 2.52350211
		 -2.48163295 0.18639299 2.79949093 -2.2750051 0.196343 2.59735107 -2.068377018 0.18639299 2.39521003
		 -2.42364502 0.18639299 2.68161511 -2.31156802 0.196343 2.79618001 -2.075422049 0.196343 2.56516194
		 -2.39307809 0.196343 2.71286011 -2.15693212 0.196343 2.48184204 -2.43383408 0.156543 2.67120004
		 -2.51220012 0.156543 2.76824594 -2.31576109 0.156543 2.555691 -2.1976881 0.156543 2.44018197
		 -2.098943949 0.156543 2.36396503 -2.27081299 0.156543 2.83784008 -2.15274 0.156543 2.72233105
		 -2.3695569 0.156543 2.91405606 -2.034667015 0.156543 2.60682201 -1.95630002 0.156543 2.50977492
		 -1.95734894 0.156543 2.44965291 -1.99810398 0.156543 2.40799308 -2.038858891 0.156543 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.47039604 0.156543 2.87002802 -2.51115203 0.156543 2.82836795
		 -2.51220012 0.116743 2.76824594 -2.31576109 0.116743 2.555691 -2.098943949 0.116743 2.36396503
		 -2.51220012 0.046128999 2.76824594 -2.31576109 0.046128999 2.555691 -2.098943949 0.046128999 2.36396503
		 -2.47039604 0.046128999 2.87002802 -1.99810398 0.046128999 2.40799308 -2.36955595 0.046128999 2.91405606
		 -2.15274 0.046128999 2.72233105 -1.95630002 0.046128999 2.50977492 -2.36955595 0.116743 2.91405606
		 -2.15274 0.116743 2.72233105 -1.95630002 0.116743 2.50977492 -1.99810398 0.116743 2.40799308
		 -2.47039604 0.116743 2.87002802 -2.48131704 0.031148 2.75388694 -2.30557203 0.030399 2.56610608
		 -2.23425007 0.029436 2.63901091 -2.44087791 0.030399 2.841151 -2.11397791 0.031148 2.394526
		 -2.027621984 0.030399 2.4368701 -2.16292906 0.030399 2.71191597 -2.35452199 0.031148 2.88349605
		 -1.98718405 0.031148 2.52413511 -2.31576109 0.156543 2.555691 -2.43383408 0.116743 2.67120004
		 -2.098943949 0.156543 2.36396503 -2.1976881 0.116743 2.44018197 -2.51220012 0.076943003 2.76824594
		 -2.31576109 0.076943003 2.555691 -2.43383408 0.046128999 2.67120004 -2.098943949 0.076943003 2.36396503
		 -2.1976881 0.046128999 2.44018197 -2.42364502 0.030399 2.68161511 -2.48163295 0.030399 2.79949093
		 -2.2750051 0.029436 2.59735107 -2.35232306 0.029436 2.75451994 -2.18749905 0.030399 2.45059705
		 -2.068377018 0.030399 2.39521003 -2.11617708 0.029436 2.52350211 -2.40012288 0.030399 2.88281107
		 -2.19349504 0.029436 2.68067098 -2.28100204 0.030399 2.827425 -1.98686695 0.030399 2.47852993
		 -2.044855118 0.030399 2.59640694 -2.27081299 0.046128999 2.83784008 -2.3695569 0.076943003 2.91405606
		 -2.15274 0.076943003 2.72233105 -2.27081299 0.116743 2.83784008 -2.034667015 0.046128999 2.60682201
		 -1.95630002 0.076943003 2.50977492 -2.034667015 0.116743 2.60682201 -2.3695569 0.156543 2.91405606
		 -2.15274 0.156543 2.72233105 -1.95630002 0.156543 2.50977492 -1.99810398 0.156543 2.40799308
		 -1.95734894 0.116743 2.44965291 -2.038858891 0.116743 2.36633301 -1.99810398 0.076943003 2.40799308
		 -1.95734894 0.046128999 2.44965291 -2.038858891 0.046128999 2.36633301 -2.47039604 0.156543 2.87002802
		 -2.42964101 0.116743 2.91168809 -2.51115203 0.116743 2.82836795 -2.47039604 0.076943003 2.87002802
		 -2.42964101 0.046128999 2.91168809 -2.51115203 0.046128999 2.82836795 -2.51220012 0.033289 2.76824594
		 -2.31576109 0.033289 2.555691 -2.47039604 0.033289 2.87002802 -2.098943949 0.033289 2.36396503
		 -1.99810398 0.033289 2.40799308 -2.15274 0.033289 2.72233105 -2.3695569 0.033289 2.91405606
		 -1.95630002 0.033289 2.50977492 -2.51220012 0.156543 2.76824594 -2.43383408 0.156543 2.67120004
		 -2.1976881 0.156543 2.44018197 -2.43383408 0.076943003 2.67120004 -2.1976881 0.076943003 2.44018197
		 -2.39307809 0.029436 2.71286011 -2.15693212 0.029436 2.48184204 -2.31156802 0.029436 2.79618001
		 -2.075422049 0.029436 2.56516194 -2.27081299 0.076943003 2.83784008 -2.034667015 0.076943003 2.60682201
		 -2.27081299 0.156543 2.83784008 -2.034667015 0.156543 2.60682201 -1.95734894 0.156543 2.44965291
		 -2.038858891 0.156543 2.36633301 -1.95734894 0.076943003 2.44965291 -2.038858891 0.076943003 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.51115203 0.156543 2.82836795 -2.42964101 0.076943003 2.91168809
		 -2.51115203 0.076943003 2.82836795 -2.43383408 0.033289 2.67120004 -2.51115203 0.033289 2.82836795
		 -2.1976881 0.033289 2.44018197 -2.038858891 0.033289 2.36633301 -2.27081299 0.033289 2.83784008
		 -2.42964101 0.033289 2.91168809 -1.95734894 0.033289 2.44965291 -2.034667015 0.033289 2.60682201;
	setAttr -s 272 ".ed";
	setAttr ".ed[0:165]"  0 20 0 20 25 0 25 26 0 26 0 0 20 1 0 1 27 0 27 25 0
		 1 9 0 9 28 0 28 27 0 9 2 0 2 29 0 29 28 0 30 31 0 31 4 0 4 10 0 10 30 0 32 30 0 10 3 0
		 3 32 0 33 34 0 34 5 0 5 11 0 11 33 0 31 33 0 11 4 0 10 21 0 21 12 0 12 3 0 4 13 0
		 13 21 0 13 7 0 7 14 0 14 21 0 14 6 0 6 12 0 11 22 0 22 13 0 5 15 0 15 22 0 15 8 0
		 8 16 0 16 22 0 16 7 0 14 23 0 23 17 0 17 6 0 7 18 0 18 23 0 18 1 0 20 23 0 0 17 0
		 16 24 0 24 18 0 8 19 0 19 24 0 19 2 0 9 24 0 15 35 0 35 36 0 36 8 0 34 35 0 19 37 0
		 37 29 0 36 37 0 12 38 0 38 32 0 6 39 0 39 38 0 17 40 0 40 39 0 26 40 0 118 66 0 66 42 0
		 42 67 0 67 118 0 117 118 0 67 41 0 41 117 0 119 68 0 68 43 0 43 69 0 69 119 0 66 119 0
		 69 42 0 67 120 0 120 70 0 70 41 0 42 71 0 71 120 0 71 45 0 45 72 0 72 120 0 72 44 0
		 44 70 0 69 121 0 121 71 0 43 73 0 73 121 0 73 46 0 46 74 0 74 121 0 74 45 0 57 75 0
		 75 122 0 122 76 0 76 57 0 75 58 0 58 77 0 77 122 0 77 59 0 59 78 0 78 122 0 78 60 0
		 60 76 0 58 79 0 79 123 0 123 77 0 79 61 0 61 80 0 80 123 0 80 62 0 62 81 0 81 123 0
		 81 59 0 78 124 0 124 82 0 82 60 0 59 83 0 83 124 0 83 63 0 63 84 0 84 124 0 84 64 0
		 64 82 0 81 125 0 125 83 0 62 85 0 85 125 0 85 65 0 65 86 0 86 125 0 86 63 0 49 87 0
		 87 126 0 126 88 0 88 49 0 87 50 0 50 89 0 89 126 0 89 53 0 53 90 0 90 126 0 90 52 0
		 52 88 0 50 91 0 91 127 0 127 89 0 91 51 0 51 92 0 92 127 0 92 54 0 54 93 0 93 127 0
		 93 53 0 90 128 0;
	setAttr ".ed[166:271]" 128 94 0 94 52 0 53 95 0 95 128 0 93 129 0 129 95 0
		 54 96 0 96 129 0 130 96 0 54 98 0 98 130 0 97 130 0 98 55 0 55 97 0 131 97 0 55 99 0
		 99 131 0 68 131 0 99 43 0 98 132 0 132 100 0 100 55 0 92 132 0 51 101 0 101 132 0
		 101 48 0 48 100 0 99 133 0 133 73 0 100 133 0 48 102 0 102 133 0 102 46 0 134 103 0
		 103 56 0 56 104 0 104 134 0 94 134 0 104 52 0 135 117 0 41 105 0 105 135 0 103 135 0
		 105 56 0 104 136 0 136 88 0 56 106 0 106 136 0 106 47 0 47 107 0 107 136 0 107 49 0
		 105 137 0 137 106 0 70 137 0 44 108 0 108 137 0 108 47 0 72 138 0 138 109 0 109 44 0
		 45 110 0 110 138 0 110 58 0 75 138 0 57 109 0 108 139 0 139 111 0 111 47 0 109 139 0
		 76 139 0 60 111 0 74 140 0 140 110 0 46 112 0 112 140 0 112 61 0 79 140 0 102 141 0
		 141 112 0 48 113 0 113 141 0 113 62 0 80 141 0 87 142 0 142 114 0 114 50 0 49 115 0
		 115 142 0 115 64 0 84 142 0 63 114 0 107 143 0 143 115 0 111 143 0 82 143 0 101 144 0
		 144 113 0 51 116 0 116 144 0 116 65 0 85 144 0 91 145 0 145 116 0 114 145 0 86 145 0;
	setAttr -s 512 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.52629298 0.809928 -0.25890601 -0.42148501
		 0.82520002 -0.376026 -0.65006101 0.461981 -0.60332 -0.70441198 0.619452 -0.34652999
		 -0.42148501 0.82520002 -0.376026 -0.39437401 0.82580698 -0.40312901 -0.62843603 0.438642
		 -0.64238697 -0.65006101 0.461981 -0.60332 -0.39437401 0.82580698 -0.40312901 -0.36668199
		 0.82520002 -0.42963901 -0.58890301 0.461981 -0.663149 -0.62843603 0.438642 -0.64238697
		 -0.36668199 0.82520002 -0.42963901 -0.247289 0.809928 -0.53184998 -0.33098099 0.61945099
		 -0.711851 -0.58890301 0.461981 -0.663149 0.58890301 0.461981 0.663149 0.62843603
		 0.438642 0.64238697 0.39437401 0.82580698 0.40312901 0.36668199 0.82520002 0.42963901
		 0.33098099 0.619452 0.71184999 0.58890301 0.461981 0.663149 0.36668199 0.82520002
		 0.42963901 0.247289 0.809928 0.53184998 0.65006101 0.461981 0.60332 0.70441198 0.619452
		 0.34652901 0.52629298 0.809928 0.25890601 0.42148501 0.82520002 0.376026 0.62843603
		 0.438642 0.64238697 0.65006101 0.461981 0.60332 0.42148501 0.82520002 0.376026 0.39437401
		 0.82580698 0.40312901 0.247289 0.809928 0.53184998 0.36668199 0.82520002 0.42963901
		 0.042675 0.99486399 0.091783002 -0.077308998 0.96430999 0.25323999 0.36668199 0.82520002
		 0.42963901 0.39437401 0.82580698 0.40312901 0.067901 0.99527502 0.069408 0.042675
		 0.99486399 0.091783002 0.042675 0.99486399 0.091783002 0.067901 0.99527502 0.069408
		 0 1 0 -0.024591001 0.99940801 0.024057001 -0.077308998 0.96430999 0.25323999 0.042675
		 0.99486399 0.091783002 -0.024591001 0.99940801 0.024057001 -0.167448 0.97217703 0.163811
		 0.39437401 0.82580698 0.40312901 0.42148501 0.82520002 0.376026 0.090824001 0.99486399
		 0.044679999 0.067901 0.99527502 0.069408 0.42148501 0.82520002 0.376026 0.52629298
		 0.809928 0.25890601 0.25487599 0.96430999 -0.071731001 0.090824001 0.99486399 0.044679999
		 0.090824001 0.99486399 0.044679999 0.25487599 0.96430999 -0.071731001 0.167448 0.97217703
		 -0.163811 0.024591001 0.99940801 -0.024057001 0.067901 0.99527502 0.069408 0.090824001
		 0.99486399 0.044679999 0.024591001 0.99940801 -0.024057001 0 1 0 -0.167448 0.97217703
		 0.163811 -0.024591001 0.99940801 0.024057001 -0.090824001 0.99486399 -0.044679999
		 -0.25487599 0.96430999 0.071731001 -0.024591001 0.99940801 0.024057001 0 1 0 -0.067901
		 0.99527502 -0.069408 -0.090824001 0.99486399 -0.044679999 -0.090824001 0.99486399
		 -0.044679999 -0.067901 0.99527502 -0.069408 -0.39437401 0.82580698 -0.40312901 -0.42148501
		 0.82520002 -0.376026 -0.25487599 0.96430999 0.071731001 -0.090824001 0.99486399 -0.044679999
		 -0.42148501 0.82520002 -0.376026 -0.52629298 0.809928 -0.25890601 0 1 0 0.024591001
		 0.99940801 -0.024057001 -0.042675 0.99486399 -0.091783002 -0.067901 0.99527502 -0.069408
		 0.024591001 0.99940801 -0.024057001 0.167448 0.97217703 -0.163811 0.077308998 0.96430898
		 -0.25323999 -0.042675 0.99486399 -0.091783002 -0.042675 0.99486399 -0.091783002 0.077308998
		 0.96430898 -0.25323999 -0.247289 0.809928 -0.53184998 -0.36668199 0.82520002 -0.42963901
		 -0.067901 0.99527502 -0.069408 -0.042675 0.99486399 -0.091783002 -0.36668199 0.82520002
		 -0.42963901 -0.39437401 0.82580698 -0.40312901 0.167448 0.97217703 -0.163811 0.25487599
		 0.96430999 -0.071731001 0.53995699 0.809349 -0.231087 0.41876701 0.81043297 -0.40967301
		 0.25487599 0.96430999 -0.071731001 0.52629298 0.809928 0.25890601 0.70441198 0.619452
		 0.34652901 0.53995699 0.809349 -0.231087 -0.247289 0.809928 -0.53184998 0.077308998
		 0.96430898 -0.25323999 0.24288499 0.809349 -0.53475398 -0.33098099 0.61945099 -0.711851
		 0.077308998 0.96430898 -0.25323999 0.167448 0.97217703 -0.163811 0.41876701 0.81043297
		 -0.40967301 0.24288499 0.809349 -0.53475398 0.247289 0.809928 0.53184998 -0.077308998
		 0.96430999 0.25323999 -0.24288601 0.809349 0.53475302 0.33098099 0.619452 0.71184999
		 -0.077308998 0.96430999 0.25323999 -0.167448 0.97217703 0.163811 -0.41876701 0.81043398
		 0.40967199 -0.24288601 0.809349 0.53475302 -0.167448 0.97217703 0.163811 -0.25487599
		 0.96430999 0.071731001 -0.53995597 0.809349 0.231087 -0.41876701 0.81043398 0.40967199
		 -0.25487599 0.96430999 0.071731001 -0.52629298 0.809928 -0.25890601 -0.70441198 0.619452
		 -0.34652999 -0.53995597 0.809349 0.231087 -0.73439997 0 -0.67871702 -0.69930202 0
		 -0.714827 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 -1e-006 -0.44141999
		 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775 -0.66242999 0 -0.74912399
		 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202
		 0 -0.714827 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702
		 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.69930202
		 0 -0.714827 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827
		 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.69930202 0 -0.714827
		 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775;
	setAttr ".n[166:331]" -type "float3"  -0.42161399 0 -0.906775 -0.66242999 0
		 -0.74912399 -0.66242999 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775
		 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999
		 0 -0.74912399 -0.69930202 0 -0.714827 -0.060573999 -0.99771899 -0.029798999 -0.052843001
		 -0.99750501 -0.046805002 -0.008986 -0.99994999 -0.0044200001 -0.02781 -0.999587 0.0071720001
		 -0.052843001 -0.99750501 -0.046805002 -0.046137001 -0.99782097 -0.047161002 -0.0066049998
		 -0.999955 -0.0067520002 -0.008986 -0.99994999 -0.0044200001 -0.008986 -0.99994999
		 -0.0044200001 -0.0066049998 -0.999955 -0.0067520002 0 -1 0 -0.002382 -0.99999398
		 0.0023310001 -0.02781 -0.999587 0.0071720001 -0.008986 -0.99994999 -0.0044200001
		 -0.002382 -0.99999398 0.0023310001 -0.016672 -0.99972802 0.016310001 -0.046137001
		 -0.99782097 -0.047161002 -0.045634001 -0.99750501 -0.053858001 -0.004222 -0.99994999
		 -0.0090810005 -0.0066049998 -0.999955 -0.0067520002 -0.045634001 -0.99750501 -0.053858001
		 -0.028462 -0.99771899 -0.061213002 0.0077809999 -0.999587 -0.027646 -0.004222 -0.99994999
		 -0.0090810005 -0.004222 -0.99994999 -0.0090810005 0.0077809999 -0.999587 -0.027646
		 0.016672 -0.99972802 -0.016310001 0.002382 -0.99999398 -0.0023310001 -0.0066049998
		 -0.999955 -0.0067520002 -0.004222 -0.99994999 -0.0090810005 0.002382 -0.99999398
		 -0.0023310001 0 -1 0 -0.016672 -0.99972802 0.016310001 -0.002382 -0.99999398 0.0023310001
		 0.004222 -0.99994999 0.0090810005 -0.0077809999 -0.999587 0.027646 -0.002382 -0.99999398
		 0.0023310001 0 -1 0 0.0066049998 -0.999955 0.0067520002 0.004222 -0.99994999 0.0090810005
		 0.004222 -0.99994999 0.0090810005 0.0066049998 -0.999955 0.0067520002 0.046137001
		 -0.99782097 0.047161002 0.045634001 -0.99750501 0.053856999 -0.0077809999 -0.999587
		 0.027646 0.004222 -0.99994999 0.0090810005 0.045634001 -0.99750501 0.053856999 0.028462
		 -0.99771899 0.061213002 0 -1 0 0.002382 -0.99999398 -0.0023310001 0.008986 -0.99994999
		 0.0044209999 0.0066049998 -0.999955 0.0067520002 0.002382 -0.99999398 -0.0023310001
		 0.016672 -0.99972802 -0.016310001 0.02781 -0.99958801 -0.0071720001 0.008986 -0.99994999
		 0.0044209999 0.008986 -0.99994999 0.0044209999 0.02781 -0.99958801 -0.0071720001
		 0.060573999 -0.99771899 0.029798999 0.052843001 -0.99750501 0.046805002 0.0066049998
		 -0.999955 0.0067520002 0.008986 -0.99994999 0.0044209999 0.052843001 -0.99750501
		 0.046805002 0.046137001 -0.99782097 0.047161002 0.42161399 0 0.906775 0.66242999
		 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.90677601 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.66242999 0
		 0.74912399 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.42161399
		 0 0.90677601 0.66242999 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775
		 0.69930202 0 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202
		 0 0.714827 0.73439997 0 0.67871702 0.89730102 0 0.44141901 0.89730102 0 0.44141999
		 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.89730102 0 0.44141999 0.89730102
		 0 0.44141999 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997 0 0.67871702
		 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.42161399 0 0.906775 0.66242999 0
		 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.69930202 0
		 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997
		 0 0.67871702 0.89730102 0 0.44141999 0.89730102 0 0.44141901 0.73439997 0 0.67871702
		 0.92501998 0 -0.37991899 0.89730102 0 0.44141901 0.89730102 0 0.44141999 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899
		 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457
		 -0.42161399 0 -0.906775 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.89730102 0 0.44141999
		 0.89730102 0 0.44141999 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.89730102
		 0 0.44141999 0.89730102 0 0.44141901 0.92501998 0 -0.37991899 0.714827 0 -0.69930202
		 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.714827 0 -0.69930202 -0.42161399
		 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457;
	setAttr ".n[332:497]" -type "float3"  -0.42161399 0 -0.906775 0.400134 0 -0.916457
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 -0.40013501 -1e-006 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.40013501 -1e-006 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775 -0.92501998
		 -1e-006 0.37991801 -0.89730102 -1e-006 -0.44141999 -0.89730102 0 -0.44141999 -0.92501998
		 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 -1e-006 0.37991801 -0.92501998 0
		 0.37991801 -0.714827 0 0.69930202 0.42161399 0 0.906775 -0.40013501 0 0.91645598
		 -0.40013501 0 0.91645598 0.42161399 0 0.90677601 -0.40013501 0 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598
		 -0.714827 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399
		 0 0.90677601 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.714827 0 0.69930202 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.714827
		 0 0.69930202 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102 0 -0.44141999
		 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102
		 0 -0.44141999 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 0 0.37991801
		 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.56217402 -0.642546 -0.52066702 -0.66634798 -0.66971999 -0.327804
		 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.51303899 -0.679533 -0.52442902
		 -0.56217402 -0.642546 -0.52066702 -0.56217402 -0.642546 -0.52066702 -0.51303899 -0.679533
		 -0.52442902 -0.046137001 -0.99782097 -0.047161002 -0.052843001 -0.99750501 -0.046805002
		 -0.66634798 -0.66971999 -0.327804 -0.56217402 -0.642546 -0.52066702 -0.052843001
		 -0.99750501 -0.046805002 -0.060573999 -0.99771899 -0.029798999 -0.714827 0 0.69930202
		 -0.92501998 0 0.37991801 -0.37985 -0.91122502 0.159319 -0.25446099 -0.93449497 0.248934
		 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.66634798 -0.66971999 -0.327804
		 -0.37985 -0.91122502 0.159319 -0.37985 -0.91122502 0.159319 -0.66634798 -0.66971999
		 -0.327804 -0.060573999 -0.99771899 -0.029798999 -0.02781 -0.999587 0.0071720001 -0.25446099
		 -0.93449497 0.248934 -0.37985 -0.91122502 0.159319 -0.02781 -0.999587 0.0071720001
		 -0.016672 -0.99972802 0.016310001 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399
		 -0.50819898 -0.64254802 -0.57346898 -0.51303899 -0.679533 -0.52442902 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.31309599 -0.66972101 -0.673383 -0.50819898
		 -0.64254802 -0.57346898 -0.50819898 -0.64254802 -0.57346898 -0.31309599 -0.66972101
		 -0.673383 -0.028462 -0.99771899 -0.061213002 -0.045634001 -0.99750501 -0.053858001
		 -0.51303899 -0.679533 -0.52442902 -0.50819898 -0.64254802 -0.57346898 -0.045634001
		 -0.99750501 -0.053858001 -0.046137001 -0.99782097 -0.047161002 -0.42161399 0 -0.906775
		 0.400134 0 -0.916457 0.16762 -0.91122502 -0.376261 -0.31309599 -0.66972101 -0.673383
		 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.25446099 -0.93449497 -0.248935 0.16762
		 -0.91122502 -0.376261 0.16762 -0.91122502 -0.376261 0.25446099 -0.93449497 -0.248935
		 0.016672 -0.99972802 -0.016310001 0.0077809999 -0.999587 -0.027646 -0.31309599 -0.66972101
		 -0.673383 0.16762 -0.91122502 -0.376261 0.0077809999 -0.999587 -0.027646 -0.028462
		 -0.99771899 -0.061213002 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.50819999
		 -0.642546 0.57347 0.51303899 -0.679533 0.52442902 0.66242999 0 0.74912399 0.42161399
		 0 0.906775 0.31309599 -0.66971999 0.67338401 0.50819999 -0.642546 0.57347 0.50819999
		 -0.642546 0.57347 0.31309599 -0.66971999 0.67338401 0.028462 -0.99771899 0.061213002
		 0.045634001 -0.99750501 0.053856999 0.51303899 -0.679533 0.52442902 0.50819999 -0.642546
		 0.57347 0.045634001 -0.99750501 0.053856999 0.046137001 -0.99782097 0.047161002 0.42161399
		 0 0.906775 -0.40013501 0 0.91645598 -0.16762 -0.91122502 0.376261 0.31309599 -0.66971999
		 0.67338401 -0.40013501 0 0.91645598 -0.714827 0 0.69930202 -0.25446099 -0.93449497
		 0.248934 -0.16762 -0.91122502 0.376261 -0.16762 -0.91122502 0.376261 -0.25446099
		 -0.93449497 0.248934 -0.016672 -0.99972802 0.016310001 -0.0077809999 -0.999587 0.027646
		 0.31309599 -0.66971999 0.67338401 -0.16762 -0.91122502 0.376261 -0.0077809999 -0.999587
		 0.027646 0.028462 -0.99771899 0.061213002 0.714827 0 -0.69930202 0.92501998 0 -0.37991899
		 0.37985 -0.91122502 -0.15932 0.25446099 -0.93449497 -0.248935 0.92501998 0 -0.37991899
		 0.89730102 0 0.44141901 0.66634798 -0.66971999 0.327804 0.37985 -0.91122502 -0.15932
		 0.37985 -0.91122502 -0.15932 0.66634798 -0.66971999 0.327804 0.060573999 -0.99771899
		 0.029798999 0.02781 -0.99958801 -0.0071720001 0.25446099 -0.93449497 -0.248935 0.37985
		 -0.91122502 -0.15932 0.02781 -0.99958801 -0.0071720001 0.016672 -0.99972802 -0.016310001
		 0.89730102 0 0.44141901 0.73439997 0 0.67871702;
	setAttr ".n[498:511]" -type "float3"  0.56217402 -0.642546 0.52066702 0.66634798
		 -0.66971999 0.327804 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.51303899 -0.679533
		 0.52442902 0.56217402 -0.642546 0.52066702 0.56217402 -0.642546 0.52066702 0.51303899
		 -0.679533 0.52442902 0.046137001 -0.99782097 0.047161002 0.052843001 -0.99750501
		 0.046805002 0.66634798 -0.66971999 0.327804 0.56217402 -0.642546 0.52066702 0.052843001
		 -0.99750501 0.046805002 0.060573999 -0.99771899 0.029798999;
	setAttr -s 128 -ch 512 ".fc[0:127]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 65 66 3
		f 4 4 5 6 -2
		mu 0 4 1 67 68 2
		f 4 7 8 9 -6
		mu 0 4 4 69 70 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 16
		mu 0 4 71 72 73 74
		f 4 17 -17 18 19
		mu 0 4 16 10 13 17
		f 4 20 21 22 23
		mu 0 4 75 18 19 76
		f 4 24 -24 25 -15
		mu 0 4 11 14 15 12
		f 4 -19 26 27 28
		mu 0 4 20 77 78 79
		f 4 -16 29 30 -27
		mu 0 4 21 80 81 82
		f 4 -31 31 32 33
		mu 0 4 83 84 85 86
		f 4 -28 -34 34 35
		mu 0 4 23 22 87 88
		f 4 -26 36 37 -30
		mu 0 4 24 89 90 91
		f 4 -23 38 39 -37
		mu 0 4 28 33 92 93
		f 4 -40 40 41 42
		mu 0 4 94 34 95 96
		f 4 -38 -43 43 -32
		mu 0 4 25 29 97 98
		f 4 -35 44 45 46
		mu 0 4 27 99 100 101
		f 4 -33 47 48 -45
		mu 0 4 26 102 103 104
		f 4 -49 49 -5 50
		mu 0 4 105 106 107 108
		f 4 -46 -51 -1 51
		mu 0 4 32 31 37 38
		f 4 -44 52 53 -48
		mu 0 4 30 109 110 111
		f 4 -42 54 55 -53
		mu 0 4 35 39 112 113
		f 4 -56 56 -11 57
		mu 0 4 114 42 44 115
		f 4 -54 -58 -8 -50
		mu 0 4 36 40 43 41
		f 4 -41 58 59 60
		mu 0 4 116 117 118 119
		f 4 -39 -22 61 -59
		mu 0 4 46 49 50 47
		f 4 -57 62 63 -12
		mu 0 4 53 120 121 54
		f 4 -55 -61 64 -63
		mu 0 4 51 45 48 52
		f 4 -29 65 66 -20
		mu 0 4 55 122 123 58
		f 4 -36 67 68 -66
		mu 0 4 56 124 125 57
		f 4 -47 69 70 -68
		mu 0 4 59 126 127 60
		f 4 -52 -4 71 -70
		mu 0 4 61 63 64 62
		f 4 72 73 74 75
		mu 0 4 269 270 271 272
		f 4 76 -76 77 78
		mu 0 4 132 128 273 274
		f 4 79 80 81 82
		mu 0 4 275 135 276 277
		f 4 83 -83 84 -74
		mu 0 4 129 134 278 279
		f 4 -78 85 86 87
		mu 0 4 133 280 281 282
		f 4 -75 88 89 -86
		mu 0 4 131 283 284 285
		f 4 -90 90 91 92
		mu 0 4 286 287 288 289
		f 4 -87 -93 93 94
		mu 0 4 139 138 290 291
		f 4 -85 95 96 -89
		mu 0 4 130 292 293 294
		f 4 -82 97 98 -96
		mu 0 4 137 136 295 296
		f 4 -99 99 100 101
		mu 0 4 297 145 298 299
		f 4 -97 -102 102 -91
		mu 0 4 140 144 300 301
		f 4 103 104 105 106
		mu 0 4 302 303 304 305
		f 4 107 108 109 -105
		mu 0 4 306 307 308 309
		f 4 -110 110 111 112
		mu 0 4 310 311 312 313
		f 4 -106 -113 113 114
		mu 0 4 314 150 315 316
		f 4 115 116 117 -109
		mu 0 4 317 318 319 320
		f 4 118 119 120 -117
		mu 0 4 321 322 323 324
		f 4 -121 121 122 123
		mu 0 4 325 326 327 328
		f 4 -118 -124 124 -111
		mu 0 4 153 158 329 330
		f 4 -114 125 126 127
		mu 0 4 331 332 333 334
		f 4 -112 128 129 -126
		mu 0 4 155 335 336 337
		f 4 -130 130 131 132
		mu 0 4 338 339 340 341
		f 4 -127 -133 133 134
		mu 0 4 342 163 343 344
		f 4 -125 135 136 -129
		mu 0 4 154 345 346 347
		f 4 -123 137 138 -136
		mu 0 4 162 348 349 350
		f 4 -139 139 140 141
		mu 0 4 351 352 353 354
		f 4 -137 -142 142 -131
		mu 0 4 165 169 355 356
		f 4 143 144 145 146
		mu 0 4 357 358 359 360
		f 4 147 148 149 -145
		mu 0 4 361 362 363 364
		f 4 -150 150 151 152
		mu 0 4 365 366 367 368
		f 4 -146 -153 153 154
		mu 0 4 176 175 369 370
		f 4 155 156 157 -149
		mu 0 4 371 372 373 374
		f 4 158 159 160 -157
		mu 0 4 375 376 377 378
		f 4 -161 161 162 163
		mu 0 4 379 185 380 381
		f 4 -158 -164 164 -151
		mu 0 4 178 183 382 383
		f 4 -154 165 166 167
		mu 0 4 181 384 385 189
		f 4 -152 168 169 -166
		mu 0 4 180 386 387 188
		f 4 -165 170 171 -169
		mu 0 4 179 388 389 190
		f 4 -163 172 173 -171
		mu 0 4 187 186 192 191
		f 4 174 -173 175 176
		mu 0 4 390 194 391 392
		f 4 177 -177 178 179
		mu 0 4 393 193 394 395
		f 4 180 -180 181 182
		mu 0 4 396 197 397 398
		f 4 183 -183 184 -81
		mu 0 4 201 199 399 400
		f 4 -179 185 186 187
		mu 0 4 401 402 403 404
		f 4 -176 -162 188 -186
		mu 0 4 196 195 405 406
		f 4 -189 -160 189 190
		mu 0 4 407 205 408 409
		f 4 -187 -191 191 192
		mu 0 4 410 203 411 412
		f 4 -185 193 194 -98
		mu 0 4 202 413 414 415
		f 4 -182 -188 195 -194
		mu 0 4 200 198 416 417
		f 4 -196 -193 196 197
		mu 0 4 418 204 419 420
		f 4 -195 -198 198 -100
		mu 0 4 210 209 421 422
		f 4 199 200 201 202
		mu 0 4 423 424 425 426
		f 4 203 -203 204 -168
		mu 0 4 217 213 427 428
		f 4 205 -79 206 207
		mu 0 4 429 220 430 431
		f 4 208 -208 209 -201
		mu 0 4 214 219 432 433
		f 4 -205 210 211 -155
		mu 0 4 218 434 435 436
		f 4 -202 212 213 -211
		mu 0 4 216 437 438 439
		f 4 -214 214 215 216
		mu 0 4 440 441 442 443
		f 4 -212 -217 217 -147
		mu 0 4 224 223 444 445
		f 4 -210 218 219 -213
		mu 0 4 215 446 447 448
		f 4 -207 -88 220 -219
		mu 0 4 222 221 449 450
		f 4 -221 -95 221 222
		mu 0 4 451 230 452 453
		f 4 -220 -223 223 -215
		mu 0 4 225 229 454 455
		f 4 -94 224 225 226
		mu 0 4 143 456 457 234
		f 4 -92 227 228 -225
		mu 0 4 142 458 459 233
		f 4 -229 229 -108 230
		mu 0 4 460 461 462 463
		f 4 -226 -231 -104 231
		mu 0 4 464 236 149 465
		f 4 -224 232 233 234
		mu 0 4 466 467 468 469
		f 4 -222 -227 235 -233
		mu 0 4 232 231 241 239
		f 4 -236 -232 -107 236
		mu 0 4 470 238 148 471
		f 4 -234 -237 -115 237
		mu 0 4 472 242 151 473
		f 4 -103 238 239 -228
		mu 0 4 141 474 475 235
		f 4 -101 240 241 -239
		mu 0 4 147 146 245 244
		f 4 -242 242 -119 243
		mu 0 4 476 477 478 479
		f 4 -240 -244 -116 -230
		mu 0 4 237 246 157 152
		f 4 -199 244 245 -241
		mu 0 4 212 480 481 249
		f 4 -197 246 247 -245
		mu 0 4 211 482 483 248
		f 4 -248 248 -122 249
		mu 0 4 484 485 486 487
		f 4 -246 -250 -120 -243
		mu 0 4 247 251 160 159
		f 4 -148 250 251 252
		mu 0 4 488 489 490 491
		f 4 -144 253 254 -251
		mu 0 4 174 173 255 253
		f 4 -255 255 -134 256
		mu 0 4 492 493 494 495
		f 4 -252 -257 -132 257
		mu 0 4 496 256 167 497
		f 4 -218 258 259 -254
		mu 0 4 228 498 499 260
		f 4 -216 -235 260 -259
		mu 0 4 227 226 240 259
		f 4 -261 -238 -128 261
		mu 0 4 500 243 156 501
		f 4 -260 -262 -135 -256
		mu 0 4 257 261 164 168
		f 4 -192 262 263 -247
		mu 0 4 208 502 503 250
		f 4 -190 264 265 -263
		mu 0 4 207 206 263 262
		f 4 -266 266 -140 267
		mu 0 4 504 505 506 507
		f 4 -264 -268 -138 -249
		mu 0 4 252 264 170 161
		f 4 -159 268 269 -265
		mu 0 4 184 508 509 267
		f 4 -156 -253 270 -269
		mu 0 4 182 177 254 266
		f 4 -271 -258 -143 271
		mu 0 4 510 258 166 511
		f 4 -270 -272 -141 -267
		mu 0 4 265 268 172 171;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface10";
	setAttr ".t" -type "double3" 1.1176379331002957 0.68853362395118289 -3.6765390552616339 ;
	setAttr ".r" -type "double3" 0 108.47963193281559 0 ;
	setAttr ".s" -type "double3" 0.45411853506603828 0.45411853506603828 0.45411853506603828 ;
	setAttr ".rp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
	setAttr ".sp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
createNode mesh -n "polySurfaceShape10" -p "polySurface10";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:31]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[32:127]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "vtx[0:145]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 512 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0 0 0 1 0 1 0 0 0 1 0 0
		 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 1
		 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1
		 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1
		 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1
		 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1 1
		 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1
		 0 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 1 0 1 0 1 0
		 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0
		 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 1 0 0
		 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 0 1 0 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 0
		 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0
		 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1
		 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1
		 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1
		 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0
		 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1;
	setAttr ".uvst[0].uvsp[500:511]" 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0
		 0 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 146 ".vt[0:145]"  -2.48131704 0.178654 2.75388694 -2.30557203 0.18639299 2.56610608
		 -2.11397791 0.178654 2.394526 -2.35452199 0.178654 2.88349605 -2.16292906 0.18639299 2.71191597
		 -1.98718405 0.178654 2.52413511 -2.44087791 0.18639299 2.841151 -2.23425007 0.196343 2.63901091
		 -2.027621984 0.18639299 2.4368701 -2.18749905 0.18639299 2.45059705 -2.28100204 0.18639299 2.827425
		 -2.044855118 0.18639299 2.59640694 -2.40012288 0.18639299 2.88281107 -2.19349504 0.196343 2.68067098
		 -2.35232306 0.196343 2.75451994 -1.98686695 0.18639299 2.47852993 -2.11617708 0.196343 2.52350211
		 -2.48163295 0.18639299 2.79949093 -2.2750051 0.196343 2.59735107 -2.068377018 0.18639299 2.39521003
		 -2.42364502 0.18639299 2.68161511 -2.31156802 0.196343 2.79618001 -2.075422049 0.196343 2.56516194
		 -2.39307809 0.196343 2.71286011 -2.15693212 0.196343 2.48184204 -2.43383408 0.156543 2.67120004
		 -2.51220012 0.156543 2.76824594 -2.31576109 0.156543 2.555691 -2.1976881 0.156543 2.44018197
		 -2.098943949 0.156543 2.36396503 -2.27081299 0.156543 2.83784008 -2.15274 0.156543 2.72233105
		 -2.3695569 0.156543 2.91405606 -2.034667015 0.156543 2.60682201 -1.95630002 0.156543 2.50977492
		 -1.95734894 0.156543 2.44965291 -1.99810398 0.156543 2.40799308 -2.038858891 0.156543 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.47039604 0.156543 2.87002802 -2.51115203 0.156543 2.82836795
		 -2.51220012 0.116743 2.76824594 -2.31576109 0.116743 2.555691 -2.098943949 0.116743 2.36396503
		 -2.51220012 0.046128999 2.76824594 -2.31576109 0.046128999 2.555691 -2.098943949 0.046128999 2.36396503
		 -2.47039604 0.046128999 2.87002802 -1.99810398 0.046128999 2.40799308 -2.36955595 0.046128999 2.91405606
		 -2.15274 0.046128999 2.72233105 -1.95630002 0.046128999 2.50977492 -2.36955595 0.116743 2.91405606
		 -2.15274 0.116743 2.72233105 -1.95630002 0.116743 2.50977492 -1.99810398 0.116743 2.40799308
		 -2.47039604 0.116743 2.87002802 -2.48131704 0.031148 2.75388694 -2.30557203 0.030399 2.56610608
		 -2.23425007 0.029436 2.63901091 -2.44087791 0.030399 2.841151 -2.11397791 0.031148 2.394526
		 -2.027621984 0.030399 2.4368701 -2.16292906 0.030399 2.71191597 -2.35452199 0.031148 2.88349605
		 -1.98718405 0.031148 2.52413511 -2.31576109 0.156543 2.555691 -2.43383408 0.116743 2.67120004
		 -2.098943949 0.156543 2.36396503 -2.1976881 0.116743 2.44018197 -2.51220012 0.076943003 2.76824594
		 -2.31576109 0.076943003 2.555691 -2.43383408 0.046128999 2.67120004 -2.098943949 0.076943003 2.36396503
		 -2.1976881 0.046128999 2.44018197 -2.42364502 0.030399 2.68161511 -2.48163295 0.030399 2.79949093
		 -2.2750051 0.029436 2.59735107 -2.35232306 0.029436 2.75451994 -2.18749905 0.030399 2.45059705
		 -2.068377018 0.030399 2.39521003 -2.11617708 0.029436 2.52350211 -2.40012288 0.030399 2.88281107
		 -2.19349504 0.029436 2.68067098 -2.28100204 0.030399 2.827425 -1.98686695 0.030399 2.47852993
		 -2.044855118 0.030399 2.59640694 -2.27081299 0.046128999 2.83784008 -2.3695569 0.076943003 2.91405606
		 -2.15274 0.076943003 2.72233105 -2.27081299 0.116743 2.83784008 -2.034667015 0.046128999 2.60682201
		 -1.95630002 0.076943003 2.50977492 -2.034667015 0.116743 2.60682201 -2.3695569 0.156543 2.91405606
		 -2.15274 0.156543 2.72233105 -1.95630002 0.156543 2.50977492 -1.99810398 0.156543 2.40799308
		 -1.95734894 0.116743 2.44965291 -2.038858891 0.116743 2.36633301 -1.99810398 0.076943003 2.40799308
		 -1.95734894 0.046128999 2.44965291 -2.038858891 0.046128999 2.36633301 -2.47039604 0.156543 2.87002802
		 -2.42964101 0.116743 2.91168809 -2.51115203 0.116743 2.82836795 -2.47039604 0.076943003 2.87002802
		 -2.42964101 0.046128999 2.91168809 -2.51115203 0.046128999 2.82836795 -2.51220012 0.033289 2.76824594
		 -2.31576109 0.033289 2.555691 -2.47039604 0.033289 2.87002802 -2.098943949 0.033289 2.36396503
		 -1.99810398 0.033289 2.40799308 -2.15274 0.033289 2.72233105 -2.3695569 0.033289 2.91405606
		 -1.95630002 0.033289 2.50977492 -2.51220012 0.156543 2.76824594 -2.43383408 0.156543 2.67120004
		 -2.1976881 0.156543 2.44018197 -2.43383408 0.076943003 2.67120004 -2.1976881 0.076943003 2.44018197
		 -2.39307809 0.029436 2.71286011 -2.15693212 0.029436 2.48184204 -2.31156802 0.029436 2.79618001
		 -2.075422049 0.029436 2.56516194 -2.27081299 0.076943003 2.83784008 -2.034667015 0.076943003 2.60682201
		 -2.27081299 0.156543 2.83784008 -2.034667015 0.156543 2.60682201 -1.95734894 0.156543 2.44965291
		 -2.038858891 0.156543 2.36633301 -1.95734894 0.076943003 2.44965291 -2.038858891 0.076943003 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.51115203 0.156543 2.82836795 -2.42964101 0.076943003 2.91168809
		 -2.51115203 0.076943003 2.82836795 -2.43383408 0.033289 2.67120004 -2.51115203 0.033289 2.82836795
		 -2.1976881 0.033289 2.44018197 -2.038858891 0.033289 2.36633301 -2.27081299 0.033289 2.83784008
		 -2.42964101 0.033289 2.91168809 -1.95734894 0.033289 2.44965291 -2.034667015 0.033289 2.60682201;
	setAttr -s 272 ".ed";
	setAttr ".ed[0:165]"  0 20 0 20 25 0 25 26 0 26 0 0 20 1 0 1 27 0 27 25 0
		 1 9 0 9 28 0 28 27 0 9 2 0 2 29 0 29 28 0 30 31 0 31 4 0 4 10 0 10 30 0 32 30 0 10 3 0
		 3 32 0 33 34 0 34 5 0 5 11 0 11 33 0 31 33 0 11 4 0 10 21 0 21 12 0 12 3 0 4 13 0
		 13 21 0 13 7 0 7 14 0 14 21 0 14 6 0 6 12 0 11 22 0 22 13 0 5 15 0 15 22 0 15 8 0
		 8 16 0 16 22 0 16 7 0 14 23 0 23 17 0 17 6 0 7 18 0 18 23 0 18 1 0 20 23 0 0 17 0
		 16 24 0 24 18 0 8 19 0 19 24 0 19 2 0 9 24 0 15 35 0 35 36 0 36 8 0 34 35 0 19 37 0
		 37 29 0 36 37 0 12 38 0 38 32 0 6 39 0 39 38 0 17 40 0 40 39 0 26 40 0 118 66 0 66 42 0
		 42 67 0 67 118 0 117 118 0 67 41 0 41 117 0 119 68 0 68 43 0 43 69 0 69 119 0 66 119 0
		 69 42 0 67 120 0 120 70 0 70 41 0 42 71 0 71 120 0 71 45 0 45 72 0 72 120 0 72 44 0
		 44 70 0 69 121 0 121 71 0 43 73 0 73 121 0 73 46 0 46 74 0 74 121 0 74 45 0 57 75 0
		 75 122 0 122 76 0 76 57 0 75 58 0 58 77 0 77 122 0 77 59 0 59 78 0 78 122 0 78 60 0
		 60 76 0 58 79 0 79 123 0 123 77 0 79 61 0 61 80 0 80 123 0 80 62 0 62 81 0 81 123 0
		 81 59 0 78 124 0 124 82 0 82 60 0 59 83 0 83 124 0 83 63 0 63 84 0 84 124 0 84 64 0
		 64 82 0 81 125 0 125 83 0 62 85 0 85 125 0 85 65 0 65 86 0 86 125 0 86 63 0 49 87 0
		 87 126 0 126 88 0 88 49 0 87 50 0 50 89 0 89 126 0 89 53 0 53 90 0 90 126 0 90 52 0
		 52 88 0 50 91 0 91 127 0 127 89 0 91 51 0 51 92 0 92 127 0 92 54 0 54 93 0 93 127 0
		 93 53 0 90 128 0;
	setAttr ".ed[166:271]" 128 94 0 94 52 0 53 95 0 95 128 0 93 129 0 129 95 0
		 54 96 0 96 129 0 130 96 0 54 98 0 98 130 0 97 130 0 98 55 0 55 97 0 131 97 0 55 99 0
		 99 131 0 68 131 0 99 43 0 98 132 0 132 100 0 100 55 0 92 132 0 51 101 0 101 132 0
		 101 48 0 48 100 0 99 133 0 133 73 0 100 133 0 48 102 0 102 133 0 102 46 0 134 103 0
		 103 56 0 56 104 0 104 134 0 94 134 0 104 52 0 135 117 0 41 105 0 105 135 0 103 135 0
		 105 56 0 104 136 0 136 88 0 56 106 0 106 136 0 106 47 0 47 107 0 107 136 0 107 49 0
		 105 137 0 137 106 0 70 137 0 44 108 0 108 137 0 108 47 0 72 138 0 138 109 0 109 44 0
		 45 110 0 110 138 0 110 58 0 75 138 0 57 109 0 108 139 0 139 111 0 111 47 0 109 139 0
		 76 139 0 60 111 0 74 140 0 140 110 0 46 112 0 112 140 0 112 61 0 79 140 0 102 141 0
		 141 112 0 48 113 0 113 141 0 113 62 0 80 141 0 87 142 0 142 114 0 114 50 0 49 115 0
		 115 142 0 115 64 0 84 142 0 63 114 0 107 143 0 143 115 0 111 143 0 82 143 0 101 144 0
		 144 113 0 51 116 0 116 144 0 116 65 0 85 144 0 91 145 0 145 116 0 114 145 0 86 145 0;
	setAttr -s 512 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.52629298 0.809928 -0.25890601 -0.42148501
		 0.82520002 -0.376026 -0.65006101 0.461981 -0.60332 -0.70441198 0.619452 -0.34652999
		 -0.42148501 0.82520002 -0.376026 -0.39437401 0.82580698 -0.40312901 -0.62843603 0.438642
		 -0.64238697 -0.65006101 0.461981 -0.60332 -0.39437401 0.82580698 -0.40312901 -0.36668199
		 0.82520002 -0.42963901 -0.58890301 0.461981 -0.663149 -0.62843603 0.438642 -0.64238697
		 -0.36668199 0.82520002 -0.42963901 -0.247289 0.809928 -0.53184998 -0.33098099 0.61945099
		 -0.711851 -0.58890301 0.461981 -0.663149 0.58890301 0.461981 0.663149 0.62843603
		 0.438642 0.64238697 0.39437401 0.82580698 0.40312901 0.36668199 0.82520002 0.42963901
		 0.33098099 0.619452 0.71184999 0.58890301 0.461981 0.663149 0.36668199 0.82520002
		 0.42963901 0.247289 0.809928 0.53184998 0.65006101 0.461981 0.60332 0.70441198 0.619452
		 0.34652901 0.52629298 0.809928 0.25890601 0.42148501 0.82520002 0.376026 0.62843603
		 0.438642 0.64238697 0.65006101 0.461981 0.60332 0.42148501 0.82520002 0.376026 0.39437401
		 0.82580698 0.40312901 0.247289 0.809928 0.53184998 0.36668199 0.82520002 0.42963901
		 0.042675 0.99486399 0.091783002 -0.077308998 0.96430999 0.25323999 0.36668199 0.82520002
		 0.42963901 0.39437401 0.82580698 0.40312901 0.067901 0.99527502 0.069408 0.042675
		 0.99486399 0.091783002 0.042675 0.99486399 0.091783002 0.067901 0.99527502 0.069408
		 0 1 0 -0.024591001 0.99940801 0.024057001 -0.077308998 0.96430999 0.25323999 0.042675
		 0.99486399 0.091783002 -0.024591001 0.99940801 0.024057001 -0.167448 0.97217703 0.163811
		 0.39437401 0.82580698 0.40312901 0.42148501 0.82520002 0.376026 0.090824001 0.99486399
		 0.044679999 0.067901 0.99527502 0.069408 0.42148501 0.82520002 0.376026 0.52629298
		 0.809928 0.25890601 0.25487599 0.96430999 -0.071731001 0.090824001 0.99486399 0.044679999
		 0.090824001 0.99486399 0.044679999 0.25487599 0.96430999 -0.071731001 0.167448 0.97217703
		 -0.163811 0.024591001 0.99940801 -0.024057001 0.067901 0.99527502 0.069408 0.090824001
		 0.99486399 0.044679999 0.024591001 0.99940801 -0.024057001 0 1 0 -0.167448 0.97217703
		 0.163811 -0.024591001 0.99940801 0.024057001 -0.090824001 0.99486399 -0.044679999
		 -0.25487599 0.96430999 0.071731001 -0.024591001 0.99940801 0.024057001 0 1 0 -0.067901
		 0.99527502 -0.069408 -0.090824001 0.99486399 -0.044679999 -0.090824001 0.99486399
		 -0.044679999 -0.067901 0.99527502 -0.069408 -0.39437401 0.82580698 -0.40312901 -0.42148501
		 0.82520002 -0.376026 -0.25487599 0.96430999 0.071731001 -0.090824001 0.99486399 -0.044679999
		 -0.42148501 0.82520002 -0.376026 -0.52629298 0.809928 -0.25890601 0 1 0 0.024591001
		 0.99940801 -0.024057001 -0.042675 0.99486399 -0.091783002 -0.067901 0.99527502 -0.069408
		 0.024591001 0.99940801 -0.024057001 0.167448 0.97217703 -0.163811 0.077308998 0.96430898
		 -0.25323999 -0.042675 0.99486399 -0.091783002 -0.042675 0.99486399 -0.091783002 0.077308998
		 0.96430898 -0.25323999 -0.247289 0.809928 -0.53184998 -0.36668199 0.82520002 -0.42963901
		 -0.067901 0.99527502 -0.069408 -0.042675 0.99486399 -0.091783002 -0.36668199 0.82520002
		 -0.42963901 -0.39437401 0.82580698 -0.40312901 0.167448 0.97217703 -0.163811 0.25487599
		 0.96430999 -0.071731001 0.53995699 0.809349 -0.231087 0.41876701 0.81043297 -0.40967301
		 0.25487599 0.96430999 -0.071731001 0.52629298 0.809928 0.25890601 0.70441198 0.619452
		 0.34652901 0.53995699 0.809349 -0.231087 -0.247289 0.809928 -0.53184998 0.077308998
		 0.96430898 -0.25323999 0.24288499 0.809349 -0.53475398 -0.33098099 0.61945099 -0.711851
		 0.077308998 0.96430898 -0.25323999 0.167448 0.97217703 -0.163811 0.41876701 0.81043297
		 -0.40967301 0.24288499 0.809349 -0.53475398 0.247289 0.809928 0.53184998 -0.077308998
		 0.96430999 0.25323999 -0.24288601 0.809349 0.53475302 0.33098099 0.619452 0.71184999
		 -0.077308998 0.96430999 0.25323999 -0.167448 0.97217703 0.163811 -0.41876701 0.81043398
		 0.40967199 -0.24288601 0.809349 0.53475302 -0.167448 0.97217703 0.163811 -0.25487599
		 0.96430999 0.071731001 -0.53995597 0.809349 0.231087 -0.41876701 0.81043398 0.40967199
		 -0.25487599 0.96430999 0.071731001 -0.52629298 0.809928 -0.25890601 -0.70441198 0.619452
		 -0.34652999 -0.53995597 0.809349 0.231087 -0.73439997 0 -0.67871702 -0.69930202 0
		 -0.714827 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 -1e-006 -0.44141999
		 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775 -0.66242999 0 -0.74912399
		 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202
		 0 -0.714827 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702
		 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.69930202
		 0 -0.714827 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827
		 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.69930202 0 -0.714827
		 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775;
	setAttr ".n[166:331]" -type "float3"  -0.42161399 0 -0.906775 -0.66242999 0
		 -0.74912399 -0.66242999 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775
		 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999
		 0 -0.74912399 -0.69930202 0 -0.714827 -0.060573999 -0.99771899 -0.029798999 -0.052843001
		 -0.99750501 -0.046805002 -0.008986 -0.99994999 -0.0044200001 -0.02781 -0.999587 0.0071720001
		 -0.052843001 -0.99750501 -0.046805002 -0.046137001 -0.99782097 -0.047161002 -0.0066049998
		 -0.999955 -0.0067520002 -0.008986 -0.99994999 -0.0044200001 -0.008986 -0.99994999
		 -0.0044200001 -0.0066049998 -0.999955 -0.0067520002 0 -1 0 -0.002382 -0.99999398
		 0.0023310001 -0.02781 -0.999587 0.0071720001 -0.008986 -0.99994999 -0.0044200001
		 -0.002382 -0.99999398 0.0023310001 -0.016672 -0.99972802 0.016310001 -0.046137001
		 -0.99782097 -0.047161002 -0.045634001 -0.99750501 -0.053858001 -0.004222 -0.99994999
		 -0.0090810005 -0.0066049998 -0.999955 -0.0067520002 -0.045634001 -0.99750501 -0.053858001
		 -0.028462 -0.99771899 -0.061213002 0.0077809999 -0.999587 -0.027646 -0.004222 -0.99994999
		 -0.0090810005 -0.004222 -0.99994999 -0.0090810005 0.0077809999 -0.999587 -0.027646
		 0.016672 -0.99972802 -0.016310001 0.002382 -0.99999398 -0.0023310001 -0.0066049998
		 -0.999955 -0.0067520002 -0.004222 -0.99994999 -0.0090810005 0.002382 -0.99999398
		 -0.0023310001 0 -1 0 -0.016672 -0.99972802 0.016310001 -0.002382 -0.99999398 0.0023310001
		 0.004222 -0.99994999 0.0090810005 -0.0077809999 -0.999587 0.027646 -0.002382 -0.99999398
		 0.0023310001 0 -1 0 0.0066049998 -0.999955 0.0067520002 0.004222 -0.99994999 0.0090810005
		 0.004222 -0.99994999 0.0090810005 0.0066049998 -0.999955 0.0067520002 0.046137001
		 -0.99782097 0.047161002 0.045634001 -0.99750501 0.053856999 -0.0077809999 -0.999587
		 0.027646 0.004222 -0.99994999 0.0090810005 0.045634001 -0.99750501 0.053856999 0.028462
		 -0.99771899 0.061213002 0 -1 0 0.002382 -0.99999398 -0.0023310001 0.008986 -0.99994999
		 0.0044209999 0.0066049998 -0.999955 0.0067520002 0.002382 -0.99999398 -0.0023310001
		 0.016672 -0.99972802 -0.016310001 0.02781 -0.99958801 -0.0071720001 0.008986 -0.99994999
		 0.0044209999 0.008986 -0.99994999 0.0044209999 0.02781 -0.99958801 -0.0071720001
		 0.060573999 -0.99771899 0.029798999 0.052843001 -0.99750501 0.046805002 0.0066049998
		 -0.999955 0.0067520002 0.008986 -0.99994999 0.0044209999 0.052843001 -0.99750501
		 0.046805002 0.046137001 -0.99782097 0.047161002 0.42161399 0 0.906775 0.66242999
		 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.90677601 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.66242999 0
		 0.74912399 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.42161399
		 0 0.90677601 0.66242999 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775
		 0.69930202 0 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202
		 0 0.714827 0.73439997 0 0.67871702 0.89730102 0 0.44141901 0.89730102 0 0.44141999
		 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.89730102 0 0.44141999 0.89730102
		 0 0.44141999 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997 0 0.67871702
		 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.42161399 0 0.906775 0.66242999 0
		 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.69930202 0
		 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997
		 0 0.67871702 0.89730102 0 0.44141999 0.89730102 0 0.44141901 0.73439997 0 0.67871702
		 0.92501998 0 -0.37991899 0.89730102 0 0.44141901 0.89730102 0 0.44141999 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899
		 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457
		 -0.42161399 0 -0.906775 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.89730102 0 0.44141999
		 0.89730102 0 0.44141999 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.89730102
		 0 0.44141999 0.89730102 0 0.44141901 0.92501998 0 -0.37991899 0.714827 0 -0.69930202
		 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.714827 0 -0.69930202 -0.42161399
		 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457;
	setAttr ".n[332:497]" -type "float3"  -0.42161399 0 -0.906775 0.400134 0 -0.916457
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 -0.40013501 -1e-006 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.40013501 -1e-006 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775 -0.92501998
		 -1e-006 0.37991801 -0.89730102 -1e-006 -0.44141999 -0.89730102 0 -0.44141999 -0.92501998
		 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 -1e-006 0.37991801 -0.92501998 0
		 0.37991801 -0.714827 0 0.69930202 0.42161399 0 0.906775 -0.40013501 0 0.91645598
		 -0.40013501 0 0.91645598 0.42161399 0 0.90677601 -0.40013501 0 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598
		 -0.714827 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399
		 0 0.90677601 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.714827 0 0.69930202 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.714827
		 0 0.69930202 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102 0 -0.44141999
		 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102
		 0 -0.44141999 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 0 0.37991801
		 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.56217402 -0.642546 -0.52066702 -0.66634798 -0.66971999 -0.327804
		 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.51303899 -0.679533 -0.52442902
		 -0.56217402 -0.642546 -0.52066702 -0.56217402 -0.642546 -0.52066702 -0.51303899 -0.679533
		 -0.52442902 -0.046137001 -0.99782097 -0.047161002 -0.052843001 -0.99750501 -0.046805002
		 -0.66634798 -0.66971999 -0.327804 -0.56217402 -0.642546 -0.52066702 -0.052843001
		 -0.99750501 -0.046805002 -0.060573999 -0.99771899 -0.029798999 -0.714827 0 0.69930202
		 -0.92501998 0 0.37991801 -0.37985 -0.91122502 0.159319 -0.25446099 -0.93449497 0.248934
		 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.66634798 -0.66971999 -0.327804
		 -0.37985 -0.91122502 0.159319 -0.37985 -0.91122502 0.159319 -0.66634798 -0.66971999
		 -0.327804 -0.060573999 -0.99771899 -0.029798999 -0.02781 -0.999587 0.0071720001 -0.25446099
		 -0.93449497 0.248934 -0.37985 -0.91122502 0.159319 -0.02781 -0.999587 0.0071720001
		 -0.016672 -0.99972802 0.016310001 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399
		 -0.50819898 -0.64254802 -0.57346898 -0.51303899 -0.679533 -0.52442902 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.31309599 -0.66972101 -0.673383 -0.50819898
		 -0.64254802 -0.57346898 -0.50819898 -0.64254802 -0.57346898 -0.31309599 -0.66972101
		 -0.673383 -0.028462 -0.99771899 -0.061213002 -0.045634001 -0.99750501 -0.053858001
		 -0.51303899 -0.679533 -0.52442902 -0.50819898 -0.64254802 -0.57346898 -0.045634001
		 -0.99750501 -0.053858001 -0.046137001 -0.99782097 -0.047161002 -0.42161399 0 -0.906775
		 0.400134 0 -0.916457 0.16762 -0.91122502 -0.376261 -0.31309599 -0.66972101 -0.673383
		 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.25446099 -0.93449497 -0.248935 0.16762
		 -0.91122502 -0.376261 0.16762 -0.91122502 -0.376261 0.25446099 -0.93449497 -0.248935
		 0.016672 -0.99972802 -0.016310001 0.0077809999 -0.999587 -0.027646 -0.31309599 -0.66972101
		 -0.673383 0.16762 -0.91122502 -0.376261 0.0077809999 -0.999587 -0.027646 -0.028462
		 -0.99771899 -0.061213002 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.50819999
		 -0.642546 0.57347 0.51303899 -0.679533 0.52442902 0.66242999 0 0.74912399 0.42161399
		 0 0.906775 0.31309599 -0.66971999 0.67338401 0.50819999 -0.642546 0.57347 0.50819999
		 -0.642546 0.57347 0.31309599 -0.66971999 0.67338401 0.028462 -0.99771899 0.061213002
		 0.045634001 -0.99750501 0.053856999 0.51303899 -0.679533 0.52442902 0.50819999 -0.642546
		 0.57347 0.045634001 -0.99750501 0.053856999 0.046137001 -0.99782097 0.047161002 0.42161399
		 0 0.906775 -0.40013501 0 0.91645598 -0.16762 -0.91122502 0.376261 0.31309599 -0.66971999
		 0.67338401 -0.40013501 0 0.91645598 -0.714827 0 0.69930202 -0.25446099 -0.93449497
		 0.248934 -0.16762 -0.91122502 0.376261 -0.16762 -0.91122502 0.376261 -0.25446099
		 -0.93449497 0.248934 -0.016672 -0.99972802 0.016310001 -0.0077809999 -0.999587 0.027646
		 0.31309599 -0.66971999 0.67338401 -0.16762 -0.91122502 0.376261 -0.0077809999 -0.999587
		 0.027646 0.028462 -0.99771899 0.061213002 0.714827 0 -0.69930202 0.92501998 0 -0.37991899
		 0.37985 -0.91122502 -0.15932 0.25446099 -0.93449497 -0.248935 0.92501998 0 -0.37991899
		 0.89730102 0 0.44141901 0.66634798 -0.66971999 0.327804 0.37985 -0.91122502 -0.15932
		 0.37985 -0.91122502 -0.15932 0.66634798 -0.66971999 0.327804 0.060573999 -0.99771899
		 0.029798999 0.02781 -0.99958801 -0.0071720001 0.25446099 -0.93449497 -0.248935 0.37985
		 -0.91122502 -0.15932 0.02781 -0.99958801 -0.0071720001 0.016672 -0.99972802 -0.016310001
		 0.89730102 0 0.44141901 0.73439997 0 0.67871702;
	setAttr ".n[498:511]" -type "float3"  0.56217402 -0.642546 0.52066702 0.66634798
		 -0.66971999 0.327804 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.51303899 -0.679533
		 0.52442902 0.56217402 -0.642546 0.52066702 0.56217402 -0.642546 0.52066702 0.51303899
		 -0.679533 0.52442902 0.046137001 -0.99782097 0.047161002 0.052843001 -0.99750501
		 0.046805002 0.66634798 -0.66971999 0.327804 0.56217402 -0.642546 0.52066702 0.052843001
		 -0.99750501 0.046805002 0.060573999 -0.99771899 0.029798999;
	setAttr -s 128 -ch 512 ".fc[0:127]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 65 66 3
		f 4 4 5 6 -2
		mu 0 4 1 67 68 2
		f 4 7 8 9 -6
		mu 0 4 4 69 70 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 16
		mu 0 4 71 72 73 74
		f 4 17 -17 18 19
		mu 0 4 16 10 13 17
		f 4 20 21 22 23
		mu 0 4 75 18 19 76
		f 4 24 -24 25 -15
		mu 0 4 11 14 15 12
		f 4 -19 26 27 28
		mu 0 4 20 77 78 79
		f 4 -16 29 30 -27
		mu 0 4 21 80 81 82
		f 4 -31 31 32 33
		mu 0 4 83 84 85 86
		f 4 -28 -34 34 35
		mu 0 4 23 22 87 88
		f 4 -26 36 37 -30
		mu 0 4 24 89 90 91
		f 4 -23 38 39 -37
		mu 0 4 28 33 92 93
		f 4 -40 40 41 42
		mu 0 4 94 34 95 96
		f 4 -38 -43 43 -32
		mu 0 4 25 29 97 98
		f 4 -35 44 45 46
		mu 0 4 27 99 100 101
		f 4 -33 47 48 -45
		mu 0 4 26 102 103 104
		f 4 -49 49 -5 50
		mu 0 4 105 106 107 108
		f 4 -46 -51 -1 51
		mu 0 4 32 31 37 38
		f 4 -44 52 53 -48
		mu 0 4 30 109 110 111
		f 4 -42 54 55 -53
		mu 0 4 35 39 112 113
		f 4 -56 56 -11 57
		mu 0 4 114 42 44 115
		f 4 -54 -58 -8 -50
		mu 0 4 36 40 43 41
		f 4 -41 58 59 60
		mu 0 4 116 117 118 119
		f 4 -39 -22 61 -59
		mu 0 4 46 49 50 47
		f 4 -57 62 63 -12
		mu 0 4 53 120 121 54
		f 4 -55 -61 64 -63
		mu 0 4 51 45 48 52
		f 4 -29 65 66 -20
		mu 0 4 55 122 123 58
		f 4 -36 67 68 -66
		mu 0 4 56 124 125 57
		f 4 -47 69 70 -68
		mu 0 4 59 126 127 60
		f 4 -52 -4 71 -70
		mu 0 4 61 63 64 62
		f 4 72 73 74 75
		mu 0 4 269 270 271 272
		f 4 76 -76 77 78
		mu 0 4 132 128 273 274
		f 4 79 80 81 82
		mu 0 4 275 135 276 277
		f 4 83 -83 84 -74
		mu 0 4 129 134 278 279
		f 4 -78 85 86 87
		mu 0 4 133 280 281 282
		f 4 -75 88 89 -86
		mu 0 4 131 283 284 285
		f 4 -90 90 91 92
		mu 0 4 286 287 288 289
		f 4 -87 -93 93 94
		mu 0 4 139 138 290 291
		f 4 -85 95 96 -89
		mu 0 4 130 292 293 294
		f 4 -82 97 98 -96
		mu 0 4 137 136 295 296
		f 4 -99 99 100 101
		mu 0 4 297 145 298 299
		f 4 -97 -102 102 -91
		mu 0 4 140 144 300 301
		f 4 103 104 105 106
		mu 0 4 302 303 304 305
		f 4 107 108 109 -105
		mu 0 4 306 307 308 309
		f 4 -110 110 111 112
		mu 0 4 310 311 312 313
		f 4 -106 -113 113 114
		mu 0 4 314 150 315 316
		f 4 115 116 117 -109
		mu 0 4 317 318 319 320
		f 4 118 119 120 -117
		mu 0 4 321 322 323 324
		f 4 -121 121 122 123
		mu 0 4 325 326 327 328
		f 4 -118 -124 124 -111
		mu 0 4 153 158 329 330
		f 4 -114 125 126 127
		mu 0 4 331 332 333 334
		f 4 -112 128 129 -126
		mu 0 4 155 335 336 337
		f 4 -130 130 131 132
		mu 0 4 338 339 340 341
		f 4 -127 -133 133 134
		mu 0 4 342 163 343 344
		f 4 -125 135 136 -129
		mu 0 4 154 345 346 347
		f 4 -123 137 138 -136
		mu 0 4 162 348 349 350
		f 4 -139 139 140 141
		mu 0 4 351 352 353 354
		f 4 -137 -142 142 -131
		mu 0 4 165 169 355 356
		f 4 143 144 145 146
		mu 0 4 357 358 359 360
		f 4 147 148 149 -145
		mu 0 4 361 362 363 364
		f 4 -150 150 151 152
		mu 0 4 365 366 367 368
		f 4 -146 -153 153 154
		mu 0 4 176 175 369 370
		f 4 155 156 157 -149
		mu 0 4 371 372 373 374
		f 4 158 159 160 -157
		mu 0 4 375 376 377 378
		f 4 -161 161 162 163
		mu 0 4 379 185 380 381
		f 4 -158 -164 164 -151
		mu 0 4 178 183 382 383
		f 4 -154 165 166 167
		mu 0 4 181 384 385 189
		f 4 -152 168 169 -166
		mu 0 4 180 386 387 188
		f 4 -165 170 171 -169
		mu 0 4 179 388 389 190
		f 4 -163 172 173 -171
		mu 0 4 187 186 192 191
		f 4 174 -173 175 176
		mu 0 4 390 194 391 392
		f 4 177 -177 178 179
		mu 0 4 393 193 394 395
		f 4 180 -180 181 182
		mu 0 4 396 197 397 398
		f 4 183 -183 184 -81
		mu 0 4 201 199 399 400
		f 4 -179 185 186 187
		mu 0 4 401 402 403 404
		f 4 -176 -162 188 -186
		mu 0 4 196 195 405 406
		f 4 -189 -160 189 190
		mu 0 4 407 205 408 409
		f 4 -187 -191 191 192
		mu 0 4 410 203 411 412
		f 4 -185 193 194 -98
		mu 0 4 202 413 414 415
		f 4 -182 -188 195 -194
		mu 0 4 200 198 416 417
		f 4 -196 -193 196 197
		mu 0 4 418 204 419 420
		f 4 -195 -198 198 -100
		mu 0 4 210 209 421 422
		f 4 199 200 201 202
		mu 0 4 423 424 425 426
		f 4 203 -203 204 -168
		mu 0 4 217 213 427 428
		f 4 205 -79 206 207
		mu 0 4 429 220 430 431
		f 4 208 -208 209 -201
		mu 0 4 214 219 432 433
		f 4 -205 210 211 -155
		mu 0 4 218 434 435 436
		f 4 -202 212 213 -211
		mu 0 4 216 437 438 439
		f 4 -214 214 215 216
		mu 0 4 440 441 442 443
		f 4 -212 -217 217 -147
		mu 0 4 224 223 444 445
		f 4 -210 218 219 -213
		mu 0 4 215 446 447 448
		f 4 -207 -88 220 -219
		mu 0 4 222 221 449 450
		f 4 -221 -95 221 222
		mu 0 4 451 230 452 453
		f 4 -220 -223 223 -215
		mu 0 4 225 229 454 455
		f 4 -94 224 225 226
		mu 0 4 143 456 457 234
		f 4 -92 227 228 -225
		mu 0 4 142 458 459 233
		f 4 -229 229 -108 230
		mu 0 4 460 461 462 463
		f 4 -226 -231 -104 231
		mu 0 4 464 236 149 465
		f 4 -224 232 233 234
		mu 0 4 466 467 468 469
		f 4 -222 -227 235 -233
		mu 0 4 232 231 241 239
		f 4 -236 -232 -107 236
		mu 0 4 470 238 148 471
		f 4 -234 -237 -115 237
		mu 0 4 472 242 151 473
		f 4 -103 238 239 -228
		mu 0 4 141 474 475 235
		f 4 -101 240 241 -239
		mu 0 4 147 146 245 244
		f 4 -242 242 -119 243
		mu 0 4 476 477 478 479
		f 4 -240 -244 -116 -230
		mu 0 4 237 246 157 152
		f 4 -199 244 245 -241
		mu 0 4 212 480 481 249
		f 4 -197 246 247 -245
		mu 0 4 211 482 483 248
		f 4 -248 248 -122 249
		mu 0 4 484 485 486 487
		f 4 -246 -250 -120 -243
		mu 0 4 247 251 160 159
		f 4 -148 250 251 252
		mu 0 4 488 489 490 491
		f 4 -144 253 254 -251
		mu 0 4 174 173 255 253
		f 4 -255 255 -134 256
		mu 0 4 492 493 494 495
		f 4 -252 -257 -132 257
		mu 0 4 496 256 167 497
		f 4 -218 258 259 -254
		mu 0 4 228 498 499 260
		f 4 -216 -235 260 -259
		mu 0 4 227 226 240 259
		f 4 -261 -238 -128 261
		mu 0 4 500 243 156 501
		f 4 -260 -262 -135 -256
		mu 0 4 257 261 164 168
		f 4 -192 262 263 -247
		mu 0 4 208 502 503 250
		f 4 -190 264 265 -263
		mu 0 4 207 206 263 262
		f 4 -266 266 -140 267
		mu 0 4 504 505 506 507
		f 4 -264 -268 -138 -249
		mu 0 4 252 264 170 161
		f 4 -159 268 269 -265
		mu 0 4 184 508 509 267
		f 4 -156 -253 270 -269
		mu 0 4 182 177 254 266
		f 4 -271 -258 -143 271
		mu 0 4 510 258 166 511
		f 4 -270 -272 -141 -267
		mu 0 4 265 268 172 171;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface11";
	setAttr ".t" -type "double3" 1.074716232147531 0.68853362395118289 -3.6081162026522686 ;
	setAttr ".r" -type "double3" 0 108.47963193281559 0 ;
	setAttr ".s" -type "double3" 0.45411853506603828 0.45411853506603828 0.45411853506603828 ;
	setAttr ".rp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
	setAttr ".sp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
createNode mesh -n "polySurfaceShape11" -p "polySurface11";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:31]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[32:127]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "vtx[0:145]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 512 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0 0 0 1 0 1 0 0 0 1 0 0
		 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 1
		 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1
		 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1
		 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1
		 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1 1
		 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1
		 0 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 1 0 1 0 1 0
		 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0
		 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 1 0 0
		 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 0 1 0 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 0
		 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0
		 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1
		 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1
		 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1
		 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0
		 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1;
	setAttr ".uvst[0].uvsp[500:511]" 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0
		 0 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 146 ".vt[0:145]"  -2.48131704 0.178654 2.75388694 -2.30557203 0.18639299 2.56610608
		 -2.11397791 0.178654 2.394526 -2.35452199 0.178654 2.88349605 -2.16292906 0.18639299 2.71191597
		 -1.98718405 0.178654 2.52413511 -2.44087791 0.18639299 2.841151 -2.23425007 0.196343 2.63901091
		 -2.027621984 0.18639299 2.4368701 -2.18749905 0.18639299 2.45059705 -2.28100204 0.18639299 2.827425
		 -2.044855118 0.18639299 2.59640694 -2.40012288 0.18639299 2.88281107 -2.19349504 0.196343 2.68067098
		 -2.35232306 0.196343 2.75451994 -1.98686695 0.18639299 2.47852993 -2.11617708 0.196343 2.52350211
		 -2.48163295 0.18639299 2.79949093 -2.2750051 0.196343 2.59735107 -2.068377018 0.18639299 2.39521003
		 -2.42364502 0.18639299 2.68161511 -2.31156802 0.196343 2.79618001 -2.075422049 0.196343 2.56516194
		 -2.39307809 0.196343 2.71286011 -2.15693212 0.196343 2.48184204 -2.43383408 0.156543 2.67120004
		 -2.51220012 0.156543 2.76824594 -2.31576109 0.156543 2.555691 -2.1976881 0.156543 2.44018197
		 -2.098943949 0.156543 2.36396503 -2.27081299 0.156543 2.83784008 -2.15274 0.156543 2.72233105
		 -2.3695569 0.156543 2.91405606 -2.034667015 0.156543 2.60682201 -1.95630002 0.156543 2.50977492
		 -1.95734894 0.156543 2.44965291 -1.99810398 0.156543 2.40799308 -2.038858891 0.156543 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.47039604 0.156543 2.87002802 -2.51115203 0.156543 2.82836795
		 -2.51220012 0.116743 2.76824594 -2.31576109 0.116743 2.555691 -2.098943949 0.116743 2.36396503
		 -2.51220012 0.046128999 2.76824594 -2.31576109 0.046128999 2.555691 -2.098943949 0.046128999 2.36396503
		 -2.47039604 0.046128999 2.87002802 -1.99810398 0.046128999 2.40799308 -2.36955595 0.046128999 2.91405606
		 -2.15274 0.046128999 2.72233105 -1.95630002 0.046128999 2.50977492 -2.36955595 0.116743 2.91405606
		 -2.15274 0.116743 2.72233105 -1.95630002 0.116743 2.50977492 -1.99810398 0.116743 2.40799308
		 -2.47039604 0.116743 2.87002802 -2.48131704 0.031148 2.75388694 -2.30557203 0.030399 2.56610608
		 -2.23425007 0.029436 2.63901091 -2.44087791 0.030399 2.841151 -2.11397791 0.031148 2.394526
		 -2.027621984 0.030399 2.4368701 -2.16292906 0.030399 2.71191597 -2.35452199 0.031148 2.88349605
		 -1.98718405 0.031148 2.52413511 -2.31576109 0.156543 2.555691 -2.43383408 0.116743 2.67120004
		 -2.098943949 0.156543 2.36396503 -2.1976881 0.116743 2.44018197 -2.51220012 0.076943003 2.76824594
		 -2.31576109 0.076943003 2.555691 -2.43383408 0.046128999 2.67120004 -2.098943949 0.076943003 2.36396503
		 -2.1976881 0.046128999 2.44018197 -2.42364502 0.030399 2.68161511 -2.48163295 0.030399 2.79949093
		 -2.2750051 0.029436 2.59735107 -2.35232306 0.029436 2.75451994 -2.18749905 0.030399 2.45059705
		 -2.068377018 0.030399 2.39521003 -2.11617708 0.029436 2.52350211 -2.40012288 0.030399 2.88281107
		 -2.19349504 0.029436 2.68067098 -2.28100204 0.030399 2.827425 -1.98686695 0.030399 2.47852993
		 -2.044855118 0.030399 2.59640694 -2.27081299 0.046128999 2.83784008 -2.3695569 0.076943003 2.91405606
		 -2.15274 0.076943003 2.72233105 -2.27081299 0.116743 2.83784008 -2.034667015 0.046128999 2.60682201
		 -1.95630002 0.076943003 2.50977492 -2.034667015 0.116743 2.60682201 -2.3695569 0.156543 2.91405606
		 -2.15274 0.156543 2.72233105 -1.95630002 0.156543 2.50977492 -1.99810398 0.156543 2.40799308
		 -1.95734894 0.116743 2.44965291 -2.038858891 0.116743 2.36633301 -1.99810398 0.076943003 2.40799308
		 -1.95734894 0.046128999 2.44965291 -2.038858891 0.046128999 2.36633301 -2.47039604 0.156543 2.87002802
		 -2.42964101 0.116743 2.91168809 -2.51115203 0.116743 2.82836795 -2.47039604 0.076943003 2.87002802
		 -2.42964101 0.046128999 2.91168809 -2.51115203 0.046128999 2.82836795 -2.51220012 0.033289 2.76824594
		 -2.31576109 0.033289 2.555691 -2.47039604 0.033289 2.87002802 -2.098943949 0.033289 2.36396503
		 -1.99810398 0.033289 2.40799308 -2.15274 0.033289 2.72233105 -2.3695569 0.033289 2.91405606
		 -1.95630002 0.033289 2.50977492 -2.51220012 0.156543 2.76824594 -2.43383408 0.156543 2.67120004
		 -2.1976881 0.156543 2.44018197 -2.43383408 0.076943003 2.67120004 -2.1976881 0.076943003 2.44018197
		 -2.39307809 0.029436 2.71286011 -2.15693212 0.029436 2.48184204 -2.31156802 0.029436 2.79618001
		 -2.075422049 0.029436 2.56516194 -2.27081299 0.076943003 2.83784008 -2.034667015 0.076943003 2.60682201
		 -2.27081299 0.156543 2.83784008 -2.034667015 0.156543 2.60682201 -1.95734894 0.156543 2.44965291
		 -2.038858891 0.156543 2.36633301 -1.95734894 0.076943003 2.44965291 -2.038858891 0.076943003 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.51115203 0.156543 2.82836795 -2.42964101 0.076943003 2.91168809
		 -2.51115203 0.076943003 2.82836795 -2.43383408 0.033289 2.67120004 -2.51115203 0.033289 2.82836795
		 -2.1976881 0.033289 2.44018197 -2.038858891 0.033289 2.36633301 -2.27081299 0.033289 2.83784008
		 -2.42964101 0.033289 2.91168809 -1.95734894 0.033289 2.44965291 -2.034667015 0.033289 2.60682201;
	setAttr -s 272 ".ed";
	setAttr ".ed[0:165]"  0 20 0 20 25 0 25 26 0 26 0 0 20 1 0 1 27 0 27 25 0
		 1 9 0 9 28 0 28 27 0 9 2 0 2 29 0 29 28 0 30 31 0 31 4 0 4 10 0 10 30 0 32 30 0 10 3 0
		 3 32 0 33 34 0 34 5 0 5 11 0 11 33 0 31 33 0 11 4 0 10 21 0 21 12 0 12 3 0 4 13 0
		 13 21 0 13 7 0 7 14 0 14 21 0 14 6 0 6 12 0 11 22 0 22 13 0 5 15 0 15 22 0 15 8 0
		 8 16 0 16 22 0 16 7 0 14 23 0 23 17 0 17 6 0 7 18 0 18 23 0 18 1 0 20 23 0 0 17 0
		 16 24 0 24 18 0 8 19 0 19 24 0 19 2 0 9 24 0 15 35 0 35 36 0 36 8 0 34 35 0 19 37 0
		 37 29 0 36 37 0 12 38 0 38 32 0 6 39 0 39 38 0 17 40 0 40 39 0 26 40 0 118 66 0 66 42 0
		 42 67 0 67 118 0 117 118 0 67 41 0 41 117 0 119 68 0 68 43 0 43 69 0 69 119 0 66 119 0
		 69 42 0 67 120 0 120 70 0 70 41 0 42 71 0 71 120 0 71 45 0 45 72 0 72 120 0 72 44 0
		 44 70 0 69 121 0 121 71 0 43 73 0 73 121 0 73 46 0 46 74 0 74 121 0 74 45 0 57 75 0
		 75 122 0 122 76 0 76 57 0 75 58 0 58 77 0 77 122 0 77 59 0 59 78 0 78 122 0 78 60 0
		 60 76 0 58 79 0 79 123 0 123 77 0 79 61 0 61 80 0 80 123 0 80 62 0 62 81 0 81 123 0
		 81 59 0 78 124 0 124 82 0 82 60 0 59 83 0 83 124 0 83 63 0 63 84 0 84 124 0 84 64 0
		 64 82 0 81 125 0 125 83 0 62 85 0 85 125 0 85 65 0 65 86 0 86 125 0 86 63 0 49 87 0
		 87 126 0 126 88 0 88 49 0 87 50 0 50 89 0 89 126 0 89 53 0 53 90 0 90 126 0 90 52 0
		 52 88 0 50 91 0 91 127 0 127 89 0 91 51 0 51 92 0 92 127 0 92 54 0 54 93 0 93 127 0
		 93 53 0 90 128 0;
	setAttr ".ed[166:271]" 128 94 0 94 52 0 53 95 0 95 128 0 93 129 0 129 95 0
		 54 96 0 96 129 0 130 96 0 54 98 0 98 130 0 97 130 0 98 55 0 55 97 0 131 97 0 55 99 0
		 99 131 0 68 131 0 99 43 0 98 132 0 132 100 0 100 55 0 92 132 0 51 101 0 101 132 0
		 101 48 0 48 100 0 99 133 0 133 73 0 100 133 0 48 102 0 102 133 0 102 46 0 134 103 0
		 103 56 0 56 104 0 104 134 0 94 134 0 104 52 0 135 117 0 41 105 0 105 135 0 103 135 0
		 105 56 0 104 136 0 136 88 0 56 106 0 106 136 0 106 47 0 47 107 0 107 136 0 107 49 0
		 105 137 0 137 106 0 70 137 0 44 108 0 108 137 0 108 47 0 72 138 0 138 109 0 109 44 0
		 45 110 0 110 138 0 110 58 0 75 138 0 57 109 0 108 139 0 139 111 0 111 47 0 109 139 0
		 76 139 0 60 111 0 74 140 0 140 110 0 46 112 0 112 140 0 112 61 0 79 140 0 102 141 0
		 141 112 0 48 113 0 113 141 0 113 62 0 80 141 0 87 142 0 142 114 0 114 50 0 49 115 0
		 115 142 0 115 64 0 84 142 0 63 114 0 107 143 0 143 115 0 111 143 0 82 143 0 101 144 0
		 144 113 0 51 116 0 116 144 0 116 65 0 85 144 0 91 145 0 145 116 0 114 145 0 86 145 0;
	setAttr -s 512 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.52629298 0.809928 -0.25890601 -0.42148501
		 0.82520002 -0.376026 -0.65006101 0.461981 -0.60332 -0.70441198 0.619452 -0.34652999
		 -0.42148501 0.82520002 -0.376026 -0.39437401 0.82580698 -0.40312901 -0.62843603 0.438642
		 -0.64238697 -0.65006101 0.461981 -0.60332 -0.39437401 0.82580698 -0.40312901 -0.36668199
		 0.82520002 -0.42963901 -0.58890301 0.461981 -0.663149 -0.62843603 0.438642 -0.64238697
		 -0.36668199 0.82520002 -0.42963901 -0.247289 0.809928 -0.53184998 -0.33098099 0.61945099
		 -0.711851 -0.58890301 0.461981 -0.663149 0.58890301 0.461981 0.663149 0.62843603
		 0.438642 0.64238697 0.39437401 0.82580698 0.40312901 0.36668199 0.82520002 0.42963901
		 0.33098099 0.619452 0.71184999 0.58890301 0.461981 0.663149 0.36668199 0.82520002
		 0.42963901 0.247289 0.809928 0.53184998 0.65006101 0.461981 0.60332 0.70441198 0.619452
		 0.34652901 0.52629298 0.809928 0.25890601 0.42148501 0.82520002 0.376026 0.62843603
		 0.438642 0.64238697 0.65006101 0.461981 0.60332 0.42148501 0.82520002 0.376026 0.39437401
		 0.82580698 0.40312901 0.247289 0.809928 0.53184998 0.36668199 0.82520002 0.42963901
		 0.042675 0.99486399 0.091783002 -0.077308998 0.96430999 0.25323999 0.36668199 0.82520002
		 0.42963901 0.39437401 0.82580698 0.40312901 0.067901 0.99527502 0.069408 0.042675
		 0.99486399 0.091783002 0.042675 0.99486399 0.091783002 0.067901 0.99527502 0.069408
		 0 1 0 -0.024591001 0.99940801 0.024057001 -0.077308998 0.96430999 0.25323999 0.042675
		 0.99486399 0.091783002 -0.024591001 0.99940801 0.024057001 -0.167448 0.97217703 0.163811
		 0.39437401 0.82580698 0.40312901 0.42148501 0.82520002 0.376026 0.090824001 0.99486399
		 0.044679999 0.067901 0.99527502 0.069408 0.42148501 0.82520002 0.376026 0.52629298
		 0.809928 0.25890601 0.25487599 0.96430999 -0.071731001 0.090824001 0.99486399 0.044679999
		 0.090824001 0.99486399 0.044679999 0.25487599 0.96430999 -0.071731001 0.167448 0.97217703
		 -0.163811 0.024591001 0.99940801 -0.024057001 0.067901 0.99527502 0.069408 0.090824001
		 0.99486399 0.044679999 0.024591001 0.99940801 -0.024057001 0 1 0 -0.167448 0.97217703
		 0.163811 -0.024591001 0.99940801 0.024057001 -0.090824001 0.99486399 -0.044679999
		 -0.25487599 0.96430999 0.071731001 -0.024591001 0.99940801 0.024057001 0 1 0 -0.067901
		 0.99527502 -0.069408 -0.090824001 0.99486399 -0.044679999 -0.090824001 0.99486399
		 -0.044679999 -0.067901 0.99527502 -0.069408 -0.39437401 0.82580698 -0.40312901 -0.42148501
		 0.82520002 -0.376026 -0.25487599 0.96430999 0.071731001 -0.090824001 0.99486399 -0.044679999
		 -0.42148501 0.82520002 -0.376026 -0.52629298 0.809928 -0.25890601 0 1 0 0.024591001
		 0.99940801 -0.024057001 -0.042675 0.99486399 -0.091783002 -0.067901 0.99527502 -0.069408
		 0.024591001 0.99940801 -0.024057001 0.167448 0.97217703 -0.163811 0.077308998 0.96430898
		 -0.25323999 -0.042675 0.99486399 -0.091783002 -0.042675 0.99486399 -0.091783002 0.077308998
		 0.96430898 -0.25323999 -0.247289 0.809928 -0.53184998 -0.36668199 0.82520002 -0.42963901
		 -0.067901 0.99527502 -0.069408 -0.042675 0.99486399 -0.091783002 -0.36668199 0.82520002
		 -0.42963901 -0.39437401 0.82580698 -0.40312901 0.167448 0.97217703 -0.163811 0.25487599
		 0.96430999 -0.071731001 0.53995699 0.809349 -0.231087 0.41876701 0.81043297 -0.40967301
		 0.25487599 0.96430999 -0.071731001 0.52629298 0.809928 0.25890601 0.70441198 0.619452
		 0.34652901 0.53995699 0.809349 -0.231087 -0.247289 0.809928 -0.53184998 0.077308998
		 0.96430898 -0.25323999 0.24288499 0.809349 -0.53475398 -0.33098099 0.61945099 -0.711851
		 0.077308998 0.96430898 -0.25323999 0.167448 0.97217703 -0.163811 0.41876701 0.81043297
		 -0.40967301 0.24288499 0.809349 -0.53475398 0.247289 0.809928 0.53184998 -0.077308998
		 0.96430999 0.25323999 -0.24288601 0.809349 0.53475302 0.33098099 0.619452 0.71184999
		 -0.077308998 0.96430999 0.25323999 -0.167448 0.97217703 0.163811 -0.41876701 0.81043398
		 0.40967199 -0.24288601 0.809349 0.53475302 -0.167448 0.97217703 0.163811 -0.25487599
		 0.96430999 0.071731001 -0.53995597 0.809349 0.231087 -0.41876701 0.81043398 0.40967199
		 -0.25487599 0.96430999 0.071731001 -0.52629298 0.809928 -0.25890601 -0.70441198 0.619452
		 -0.34652999 -0.53995597 0.809349 0.231087 -0.73439997 0 -0.67871702 -0.69930202 0
		 -0.714827 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 -1e-006 -0.44141999
		 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775 -0.66242999 0 -0.74912399
		 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202
		 0 -0.714827 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702
		 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.69930202
		 0 -0.714827 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827
		 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.69930202 0 -0.714827
		 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775;
	setAttr ".n[166:331]" -type "float3"  -0.42161399 0 -0.906775 -0.66242999 0
		 -0.74912399 -0.66242999 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775
		 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999
		 0 -0.74912399 -0.69930202 0 -0.714827 -0.060573999 -0.99771899 -0.029798999 -0.052843001
		 -0.99750501 -0.046805002 -0.008986 -0.99994999 -0.0044200001 -0.02781 -0.999587 0.0071720001
		 -0.052843001 -0.99750501 -0.046805002 -0.046137001 -0.99782097 -0.047161002 -0.0066049998
		 -0.999955 -0.0067520002 -0.008986 -0.99994999 -0.0044200001 -0.008986 -0.99994999
		 -0.0044200001 -0.0066049998 -0.999955 -0.0067520002 0 -1 0 -0.002382 -0.99999398
		 0.0023310001 -0.02781 -0.999587 0.0071720001 -0.008986 -0.99994999 -0.0044200001
		 -0.002382 -0.99999398 0.0023310001 -0.016672 -0.99972802 0.016310001 -0.046137001
		 -0.99782097 -0.047161002 -0.045634001 -0.99750501 -0.053858001 -0.004222 -0.99994999
		 -0.0090810005 -0.0066049998 -0.999955 -0.0067520002 -0.045634001 -0.99750501 -0.053858001
		 -0.028462 -0.99771899 -0.061213002 0.0077809999 -0.999587 -0.027646 -0.004222 -0.99994999
		 -0.0090810005 -0.004222 -0.99994999 -0.0090810005 0.0077809999 -0.999587 -0.027646
		 0.016672 -0.99972802 -0.016310001 0.002382 -0.99999398 -0.0023310001 -0.0066049998
		 -0.999955 -0.0067520002 -0.004222 -0.99994999 -0.0090810005 0.002382 -0.99999398
		 -0.0023310001 0 -1 0 -0.016672 -0.99972802 0.016310001 -0.002382 -0.99999398 0.0023310001
		 0.004222 -0.99994999 0.0090810005 -0.0077809999 -0.999587 0.027646 -0.002382 -0.99999398
		 0.0023310001 0 -1 0 0.0066049998 -0.999955 0.0067520002 0.004222 -0.99994999 0.0090810005
		 0.004222 -0.99994999 0.0090810005 0.0066049998 -0.999955 0.0067520002 0.046137001
		 -0.99782097 0.047161002 0.045634001 -0.99750501 0.053856999 -0.0077809999 -0.999587
		 0.027646 0.004222 -0.99994999 0.0090810005 0.045634001 -0.99750501 0.053856999 0.028462
		 -0.99771899 0.061213002 0 -1 0 0.002382 -0.99999398 -0.0023310001 0.008986 -0.99994999
		 0.0044209999 0.0066049998 -0.999955 0.0067520002 0.002382 -0.99999398 -0.0023310001
		 0.016672 -0.99972802 -0.016310001 0.02781 -0.99958801 -0.0071720001 0.008986 -0.99994999
		 0.0044209999 0.008986 -0.99994999 0.0044209999 0.02781 -0.99958801 -0.0071720001
		 0.060573999 -0.99771899 0.029798999 0.052843001 -0.99750501 0.046805002 0.0066049998
		 -0.999955 0.0067520002 0.008986 -0.99994999 0.0044209999 0.052843001 -0.99750501
		 0.046805002 0.046137001 -0.99782097 0.047161002 0.42161399 0 0.906775 0.66242999
		 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.90677601 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.66242999 0
		 0.74912399 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.42161399
		 0 0.90677601 0.66242999 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775
		 0.69930202 0 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202
		 0 0.714827 0.73439997 0 0.67871702 0.89730102 0 0.44141901 0.89730102 0 0.44141999
		 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.89730102 0 0.44141999 0.89730102
		 0 0.44141999 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997 0 0.67871702
		 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.42161399 0 0.906775 0.66242999 0
		 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.69930202 0
		 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997
		 0 0.67871702 0.89730102 0 0.44141999 0.89730102 0 0.44141901 0.73439997 0 0.67871702
		 0.92501998 0 -0.37991899 0.89730102 0 0.44141901 0.89730102 0 0.44141999 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899
		 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457
		 -0.42161399 0 -0.906775 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.89730102 0 0.44141999
		 0.89730102 0 0.44141999 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.89730102
		 0 0.44141999 0.89730102 0 0.44141901 0.92501998 0 -0.37991899 0.714827 0 -0.69930202
		 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.714827 0 -0.69930202 -0.42161399
		 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457;
	setAttr ".n[332:497]" -type "float3"  -0.42161399 0 -0.906775 0.400134 0 -0.916457
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 -0.40013501 -1e-006 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.40013501 -1e-006 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775 -0.92501998
		 -1e-006 0.37991801 -0.89730102 -1e-006 -0.44141999 -0.89730102 0 -0.44141999 -0.92501998
		 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 -1e-006 0.37991801 -0.92501998 0
		 0.37991801 -0.714827 0 0.69930202 0.42161399 0 0.906775 -0.40013501 0 0.91645598
		 -0.40013501 0 0.91645598 0.42161399 0 0.90677601 -0.40013501 0 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598
		 -0.714827 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399
		 0 0.90677601 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.714827 0 0.69930202 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.714827
		 0 0.69930202 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102 0 -0.44141999
		 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102
		 0 -0.44141999 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 0 0.37991801
		 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.56217402 -0.642546 -0.52066702 -0.66634798 -0.66971999 -0.327804
		 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.51303899 -0.679533 -0.52442902
		 -0.56217402 -0.642546 -0.52066702 -0.56217402 -0.642546 -0.52066702 -0.51303899 -0.679533
		 -0.52442902 -0.046137001 -0.99782097 -0.047161002 -0.052843001 -0.99750501 -0.046805002
		 -0.66634798 -0.66971999 -0.327804 -0.56217402 -0.642546 -0.52066702 -0.052843001
		 -0.99750501 -0.046805002 -0.060573999 -0.99771899 -0.029798999 -0.714827 0 0.69930202
		 -0.92501998 0 0.37991801 -0.37985 -0.91122502 0.159319 -0.25446099 -0.93449497 0.248934
		 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.66634798 -0.66971999 -0.327804
		 -0.37985 -0.91122502 0.159319 -0.37985 -0.91122502 0.159319 -0.66634798 -0.66971999
		 -0.327804 -0.060573999 -0.99771899 -0.029798999 -0.02781 -0.999587 0.0071720001 -0.25446099
		 -0.93449497 0.248934 -0.37985 -0.91122502 0.159319 -0.02781 -0.999587 0.0071720001
		 -0.016672 -0.99972802 0.016310001 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399
		 -0.50819898 -0.64254802 -0.57346898 -0.51303899 -0.679533 -0.52442902 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.31309599 -0.66972101 -0.673383 -0.50819898
		 -0.64254802 -0.57346898 -0.50819898 -0.64254802 -0.57346898 -0.31309599 -0.66972101
		 -0.673383 -0.028462 -0.99771899 -0.061213002 -0.045634001 -0.99750501 -0.053858001
		 -0.51303899 -0.679533 -0.52442902 -0.50819898 -0.64254802 -0.57346898 -0.045634001
		 -0.99750501 -0.053858001 -0.046137001 -0.99782097 -0.047161002 -0.42161399 0 -0.906775
		 0.400134 0 -0.916457 0.16762 -0.91122502 -0.376261 -0.31309599 -0.66972101 -0.673383
		 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.25446099 -0.93449497 -0.248935 0.16762
		 -0.91122502 -0.376261 0.16762 -0.91122502 -0.376261 0.25446099 -0.93449497 -0.248935
		 0.016672 -0.99972802 -0.016310001 0.0077809999 -0.999587 -0.027646 -0.31309599 -0.66972101
		 -0.673383 0.16762 -0.91122502 -0.376261 0.0077809999 -0.999587 -0.027646 -0.028462
		 -0.99771899 -0.061213002 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.50819999
		 -0.642546 0.57347 0.51303899 -0.679533 0.52442902 0.66242999 0 0.74912399 0.42161399
		 0 0.906775 0.31309599 -0.66971999 0.67338401 0.50819999 -0.642546 0.57347 0.50819999
		 -0.642546 0.57347 0.31309599 -0.66971999 0.67338401 0.028462 -0.99771899 0.061213002
		 0.045634001 -0.99750501 0.053856999 0.51303899 -0.679533 0.52442902 0.50819999 -0.642546
		 0.57347 0.045634001 -0.99750501 0.053856999 0.046137001 -0.99782097 0.047161002 0.42161399
		 0 0.906775 -0.40013501 0 0.91645598 -0.16762 -0.91122502 0.376261 0.31309599 -0.66971999
		 0.67338401 -0.40013501 0 0.91645598 -0.714827 0 0.69930202 -0.25446099 -0.93449497
		 0.248934 -0.16762 -0.91122502 0.376261 -0.16762 -0.91122502 0.376261 -0.25446099
		 -0.93449497 0.248934 -0.016672 -0.99972802 0.016310001 -0.0077809999 -0.999587 0.027646
		 0.31309599 -0.66971999 0.67338401 -0.16762 -0.91122502 0.376261 -0.0077809999 -0.999587
		 0.027646 0.028462 -0.99771899 0.061213002 0.714827 0 -0.69930202 0.92501998 0 -0.37991899
		 0.37985 -0.91122502 -0.15932 0.25446099 -0.93449497 -0.248935 0.92501998 0 -0.37991899
		 0.89730102 0 0.44141901 0.66634798 -0.66971999 0.327804 0.37985 -0.91122502 -0.15932
		 0.37985 -0.91122502 -0.15932 0.66634798 -0.66971999 0.327804 0.060573999 -0.99771899
		 0.029798999 0.02781 -0.99958801 -0.0071720001 0.25446099 -0.93449497 -0.248935 0.37985
		 -0.91122502 -0.15932 0.02781 -0.99958801 -0.0071720001 0.016672 -0.99972802 -0.016310001
		 0.89730102 0 0.44141901 0.73439997 0 0.67871702;
	setAttr ".n[498:511]" -type "float3"  0.56217402 -0.642546 0.52066702 0.66634798
		 -0.66971999 0.327804 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.51303899 -0.679533
		 0.52442902 0.56217402 -0.642546 0.52066702 0.56217402 -0.642546 0.52066702 0.51303899
		 -0.679533 0.52442902 0.046137001 -0.99782097 0.047161002 0.052843001 -0.99750501
		 0.046805002 0.66634798 -0.66971999 0.327804 0.56217402 -0.642546 0.52066702 0.052843001
		 -0.99750501 0.046805002 0.060573999 -0.99771899 0.029798999;
	setAttr -s 128 -ch 512 ".fc[0:127]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 65 66 3
		f 4 4 5 6 -2
		mu 0 4 1 67 68 2
		f 4 7 8 9 -6
		mu 0 4 4 69 70 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 16
		mu 0 4 71 72 73 74
		f 4 17 -17 18 19
		mu 0 4 16 10 13 17
		f 4 20 21 22 23
		mu 0 4 75 18 19 76
		f 4 24 -24 25 -15
		mu 0 4 11 14 15 12
		f 4 -19 26 27 28
		mu 0 4 20 77 78 79
		f 4 -16 29 30 -27
		mu 0 4 21 80 81 82
		f 4 -31 31 32 33
		mu 0 4 83 84 85 86
		f 4 -28 -34 34 35
		mu 0 4 23 22 87 88
		f 4 -26 36 37 -30
		mu 0 4 24 89 90 91
		f 4 -23 38 39 -37
		mu 0 4 28 33 92 93
		f 4 -40 40 41 42
		mu 0 4 94 34 95 96
		f 4 -38 -43 43 -32
		mu 0 4 25 29 97 98
		f 4 -35 44 45 46
		mu 0 4 27 99 100 101
		f 4 -33 47 48 -45
		mu 0 4 26 102 103 104
		f 4 -49 49 -5 50
		mu 0 4 105 106 107 108
		f 4 -46 -51 -1 51
		mu 0 4 32 31 37 38
		f 4 -44 52 53 -48
		mu 0 4 30 109 110 111
		f 4 -42 54 55 -53
		mu 0 4 35 39 112 113
		f 4 -56 56 -11 57
		mu 0 4 114 42 44 115
		f 4 -54 -58 -8 -50
		mu 0 4 36 40 43 41
		f 4 -41 58 59 60
		mu 0 4 116 117 118 119
		f 4 -39 -22 61 -59
		mu 0 4 46 49 50 47
		f 4 -57 62 63 -12
		mu 0 4 53 120 121 54
		f 4 -55 -61 64 -63
		mu 0 4 51 45 48 52
		f 4 -29 65 66 -20
		mu 0 4 55 122 123 58
		f 4 -36 67 68 -66
		mu 0 4 56 124 125 57
		f 4 -47 69 70 -68
		mu 0 4 59 126 127 60
		f 4 -52 -4 71 -70
		mu 0 4 61 63 64 62
		f 4 72 73 74 75
		mu 0 4 269 270 271 272
		f 4 76 -76 77 78
		mu 0 4 132 128 273 274
		f 4 79 80 81 82
		mu 0 4 275 135 276 277
		f 4 83 -83 84 -74
		mu 0 4 129 134 278 279
		f 4 -78 85 86 87
		mu 0 4 133 280 281 282
		f 4 -75 88 89 -86
		mu 0 4 131 283 284 285
		f 4 -90 90 91 92
		mu 0 4 286 287 288 289
		f 4 -87 -93 93 94
		mu 0 4 139 138 290 291
		f 4 -85 95 96 -89
		mu 0 4 130 292 293 294
		f 4 -82 97 98 -96
		mu 0 4 137 136 295 296
		f 4 -99 99 100 101
		mu 0 4 297 145 298 299
		f 4 -97 -102 102 -91
		mu 0 4 140 144 300 301
		f 4 103 104 105 106
		mu 0 4 302 303 304 305
		f 4 107 108 109 -105
		mu 0 4 306 307 308 309
		f 4 -110 110 111 112
		mu 0 4 310 311 312 313
		f 4 -106 -113 113 114
		mu 0 4 314 150 315 316
		f 4 115 116 117 -109
		mu 0 4 317 318 319 320
		f 4 118 119 120 -117
		mu 0 4 321 322 323 324
		f 4 -121 121 122 123
		mu 0 4 325 326 327 328
		f 4 -118 -124 124 -111
		mu 0 4 153 158 329 330
		f 4 -114 125 126 127
		mu 0 4 331 332 333 334
		f 4 -112 128 129 -126
		mu 0 4 155 335 336 337
		f 4 -130 130 131 132
		mu 0 4 338 339 340 341
		f 4 -127 -133 133 134
		mu 0 4 342 163 343 344
		f 4 -125 135 136 -129
		mu 0 4 154 345 346 347
		f 4 -123 137 138 -136
		mu 0 4 162 348 349 350
		f 4 -139 139 140 141
		mu 0 4 351 352 353 354
		f 4 -137 -142 142 -131
		mu 0 4 165 169 355 356
		f 4 143 144 145 146
		mu 0 4 357 358 359 360
		f 4 147 148 149 -145
		mu 0 4 361 362 363 364
		f 4 -150 150 151 152
		mu 0 4 365 366 367 368
		f 4 -146 -153 153 154
		mu 0 4 176 175 369 370
		f 4 155 156 157 -149
		mu 0 4 371 372 373 374
		f 4 158 159 160 -157
		mu 0 4 375 376 377 378
		f 4 -161 161 162 163
		mu 0 4 379 185 380 381
		f 4 -158 -164 164 -151
		mu 0 4 178 183 382 383
		f 4 -154 165 166 167
		mu 0 4 181 384 385 189
		f 4 -152 168 169 -166
		mu 0 4 180 386 387 188
		f 4 -165 170 171 -169
		mu 0 4 179 388 389 190
		f 4 -163 172 173 -171
		mu 0 4 187 186 192 191
		f 4 174 -173 175 176
		mu 0 4 390 194 391 392
		f 4 177 -177 178 179
		mu 0 4 393 193 394 395
		f 4 180 -180 181 182
		mu 0 4 396 197 397 398
		f 4 183 -183 184 -81
		mu 0 4 201 199 399 400
		f 4 -179 185 186 187
		mu 0 4 401 402 403 404
		f 4 -176 -162 188 -186
		mu 0 4 196 195 405 406
		f 4 -189 -160 189 190
		mu 0 4 407 205 408 409
		f 4 -187 -191 191 192
		mu 0 4 410 203 411 412
		f 4 -185 193 194 -98
		mu 0 4 202 413 414 415
		f 4 -182 -188 195 -194
		mu 0 4 200 198 416 417
		f 4 -196 -193 196 197
		mu 0 4 418 204 419 420
		f 4 -195 -198 198 -100
		mu 0 4 210 209 421 422
		f 4 199 200 201 202
		mu 0 4 423 424 425 426
		f 4 203 -203 204 -168
		mu 0 4 217 213 427 428
		f 4 205 -79 206 207
		mu 0 4 429 220 430 431
		f 4 208 -208 209 -201
		mu 0 4 214 219 432 433
		f 4 -205 210 211 -155
		mu 0 4 218 434 435 436
		f 4 -202 212 213 -211
		mu 0 4 216 437 438 439
		f 4 -214 214 215 216
		mu 0 4 440 441 442 443
		f 4 -212 -217 217 -147
		mu 0 4 224 223 444 445
		f 4 -210 218 219 -213
		mu 0 4 215 446 447 448
		f 4 -207 -88 220 -219
		mu 0 4 222 221 449 450
		f 4 -221 -95 221 222
		mu 0 4 451 230 452 453
		f 4 -220 -223 223 -215
		mu 0 4 225 229 454 455
		f 4 -94 224 225 226
		mu 0 4 143 456 457 234
		f 4 -92 227 228 -225
		mu 0 4 142 458 459 233
		f 4 -229 229 -108 230
		mu 0 4 460 461 462 463
		f 4 -226 -231 -104 231
		mu 0 4 464 236 149 465
		f 4 -224 232 233 234
		mu 0 4 466 467 468 469
		f 4 -222 -227 235 -233
		mu 0 4 232 231 241 239
		f 4 -236 -232 -107 236
		mu 0 4 470 238 148 471
		f 4 -234 -237 -115 237
		mu 0 4 472 242 151 473
		f 4 -103 238 239 -228
		mu 0 4 141 474 475 235
		f 4 -101 240 241 -239
		mu 0 4 147 146 245 244
		f 4 -242 242 -119 243
		mu 0 4 476 477 478 479
		f 4 -240 -244 -116 -230
		mu 0 4 237 246 157 152
		f 4 -199 244 245 -241
		mu 0 4 212 480 481 249
		f 4 -197 246 247 -245
		mu 0 4 211 482 483 248
		f 4 -248 248 -122 249
		mu 0 4 484 485 486 487
		f 4 -246 -250 -120 -243
		mu 0 4 247 251 160 159
		f 4 -148 250 251 252
		mu 0 4 488 489 490 491
		f 4 -144 253 254 -251
		mu 0 4 174 173 255 253
		f 4 -255 255 -134 256
		mu 0 4 492 493 494 495
		f 4 -252 -257 -132 257
		mu 0 4 496 256 167 497
		f 4 -218 258 259 -254
		mu 0 4 228 498 499 260
		f 4 -216 -235 260 -259
		mu 0 4 227 226 240 259
		f 4 -261 -238 -128 261
		mu 0 4 500 243 156 501
		f 4 -260 -262 -135 -256
		mu 0 4 257 261 164 168
		f 4 -192 262 263 -247
		mu 0 4 208 502 503 250
		f 4 -190 264 265 -263
		mu 0 4 207 206 263 262
		f 4 -266 266 -140 267
		mu 0 4 504 505 506 507
		f 4 -264 -268 -138 -249
		mu 0 4 252 264 170 161
		f 4 -159 268 269 -265
		mu 0 4 184 508 509 267
		f 4 -156 -253 270 -269
		mu 0 4 182 177 254 266
		f 4 -271 -258 -143 271
		mu 0 4 510 258 166 511
		f 4 -270 -272 -141 -267
		mu 0 4 265 268 172 171;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface12";
	setAttr ".t" -type "double3" 0.89129848680316237 0.68853362395118278 -3.9103556933786683 ;
	setAttr ".r" -type "double3" 0 108.47963193281559 0 ;
	setAttr ".s" -type "double3" 0.45411853506603828 0.45411853506603828 0.45411853506603828 ;
	setAttr ".rp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
	setAttr ".sp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
createNode mesh -n "polySurfaceShape12" -p "polySurface12";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:31]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[32:127]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "vtx[0:145]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 512 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0 0 0 1 0 1 0 0 0 1 0 0
		 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 1
		 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1
		 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1
		 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1
		 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1 1
		 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1
		 0 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 1 0 1 0 1 0
		 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0
		 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 1 0 0
		 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 0 1 0 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 0
		 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0
		 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1
		 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1
		 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1
		 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0
		 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1;
	setAttr ".uvst[0].uvsp[500:511]" 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0
		 0 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 146 ".vt[0:145]"  -2.48131704 0.178654 2.75388694 -2.30557203 0.18639299 2.56610608
		 -2.11397791 0.178654 2.394526 -2.35452199 0.178654 2.88349605 -2.16292906 0.18639299 2.71191597
		 -1.98718405 0.178654 2.52413511 -2.44087791 0.18639299 2.841151 -2.23425007 0.196343 2.63901091
		 -2.027621984 0.18639299 2.4368701 -2.18749905 0.18639299 2.45059705 -2.28100204 0.18639299 2.827425
		 -2.044855118 0.18639299 2.59640694 -2.40012288 0.18639299 2.88281107 -2.19349504 0.196343 2.68067098
		 -2.35232306 0.196343 2.75451994 -1.98686695 0.18639299 2.47852993 -2.11617708 0.196343 2.52350211
		 -2.48163295 0.18639299 2.79949093 -2.2750051 0.196343 2.59735107 -2.068377018 0.18639299 2.39521003
		 -2.42364502 0.18639299 2.68161511 -2.31156802 0.196343 2.79618001 -2.075422049 0.196343 2.56516194
		 -2.39307809 0.196343 2.71286011 -2.15693212 0.196343 2.48184204 -2.43383408 0.156543 2.67120004
		 -2.51220012 0.156543 2.76824594 -2.31576109 0.156543 2.555691 -2.1976881 0.156543 2.44018197
		 -2.098943949 0.156543 2.36396503 -2.27081299 0.156543 2.83784008 -2.15274 0.156543 2.72233105
		 -2.3695569 0.156543 2.91405606 -2.034667015 0.156543 2.60682201 -1.95630002 0.156543 2.50977492
		 -1.95734894 0.156543 2.44965291 -1.99810398 0.156543 2.40799308 -2.038858891 0.156543 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.47039604 0.156543 2.87002802 -2.51115203 0.156543 2.82836795
		 -2.51220012 0.116743 2.76824594 -2.31576109 0.116743 2.555691 -2.098943949 0.116743 2.36396503
		 -2.51220012 0.046128999 2.76824594 -2.31576109 0.046128999 2.555691 -2.098943949 0.046128999 2.36396503
		 -2.47039604 0.046128999 2.87002802 -1.99810398 0.046128999 2.40799308 -2.36955595 0.046128999 2.91405606
		 -2.15274 0.046128999 2.72233105 -1.95630002 0.046128999 2.50977492 -2.36955595 0.116743 2.91405606
		 -2.15274 0.116743 2.72233105 -1.95630002 0.116743 2.50977492 -1.99810398 0.116743 2.40799308
		 -2.47039604 0.116743 2.87002802 -2.48131704 0.031148 2.75388694 -2.30557203 0.030399 2.56610608
		 -2.23425007 0.029436 2.63901091 -2.44087791 0.030399 2.841151 -2.11397791 0.031148 2.394526
		 -2.027621984 0.030399 2.4368701 -2.16292906 0.030399 2.71191597 -2.35452199 0.031148 2.88349605
		 -1.98718405 0.031148 2.52413511 -2.31576109 0.156543 2.555691 -2.43383408 0.116743 2.67120004
		 -2.098943949 0.156543 2.36396503 -2.1976881 0.116743 2.44018197 -2.51220012 0.076943003 2.76824594
		 -2.31576109 0.076943003 2.555691 -2.43383408 0.046128999 2.67120004 -2.098943949 0.076943003 2.36396503
		 -2.1976881 0.046128999 2.44018197 -2.42364502 0.030399 2.68161511 -2.48163295 0.030399 2.79949093
		 -2.2750051 0.029436 2.59735107 -2.35232306 0.029436 2.75451994 -2.18749905 0.030399 2.45059705
		 -2.068377018 0.030399 2.39521003 -2.11617708 0.029436 2.52350211 -2.40012288 0.030399 2.88281107
		 -2.19349504 0.029436 2.68067098 -2.28100204 0.030399 2.827425 -1.98686695 0.030399 2.47852993
		 -2.044855118 0.030399 2.59640694 -2.27081299 0.046128999 2.83784008 -2.3695569 0.076943003 2.91405606
		 -2.15274 0.076943003 2.72233105 -2.27081299 0.116743 2.83784008 -2.034667015 0.046128999 2.60682201
		 -1.95630002 0.076943003 2.50977492 -2.034667015 0.116743 2.60682201 -2.3695569 0.156543 2.91405606
		 -2.15274 0.156543 2.72233105 -1.95630002 0.156543 2.50977492 -1.99810398 0.156543 2.40799308
		 -1.95734894 0.116743 2.44965291 -2.038858891 0.116743 2.36633301 -1.99810398 0.076943003 2.40799308
		 -1.95734894 0.046128999 2.44965291 -2.038858891 0.046128999 2.36633301 -2.47039604 0.156543 2.87002802
		 -2.42964101 0.116743 2.91168809 -2.51115203 0.116743 2.82836795 -2.47039604 0.076943003 2.87002802
		 -2.42964101 0.046128999 2.91168809 -2.51115203 0.046128999 2.82836795 -2.51220012 0.033289 2.76824594
		 -2.31576109 0.033289 2.555691 -2.47039604 0.033289 2.87002802 -2.098943949 0.033289 2.36396503
		 -1.99810398 0.033289 2.40799308 -2.15274 0.033289 2.72233105 -2.3695569 0.033289 2.91405606
		 -1.95630002 0.033289 2.50977492 -2.51220012 0.156543 2.76824594 -2.43383408 0.156543 2.67120004
		 -2.1976881 0.156543 2.44018197 -2.43383408 0.076943003 2.67120004 -2.1976881 0.076943003 2.44018197
		 -2.39307809 0.029436 2.71286011 -2.15693212 0.029436 2.48184204 -2.31156802 0.029436 2.79618001
		 -2.075422049 0.029436 2.56516194 -2.27081299 0.076943003 2.83784008 -2.034667015 0.076943003 2.60682201
		 -2.27081299 0.156543 2.83784008 -2.034667015 0.156543 2.60682201 -1.95734894 0.156543 2.44965291
		 -2.038858891 0.156543 2.36633301 -1.95734894 0.076943003 2.44965291 -2.038858891 0.076943003 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.51115203 0.156543 2.82836795 -2.42964101 0.076943003 2.91168809
		 -2.51115203 0.076943003 2.82836795 -2.43383408 0.033289 2.67120004 -2.51115203 0.033289 2.82836795
		 -2.1976881 0.033289 2.44018197 -2.038858891 0.033289 2.36633301 -2.27081299 0.033289 2.83784008
		 -2.42964101 0.033289 2.91168809 -1.95734894 0.033289 2.44965291 -2.034667015 0.033289 2.60682201;
	setAttr -s 272 ".ed";
	setAttr ".ed[0:165]"  0 20 0 20 25 0 25 26 0 26 0 0 20 1 0 1 27 0 27 25 0
		 1 9 0 9 28 0 28 27 0 9 2 0 2 29 0 29 28 0 30 31 0 31 4 0 4 10 0 10 30 0 32 30 0 10 3 0
		 3 32 0 33 34 0 34 5 0 5 11 0 11 33 0 31 33 0 11 4 0 10 21 0 21 12 0 12 3 0 4 13 0
		 13 21 0 13 7 0 7 14 0 14 21 0 14 6 0 6 12 0 11 22 0 22 13 0 5 15 0 15 22 0 15 8 0
		 8 16 0 16 22 0 16 7 0 14 23 0 23 17 0 17 6 0 7 18 0 18 23 0 18 1 0 20 23 0 0 17 0
		 16 24 0 24 18 0 8 19 0 19 24 0 19 2 0 9 24 0 15 35 0 35 36 0 36 8 0 34 35 0 19 37 0
		 37 29 0 36 37 0 12 38 0 38 32 0 6 39 0 39 38 0 17 40 0 40 39 0 26 40 0 118 66 0 66 42 0
		 42 67 0 67 118 0 117 118 0 67 41 0 41 117 0 119 68 0 68 43 0 43 69 0 69 119 0 66 119 0
		 69 42 0 67 120 0 120 70 0 70 41 0 42 71 0 71 120 0 71 45 0 45 72 0 72 120 0 72 44 0
		 44 70 0 69 121 0 121 71 0 43 73 0 73 121 0 73 46 0 46 74 0 74 121 0 74 45 0 57 75 0
		 75 122 0 122 76 0 76 57 0 75 58 0 58 77 0 77 122 0 77 59 0 59 78 0 78 122 0 78 60 0
		 60 76 0 58 79 0 79 123 0 123 77 0 79 61 0 61 80 0 80 123 0 80 62 0 62 81 0 81 123 0
		 81 59 0 78 124 0 124 82 0 82 60 0 59 83 0 83 124 0 83 63 0 63 84 0 84 124 0 84 64 0
		 64 82 0 81 125 0 125 83 0 62 85 0 85 125 0 85 65 0 65 86 0 86 125 0 86 63 0 49 87 0
		 87 126 0 126 88 0 88 49 0 87 50 0 50 89 0 89 126 0 89 53 0 53 90 0 90 126 0 90 52 0
		 52 88 0 50 91 0 91 127 0 127 89 0 91 51 0 51 92 0 92 127 0 92 54 0 54 93 0 93 127 0
		 93 53 0 90 128 0;
	setAttr ".ed[166:271]" 128 94 0 94 52 0 53 95 0 95 128 0 93 129 0 129 95 0
		 54 96 0 96 129 0 130 96 0 54 98 0 98 130 0 97 130 0 98 55 0 55 97 0 131 97 0 55 99 0
		 99 131 0 68 131 0 99 43 0 98 132 0 132 100 0 100 55 0 92 132 0 51 101 0 101 132 0
		 101 48 0 48 100 0 99 133 0 133 73 0 100 133 0 48 102 0 102 133 0 102 46 0 134 103 0
		 103 56 0 56 104 0 104 134 0 94 134 0 104 52 0 135 117 0 41 105 0 105 135 0 103 135 0
		 105 56 0 104 136 0 136 88 0 56 106 0 106 136 0 106 47 0 47 107 0 107 136 0 107 49 0
		 105 137 0 137 106 0 70 137 0 44 108 0 108 137 0 108 47 0 72 138 0 138 109 0 109 44 0
		 45 110 0 110 138 0 110 58 0 75 138 0 57 109 0 108 139 0 139 111 0 111 47 0 109 139 0
		 76 139 0 60 111 0 74 140 0 140 110 0 46 112 0 112 140 0 112 61 0 79 140 0 102 141 0
		 141 112 0 48 113 0 113 141 0 113 62 0 80 141 0 87 142 0 142 114 0 114 50 0 49 115 0
		 115 142 0 115 64 0 84 142 0 63 114 0 107 143 0 143 115 0 111 143 0 82 143 0 101 144 0
		 144 113 0 51 116 0 116 144 0 116 65 0 85 144 0 91 145 0 145 116 0 114 145 0 86 145 0;
	setAttr -s 512 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.52629298 0.809928 -0.25890601 -0.42148501
		 0.82520002 -0.376026 -0.65006101 0.461981 -0.60332 -0.70441198 0.619452 -0.34652999
		 -0.42148501 0.82520002 -0.376026 -0.39437401 0.82580698 -0.40312901 -0.62843603 0.438642
		 -0.64238697 -0.65006101 0.461981 -0.60332 -0.39437401 0.82580698 -0.40312901 -0.36668199
		 0.82520002 -0.42963901 -0.58890301 0.461981 -0.663149 -0.62843603 0.438642 -0.64238697
		 -0.36668199 0.82520002 -0.42963901 -0.247289 0.809928 -0.53184998 -0.33098099 0.61945099
		 -0.711851 -0.58890301 0.461981 -0.663149 0.58890301 0.461981 0.663149 0.62843603
		 0.438642 0.64238697 0.39437401 0.82580698 0.40312901 0.36668199 0.82520002 0.42963901
		 0.33098099 0.619452 0.71184999 0.58890301 0.461981 0.663149 0.36668199 0.82520002
		 0.42963901 0.247289 0.809928 0.53184998 0.65006101 0.461981 0.60332 0.70441198 0.619452
		 0.34652901 0.52629298 0.809928 0.25890601 0.42148501 0.82520002 0.376026 0.62843603
		 0.438642 0.64238697 0.65006101 0.461981 0.60332 0.42148501 0.82520002 0.376026 0.39437401
		 0.82580698 0.40312901 0.247289 0.809928 0.53184998 0.36668199 0.82520002 0.42963901
		 0.042675 0.99486399 0.091783002 -0.077308998 0.96430999 0.25323999 0.36668199 0.82520002
		 0.42963901 0.39437401 0.82580698 0.40312901 0.067901 0.99527502 0.069408 0.042675
		 0.99486399 0.091783002 0.042675 0.99486399 0.091783002 0.067901 0.99527502 0.069408
		 0 1 0 -0.024591001 0.99940801 0.024057001 -0.077308998 0.96430999 0.25323999 0.042675
		 0.99486399 0.091783002 -0.024591001 0.99940801 0.024057001 -0.167448 0.97217703 0.163811
		 0.39437401 0.82580698 0.40312901 0.42148501 0.82520002 0.376026 0.090824001 0.99486399
		 0.044679999 0.067901 0.99527502 0.069408 0.42148501 0.82520002 0.376026 0.52629298
		 0.809928 0.25890601 0.25487599 0.96430999 -0.071731001 0.090824001 0.99486399 0.044679999
		 0.090824001 0.99486399 0.044679999 0.25487599 0.96430999 -0.071731001 0.167448 0.97217703
		 -0.163811 0.024591001 0.99940801 -0.024057001 0.067901 0.99527502 0.069408 0.090824001
		 0.99486399 0.044679999 0.024591001 0.99940801 -0.024057001 0 1 0 -0.167448 0.97217703
		 0.163811 -0.024591001 0.99940801 0.024057001 -0.090824001 0.99486399 -0.044679999
		 -0.25487599 0.96430999 0.071731001 -0.024591001 0.99940801 0.024057001 0 1 0 -0.067901
		 0.99527502 -0.069408 -0.090824001 0.99486399 -0.044679999 -0.090824001 0.99486399
		 -0.044679999 -0.067901 0.99527502 -0.069408 -0.39437401 0.82580698 -0.40312901 -0.42148501
		 0.82520002 -0.376026 -0.25487599 0.96430999 0.071731001 -0.090824001 0.99486399 -0.044679999
		 -0.42148501 0.82520002 -0.376026 -0.52629298 0.809928 -0.25890601 0 1 0 0.024591001
		 0.99940801 -0.024057001 -0.042675 0.99486399 -0.091783002 -0.067901 0.99527502 -0.069408
		 0.024591001 0.99940801 -0.024057001 0.167448 0.97217703 -0.163811 0.077308998 0.96430898
		 -0.25323999 -0.042675 0.99486399 -0.091783002 -0.042675 0.99486399 -0.091783002 0.077308998
		 0.96430898 -0.25323999 -0.247289 0.809928 -0.53184998 -0.36668199 0.82520002 -0.42963901
		 -0.067901 0.99527502 -0.069408 -0.042675 0.99486399 -0.091783002 -0.36668199 0.82520002
		 -0.42963901 -0.39437401 0.82580698 -0.40312901 0.167448 0.97217703 -0.163811 0.25487599
		 0.96430999 -0.071731001 0.53995699 0.809349 -0.231087 0.41876701 0.81043297 -0.40967301
		 0.25487599 0.96430999 -0.071731001 0.52629298 0.809928 0.25890601 0.70441198 0.619452
		 0.34652901 0.53995699 0.809349 -0.231087 -0.247289 0.809928 -0.53184998 0.077308998
		 0.96430898 -0.25323999 0.24288499 0.809349 -0.53475398 -0.33098099 0.61945099 -0.711851
		 0.077308998 0.96430898 -0.25323999 0.167448 0.97217703 -0.163811 0.41876701 0.81043297
		 -0.40967301 0.24288499 0.809349 -0.53475398 0.247289 0.809928 0.53184998 -0.077308998
		 0.96430999 0.25323999 -0.24288601 0.809349 0.53475302 0.33098099 0.619452 0.71184999
		 -0.077308998 0.96430999 0.25323999 -0.167448 0.97217703 0.163811 -0.41876701 0.81043398
		 0.40967199 -0.24288601 0.809349 0.53475302 -0.167448 0.97217703 0.163811 -0.25487599
		 0.96430999 0.071731001 -0.53995597 0.809349 0.231087 -0.41876701 0.81043398 0.40967199
		 -0.25487599 0.96430999 0.071731001 -0.52629298 0.809928 -0.25890601 -0.70441198 0.619452
		 -0.34652999 -0.53995597 0.809349 0.231087 -0.73439997 0 -0.67871702 -0.69930202 0
		 -0.714827 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 -1e-006 -0.44141999
		 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775 -0.66242999 0 -0.74912399
		 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202
		 0 -0.714827 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702
		 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.69930202
		 0 -0.714827 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827
		 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.69930202 0 -0.714827
		 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775;
	setAttr ".n[166:331]" -type "float3"  -0.42161399 0 -0.906775 -0.66242999 0
		 -0.74912399 -0.66242999 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775
		 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999
		 0 -0.74912399 -0.69930202 0 -0.714827 -0.060573999 -0.99771899 -0.029798999 -0.052843001
		 -0.99750501 -0.046805002 -0.008986 -0.99994999 -0.0044200001 -0.02781 -0.999587 0.0071720001
		 -0.052843001 -0.99750501 -0.046805002 -0.046137001 -0.99782097 -0.047161002 -0.0066049998
		 -0.999955 -0.0067520002 -0.008986 -0.99994999 -0.0044200001 -0.008986 -0.99994999
		 -0.0044200001 -0.0066049998 -0.999955 -0.0067520002 0 -1 0 -0.002382 -0.99999398
		 0.0023310001 -0.02781 -0.999587 0.0071720001 -0.008986 -0.99994999 -0.0044200001
		 -0.002382 -0.99999398 0.0023310001 -0.016672 -0.99972802 0.016310001 -0.046137001
		 -0.99782097 -0.047161002 -0.045634001 -0.99750501 -0.053858001 -0.004222 -0.99994999
		 -0.0090810005 -0.0066049998 -0.999955 -0.0067520002 -0.045634001 -0.99750501 -0.053858001
		 -0.028462 -0.99771899 -0.061213002 0.0077809999 -0.999587 -0.027646 -0.004222 -0.99994999
		 -0.0090810005 -0.004222 -0.99994999 -0.0090810005 0.0077809999 -0.999587 -0.027646
		 0.016672 -0.99972802 -0.016310001 0.002382 -0.99999398 -0.0023310001 -0.0066049998
		 -0.999955 -0.0067520002 -0.004222 -0.99994999 -0.0090810005 0.002382 -0.99999398
		 -0.0023310001 0 -1 0 -0.016672 -0.99972802 0.016310001 -0.002382 -0.99999398 0.0023310001
		 0.004222 -0.99994999 0.0090810005 -0.0077809999 -0.999587 0.027646 -0.002382 -0.99999398
		 0.0023310001 0 -1 0 0.0066049998 -0.999955 0.0067520002 0.004222 -0.99994999 0.0090810005
		 0.004222 -0.99994999 0.0090810005 0.0066049998 -0.999955 0.0067520002 0.046137001
		 -0.99782097 0.047161002 0.045634001 -0.99750501 0.053856999 -0.0077809999 -0.999587
		 0.027646 0.004222 -0.99994999 0.0090810005 0.045634001 -0.99750501 0.053856999 0.028462
		 -0.99771899 0.061213002 0 -1 0 0.002382 -0.99999398 -0.0023310001 0.008986 -0.99994999
		 0.0044209999 0.0066049998 -0.999955 0.0067520002 0.002382 -0.99999398 -0.0023310001
		 0.016672 -0.99972802 -0.016310001 0.02781 -0.99958801 -0.0071720001 0.008986 -0.99994999
		 0.0044209999 0.008986 -0.99994999 0.0044209999 0.02781 -0.99958801 -0.0071720001
		 0.060573999 -0.99771899 0.029798999 0.052843001 -0.99750501 0.046805002 0.0066049998
		 -0.999955 0.0067520002 0.008986 -0.99994999 0.0044209999 0.052843001 -0.99750501
		 0.046805002 0.046137001 -0.99782097 0.047161002 0.42161399 0 0.906775 0.66242999
		 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.90677601 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.66242999 0
		 0.74912399 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.42161399
		 0 0.90677601 0.66242999 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775
		 0.69930202 0 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202
		 0 0.714827 0.73439997 0 0.67871702 0.89730102 0 0.44141901 0.89730102 0 0.44141999
		 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.89730102 0 0.44141999 0.89730102
		 0 0.44141999 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997 0 0.67871702
		 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.42161399 0 0.906775 0.66242999 0
		 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.69930202 0
		 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997
		 0 0.67871702 0.89730102 0 0.44141999 0.89730102 0 0.44141901 0.73439997 0 0.67871702
		 0.92501998 0 -0.37991899 0.89730102 0 0.44141901 0.89730102 0 0.44141999 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899
		 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457
		 -0.42161399 0 -0.906775 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.89730102 0 0.44141999
		 0.89730102 0 0.44141999 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.89730102
		 0 0.44141999 0.89730102 0 0.44141901 0.92501998 0 -0.37991899 0.714827 0 -0.69930202
		 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.714827 0 -0.69930202 -0.42161399
		 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457;
	setAttr ".n[332:497]" -type "float3"  -0.42161399 0 -0.906775 0.400134 0 -0.916457
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 -0.40013501 -1e-006 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.40013501 -1e-006 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775 -0.92501998
		 -1e-006 0.37991801 -0.89730102 -1e-006 -0.44141999 -0.89730102 0 -0.44141999 -0.92501998
		 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 -1e-006 0.37991801 -0.92501998 0
		 0.37991801 -0.714827 0 0.69930202 0.42161399 0 0.906775 -0.40013501 0 0.91645598
		 -0.40013501 0 0.91645598 0.42161399 0 0.90677601 -0.40013501 0 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598
		 -0.714827 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399
		 0 0.90677601 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.714827 0 0.69930202 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.714827
		 0 0.69930202 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102 0 -0.44141999
		 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102
		 0 -0.44141999 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 0 0.37991801
		 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.56217402 -0.642546 -0.52066702 -0.66634798 -0.66971999 -0.327804
		 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.51303899 -0.679533 -0.52442902
		 -0.56217402 -0.642546 -0.52066702 -0.56217402 -0.642546 -0.52066702 -0.51303899 -0.679533
		 -0.52442902 -0.046137001 -0.99782097 -0.047161002 -0.052843001 -0.99750501 -0.046805002
		 -0.66634798 -0.66971999 -0.327804 -0.56217402 -0.642546 -0.52066702 -0.052843001
		 -0.99750501 -0.046805002 -0.060573999 -0.99771899 -0.029798999 -0.714827 0 0.69930202
		 -0.92501998 0 0.37991801 -0.37985 -0.91122502 0.159319 -0.25446099 -0.93449497 0.248934
		 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.66634798 -0.66971999 -0.327804
		 -0.37985 -0.91122502 0.159319 -0.37985 -0.91122502 0.159319 -0.66634798 -0.66971999
		 -0.327804 -0.060573999 -0.99771899 -0.029798999 -0.02781 -0.999587 0.0071720001 -0.25446099
		 -0.93449497 0.248934 -0.37985 -0.91122502 0.159319 -0.02781 -0.999587 0.0071720001
		 -0.016672 -0.99972802 0.016310001 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399
		 -0.50819898 -0.64254802 -0.57346898 -0.51303899 -0.679533 -0.52442902 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.31309599 -0.66972101 -0.673383 -0.50819898
		 -0.64254802 -0.57346898 -0.50819898 -0.64254802 -0.57346898 -0.31309599 -0.66972101
		 -0.673383 -0.028462 -0.99771899 -0.061213002 -0.045634001 -0.99750501 -0.053858001
		 -0.51303899 -0.679533 -0.52442902 -0.50819898 -0.64254802 -0.57346898 -0.045634001
		 -0.99750501 -0.053858001 -0.046137001 -0.99782097 -0.047161002 -0.42161399 0 -0.906775
		 0.400134 0 -0.916457 0.16762 -0.91122502 -0.376261 -0.31309599 -0.66972101 -0.673383
		 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.25446099 -0.93449497 -0.248935 0.16762
		 -0.91122502 -0.376261 0.16762 -0.91122502 -0.376261 0.25446099 -0.93449497 -0.248935
		 0.016672 -0.99972802 -0.016310001 0.0077809999 -0.999587 -0.027646 -0.31309599 -0.66972101
		 -0.673383 0.16762 -0.91122502 -0.376261 0.0077809999 -0.999587 -0.027646 -0.028462
		 -0.99771899 -0.061213002 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.50819999
		 -0.642546 0.57347 0.51303899 -0.679533 0.52442902 0.66242999 0 0.74912399 0.42161399
		 0 0.906775 0.31309599 -0.66971999 0.67338401 0.50819999 -0.642546 0.57347 0.50819999
		 -0.642546 0.57347 0.31309599 -0.66971999 0.67338401 0.028462 -0.99771899 0.061213002
		 0.045634001 -0.99750501 0.053856999 0.51303899 -0.679533 0.52442902 0.50819999 -0.642546
		 0.57347 0.045634001 -0.99750501 0.053856999 0.046137001 -0.99782097 0.047161002 0.42161399
		 0 0.906775 -0.40013501 0 0.91645598 -0.16762 -0.91122502 0.376261 0.31309599 -0.66971999
		 0.67338401 -0.40013501 0 0.91645598 -0.714827 0 0.69930202 -0.25446099 -0.93449497
		 0.248934 -0.16762 -0.91122502 0.376261 -0.16762 -0.91122502 0.376261 -0.25446099
		 -0.93449497 0.248934 -0.016672 -0.99972802 0.016310001 -0.0077809999 -0.999587 0.027646
		 0.31309599 -0.66971999 0.67338401 -0.16762 -0.91122502 0.376261 -0.0077809999 -0.999587
		 0.027646 0.028462 -0.99771899 0.061213002 0.714827 0 -0.69930202 0.92501998 0 -0.37991899
		 0.37985 -0.91122502 -0.15932 0.25446099 -0.93449497 -0.248935 0.92501998 0 -0.37991899
		 0.89730102 0 0.44141901 0.66634798 -0.66971999 0.327804 0.37985 -0.91122502 -0.15932
		 0.37985 -0.91122502 -0.15932 0.66634798 -0.66971999 0.327804 0.060573999 -0.99771899
		 0.029798999 0.02781 -0.99958801 -0.0071720001 0.25446099 -0.93449497 -0.248935 0.37985
		 -0.91122502 -0.15932 0.02781 -0.99958801 -0.0071720001 0.016672 -0.99972802 -0.016310001
		 0.89730102 0 0.44141901 0.73439997 0 0.67871702;
	setAttr ".n[498:511]" -type "float3"  0.56217402 -0.642546 0.52066702 0.66634798
		 -0.66971999 0.327804 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.51303899 -0.679533
		 0.52442902 0.56217402 -0.642546 0.52066702 0.56217402 -0.642546 0.52066702 0.51303899
		 -0.679533 0.52442902 0.046137001 -0.99782097 0.047161002 0.052843001 -0.99750501
		 0.046805002 0.66634798 -0.66971999 0.327804 0.56217402 -0.642546 0.52066702 0.052843001
		 -0.99750501 0.046805002 0.060573999 -0.99771899 0.029798999;
	setAttr -s 128 -ch 512 ".fc[0:127]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 65 66 3
		f 4 4 5 6 -2
		mu 0 4 1 67 68 2
		f 4 7 8 9 -6
		mu 0 4 4 69 70 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 16
		mu 0 4 71 72 73 74
		f 4 17 -17 18 19
		mu 0 4 16 10 13 17
		f 4 20 21 22 23
		mu 0 4 75 18 19 76
		f 4 24 -24 25 -15
		mu 0 4 11 14 15 12
		f 4 -19 26 27 28
		mu 0 4 20 77 78 79
		f 4 -16 29 30 -27
		mu 0 4 21 80 81 82
		f 4 -31 31 32 33
		mu 0 4 83 84 85 86
		f 4 -28 -34 34 35
		mu 0 4 23 22 87 88
		f 4 -26 36 37 -30
		mu 0 4 24 89 90 91
		f 4 -23 38 39 -37
		mu 0 4 28 33 92 93
		f 4 -40 40 41 42
		mu 0 4 94 34 95 96
		f 4 -38 -43 43 -32
		mu 0 4 25 29 97 98
		f 4 -35 44 45 46
		mu 0 4 27 99 100 101
		f 4 -33 47 48 -45
		mu 0 4 26 102 103 104
		f 4 -49 49 -5 50
		mu 0 4 105 106 107 108
		f 4 -46 -51 -1 51
		mu 0 4 32 31 37 38
		f 4 -44 52 53 -48
		mu 0 4 30 109 110 111
		f 4 -42 54 55 -53
		mu 0 4 35 39 112 113
		f 4 -56 56 -11 57
		mu 0 4 114 42 44 115
		f 4 -54 -58 -8 -50
		mu 0 4 36 40 43 41
		f 4 -41 58 59 60
		mu 0 4 116 117 118 119
		f 4 -39 -22 61 -59
		mu 0 4 46 49 50 47
		f 4 -57 62 63 -12
		mu 0 4 53 120 121 54
		f 4 -55 -61 64 -63
		mu 0 4 51 45 48 52
		f 4 -29 65 66 -20
		mu 0 4 55 122 123 58
		f 4 -36 67 68 -66
		mu 0 4 56 124 125 57
		f 4 -47 69 70 -68
		mu 0 4 59 126 127 60
		f 4 -52 -4 71 -70
		mu 0 4 61 63 64 62
		f 4 72 73 74 75
		mu 0 4 269 270 271 272
		f 4 76 -76 77 78
		mu 0 4 132 128 273 274
		f 4 79 80 81 82
		mu 0 4 275 135 276 277
		f 4 83 -83 84 -74
		mu 0 4 129 134 278 279
		f 4 -78 85 86 87
		mu 0 4 133 280 281 282
		f 4 -75 88 89 -86
		mu 0 4 131 283 284 285
		f 4 -90 90 91 92
		mu 0 4 286 287 288 289
		f 4 -87 -93 93 94
		mu 0 4 139 138 290 291
		f 4 -85 95 96 -89
		mu 0 4 130 292 293 294
		f 4 -82 97 98 -96
		mu 0 4 137 136 295 296
		f 4 -99 99 100 101
		mu 0 4 297 145 298 299
		f 4 -97 -102 102 -91
		mu 0 4 140 144 300 301
		f 4 103 104 105 106
		mu 0 4 302 303 304 305
		f 4 107 108 109 -105
		mu 0 4 306 307 308 309
		f 4 -110 110 111 112
		mu 0 4 310 311 312 313
		f 4 -106 -113 113 114
		mu 0 4 314 150 315 316
		f 4 115 116 117 -109
		mu 0 4 317 318 319 320
		f 4 118 119 120 -117
		mu 0 4 321 322 323 324
		f 4 -121 121 122 123
		mu 0 4 325 326 327 328
		f 4 -118 -124 124 -111
		mu 0 4 153 158 329 330
		f 4 -114 125 126 127
		mu 0 4 331 332 333 334
		f 4 -112 128 129 -126
		mu 0 4 155 335 336 337
		f 4 -130 130 131 132
		mu 0 4 338 339 340 341
		f 4 -127 -133 133 134
		mu 0 4 342 163 343 344
		f 4 -125 135 136 -129
		mu 0 4 154 345 346 347
		f 4 -123 137 138 -136
		mu 0 4 162 348 349 350
		f 4 -139 139 140 141
		mu 0 4 351 352 353 354
		f 4 -137 -142 142 -131
		mu 0 4 165 169 355 356
		f 4 143 144 145 146
		mu 0 4 357 358 359 360
		f 4 147 148 149 -145
		mu 0 4 361 362 363 364
		f 4 -150 150 151 152
		mu 0 4 365 366 367 368
		f 4 -146 -153 153 154
		mu 0 4 176 175 369 370
		f 4 155 156 157 -149
		mu 0 4 371 372 373 374
		f 4 158 159 160 -157
		mu 0 4 375 376 377 378
		f 4 -161 161 162 163
		mu 0 4 379 185 380 381
		f 4 -158 -164 164 -151
		mu 0 4 178 183 382 383
		f 4 -154 165 166 167
		mu 0 4 181 384 385 189
		f 4 -152 168 169 -166
		mu 0 4 180 386 387 188
		f 4 -165 170 171 -169
		mu 0 4 179 388 389 190
		f 4 -163 172 173 -171
		mu 0 4 187 186 192 191
		f 4 174 -173 175 176
		mu 0 4 390 194 391 392
		f 4 177 -177 178 179
		mu 0 4 393 193 394 395
		f 4 180 -180 181 182
		mu 0 4 396 197 397 398
		f 4 183 -183 184 -81
		mu 0 4 201 199 399 400
		f 4 -179 185 186 187
		mu 0 4 401 402 403 404
		f 4 -176 -162 188 -186
		mu 0 4 196 195 405 406
		f 4 -189 -160 189 190
		mu 0 4 407 205 408 409
		f 4 -187 -191 191 192
		mu 0 4 410 203 411 412
		f 4 -185 193 194 -98
		mu 0 4 202 413 414 415
		f 4 -182 -188 195 -194
		mu 0 4 200 198 416 417
		f 4 -196 -193 196 197
		mu 0 4 418 204 419 420
		f 4 -195 -198 198 -100
		mu 0 4 210 209 421 422
		f 4 199 200 201 202
		mu 0 4 423 424 425 426
		f 4 203 -203 204 -168
		mu 0 4 217 213 427 428
		f 4 205 -79 206 207
		mu 0 4 429 220 430 431
		f 4 208 -208 209 -201
		mu 0 4 214 219 432 433
		f 4 -205 210 211 -155
		mu 0 4 218 434 435 436
		f 4 -202 212 213 -211
		mu 0 4 216 437 438 439
		f 4 -214 214 215 216
		mu 0 4 440 441 442 443
		f 4 -212 -217 217 -147
		mu 0 4 224 223 444 445
		f 4 -210 218 219 -213
		mu 0 4 215 446 447 448
		f 4 -207 -88 220 -219
		mu 0 4 222 221 449 450
		f 4 -221 -95 221 222
		mu 0 4 451 230 452 453
		f 4 -220 -223 223 -215
		mu 0 4 225 229 454 455
		f 4 -94 224 225 226
		mu 0 4 143 456 457 234
		f 4 -92 227 228 -225
		mu 0 4 142 458 459 233
		f 4 -229 229 -108 230
		mu 0 4 460 461 462 463
		f 4 -226 -231 -104 231
		mu 0 4 464 236 149 465
		f 4 -224 232 233 234
		mu 0 4 466 467 468 469
		f 4 -222 -227 235 -233
		mu 0 4 232 231 241 239
		f 4 -236 -232 -107 236
		mu 0 4 470 238 148 471
		f 4 -234 -237 -115 237
		mu 0 4 472 242 151 473
		f 4 -103 238 239 -228
		mu 0 4 141 474 475 235
		f 4 -101 240 241 -239
		mu 0 4 147 146 245 244
		f 4 -242 242 -119 243
		mu 0 4 476 477 478 479
		f 4 -240 -244 -116 -230
		mu 0 4 237 246 157 152
		f 4 -199 244 245 -241
		mu 0 4 212 480 481 249
		f 4 -197 246 247 -245
		mu 0 4 211 482 483 248
		f 4 -248 248 -122 249
		mu 0 4 484 485 486 487
		f 4 -246 -250 -120 -243
		mu 0 4 247 251 160 159
		f 4 -148 250 251 252
		mu 0 4 488 489 490 491
		f 4 -144 253 254 -251
		mu 0 4 174 173 255 253
		f 4 -255 255 -134 256
		mu 0 4 492 493 494 495
		f 4 -252 -257 -132 257
		mu 0 4 496 256 167 497
		f 4 -218 258 259 -254
		mu 0 4 228 498 499 260
		f 4 -216 -235 260 -259
		mu 0 4 227 226 240 259
		f 4 -261 -238 -128 261
		mu 0 4 500 243 156 501
		f 4 -260 -262 -135 -256
		mu 0 4 257 261 164 168
		f 4 -192 262 263 -247
		mu 0 4 208 502 503 250
		f 4 -190 264 265 -263
		mu 0 4 207 206 263 262
		f 4 -266 266 -140 267
		mu 0 4 504 505 506 507
		f 4 -264 -268 -138 -249
		mu 0 4 252 264 170 161
		f 4 -159 268 269 -265
		mu 0 4 184 508 509 267
		f 4 -156 -253 270 -269
		mu 0 4 182 177 254 266
		f 4 -271 -258 -143 271
		mu 0 4 510 258 166 511
		f 4 -270 -272 -141 -267
		mu 0 4 265 268 172 171;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface13";
	setAttr ".t" -type "double3" 0.94108077055792339 0.68853362395118278 -3.9977812406344042 ;
	setAttr ".r" -type "double3" 0 108.47963193281559 0 ;
	setAttr ".s" -type "double3" 0.45411853506603828 0.45411853506603828 0.45411853506603828 ;
	setAttr ".rp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
	setAttr ".sp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
createNode mesh -n "polySurfaceShape13" -p "polySurface13";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:31]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[32:127]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "vtx[0:145]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 512 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0 0 0 1 0 1 0 0 0 1 0 0
		 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 1
		 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1
		 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1
		 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1
		 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1 1
		 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1
		 0 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 1 0 1 0 1 0
		 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0
		 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 1 0 0
		 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 0 1 0 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 0
		 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0
		 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1
		 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1
		 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1
		 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0
		 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1;
	setAttr ".uvst[0].uvsp[500:511]" 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0
		 0 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 146 ".vt[0:145]"  -2.48131704 0.178654 2.75388694 -2.30557203 0.18639299 2.56610608
		 -2.11397791 0.178654 2.394526 -2.35452199 0.178654 2.88349605 -2.16292906 0.18639299 2.71191597
		 -1.98718405 0.178654 2.52413511 -2.44087791 0.18639299 2.841151 -2.23425007 0.196343 2.63901091
		 -2.027621984 0.18639299 2.4368701 -2.18749905 0.18639299 2.45059705 -2.28100204 0.18639299 2.827425
		 -2.044855118 0.18639299 2.59640694 -2.40012288 0.18639299 2.88281107 -2.19349504 0.196343 2.68067098
		 -2.35232306 0.196343 2.75451994 -1.98686695 0.18639299 2.47852993 -2.11617708 0.196343 2.52350211
		 -2.48163295 0.18639299 2.79949093 -2.2750051 0.196343 2.59735107 -2.068377018 0.18639299 2.39521003
		 -2.42364502 0.18639299 2.68161511 -2.31156802 0.196343 2.79618001 -2.075422049 0.196343 2.56516194
		 -2.39307809 0.196343 2.71286011 -2.15693212 0.196343 2.48184204 -2.43383408 0.156543 2.67120004
		 -2.51220012 0.156543 2.76824594 -2.31576109 0.156543 2.555691 -2.1976881 0.156543 2.44018197
		 -2.098943949 0.156543 2.36396503 -2.27081299 0.156543 2.83784008 -2.15274 0.156543 2.72233105
		 -2.3695569 0.156543 2.91405606 -2.034667015 0.156543 2.60682201 -1.95630002 0.156543 2.50977492
		 -1.95734894 0.156543 2.44965291 -1.99810398 0.156543 2.40799308 -2.038858891 0.156543 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.47039604 0.156543 2.87002802 -2.51115203 0.156543 2.82836795
		 -2.51220012 0.116743 2.76824594 -2.31576109 0.116743 2.555691 -2.098943949 0.116743 2.36396503
		 -2.51220012 0.046128999 2.76824594 -2.31576109 0.046128999 2.555691 -2.098943949 0.046128999 2.36396503
		 -2.47039604 0.046128999 2.87002802 -1.99810398 0.046128999 2.40799308 -2.36955595 0.046128999 2.91405606
		 -2.15274 0.046128999 2.72233105 -1.95630002 0.046128999 2.50977492 -2.36955595 0.116743 2.91405606
		 -2.15274 0.116743 2.72233105 -1.95630002 0.116743 2.50977492 -1.99810398 0.116743 2.40799308
		 -2.47039604 0.116743 2.87002802 -2.48131704 0.031148 2.75388694 -2.30557203 0.030399 2.56610608
		 -2.23425007 0.029436 2.63901091 -2.44087791 0.030399 2.841151 -2.11397791 0.031148 2.394526
		 -2.027621984 0.030399 2.4368701 -2.16292906 0.030399 2.71191597 -2.35452199 0.031148 2.88349605
		 -1.98718405 0.031148 2.52413511 -2.31576109 0.156543 2.555691 -2.43383408 0.116743 2.67120004
		 -2.098943949 0.156543 2.36396503 -2.1976881 0.116743 2.44018197 -2.51220012 0.076943003 2.76824594
		 -2.31576109 0.076943003 2.555691 -2.43383408 0.046128999 2.67120004 -2.098943949 0.076943003 2.36396503
		 -2.1976881 0.046128999 2.44018197 -2.42364502 0.030399 2.68161511 -2.48163295 0.030399 2.79949093
		 -2.2750051 0.029436 2.59735107 -2.35232306 0.029436 2.75451994 -2.18749905 0.030399 2.45059705
		 -2.068377018 0.030399 2.39521003 -2.11617708 0.029436 2.52350211 -2.40012288 0.030399 2.88281107
		 -2.19349504 0.029436 2.68067098 -2.28100204 0.030399 2.827425 -1.98686695 0.030399 2.47852993
		 -2.044855118 0.030399 2.59640694 -2.27081299 0.046128999 2.83784008 -2.3695569 0.076943003 2.91405606
		 -2.15274 0.076943003 2.72233105 -2.27081299 0.116743 2.83784008 -2.034667015 0.046128999 2.60682201
		 -1.95630002 0.076943003 2.50977492 -2.034667015 0.116743 2.60682201 -2.3695569 0.156543 2.91405606
		 -2.15274 0.156543 2.72233105 -1.95630002 0.156543 2.50977492 -1.99810398 0.156543 2.40799308
		 -1.95734894 0.116743 2.44965291 -2.038858891 0.116743 2.36633301 -1.99810398 0.076943003 2.40799308
		 -1.95734894 0.046128999 2.44965291 -2.038858891 0.046128999 2.36633301 -2.47039604 0.156543 2.87002802
		 -2.42964101 0.116743 2.91168809 -2.51115203 0.116743 2.82836795 -2.47039604 0.076943003 2.87002802
		 -2.42964101 0.046128999 2.91168809 -2.51115203 0.046128999 2.82836795 -2.51220012 0.033289 2.76824594
		 -2.31576109 0.033289 2.555691 -2.47039604 0.033289 2.87002802 -2.098943949 0.033289 2.36396503
		 -1.99810398 0.033289 2.40799308 -2.15274 0.033289 2.72233105 -2.3695569 0.033289 2.91405606
		 -1.95630002 0.033289 2.50977492 -2.51220012 0.156543 2.76824594 -2.43383408 0.156543 2.67120004
		 -2.1976881 0.156543 2.44018197 -2.43383408 0.076943003 2.67120004 -2.1976881 0.076943003 2.44018197
		 -2.39307809 0.029436 2.71286011 -2.15693212 0.029436 2.48184204 -2.31156802 0.029436 2.79618001
		 -2.075422049 0.029436 2.56516194 -2.27081299 0.076943003 2.83784008 -2.034667015 0.076943003 2.60682201
		 -2.27081299 0.156543 2.83784008 -2.034667015 0.156543 2.60682201 -1.95734894 0.156543 2.44965291
		 -2.038858891 0.156543 2.36633301 -1.95734894 0.076943003 2.44965291 -2.038858891 0.076943003 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.51115203 0.156543 2.82836795 -2.42964101 0.076943003 2.91168809
		 -2.51115203 0.076943003 2.82836795 -2.43383408 0.033289 2.67120004 -2.51115203 0.033289 2.82836795
		 -2.1976881 0.033289 2.44018197 -2.038858891 0.033289 2.36633301 -2.27081299 0.033289 2.83784008
		 -2.42964101 0.033289 2.91168809 -1.95734894 0.033289 2.44965291 -2.034667015 0.033289 2.60682201;
	setAttr -s 272 ".ed";
	setAttr ".ed[0:165]"  0 20 0 20 25 0 25 26 0 26 0 0 20 1 0 1 27 0 27 25 0
		 1 9 0 9 28 0 28 27 0 9 2 0 2 29 0 29 28 0 30 31 0 31 4 0 4 10 0 10 30 0 32 30 0 10 3 0
		 3 32 0 33 34 0 34 5 0 5 11 0 11 33 0 31 33 0 11 4 0 10 21 0 21 12 0 12 3 0 4 13 0
		 13 21 0 13 7 0 7 14 0 14 21 0 14 6 0 6 12 0 11 22 0 22 13 0 5 15 0 15 22 0 15 8 0
		 8 16 0 16 22 0 16 7 0 14 23 0 23 17 0 17 6 0 7 18 0 18 23 0 18 1 0 20 23 0 0 17 0
		 16 24 0 24 18 0 8 19 0 19 24 0 19 2 0 9 24 0 15 35 0 35 36 0 36 8 0 34 35 0 19 37 0
		 37 29 0 36 37 0 12 38 0 38 32 0 6 39 0 39 38 0 17 40 0 40 39 0 26 40 0 118 66 0 66 42 0
		 42 67 0 67 118 0 117 118 0 67 41 0 41 117 0 119 68 0 68 43 0 43 69 0 69 119 0 66 119 0
		 69 42 0 67 120 0 120 70 0 70 41 0 42 71 0 71 120 0 71 45 0 45 72 0 72 120 0 72 44 0
		 44 70 0 69 121 0 121 71 0 43 73 0 73 121 0 73 46 0 46 74 0 74 121 0 74 45 0 57 75 0
		 75 122 0 122 76 0 76 57 0 75 58 0 58 77 0 77 122 0 77 59 0 59 78 0 78 122 0 78 60 0
		 60 76 0 58 79 0 79 123 0 123 77 0 79 61 0 61 80 0 80 123 0 80 62 0 62 81 0 81 123 0
		 81 59 0 78 124 0 124 82 0 82 60 0 59 83 0 83 124 0 83 63 0 63 84 0 84 124 0 84 64 0
		 64 82 0 81 125 0 125 83 0 62 85 0 85 125 0 85 65 0 65 86 0 86 125 0 86 63 0 49 87 0
		 87 126 0 126 88 0 88 49 0 87 50 0 50 89 0 89 126 0 89 53 0 53 90 0 90 126 0 90 52 0
		 52 88 0 50 91 0 91 127 0 127 89 0 91 51 0 51 92 0 92 127 0 92 54 0 54 93 0 93 127 0
		 93 53 0 90 128 0;
	setAttr ".ed[166:271]" 128 94 0 94 52 0 53 95 0 95 128 0 93 129 0 129 95 0
		 54 96 0 96 129 0 130 96 0 54 98 0 98 130 0 97 130 0 98 55 0 55 97 0 131 97 0 55 99 0
		 99 131 0 68 131 0 99 43 0 98 132 0 132 100 0 100 55 0 92 132 0 51 101 0 101 132 0
		 101 48 0 48 100 0 99 133 0 133 73 0 100 133 0 48 102 0 102 133 0 102 46 0 134 103 0
		 103 56 0 56 104 0 104 134 0 94 134 0 104 52 0 135 117 0 41 105 0 105 135 0 103 135 0
		 105 56 0 104 136 0 136 88 0 56 106 0 106 136 0 106 47 0 47 107 0 107 136 0 107 49 0
		 105 137 0 137 106 0 70 137 0 44 108 0 108 137 0 108 47 0 72 138 0 138 109 0 109 44 0
		 45 110 0 110 138 0 110 58 0 75 138 0 57 109 0 108 139 0 139 111 0 111 47 0 109 139 0
		 76 139 0 60 111 0 74 140 0 140 110 0 46 112 0 112 140 0 112 61 0 79 140 0 102 141 0
		 141 112 0 48 113 0 113 141 0 113 62 0 80 141 0 87 142 0 142 114 0 114 50 0 49 115 0
		 115 142 0 115 64 0 84 142 0 63 114 0 107 143 0 143 115 0 111 143 0 82 143 0 101 144 0
		 144 113 0 51 116 0 116 144 0 116 65 0 85 144 0 91 145 0 145 116 0 114 145 0 86 145 0;
	setAttr -s 512 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.52629298 0.809928 -0.25890601 -0.42148501
		 0.82520002 -0.376026 -0.65006101 0.461981 -0.60332 -0.70441198 0.619452 -0.34652999
		 -0.42148501 0.82520002 -0.376026 -0.39437401 0.82580698 -0.40312901 -0.62843603 0.438642
		 -0.64238697 -0.65006101 0.461981 -0.60332 -0.39437401 0.82580698 -0.40312901 -0.36668199
		 0.82520002 -0.42963901 -0.58890301 0.461981 -0.663149 -0.62843603 0.438642 -0.64238697
		 -0.36668199 0.82520002 -0.42963901 -0.247289 0.809928 -0.53184998 -0.33098099 0.61945099
		 -0.711851 -0.58890301 0.461981 -0.663149 0.58890301 0.461981 0.663149 0.62843603
		 0.438642 0.64238697 0.39437401 0.82580698 0.40312901 0.36668199 0.82520002 0.42963901
		 0.33098099 0.619452 0.71184999 0.58890301 0.461981 0.663149 0.36668199 0.82520002
		 0.42963901 0.247289 0.809928 0.53184998 0.65006101 0.461981 0.60332 0.70441198 0.619452
		 0.34652901 0.52629298 0.809928 0.25890601 0.42148501 0.82520002 0.376026 0.62843603
		 0.438642 0.64238697 0.65006101 0.461981 0.60332 0.42148501 0.82520002 0.376026 0.39437401
		 0.82580698 0.40312901 0.247289 0.809928 0.53184998 0.36668199 0.82520002 0.42963901
		 0.042675 0.99486399 0.091783002 -0.077308998 0.96430999 0.25323999 0.36668199 0.82520002
		 0.42963901 0.39437401 0.82580698 0.40312901 0.067901 0.99527502 0.069408 0.042675
		 0.99486399 0.091783002 0.042675 0.99486399 0.091783002 0.067901 0.99527502 0.069408
		 0 1 0 -0.024591001 0.99940801 0.024057001 -0.077308998 0.96430999 0.25323999 0.042675
		 0.99486399 0.091783002 -0.024591001 0.99940801 0.024057001 -0.167448 0.97217703 0.163811
		 0.39437401 0.82580698 0.40312901 0.42148501 0.82520002 0.376026 0.090824001 0.99486399
		 0.044679999 0.067901 0.99527502 0.069408 0.42148501 0.82520002 0.376026 0.52629298
		 0.809928 0.25890601 0.25487599 0.96430999 -0.071731001 0.090824001 0.99486399 0.044679999
		 0.090824001 0.99486399 0.044679999 0.25487599 0.96430999 -0.071731001 0.167448 0.97217703
		 -0.163811 0.024591001 0.99940801 -0.024057001 0.067901 0.99527502 0.069408 0.090824001
		 0.99486399 0.044679999 0.024591001 0.99940801 -0.024057001 0 1 0 -0.167448 0.97217703
		 0.163811 -0.024591001 0.99940801 0.024057001 -0.090824001 0.99486399 -0.044679999
		 -0.25487599 0.96430999 0.071731001 -0.024591001 0.99940801 0.024057001 0 1 0 -0.067901
		 0.99527502 -0.069408 -0.090824001 0.99486399 -0.044679999 -0.090824001 0.99486399
		 -0.044679999 -0.067901 0.99527502 -0.069408 -0.39437401 0.82580698 -0.40312901 -0.42148501
		 0.82520002 -0.376026 -0.25487599 0.96430999 0.071731001 -0.090824001 0.99486399 -0.044679999
		 -0.42148501 0.82520002 -0.376026 -0.52629298 0.809928 -0.25890601 0 1 0 0.024591001
		 0.99940801 -0.024057001 -0.042675 0.99486399 -0.091783002 -0.067901 0.99527502 -0.069408
		 0.024591001 0.99940801 -0.024057001 0.167448 0.97217703 -0.163811 0.077308998 0.96430898
		 -0.25323999 -0.042675 0.99486399 -0.091783002 -0.042675 0.99486399 -0.091783002 0.077308998
		 0.96430898 -0.25323999 -0.247289 0.809928 -0.53184998 -0.36668199 0.82520002 -0.42963901
		 -0.067901 0.99527502 -0.069408 -0.042675 0.99486399 -0.091783002 -0.36668199 0.82520002
		 -0.42963901 -0.39437401 0.82580698 -0.40312901 0.167448 0.97217703 -0.163811 0.25487599
		 0.96430999 -0.071731001 0.53995699 0.809349 -0.231087 0.41876701 0.81043297 -0.40967301
		 0.25487599 0.96430999 -0.071731001 0.52629298 0.809928 0.25890601 0.70441198 0.619452
		 0.34652901 0.53995699 0.809349 -0.231087 -0.247289 0.809928 -0.53184998 0.077308998
		 0.96430898 -0.25323999 0.24288499 0.809349 -0.53475398 -0.33098099 0.61945099 -0.711851
		 0.077308998 0.96430898 -0.25323999 0.167448 0.97217703 -0.163811 0.41876701 0.81043297
		 -0.40967301 0.24288499 0.809349 -0.53475398 0.247289 0.809928 0.53184998 -0.077308998
		 0.96430999 0.25323999 -0.24288601 0.809349 0.53475302 0.33098099 0.619452 0.71184999
		 -0.077308998 0.96430999 0.25323999 -0.167448 0.97217703 0.163811 -0.41876701 0.81043398
		 0.40967199 -0.24288601 0.809349 0.53475302 -0.167448 0.97217703 0.163811 -0.25487599
		 0.96430999 0.071731001 -0.53995597 0.809349 0.231087 -0.41876701 0.81043398 0.40967199
		 -0.25487599 0.96430999 0.071731001 -0.52629298 0.809928 -0.25890601 -0.70441198 0.619452
		 -0.34652999 -0.53995597 0.809349 0.231087 -0.73439997 0 -0.67871702 -0.69930202 0
		 -0.714827 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 -1e-006 -0.44141999
		 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775 -0.66242999 0 -0.74912399
		 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202
		 0 -0.714827 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702
		 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.69930202
		 0 -0.714827 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827
		 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.69930202 0 -0.714827
		 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775;
	setAttr ".n[166:331]" -type "float3"  -0.42161399 0 -0.906775 -0.66242999 0
		 -0.74912399 -0.66242999 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775
		 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999
		 0 -0.74912399 -0.69930202 0 -0.714827 -0.060573999 -0.99771899 -0.029798999 -0.052843001
		 -0.99750501 -0.046805002 -0.008986 -0.99994999 -0.0044200001 -0.02781 -0.999587 0.0071720001
		 -0.052843001 -0.99750501 -0.046805002 -0.046137001 -0.99782097 -0.047161002 -0.0066049998
		 -0.999955 -0.0067520002 -0.008986 -0.99994999 -0.0044200001 -0.008986 -0.99994999
		 -0.0044200001 -0.0066049998 -0.999955 -0.0067520002 0 -1 0 -0.002382 -0.99999398
		 0.0023310001 -0.02781 -0.999587 0.0071720001 -0.008986 -0.99994999 -0.0044200001
		 -0.002382 -0.99999398 0.0023310001 -0.016672 -0.99972802 0.016310001 -0.046137001
		 -0.99782097 -0.047161002 -0.045634001 -0.99750501 -0.053858001 -0.004222 -0.99994999
		 -0.0090810005 -0.0066049998 -0.999955 -0.0067520002 -0.045634001 -0.99750501 -0.053858001
		 -0.028462 -0.99771899 -0.061213002 0.0077809999 -0.999587 -0.027646 -0.004222 -0.99994999
		 -0.0090810005 -0.004222 -0.99994999 -0.0090810005 0.0077809999 -0.999587 -0.027646
		 0.016672 -0.99972802 -0.016310001 0.002382 -0.99999398 -0.0023310001 -0.0066049998
		 -0.999955 -0.0067520002 -0.004222 -0.99994999 -0.0090810005 0.002382 -0.99999398
		 -0.0023310001 0 -1 0 -0.016672 -0.99972802 0.016310001 -0.002382 -0.99999398 0.0023310001
		 0.004222 -0.99994999 0.0090810005 -0.0077809999 -0.999587 0.027646 -0.002382 -0.99999398
		 0.0023310001 0 -1 0 0.0066049998 -0.999955 0.0067520002 0.004222 -0.99994999 0.0090810005
		 0.004222 -0.99994999 0.0090810005 0.0066049998 -0.999955 0.0067520002 0.046137001
		 -0.99782097 0.047161002 0.045634001 -0.99750501 0.053856999 -0.0077809999 -0.999587
		 0.027646 0.004222 -0.99994999 0.0090810005 0.045634001 -0.99750501 0.053856999 0.028462
		 -0.99771899 0.061213002 0 -1 0 0.002382 -0.99999398 -0.0023310001 0.008986 -0.99994999
		 0.0044209999 0.0066049998 -0.999955 0.0067520002 0.002382 -0.99999398 -0.0023310001
		 0.016672 -0.99972802 -0.016310001 0.02781 -0.99958801 -0.0071720001 0.008986 -0.99994999
		 0.0044209999 0.008986 -0.99994999 0.0044209999 0.02781 -0.99958801 -0.0071720001
		 0.060573999 -0.99771899 0.029798999 0.052843001 -0.99750501 0.046805002 0.0066049998
		 -0.999955 0.0067520002 0.008986 -0.99994999 0.0044209999 0.052843001 -0.99750501
		 0.046805002 0.046137001 -0.99782097 0.047161002 0.42161399 0 0.906775 0.66242999
		 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.90677601 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.66242999 0
		 0.74912399 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.42161399
		 0 0.90677601 0.66242999 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775
		 0.69930202 0 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202
		 0 0.714827 0.73439997 0 0.67871702 0.89730102 0 0.44141901 0.89730102 0 0.44141999
		 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.89730102 0 0.44141999 0.89730102
		 0 0.44141999 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997 0 0.67871702
		 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.42161399 0 0.906775 0.66242999 0
		 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.69930202 0
		 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997
		 0 0.67871702 0.89730102 0 0.44141999 0.89730102 0 0.44141901 0.73439997 0 0.67871702
		 0.92501998 0 -0.37991899 0.89730102 0 0.44141901 0.89730102 0 0.44141999 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899
		 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457
		 -0.42161399 0 -0.906775 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.89730102 0 0.44141999
		 0.89730102 0 0.44141999 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.89730102
		 0 0.44141999 0.89730102 0 0.44141901 0.92501998 0 -0.37991899 0.714827 0 -0.69930202
		 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.714827 0 -0.69930202 -0.42161399
		 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457;
	setAttr ".n[332:497]" -type "float3"  -0.42161399 0 -0.906775 0.400134 0 -0.916457
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 -0.40013501 -1e-006 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.40013501 -1e-006 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775 -0.92501998
		 -1e-006 0.37991801 -0.89730102 -1e-006 -0.44141999 -0.89730102 0 -0.44141999 -0.92501998
		 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 -1e-006 0.37991801 -0.92501998 0
		 0.37991801 -0.714827 0 0.69930202 0.42161399 0 0.906775 -0.40013501 0 0.91645598
		 -0.40013501 0 0.91645598 0.42161399 0 0.90677601 -0.40013501 0 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598
		 -0.714827 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399
		 0 0.90677601 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.714827 0 0.69930202 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.714827
		 0 0.69930202 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102 0 -0.44141999
		 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102
		 0 -0.44141999 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 0 0.37991801
		 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.56217402 -0.642546 -0.52066702 -0.66634798 -0.66971999 -0.327804
		 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.51303899 -0.679533 -0.52442902
		 -0.56217402 -0.642546 -0.52066702 -0.56217402 -0.642546 -0.52066702 -0.51303899 -0.679533
		 -0.52442902 -0.046137001 -0.99782097 -0.047161002 -0.052843001 -0.99750501 -0.046805002
		 -0.66634798 -0.66971999 -0.327804 -0.56217402 -0.642546 -0.52066702 -0.052843001
		 -0.99750501 -0.046805002 -0.060573999 -0.99771899 -0.029798999 -0.714827 0 0.69930202
		 -0.92501998 0 0.37991801 -0.37985 -0.91122502 0.159319 -0.25446099 -0.93449497 0.248934
		 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.66634798 -0.66971999 -0.327804
		 -0.37985 -0.91122502 0.159319 -0.37985 -0.91122502 0.159319 -0.66634798 -0.66971999
		 -0.327804 -0.060573999 -0.99771899 -0.029798999 -0.02781 -0.999587 0.0071720001 -0.25446099
		 -0.93449497 0.248934 -0.37985 -0.91122502 0.159319 -0.02781 -0.999587 0.0071720001
		 -0.016672 -0.99972802 0.016310001 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399
		 -0.50819898 -0.64254802 -0.57346898 -0.51303899 -0.679533 -0.52442902 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.31309599 -0.66972101 -0.673383 -0.50819898
		 -0.64254802 -0.57346898 -0.50819898 -0.64254802 -0.57346898 -0.31309599 -0.66972101
		 -0.673383 -0.028462 -0.99771899 -0.061213002 -0.045634001 -0.99750501 -0.053858001
		 -0.51303899 -0.679533 -0.52442902 -0.50819898 -0.64254802 -0.57346898 -0.045634001
		 -0.99750501 -0.053858001 -0.046137001 -0.99782097 -0.047161002 -0.42161399 0 -0.906775
		 0.400134 0 -0.916457 0.16762 -0.91122502 -0.376261 -0.31309599 -0.66972101 -0.673383
		 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.25446099 -0.93449497 -0.248935 0.16762
		 -0.91122502 -0.376261 0.16762 -0.91122502 -0.376261 0.25446099 -0.93449497 -0.248935
		 0.016672 -0.99972802 -0.016310001 0.0077809999 -0.999587 -0.027646 -0.31309599 -0.66972101
		 -0.673383 0.16762 -0.91122502 -0.376261 0.0077809999 -0.999587 -0.027646 -0.028462
		 -0.99771899 -0.061213002 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.50819999
		 -0.642546 0.57347 0.51303899 -0.679533 0.52442902 0.66242999 0 0.74912399 0.42161399
		 0 0.906775 0.31309599 -0.66971999 0.67338401 0.50819999 -0.642546 0.57347 0.50819999
		 -0.642546 0.57347 0.31309599 -0.66971999 0.67338401 0.028462 -0.99771899 0.061213002
		 0.045634001 -0.99750501 0.053856999 0.51303899 -0.679533 0.52442902 0.50819999 -0.642546
		 0.57347 0.045634001 -0.99750501 0.053856999 0.046137001 -0.99782097 0.047161002 0.42161399
		 0 0.906775 -0.40013501 0 0.91645598 -0.16762 -0.91122502 0.376261 0.31309599 -0.66971999
		 0.67338401 -0.40013501 0 0.91645598 -0.714827 0 0.69930202 -0.25446099 -0.93449497
		 0.248934 -0.16762 -0.91122502 0.376261 -0.16762 -0.91122502 0.376261 -0.25446099
		 -0.93449497 0.248934 -0.016672 -0.99972802 0.016310001 -0.0077809999 -0.999587 0.027646
		 0.31309599 -0.66971999 0.67338401 -0.16762 -0.91122502 0.376261 -0.0077809999 -0.999587
		 0.027646 0.028462 -0.99771899 0.061213002 0.714827 0 -0.69930202 0.92501998 0 -0.37991899
		 0.37985 -0.91122502 -0.15932 0.25446099 -0.93449497 -0.248935 0.92501998 0 -0.37991899
		 0.89730102 0 0.44141901 0.66634798 -0.66971999 0.327804 0.37985 -0.91122502 -0.15932
		 0.37985 -0.91122502 -0.15932 0.66634798 -0.66971999 0.327804 0.060573999 -0.99771899
		 0.029798999 0.02781 -0.99958801 -0.0071720001 0.25446099 -0.93449497 -0.248935 0.37985
		 -0.91122502 -0.15932 0.02781 -0.99958801 -0.0071720001 0.016672 -0.99972802 -0.016310001
		 0.89730102 0 0.44141901 0.73439997 0 0.67871702;
	setAttr ".n[498:511]" -type "float3"  0.56217402 -0.642546 0.52066702 0.66634798
		 -0.66971999 0.327804 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.51303899 -0.679533
		 0.52442902 0.56217402 -0.642546 0.52066702 0.56217402 -0.642546 0.52066702 0.51303899
		 -0.679533 0.52442902 0.046137001 -0.99782097 0.047161002 0.052843001 -0.99750501
		 0.046805002 0.66634798 -0.66971999 0.327804 0.56217402 -0.642546 0.52066702 0.052843001
		 -0.99750501 0.046805002 0.060573999 -0.99771899 0.029798999;
	setAttr -s 128 -ch 512 ".fc[0:127]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 65 66 3
		f 4 4 5 6 -2
		mu 0 4 1 67 68 2
		f 4 7 8 9 -6
		mu 0 4 4 69 70 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 16
		mu 0 4 71 72 73 74
		f 4 17 -17 18 19
		mu 0 4 16 10 13 17
		f 4 20 21 22 23
		mu 0 4 75 18 19 76
		f 4 24 -24 25 -15
		mu 0 4 11 14 15 12
		f 4 -19 26 27 28
		mu 0 4 20 77 78 79
		f 4 -16 29 30 -27
		mu 0 4 21 80 81 82
		f 4 -31 31 32 33
		mu 0 4 83 84 85 86
		f 4 -28 -34 34 35
		mu 0 4 23 22 87 88
		f 4 -26 36 37 -30
		mu 0 4 24 89 90 91
		f 4 -23 38 39 -37
		mu 0 4 28 33 92 93
		f 4 -40 40 41 42
		mu 0 4 94 34 95 96
		f 4 -38 -43 43 -32
		mu 0 4 25 29 97 98
		f 4 -35 44 45 46
		mu 0 4 27 99 100 101
		f 4 -33 47 48 -45
		mu 0 4 26 102 103 104
		f 4 -49 49 -5 50
		mu 0 4 105 106 107 108
		f 4 -46 -51 -1 51
		mu 0 4 32 31 37 38
		f 4 -44 52 53 -48
		mu 0 4 30 109 110 111
		f 4 -42 54 55 -53
		mu 0 4 35 39 112 113
		f 4 -56 56 -11 57
		mu 0 4 114 42 44 115
		f 4 -54 -58 -8 -50
		mu 0 4 36 40 43 41
		f 4 -41 58 59 60
		mu 0 4 116 117 118 119
		f 4 -39 -22 61 -59
		mu 0 4 46 49 50 47
		f 4 -57 62 63 -12
		mu 0 4 53 120 121 54
		f 4 -55 -61 64 -63
		mu 0 4 51 45 48 52
		f 4 -29 65 66 -20
		mu 0 4 55 122 123 58
		f 4 -36 67 68 -66
		mu 0 4 56 124 125 57
		f 4 -47 69 70 -68
		mu 0 4 59 126 127 60
		f 4 -52 -4 71 -70
		mu 0 4 61 63 64 62
		f 4 72 73 74 75
		mu 0 4 269 270 271 272
		f 4 76 -76 77 78
		mu 0 4 132 128 273 274
		f 4 79 80 81 82
		mu 0 4 275 135 276 277
		f 4 83 -83 84 -74
		mu 0 4 129 134 278 279
		f 4 -78 85 86 87
		mu 0 4 133 280 281 282
		f 4 -75 88 89 -86
		mu 0 4 131 283 284 285
		f 4 -90 90 91 92
		mu 0 4 286 287 288 289
		f 4 -87 -93 93 94
		mu 0 4 139 138 290 291
		f 4 -85 95 96 -89
		mu 0 4 130 292 293 294
		f 4 -82 97 98 -96
		mu 0 4 137 136 295 296
		f 4 -99 99 100 101
		mu 0 4 297 145 298 299
		f 4 -97 -102 102 -91
		mu 0 4 140 144 300 301
		f 4 103 104 105 106
		mu 0 4 302 303 304 305
		f 4 107 108 109 -105
		mu 0 4 306 307 308 309
		f 4 -110 110 111 112
		mu 0 4 310 311 312 313
		f 4 -106 -113 113 114
		mu 0 4 314 150 315 316
		f 4 115 116 117 -109
		mu 0 4 317 318 319 320
		f 4 118 119 120 -117
		mu 0 4 321 322 323 324
		f 4 -121 121 122 123
		mu 0 4 325 326 327 328
		f 4 -118 -124 124 -111
		mu 0 4 153 158 329 330
		f 4 -114 125 126 127
		mu 0 4 331 332 333 334
		f 4 -112 128 129 -126
		mu 0 4 155 335 336 337
		f 4 -130 130 131 132
		mu 0 4 338 339 340 341
		f 4 -127 -133 133 134
		mu 0 4 342 163 343 344
		f 4 -125 135 136 -129
		mu 0 4 154 345 346 347
		f 4 -123 137 138 -136
		mu 0 4 162 348 349 350
		f 4 -139 139 140 141
		mu 0 4 351 352 353 354
		f 4 -137 -142 142 -131
		mu 0 4 165 169 355 356
		f 4 143 144 145 146
		mu 0 4 357 358 359 360
		f 4 147 148 149 -145
		mu 0 4 361 362 363 364
		f 4 -150 150 151 152
		mu 0 4 365 366 367 368
		f 4 -146 -153 153 154
		mu 0 4 176 175 369 370
		f 4 155 156 157 -149
		mu 0 4 371 372 373 374
		f 4 158 159 160 -157
		mu 0 4 375 376 377 378
		f 4 -161 161 162 163
		mu 0 4 379 185 380 381
		f 4 -158 -164 164 -151
		mu 0 4 178 183 382 383
		f 4 -154 165 166 167
		mu 0 4 181 384 385 189
		f 4 -152 168 169 -166
		mu 0 4 180 386 387 188
		f 4 -165 170 171 -169
		mu 0 4 179 388 389 190
		f 4 -163 172 173 -171
		mu 0 4 187 186 192 191
		f 4 174 -173 175 176
		mu 0 4 390 194 391 392
		f 4 177 -177 178 179
		mu 0 4 393 193 394 395
		f 4 180 -180 181 182
		mu 0 4 396 197 397 398
		f 4 183 -183 184 -81
		mu 0 4 201 199 399 400
		f 4 -179 185 186 187
		mu 0 4 401 402 403 404
		f 4 -176 -162 188 -186
		mu 0 4 196 195 405 406
		f 4 -189 -160 189 190
		mu 0 4 407 205 408 409
		f 4 -187 -191 191 192
		mu 0 4 410 203 411 412
		f 4 -185 193 194 -98
		mu 0 4 202 413 414 415
		f 4 -182 -188 195 -194
		mu 0 4 200 198 416 417
		f 4 -196 -193 196 197
		mu 0 4 418 204 419 420
		f 4 -195 -198 198 -100
		mu 0 4 210 209 421 422
		f 4 199 200 201 202
		mu 0 4 423 424 425 426
		f 4 203 -203 204 -168
		mu 0 4 217 213 427 428
		f 4 205 -79 206 207
		mu 0 4 429 220 430 431
		f 4 208 -208 209 -201
		mu 0 4 214 219 432 433
		f 4 -205 210 211 -155
		mu 0 4 218 434 435 436
		f 4 -202 212 213 -211
		mu 0 4 216 437 438 439
		f 4 -214 214 215 216
		mu 0 4 440 441 442 443
		f 4 -212 -217 217 -147
		mu 0 4 224 223 444 445
		f 4 -210 218 219 -213
		mu 0 4 215 446 447 448
		f 4 -207 -88 220 -219
		mu 0 4 222 221 449 450
		f 4 -221 -95 221 222
		mu 0 4 451 230 452 453
		f 4 -220 -223 223 -215
		mu 0 4 225 229 454 455
		f 4 -94 224 225 226
		mu 0 4 143 456 457 234
		f 4 -92 227 228 -225
		mu 0 4 142 458 459 233
		f 4 -229 229 -108 230
		mu 0 4 460 461 462 463
		f 4 -226 -231 -104 231
		mu 0 4 464 236 149 465
		f 4 -224 232 233 234
		mu 0 4 466 467 468 469
		f 4 -222 -227 235 -233
		mu 0 4 232 231 241 239
		f 4 -236 -232 -107 236
		mu 0 4 470 238 148 471
		f 4 -234 -237 -115 237
		mu 0 4 472 242 151 473
		f 4 -103 238 239 -228
		mu 0 4 141 474 475 235
		f 4 -101 240 241 -239
		mu 0 4 147 146 245 244
		f 4 -242 242 -119 243
		mu 0 4 476 477 478 479
		f 4 -240 -244 -116 -230
		mu 0 4 237 246 157 152
		f 4 -199 244 245 -241
		mu 0 4 212 480 481 249
		f 4 -197 246 247 -245
		mu 0 4 211 482 483 248
		f 4 -248 248 -122 249
		mu 0 4 484 485 486 487
		f 4 -246 -250 -120 -243
		mu 0 4 247 251 160 159
		f 4 -148 250 251 252
		mu 0 4 488 489 490 491
		f 4 -144 253 254 -251
		mu 0 4 174 173 255 253
		f 4 -255 255 -134 256
		mu 0 4 492 493 494 495
		f 4 -252 -257 -132 257
		mu 0 4 496 256 167 497
		f 4 -218 258 259 -254
		mu 0 4 228 498 499 260
		f 4 -216 -235 260 -259
		mu 0 4 227 226 240 259
		f 4 -261 -238 -128 261
		mu 0 4 500 243 156 501
		f 4 -260 -262 -135 -256
		mu 0 4 257 261 164 168
		f 4 -192 262 263 -247
		mu 0 4 208 502 503 250
		f 4 -190 264 265 -263
		mu 0 4 207 206 263 262
		f 4 -266 266 -140 267
		mu 0 4 504 505 506 507
		f 4 -264 -268 -138 -249
		mu 0 4 252 264 170 161
		f 4 -159 268 269 -265
		mu 0 4 184 508 509 267
		f 4 -156 -253 270 -269
		mu 0 4 182 177 254 266
		f 4 -271 -258 -143 271
		mu 0 4 510 258 166 511
		f 4 -270 -272 -141 -267
		mu 0 4 265 268 172 171;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface14";
	setAttr ".t" -type "double3" 0.85206149898340655 0.68853362395118278 -3.8207860553964426 ;
	setAttr ".r" -type "double3" 0 108.47963193281559 0 ;
	setAttr ".s" -type "double3" 0.45411853506603828 0.45411853506603828 0.45411853506603828 ;
	setAttr ".rp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
	setAttr ".sp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
createNode mesh -n "polySurfaceShape14" -p "polySurface14";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:31]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[32:127]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "vtx[0:145]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 512 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0 0 0 1 0 1 0 0 0 1 0 0
		 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 1
		 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1
		 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1
		 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1
		 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1 1
		 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1
		 0 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 1 0 1 0 1 0
		 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0
		 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 1 0 0
		 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 0 1 0 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 0
		 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0
		 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1
		 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1
		 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1
		 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0
		 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1;
	setAttr ".uvst[0].uvsp[500:511]" 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0
		 0 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 146 ".vt[0:145]"  -2.48131704 0.178654 2.75388694 -2.30557203 0.18639299 2.56610608
		 -2.11397791 0.178654 2.394526 -2.35452199 0.178654 2.88349605 -2.16292906 0.18639299 2.71191597
		 -1.98718405 0.178654 2.52413511 -2.44087791 0.18639299 2.841151 -2.23425007 0.196343 2.63901091
		 -2.027621984 0.18639299 2.4368701 -2.18749905 0.18639299 2.45059705 -2.28100204 0.18639299 2.827425
		 -2.044855118 0.18639299 2.59640694 -2.40012288 0.18639299 2.88281107 -2.19349504 0.196343 2.68067098
		 -2.35232306 0.196343 2.75451994 -1.98686695 0.18639299 2.47852993 -2.11617708 0.196343 2.52350211
		 -2.48163295 0.18639299 2.79949093 -2.2750051 0.196343 2.59735107 -2.068377018 0.18639299 2.39521003
		 -2.42364502 0.18639299 2.68161511 -2.31156802 0.196343 2.79618001 -2.075422049 0.196343 2.56516194
		 -2.39307809 0.196343 2.71286011 -2.15693212 0.196343 2.48184204 -2.43383408 0.156543 2.67120004
		 -2.51220012 0.156543 2.76824594 -2.31576109 0.156543 2.555691 -2.1976881 0.156543 2.44018197
		 -2.098943949 0.156543 2.36396503 -2.27081299 0.156543 2.83784008 -2.15274 0.156543 2.72233105
		 -2.3695569 0.156543 2.91405606 -2.034667015 0.156543 2.60682201 -1.95630002 0.156543 2.50977492
		 -1.95734894 0.156543 2.44965291 -1.99810398 0.156543 2.40799308 -2.038858891 0.156543 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.47039604 0.156543 2.87002802 -2.51115203 0.156543 2.82836795
		 -2.51220012 0.116743 2.76824594 -2.31576109 0.116743 2.555691 -2.098943949 0.116743 2.36396503
		 -2.51220012 0.046128999 2.76824594 -2.31576109 0.046128999 2.555691 -2.098943949 0.046128999 2.36396503
		 -2.47039604 0.046128999 2.87002802 -1.99810398 0.046128999 2.40799308 -2.36955595 0.046128999 2.91405606
		 -2.15274 0.046128999 2.72233105 -1.95630002 0.046128999 2.50977492 -2.36955595 0.116743 2.91405606
		 -2.15274 0.116743 2.72233105 -1.95630002 0.116743 2.50977492 -1.99810398 0.116743 2.40799308
		 -2.47039604 0.116743 2.87002802 -2.48131704 0.031148 2.75388694 -2.30557203 0.030399 2.56610608
		 -2.23425007 0.029436 2.63901091 -2.44087791 0.030399 2.841151 -2.11397791 0.031148 2.394526
		 -2.027621984 0.030399 2.4368701 -2.16292906 0.030399 2.71191597 -2.35452199 0.031148 2.88349605
		 -1.98718405 0.031148 2.52413511 -2.31576109 0.156543 2.555691 -2.43383408 0.116743 2.67120004
		 -2.098943949 0.156543 2.36396503 -2.1976881 0.116743 2.44018197 -2.51220012 0.076943003 2.76824594
		 -2.31576109 0.076943003 2.555691 -2.43383408 0.046128999 2.67120004 -2.098943949 0.076943003 2.36396503
		 -2.1976881 0.046128999 2.44018197 -2.42364502 0.030399 2.68161511 -2.48163295 0.030399 2.79949093
		 -2.2750051 0.029436 2.59735107 -2.35232306 0.029436 2.75451994 -2.18749905 0.030399 2.45059705
		 -2.068377018 0.030399 2.39521003 -2.11617708 0.029436 2.52350211 -2.40012288 0.030399 2.88281107
		 -2.19349504 0.029436 2.68067098 -2.28100204 0.030399 2.827425 -1.98686695 0.030399 2.47852993
		 -2.044855118 0.030399 2.59640694 -2.27081299 0.046128999 2.83784008 -2.3695569 0.076943003 2.91405606
		 -2.15274 0.076943003 2.72233105 -2.27081299 0.116743 2.83784008 -2.034667015 0.046128999 2.60682201
		 -1.95630002 0.076943003 2.50977492 -2.034667015 0.116743 2.60682201 -2.3695569 0.156543 2.91405606
		 -2.15274 0.156543 2.72233105 -1.95630002 0.156543 2.50977492 -1.99810398 0.156543 2.40799308
		 -1.95734894 0.116743 2.44965291 -2.038858891 0.116743 2.36633301 -1.99810398 0.076943003 2.40799308
		 -1.95734894 0.046128999 2.44965291 -2.038858891 0.046128999 2.36633301 -2.47039604 0.156543 2.87002802
		 -2.42964101 0.116743 2.91168809 -2.51115203 0.116743 2.82836795 -2.47039604 0.076943003 2.87002802
		 -2.42964101 0.046128999 2.91168809 -2.51115203 0.046128999 2.82836795 -2.51220012 0.033289 2.76824594
		 -2.31576109 0.033289 2.555691 -2.47039604 0.033289 2.87002802 -2.098943949 0.033289 2.36396503
		 -1.99810398 0.033289 2.40799308 -2.15274 0.033289 2.72233105 -2.3695569 0.033289 2.91405606
		 -1.95630002 0.033289 2.50977492 -2.51220012 0.156543 2.76824594 -2.43383408 0.156543 2.67120004
		 -2.1976881 0.156543 2.44018197 -2.43383408 0.076943003 2.67120004 -2.1976881 0.076943003 2.44018197
		 -2.39307809 0.029436 2.71286011 -2.15693212 0.029436 2.48184204 -2.31156802 0.029436 2.79618001
		 -2.075422049 0.029436 2.56516194 -2.27081299 0.076943003 2.83784008 -2.034667015 0.076943003 2.60682201
		 -2.27081299 0.156543 2.83784008 -2.034667015 0.156543 2.60682201 -1.95734894 0.156543 2.44965291
		 -2.038858891 0.156543 2.36633301 -1.95734894 0.076943003 2.44965291 -2.038858891 0.076943003 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.51115203 0.156543 2.82836795 -2.42964101 0.076943003 2.91168809
		 -2.51115203 0.076943003 2.82836795 -2.43383408 0.033289 2.67120004 -2.51115203 0.033289 2.82836795
		 -2.1976881 0.033289 2.44018197 -2.038858891 0.033289 2.36633301 -2.27081299 0.033289 2.83784008
		 -2.42964101 0.033289 2.91168809 -1.95734894 0.033289 2.44965291 -2.034667015 0.033289 2.60682201;
	setAttr -s 272 ".ed";
	setAttr ".ed[0:165]"  0 20 0 20 25 0 25 26 0 26 0 0 20 1 0 1 27 0 27 25 0
		 1 9 0 9 28 0 28 27 0 9 2 0 2 29 0 29 28 0 30 31 0 31 4 0 4 10 0 10 30 0 32 30 0 10 3 0
		 3 32 0 33 34 0 34 5 0 5 11 0 11 33 0 31 33 0 11 4 0 10 21 0 21 12 0 12 3 0 4 13 0
		 13 21 0 13 7 0 7 14 0 14 21 0 14 6 0 6 12 0 11 22 0 22 13 0 5 15 0 15 22 0 15 8 0
		 8 16 0 16 22 0 16 7 0 14 23 0 23 17 0 17 6 0 7 18 0 18 23 0 18 1 0 20 23 0 0 17 0
		 16 24 0 24 18 0 8 19 0 19 24 0 19 2 0 9 24 0 15 35 0 35 36 0 36 8 0 34 35 0 19 37 0
		 37 29 0 36 37 0 12 38 0 38 32 0 6 39 0 39 38 0 17 40 0 40 39 0 26 40 0 118 66 0 66 42 0
		 42 67 0 67 118 0 117 118 0 67 41 0 41 117 0 119 68 0 68 43 0 43 69 0 69 119 0 66 119 0
		 69 42 0 67 120 0 120 70 0 70 41 0 42 71 0 71 120 0 71 45 0 45 72 0 72 120 0 72 44 0
		 44 70 0 69 121 0 121 71 0 43 73 0 73 121 0 73 46 0 46 74 0 74 121 0 74 45 0 57 75 0
		 75 122 0 122 76 0 76 57 0 75 58 0 58 77 0 77 122 0 77 59 0 59 78 0 78 122 0 78 60 0
		 60 76 0 58 79 0 79 123 0 123 77 0 79 61 0 61 80 0 80 123 0 80 62 0 62 81 0 81 123 0
		 81 59 0 78 124 0 124 82 0 82 60 0 59 83 0 83 124 0 83 63 0 63 84 0 84 124 0 84 64 0
		 64 82 0 81 125 0 125 83 0 62 85 0 85 125 0 85 65 0 65 86 0 86 125 0 86 63 0 49 87 0
		 87 126 0 126 88 0 88 49 0 87 50 0 50 89 0 89 126 0 89 53 0 53 90 0 90 126 0 90 52 0
		 52 88 0 50 91 0 91 127 0 127 89 0 91 51 0 51 92 0 92 127 0 92 54 0 54 93 0 93 127 0
		 93 53 0 90 128 0;
	setAttr ".ed[166:271]" 128 94 0 94 52 0 53 95 0 95 128 0 93 129 0 129 95 0
		 54 96 0 96 129 0 130 96 0 54 98 0 98 130 0 97 130 0 98 55 0 55 97 0 131 97 0 55 99 0
		 99 131 0 68 131 0 99 43 0 98 132 0 132 100 0 100 55 0 92 132 0 51 101 0 101 132 0
		 101 48 0 48 100 0 99 133 0 133 73 0 100 133 0 48 102 0 102 133 0 102 46 0 134 103 0
		 103 56 0 56 104 0 104 134 0 94 134 0 104 52 0 135 117 0 41 105 0 105 135 0 103 135 0
		 105 56 0 104 136 0 136 88 0 56 106 0 106 136 0 106 47 0 47 107 0 107 136 0 107 49 0
		 105 137 0 137 106 0 70 137 0 44 108 0 108 137 0 108 47 0 72 138 0 138 109 0 109 44 0
		 45 110 0 110 138 0 110 58 0 75 138 0 57 109 0 108 139 0 139 111 0 111 47 0 109 139 0
		 76 139 0 60 111 0 74 140 0 140 110 0 46 112 0 112 140 0 112 61 0 79 140 0 102 141 0
		 141 112 0 48 113 0 113 141 0 113 62 0 80 141 0 87 142 0 142 114 0 114 50 0 49 115 0
		 115 142 0 115 64 0 84 142 0 63 114 0 107 143 0 143 115 0 111 143 0 82 143 0 101 144 0
		 144 113 0 51 116 0 116 144 0 116 65 0 85 144 0 91 145 0 145 116 0 114 145 0 86 145 0;
	setAttr -s 512 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.52629298 0.809928 -0.25890601 -0.42148501
		 0.82520002 -0.376026 -0.65006101 0.461981 -0.60332 -0.70441198 0.619452 -0.34652999
		 -0.42148501 0.82520002 -0.376026 -0.39437401 0.82580698 -0.40312901 -0.62843603 0.438642
		 -0.64238697 -0.65006101 0.461981 -0.60332 -0.39437401 0.82580698 -0.40312901 -0.36668199
		 0.82520002 -0.42963901 -0.58890301 0.461981 -0.663149 -0.62843603 0.438642 -0.64238697
		 -0.36668199 0.82520002 -0.42963901 -0.247289 0.809928 -0.53184998 -0.33098099 0.61945099
		 -0.711851 -0.58890301 0.461981 -0.663149 0.58890301 0.461981 0.663149 0.62843603
		 0.438642 0.64238697 0.39437401 0.82580698 0.40312901 0.36668199 0.82520002 0.42963901
		 0.33098099 0.619452 0.71184999 0.58890301 0.461981 0.663149 0.36668199 0.82520002
		 0.42963901 0.247289 0.809928 0.53184998 0.65006101 0.461981 0.60332 0.70441198 0.619452
		 0.34652901 0.52629298 0.809928 0.25890601 0.42148501 0.82520002 0.376026 0.62843603
		 0.438642 0.64238697 0.65006101 0.461981 0.60332 0.42148501 0.82520002 0.376026 0.39437401
		 0.82580698 0.40312901 0.247289 0.809928 0.53184998 0.36668199 0.82520002 0.42963901
		 0.042675 0.99486399 0.091783002 -0.077308998 0.96430999 0.25323999 0.36668199 0.82520002
		 0.42963901 0.39437401 0.82580698 0.40312901 0.067901 0.99527502 0.069408 0.042675
		 0.99486399 0.091783002 0.042675 0.99486399 0.091783002 0.067901 0.99527502 0.069408
		 0 1 0 -0.024591001 0.99940801 0.024057001 -0.077308998 0.96430999 0.25323999 0.042675
		 0.99486399 0.091783002 -0.024591001 0.99940801 0.024057001 -0.167448 0.97217703 0.163811
		 0.39437401 0.82580698 0.40312901 0.42148501 0.82520002 0.376026 0.090824001 0.99486399
		 0.044679999 0.067901 0.99527502 0.069408 0.42148501 0.82520002 0.376026 0.52629298
		 0.809928 0.25890601 0.25487599 0.96430999 -0.071731001 0.090824001 0.99486399 0.044679999
		 0.090824001 0.99486399 0.044679999 0.25487599 0.96430999 -0.071731001 0.167448 0.97217703
		 -0.163811 0.024591001 0.99940801 -0.024057001 0.067901 0.99527502 0.069408 0.090824001
		 0.99486399 0.044679999 0.024591001 0.99940801 -0.024057001 0 1 0 -0.167448 0.97217703
		 0.163811 -0.024591001 0.99940801 0.024057001 -0.090824001 0.99486399 -0.044679999
		 -0.25487599 0.96430999 0.071731001 -0.024591001 0.99940801 0.024057001 0 1 0 -0.067901
		 0.99527502 -0.069408 -0.090824001 0.99486399 -0.044679999 -0.090824001 0.99486399
		 -0.044679999 -0.067901 0.99527502 -0.069408 -0.39437401 0.82580698 -0.40312901 -0.42148501
		 0.82520002 -0.376026 -0.25487599 0.96430999 0.071731001 -0.090824001 0.99486399 -0.044679999
		 -0.42148501 0.82520002 -0.376026 -0.52629298 0.809928 -0.25890601 0 1 0 0.024591001
		 0.99940801 -0.024057001 -0.042675 0.99486399 -0.091783002 -0.067901 0.99527502 -0.069408
		 0.024591001 0.99940801 -0.024057001 0.167448 0.97217703 -0.163811 0.077308998 0.96430898
		 -0.25323999 -0.042675 0.99486399 -0.091783002 -0.042675 0.99486399 -0.091783002 0.077308998
		 0.96430898 -0.25323999 -0.247289 0.809928 -0.53184998 -0.36668199 0.82520002 -0.42963901
		 -0.067901 0.99527502 -0.069408 -0.042675 0.99486399 -0.091783002 -0.36668199 0.82520002
		 -0.42963901 -0.39437401 0.82580698 -0.40312901 0.167448 0.97217703 -0.163811 0.25487599
		 0.96430999 -0.071731001 0.53995699 0.809349 -0.231087 0.41876701 0.81043297 -0.40967301
		 0.25487599 0.96430999 -0.071731001 0.52629298 0.809928 0.25890601 0.70441198 0.619452
		 0.34652901 0.53995699 0.809349 -0.231087 -0.247289 0.809928 -0.53184998 0.077308998
		 0.96430898 -0.25323999 0.24288499 0.809349 -0.53475398 -0.33098099 0.61945099 -0.711851
		 0.077308998 0.96430898 -0.25323999 0.167448 0.97217703 -0.163811 0.41876701 0.81043297
		 -0.40967301 0.24288499 0.809349 -0.53475398 0.247289 0.809928 0.53184998 -0.077308998
		 0.96430999 0.25323999 -0.24288601 0.809349 0.53475302 0.33098099 0.619452 0.71184999
		 -0.077308998 0.96430999 0.25323999 -0.167448 0.97217703 0.163811 -0.41876701 0.81043398
		 0.40967199 -0.24288601 0.809349 0.53475302 -0.167448 0.97217703 0.163811 -0.25487599
		 0.96430999 0.071731001 -0.53995597 0.809349 0.231087 -0.41876701 0.81043398 0.40967199
		 -0.25487599 0.96430999 0.071731001 -0.52629298 0.809928 -0.25890601 -0.70441198 0.619452
		 -0.34652999 -0.53995597 0.809349 0.231087 -0.73439997 0 -0.67871702 -0.69930202 0
		 -0.714827 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 -1e-006 -0.44141999
		 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775 -0.66242999 0 -0.74912399
		 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202
		 0 -0.714827 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702
		 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.69930202
		 0 -0.714827 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827
		 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.69930202 0 -0.714827
		 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775;
	setAttr ".n[166:331]" -type "float3"  -0.42161399 0 -0.906775 -0.66242999 0
		 -0.74912399 -0.66242999 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775
		 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999
		 0 -0.74912399 -0.69930202 0 -0.714827 -0.060573999 -0.99771899 -0.029798999 -0.052843001
		 -0.99750501 -0.046805002 -0.008986 -0.99994999 -0.0044200001 -0.02781 -0.999587 0.0071720001
		 -0.052843001 -0.99750501 -0.046805002 -0.046137001 -0.99782097 -0.047161002 -0.0066049998
		 -0.999955 -0.0067520002 -0.008986 -0.99994999 -0.0044200001 -0.008986 -0.99994999
		 -0.0044200001 -0.0066049998 -0.999955 -0.0067520002 0 -1 0 -0.002382 -0.99999398
		 0.0023310001 -0.02781 -0.999587 0.0071720001 -0.008986 -0.99994999 -0.0044200001
		 -0.002382 -0.99999398 0.0023310001 -0.016672 -0.99972802 0.016310001 -0.046137001
		 -0.99782097 -0.047161002 -0.045634001 -0.99750501 -0.053858001 -0.004222 -0.99994999
		 -0.0090810005 -0.0066049998 -0.999955 -0.0067520002 -0.045634001 -0.99750501 -0.053858001
		 -0.028462 -0.99771899 -0.061213002 0.0077809999 -0.999587 -0.027646 -0.004222 -0.99994999
		 -0.0090810005 -0.004222 -0.99994999 -0.0090810005 0.0077809999 -0.999587 -0.027646
		 0.016672 -0.99972802 -0.016310001 0.002382 -0.99999398 -0.0023310001 -0.0066049998
		 -0.999955 -0.0067520002 -0.004222 -0.99994999 -0.0090810005 0.002382 -0.99999398
		 -0.0023310001 0 -1 0 -0.016672 -0.99972802 0.016310001 -0.002382 -0.99999398 0.0023310001
		 0.004222 -0.99994999 0.0090810005 -0.0077809999 -0.999587 0.027646 -0.002382 -0.99999398
		 0.0023310001 0 -1 0 0.0066049998 -0.999955 0.0067520002 0.004222 -0.99994999 0.0090810005
		 0.004222 -0.99994999 0.0090810005 0.0066049998 -0.999955 0.0067520002 0.046137001
		 -0.99782097 0.047161002 0.045634001 -0.99750501 0.053856999 -0.0077809999 -0.999587
		 0.027646 0.004222 -0.99994999 0.0090810005 0.045634001 -0.99750501 0.053856999 0.028462
		 -0.99771899 0.061213002 0 -1 0 0.002382 -0.99999398 -0.0023310001 0.008986 -0.99994999
		 0.0044209999 0.0066049998 -0.999955 0.0067520002 0.002382 -0.99999398 -0.0023310001
		 0.016672 -0.99972802 -0.016310001 0.02781 -0.99958801 -0.0071720001 0.008986 -0.99994999
		 0.0044209999 0.008986 -0.99994999 0.0044209999 0.02781 -0.99958801 -0.0071720001
		 0.060573999 -0.99771899 0.029798999 0.052843001 -0.99750501 0.046805002 0.0066049998
		 -0.999955 0.0067520002 0.008986 -0.99994999 0.0044209999 0.052843001 -0.99750501
		 0.046805002 0.046137001 -0.99782097 0.047161002 0.42161399 0 0.906775 0.66242999
		 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.90677601 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.66242999 0
		 0.74912399 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.42161399
		 0 0.90677601 0.66242999 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775
		 0.69930202 0 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202
		 0 0.714827 0.73439997 0 0.67871702 0.89730102 0 0.44141901 0.89730102 0 0.44141999
		 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.89730102 0 0.44141999 0.89730102
		 0 0.44141999 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997 0 0.67871702
		 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.42161399 0 0.906775 0.66242999 0
		 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.69930202 0
		 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997
		 0 0.67871702 0.89730102 0 0.44141999 0.89730102 0 0.44141901 0.73439997 0 0.67871702
		 0.92501998 0 -0.37991899 0.89730102 0 0.44141901 0.89730102 0 0.44141999 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899
		 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457
		 -0.42161399 0 -0.906775 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.89730102 0 0.44141999
		 0.89730102 0 0.44141999 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.89730102
		 0 0.44141999 0.89730102 0 0.44141901 0.92501998 0 -0.37991899 0.714827 0 -0.69930202
		 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.714827 0 -0.69930202 -0.42161399
		 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457;
	setAttr ".n[332:497]" -type "float3"  -0.42161399 0 -0.906775 0.400134 0 -0.916457
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 -0.40013501 -1e-006 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.40013501 -1e-006 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775 -0.92501998
		 -1e-006 0.37991801 -0.89730102 -1e-006 -0.44141999 -0.89730102 0 -0.44141999 -0.92501998
		 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 -1e-006 0.37991801 -0.92501998 0
		 0.37991801 -0.714827 0 0.69930202 0.42161399 0 0.906775 -0.40013501 0 0.91645598
		 -0.40013501 0 0.91645598 0.42161399 0 0.90677601 -0.40013501 0 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598
		 -0.714827 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399
		 0 0.90677601 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.714827 0 0.69930202 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.714827
		 0 0.69930202 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102 0 -0.44141999
		 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102
		 0 -0.44141999 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 0 0.37991801
		 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.56217402 -0.642546 -0.52066702 -0.66634798 -0.66971999 -0.327804
		 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.51303899 -0.679533 -0.52442902
		 -0.56217402 -0.642546 -0.52066702 -0.56217402 -0.642546 -0.52066702 -0.51303899 -0.679533
		 -0.52442902 -0.046137001 -0.99782097 -0.047161002 -0.052843001 -0.99750501 -0.046805002
		 -0.66634798 -0.66971999 -0.327804 -0.56217402 -0.642546 -0.52066702 -0.052843001
		 -0.99750501 -0.046805002 -0.060573999 -0.99771899 -0.029798999 -0.714827 0 0.69930202
		 -0.92501998 0 0.37991801 -0.37985 -0.91122502 0.159319 -0.25446099 -0.93449497 0.248934
		 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.66634798 -0.66971999 -0.327804
		 -0.37985 -0.91122502 0.159319 -0.37985 -0.91122502 0.159319 -0.66634798 -0.66971999
		 -0.327804 -0.060573999 -0.99771899 -0.029798999 -0.02781 -0.999587 0.0071720001 -0.25446099
		 -0.93449497 0.248934 -0.37985 -0.91122502 0.159319 -0.02781 -0.999587 0.0071720001
		 -0.016672 -0.99972802 0.016310001 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399
		 -0.50819898 -0.64254802 -0.57346898 -0.51303899 -0.679533 -0.52442902 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.31309599 -0.66972101 -0.673383 -0.50819898
		 -0.64254802 -0.57346898 -0.50819898 -0.64254802 -0.57346898 -0.31309599 -0.66972101
		 -0.673383 -0.028462 -0.99771899 -0.061213002 -0.045634001 -0.99750501 -0.053858001
		 -0.51303899 -0.679533 -0.52442902 -0.50819898 -0.64254802 -0.57346898 -0.045634001
		 -0.99750501 -0.053858001 -0.046137001 -0.99782097 -0.047161002 -0.42161399 0 -0.906775
		 0.400134 0 -0.916457 0.16762 -0.91122502 -0.376261 -0.31309599 -0.66972101 -0.673383
		 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.25446099 -0.93449497 -0.248935 0.16762
		 -0.91122502 -0.376261 0.16762 -0.91122502 -0.376261 0.25446099 -0.93449497 -0.248935
		 0.016672 -0.99972802 -0.016310001 0.0077809999 -0.999587 -0.027646 -0.31309599 -0.66972101
		 -0.673383 0.16762 -0.91122502 -0.376261 0.0077809999 -0.999587 -0.027646 -0.028462
		 -0.99771899 -0.061213002 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.50819999
		 -0.642546 0.57347 0.51303899 -0.679533 0.52442902 0.66242999 0 0.74912399 0.42161399
		 0 0.906775 0.31309599 -0.66971999 0.67338401 0.50819999 -0.642546 0.57347 0.50819999
		 -0.642546 0.57347 0.31309599 -0.66971999 0.67338401 0.028462 -0.99771899 0.061213002
		 0.045634001 -0.99750501 0.053856999 0.51303899 -0.679533 0.52442902 0.50819999 -0.642546
		 0.57347 0.045634001 -0.99750501 0.053856999 0.046137001 -0.99782097 0.047161002 0.42161399
		 0 0.906775 -0.40013501 0 0.91645598 -0.16762 -0.91122502 0.376261 0.31309599 -0.66971999
		 0.67338401 -0.40013501 0 0.91645598 -0.714827 0 0.69930202 -0.25446099 -0.93449497
		 0.248934 -0.16762 -0.91122502 0.376261 -0.16762 -0.91122502 0.376261 -0.25446099
		 -0.93449497 0.248934 -0.016672 -0.99972802 0.016310001 -0.0077809999 -0.999587 0.027646
		 0.31309599 -0.66971999 0.67338401 -0.16762 -0.91122502 0.376261 -0.0077809999 -0.999587
		 0.027646 0.028462 -0.99771899 0.061213002 0.714827 0 -0.69930202 0.92501998 0 -0.37991899
		 0.37985 -0.91122502 -0.15932 0.25446099 -0.93449497 -0.248935 0.92501998 0 -0.37991899
		 0.89730102 0 0.44141901 0.66634798 -0.66971999 0.327804 0.37985 -0.91122502 -0.15932
		 0.37985 -0.91122502 -0.15932 0.66634798 -0.66971999 0.327804 0.060573999 -0.99771899
		 0.029798999 0.02781 -0.99958801 -0.0071720001 0.25446099 -0.93449497 -0.248935 0.37985
		 -0.91122502 -0.15932 0.02781 -0.99958801 -0.0071720001 0.016672 -0.99972802 -0.016310001
		 0.89730102 0 0.44141901 0.73439997 0 0.67871702;
	setAttr ".n[498:511]" -type "float3"  0.56217402 -0.642546 0.52066702 0.66634798
		 -0.66971999 0.327804 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.51303899 -0.679533
		 0.52442902 0.56217402 -0.642546 0.52066702 0.56217402 -0.642546 0.52066702 0.51303899
		 -0.679533 0.52442902 0.046137001 -0.99782097 0.047161002 0.052843001 -0.99750501
		 0.046805002 0.66634798 -0.66971999 0.327804 0.56217402 -0.642546 0.52066702 0.052843001
		 -0.99750501 0.046805002 0.060573999 -0.99771899 0.029798999;
	setAttr -s 128 -ch 512 ".fc[0:127]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 65 66 3
		f 4 4 5 6 -2
		mu 0 4 1 67 68 2
		f 4 7 8 9 -6
		mu 0 4 4 69 70 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 16
		mu 0 4 71 72 73 74
		f 4 17 -17 18 19
		mu 0 4 16 10 13 17
		f 4 20 21 22 23
		mu 0 4 75 18 19 76
		f 4 24 -24 25 -15
		mu 0 4 11 14 15 12
		f 4 -19 26 27 28
		mu 0 4 20 77 78 79
		f 4 -16 29 30 -27
		mu 0 4 21 80 81 82
		f 4 -31 31 32 33
		mu 0 4 83 84 85 86
		f 4 -28 -34 34 35
		mu 0 4 23 22 87 88
		f 4 -26 36 37 -30
		mu 0 4 24 89 90 91
		f 4 -23 38 39 -37
		mu 0 4 28 33 92 93
		f 4 -40 40 41 42
		mu 0 4 94 34 95 96
		f 4 -38 -43 43 -32
		mu 0 4 25 29 97 98
		f 4 -35 44 45 46
		mu 0 4 27 99 100 101
		f 4 -33 47 48 -45
		mu 0 4 26 102 103 104
		f 4 -49 49 -5 50
		mu 0 4 105 106 107 108
		f 4 -46 -51 -1 51
		mu 0 4 32 31 37 38
		f 4 -44 52 53 -48
		mu 0 4 30 109 110 111
		f 4 -42 54 55 -53
		mu 0 4 35 39 112 113
		f 4 -56 56 -11 57
		mu 0 4 114 42 44 115
		f 4 -54 -58 -8 -50
		mu 0 4 36 40 43 41
		f 4 -41 58 59 60
		mu 0 4 116 117 118 119
		f 4 -39 -22 61 -59
		mu 0 4 46 49 50 47
		f 4 -57 62 63 -12
		mu 0 4 53 120 121 54
		f 4 -55 -61 64 -63
		mu 0 4 51 45 48 52
		f 4 -29 65 66 -20
		mu 0 4 55 122 123 58
		f 4 -36 67 68 -66
		mu 0 4 56 124 125 57
		f 4 -47 69 70 -68
		mu 0 4 59 126 127 60
		f 4 -52 -4 71 -70
		mu 0 4 61 63 64 62
		f 4 72 73 74 75
		mu 0 4 269 270 271 272
		f 4 76 -76 77 78
		mu 0 4 132 128 273 274
		f 4 79 80 81 82
		mu 0 4 275 135 276 277
		f 4 83 -83 84 -74
		mu 0 4 129 134 278 279
		f 4 -78 85 86 87
		mu 0 4 133 280 281 282
		f 4 -75 88 89 -86
		mu 0 4 131 283 284 285
		f 4 -90 90 91 92
		mu 0 4 286 287 288 289
		f 4 -87 -93 93 94
		mu 0 4 139 138 290 291
		f 4 -85 95 96 -89
		mu 0 4 130 292 293 294
		f 4 -82 97 98 -96
		mu 0 4 137 136 295 296
		f 4 -99 99 100 101
		mu 0 4 297 145 298 299
		f 4 -97 -102 102 -91
		mu 0 4 140 144 300 301
		f 4 103 104 105 106
		mu 0 4 302 303 304 305
		f 4 107 108 109 -105
		mu 0 4 306 307 308 309
		f 4 -110 110 111 112
		mu 0 4 310 311 312 313
		f 4 -106 -113 113 114
		mu 0 4 314 150 315 316
		f 4 115 116 117 -109
		mu 0 4 317 318 319 320
		f 4 118 119 120 -117
		mu 0 4 321 322 323 324
		f 4 -121 121 122 123
		mu 0 4 325 326 327 328
		f 4 -118 -124 124 -111
		mu 0 4 153 158 329 330
		f 4 -114 125 126 127
		mu 0 4 331 332 333 334
		f 4 -112 128 129 -126
		mu 0 4 155 335 336 337
		f 4 -130 130 131 132
		mu 0 4 338 339 340 341
		f 4 -127 -133 133 134
		mu 0 4 342 163 343 344
		f 4 -125 135 136 -129
		mu 0 4 154 345 346 347
		f 4 -123 137 138 -136
		mu 0 4 162 348 349 350
		f 4 -139 139 140 141
		mu 0 4 351 352 353 354
		f 4 -137 -142 142 -131
		mu 0 4 165 169 355 356
		f 4 143 144 145 146
		mu 0 4 357 358 359 360
		f 4 147 148 149 -145
		mu 0 4 361 362 363 364
		f 4 -150 150 151 152
		mu 0 4 365 366 367 368
		f 4 -146 -153 153 154
		mu 0 4 176 175 369 370
		f 4 155 156 157 -149
		mu 0 4 371 372 373 374
		f 4 158 159 160 -157
		mu 0 4 375 376 377 378
		f 4 -161 161 162 163
		mu 0 4 379 185 380 381
		f 4 -158 -164 164 -151
		mu 0 4 178 183 382 383
		f 4 -154 165 166 167
		mu 0 4 181 384 385 189
		f 4 -152 168 169 -166
		mu 0 4 180 386 387 188
		f 4 -165 170 171 -169
		mu 0 4 179 388 389 190
		f 4 -163 172 173 -171
		mu 0 4 187 186 192 191
		f 4 174 -173 175 176
		mu 0 4 390 194 391 392
		f 4 177 -177 178 179
		mu 0 4 393 193 394 395
		f 4 180 -180 181 182
		mu 0 4 396 197 397 398
		f 4 183 -183 184 -81
		mu 0 4 201 199 399 400
		f 4 -179 185 186 187
		mu 0 4 401 402 403 404
		f 4 -176 -162 188 -186
		mu 0 4 196 195 405 406
		f 4 -189 -160 189 190
		mu 0 4 407 205 408 409
		f 4 -187 -191 191 192
		mu 0 4 410 203 411 412
		f 4 -185 193 194 -98
		mu 0 4 202 413 414 415
		f 4 -182 -188 195 -194
		mu 0 4 200 198 416 417
		f 4 -196 -193 196 197
		mu 0 4 418 204 419 420
		f 4 -195 -198 198 -100
		mu 0 4 210 209 421 422
		f 4 199 200 201 202
		mu 0 4 423 424 425 426
		f 4 203 -203 204 -168
		mu 0 4 217 213 427 428
		f 4 205 -79 206 207
		mu 0 4 429 220 430 431
		f 4 208 -208 209 -201
		mu 0 4 214 219 432 433
		f 4 -205 210 211 -155
		mu 0 4 218 434 435 436
		f 4 -202 212 213 -211
		mu 0 4 216 437 438 439
		f 4 -214 214 215 216
		mu 0 4 440 441 442 443
		f 4 -212 -217 217 -147
		mu 0 4 224 223 444 445
		f 4 -210 218 219 -213
		mu 0 4 215 446 447 448
		f 4 -207 -88 220 -219
		mu 0 4 222 221 449 450
		f 4 -221 -95 221 222
		mu 0 4 451 230 452 453
		f 4 -220 -223 223 -215
		mu 0 4 225 229 454 455
		f 4 -94 224 225 226
		mu 0 4 143 456 457 234
		f 4 -92 227 228 -225
		mu 0 4 142 458 459 233
		f 4 -229 229 -108 230
		mu 0 4 460 461 462 463
		f 4 -226 -231 -104 231
		mu 0 4 464 236 149 465
		f 4 -224 232 233 234
		mu 0 4 466 467 468 469
		f 4 -222 -227 235 -233
		mu 0 4 232 231 241 239
		f 4 -236 -232 -107 236
		mu 0 4 470 238 148 471
		f 4 -234 -237 -115 237
		mu 0 4 472 242 151 473
		f 4 -103 238 239 -228
		mu 0 4 141 474 475 235
		f 4 -101 240 241 -239
		mu 0 4 147 146 245 244
		f 4 -242 242 -119 243
		mu 0 4 476 477 478 479
		f 4 -240 -244 -116 -230
		mu 0 4 237 246 157 152
		f 4 -199 244 245 -241
		mu 0 4 212 480 481 249
		f 4 -197 246 247 -245
		mu 0 4 211 482 483 248
		f 4 -248 248 -122 249
		mu 0 4 484 485 486 487
		f 4 -246 -250 -120 -243
		mu 0 4 247 251 160 159
		f 4 -148 250 251 252
		mu 0 4 488 489 490 491
		f 4 -144 253 254 -251
		mu 0 4 174 173 255 253
		f 4 -255 255 -134 256
		mu 0 4 492 493 494 495
		f 4 -252 -257 -132 257
		mu 0 4 496 256 167 497
		f 4 -218 258 259 -254
		mu 0 4 228 498 499 260
		f 4 -216 -235 260 -259
		mu 0 4 227 226 240 259
		f 4 -261 -238 -128 261
		mu 0 4 500 243 156 501
		f 4 -260 -262 -135 -256
		mu 0 4 257 261 164 168
		f 4 -192 262 263 -247
		mu 0 4 208 502 503 250
		f 4 -190 264 265 -263
		mu 0 4 207 206 263 262
		f 4 -266 266 -140 267
		mu 0 4 504 505 506 507
		f 4 -264 -268 -138 -249
		mu 0 4 252 264 170 161
		f 4 -159 268 269 -265
		mu 0 4 184 508 509 267
		f 4 -156 -253 270 -269
		mu 0 4 182 177 254 266
		f 4 -271 -258 -143 271
		mu 0 4 510 258 166 511
		f 4 -270 -272 -141 -267
		mu 0 4 265 268 172 171;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface15";
	setAttr ".t" -type "double3" 0.80913979803064195 0.68853362395118278 -3.7523632027870772 ;
	setAttr ".r" -type "double3" 0 108.47963193281559 0 ;
	setAttr ".s" -type "double3" 0.45411853506603828 0.45411853506603828 0.45411853506603828 ;
	setAttr ".rp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
	setAttr ".sp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
createNode mesh -n "polySurfaceShape15" -p "polySurface15";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:31]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[32:127]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "vtx[0:145]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 512 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0 0 0 1 0 1 0 0 0 1 0 0
		 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 1
		 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1
		 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1
		 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1
		 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1 1
		 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1
		 0 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 1 0 1 0 1 0
		 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0
		 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 1 0 0
		 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 0 1 0 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 0
		 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0
		 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1
		 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1
		 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1
		 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0
		 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1;
	setAttr ".uvst[0].uvsp[500:511]" 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0
		 0 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 146 ".vt[0:145]"  -2.48131704 0.178654 2.75388694 -2.30557203 0.18639299 2.56610608
		 -2.11397791 0.178654 2.394526 -2.35452199 0.178654 2.88349605 -2.16292906 0.18639299 2.71191597
		 -1.98718405 0.178654 2.52413511 -2.44087791 0.18639299 2.841151 -2.23425007 0.196343 2.63901091
		 -2.027621984 0.18639299 2.4368701 -2.18749905 0.18639299 2.45059705 -2.28100204 0.18639299 2.827425
		 -2.044855118 0.18639299 2.59640694 -2.40012288 0.18639299 2.88281107 -2.19349504 0.196343 2.68067098
		 -2.35232306 0.196343 2.75451994 -1.98686695 0.18639299 2.47852993 -2.11617708 0.196343 2.52350211
		 -2.48163295 0.18639299 2.79949093 -2.2750051 0.196343 2.59735107 -2.068377018 0.18639299 2.39521003
		 -2.42364502 0.18639299 2.68161511 -2.31156802 0.196343 2.79618001 -2.075422049 0.196343 2.56516194
		 -2.39307809 0.196343 2.71286011 -2.15693212 0.196343 2.48184204 -2.43383408 0.156543 2.67120004
		 -2.51220012 0.156543 2.76824594 -2.31576109 0.156543 2.555691 -2.1976881 0.156543 2.44018197
		 -2.098943949 0.156543 2.36396503 -2.27081299 0.156543 2.83784008 -2.15274 0.156543 2.72233105
		 -2.3695569 0.156543 2.91405606 -2.034667015 0.156543 2.60682201 -1.95630002 0.156543 2.50977492
		 -1.95734894 0.156543 2.44965291 -1.99810398 0.156543 2.40799308 -2.038858891 0.156543 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.47039604 0.156543 2.87002802 -2.51115203 0.156543 2.82836795
		 -2.51220012 0.116743 2.76824594 -2.31576109 0.116743 2.555691 -2.098943949 0.116743 2.36396503
		 -2.51220012 0.046128999 2.76824594 -2.31576109 0.046128999 2.555691 -2.098943949 0.046128999 2.36396503
		 -2.47039604 0.046128999 2.87002802 -1.99810398 0.046128999 2.40799308 -2.36955595 0.046128999 2.91405606
		 -2.15274 0.046128999 2.72233105 -1.95630002 0.046128999 2.50977492 -2.36955595 0.116743 2.91405606
		 -2.15274 0.116743 2.72233105 -1.95630002 0.116743 2.50977492 -1.99810398 0.116743 2.40799308
		 -2.47039604 0.116743 2.87002802 -2.48131704 0.031148 2.75388694 -2.30557203 0.030399 2.56610608
		 -2.23425007 0.029436 2.63901091 -2.44087791 0.030399 2.841151 -2.11397791 0.031148 2.394526
		 -2.027621984 0.030399 2.4368701 -2.16292906 0.030399 2.71191597 -2.35452199 0.031148 2.88349605
		 -1.98718405 0.031148 2.52413511 -2.31576109 0.156543 2.555691 -2.43383408 0.116743 2.67120004
		 -2.098943949 0.156543 2.36396503 -2.1976881 0.116743 2.44018197 -2.51220012 0.076943003 2.76824594
		 -2.31576109 0.076943003 2.555691 -2.43383408 0.046128999 2.67120004 -2.098943949 0.076943003 2.36396503
		 -2.1976881 0.046128999 2.44018197 -2.42364502 0.030399 2.68161511 -2.48163295 0.030399 2.79949093
		 -2.2750051 0.029436 2.59735107 -2.35232306 0.029436 2.75451994 -2.18749905 0.030399 2.45059705
		 -2.068377018 0.030399 2.39521003 -2.11617708 0.029436 2.52350211 -2.40012288 0.030399 2.88281107
		 -2.19349504 0.029436 2.68067098 -2.28100204 0.030399 2.827425 -1.98686695 0.030399 2.47852993
		 -2.044855118 0.030399 2.59640694 -2.27081299 0.046128999 2.83784008 -2.3695569 0.076943003 2.91405606
		 -2.15274 0.076943003 2.72233105 -2.27081299 0.116743 2.83784008 -2.034667015 0.046128999 2.60682201
		 -1.95630002 0.076943003 2.50977492 -2.034667015 0.116743 2.60682201 -2.3695569 0.156543 2.91405606
		 -2.15274 0.156543 2.72233105 -1.95630002 0.156543 2.50977492 -1.99810398 0.156543 2.40799308
		 -1.95734894 0.116743 2.44965291 -2.038858891 0.116743 2.36633301 -1.99810398 0.076943003 2.40799308
		 -1.95734894 0.046128999 2.44965291 -2.038858891 0.046128999 2.36633301 -2.47039604 0.156543 2.87002802
		 -2.42964101 0.116743 2.91168809 -2.51115203 0.116743 2.82836795 -2.47039604 0.076943003 2.87002802
		 -2.42964101 0.046128999 2.91168809 -2.51115203 0.046128999 2.82836795 -2.51220012 0.033289 2.76824594
		 -2.31576109 0.033289 2.555691 -2.47039604 0.033289 2.87002802 -2.098943949 0.033289 2.36396503
		 -1.99810398 0.033289 2.40799308 -2.15274 0.033289 2.72233105 -2.3695569 0.033289 2.91405606
		 -1.95630002 0.033289 2.50977492 -2.51220012 0.156543 2.76824594 -2.43383408 0.156543 2.67120004
		 -2.1976881 0.156543 2.44018197 -2.43383408 0.076943003 2.67120004 -2.1976881 0.076943003 2.44018197
		 -2.39307809 0.029436 2.71286011 -2.15693212 0.029436 2.48184204 -2.31156802 0.029436 2.79618001
		 -2.075422049 0.029436 2.56516194 -2.27081299 0.076943003 2.83784008 -2.034667015 0.076943003 2.60682201
		 -2.27081299 0.156543 2.83784008 -2.034667015 0.156543 2.60682201 -1.95734894 0.156543 2.44965291
		 -2.038858891 0.156543 2.36633301 -1.95734894 0.076943003 2.44965291 -2.038858891 0.076943003 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.51115203 0.156543 2.82836795 -2.42964101 0.076943003 2.91168809
		 -2.51115203 0.076943003 2.82836795 -2.43383408 0.033289 2.67120004 -2.51115203 0.033289 2.82836795
		 -2.1976881 0.033289 2.44018197 -2.038858891 0.033289 2.36633301 -2.27081299 0.033289 2.83784008
		 -2.42964101 0.033289 2.91168809 -1.95734894 0.033289 2.44965291 -2.034667015 0.033289 2.60682201;
	setAttr -s 272 ".ed";
	setAttr ".ed[0:165]"  0 20 0 20 25 0 25 26 0 26 0 0 20 1 0 1 27 0 27 25 0
		 1 9 0 9 28 0 28 27 0 9 2 0 2 29 0 29 28 0 30 31 0 31 4 0 4 10 0 10 30 0 32 30 0 10 3 0
		 3 32 0 33 34 0 34 5 0 5 11 0 11 33 0 31 33 0 11 4 0 10 21 0 21 12 0 12 3 0 4 13 0
		 13 21 0 13 7 0 7 14 0 14 21 0 14 6 0 6 12 0 11 22 0 22 13 0 5 15 0 15 22 0 15 8 0
		 8 16 0 16 22 0 16 7 0 14 23 0 23 17 0 17 6 0 7 18 0 18 23 0 18 1 0 20 23 0 0 17 0
		 16 24 0 24 18 0 8 19 0 19 24 0 19 2 0 9 24 0 15 35 0 35 36 0 36 8 0 34 35 0 19 37 0
		 37 29 0 36 37 0 12 38 0 38 32 0 6 39 0 39 38 0 17 40 0 40 39 0 26 40 0 118 66 0 66 42 0
		 42 67 0 67 118 0 117 118 0 67 41 0 41 117 0 119 68 0 68 43 0 43 69 0 69 119 0 66 119 0
		 69 42 0 67 120 0 120 70 0 70 41 0 42 71 0 71 120 0 71 45 0 45 72 0 72 120 0 72 44 0
		 44 70 0 69 121 0 121 71 0 43 73 0 73 121 0 73 46 0 46 74 0 74 121 0 74 45 0 57 75 0
		 75 122 0 122 76 0 76 57 0 75 58 0 58 77 0 77 122 0 77 59 0 59 78 0 78 122 0 78 60 0
		 60 76 0 58 79 0 79 123 0 123 77 0 79 61 0 61 80 0 80 123 0 80 62 0 62 81 0 81 123 0
		 81 59 0 78 124 0 124 82 0 82 60 0 59 83 0 83 124 0 83 63 0 63 84 0 84 124 0 84 64 0
		 64 82 0 81 125 0 125 83 0 62 85 0 85 125 0 85 65 0 65 86 0 86 125 0 86 63 0 49 87 0
		 87 126 0 126 88 0 88 49 0 87 50 0 50 89 0 89 126 0 89 53 0 53 90 0 90 126 0 90 52 0
		 52 88 0 50 91 0 91 127 0 127 89 0 91 51 0 51 92 0 92 127 0 92 54 0 54 93 0 93 127 0
		 93 53 0 90 128 0;
	setAttr ".ed[166:271]" 128 94 0 94 52 0 53 95 0 95 128 0 93 129 0 129 95 0
		 54 96 0 96 129 0 130 96 0 54 98 0 98 130 0 97 130 0 98 55 0 55 97 0 131 97 0 55 99 0
		 99 131 0 68 131 0 99 43 0 98 132 0 132 100 0 100 55 0 92 132 0 51 101 0 101 132 0
		 101 48 0 48 100 0 99 133 0 133 73 0 100 133 0 48 102 0 102 133 0 102 46 0 134 103 0
		 103 56 0 56 104 0 104 134 0 94 134 0 104 52 0 135 117 0 41 105 0 105 135 0 103 135 0
		 105 56 0 104 136 0 136 88 0 56 106 0 106 136 0 106 47 0 47 107 0 107 136 0 107 49 0
		 105 137 0 137 106 0 70 137 0 44 108 0 108 137 0 108 47 0 72 138 0 138 109 0 109 44 0
		 45 110 0 110 138 0 110 58 0 75 138 0 57 109 0 108 139 0 139 111 0 111 47 0 109 139 0
		 76 139 0 60 111 0 74 140 0 140 110 0 46 112 0 112 140 0 112 61 0 79 140 0 102 141 0
		 141 112 0 48 113 0 113 141 0 113 62 0 80 141 0 87 142 0 142 114 0 114 50 0 49 115 0
		 115 142 0 115 64 0 84 142 0 63 114 0 107 143 0 143 115 0 111 143 0 82 143 0 101 144 0
		 144 113 0 51 116 0 116 144 0 116 65 0 85 144 0 91 145 0 145 116 0 114 145 0 86 145 0;
	setAttr -s 512 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.52629298 0.809928 -0.25890601 -0.42148501
		 0.82520002 -0.376026 -0.65006101 0.461981 -0.60332 -0.70441198 0.619452 -0.34652999
		 -0.42148501 0.82520002 -0.376026 -0.39437401 0.82580698 -0.40312901 -0.62843603 0.438642
		 -0.64238697 -0.65006101 0.461981 -0.60332 -0.39437401 0.82580698 -0.40312901 -0.36668199
		 0.82520002 -0.42963901 -0.58890301 0.461981 -0.663149 -0.62843603 0.438642 -0.64238697
		 -0.36668199 0.82520002 -0.42963901 -0.247289 0.809928 -0.53184998 -0.33098099 0.61945099
		 -0.711851 -0.58890301 0.461981 -0.663149 0.58890301 0.461981 0.663149 0.62843603
		 0.438642 0.64238697 0.39437401 0.82580698 0.40312901 0.36668199 0.82520002 0.42963901
		 0.33098099 0.619452 0.71184999 0.58890301 0.461981 0.663149 0.36668199 0.82520002
		 0.42963901 0.247289 0.809928 0.53184998 0.65006101 0.461981 0.60332 0.70441198 0.619452
		 0.34652901 0.52629298 0.809928 0.25890601 0.42148501 0.82520002 0.376026 0.62843603
		 0.438642 0.64238697 0.65006101 0.461981 0.60332 0.42148501 0.82520002 0.376026 0.39437401
		 0.82580698 0.40312901 0.247289 0.809928 0.53184998 0.36668199 0.82520002 0.42963901
		 0.042675 0.99486399 0.091783002 -0.077308998 0.96430999 0.25323999 0.36668199 0.82520002
		 0.42963901 0.39437401 0.82580698 0.40312901 0.067901 0.99527502 0.069408 0.042675
		 0.99486399 0.091783002 0.042675 0.99486399 0.091783002 0.067901 0.99527502 0.069408
		 0 1 0 -0.024591001 0.99940801 0.024057001 -0.077308998 0.96430999 0.25323999 0.042675
		 0.99486399 0.091783002 -0.024591001 0.99940801 0.024057001 -0.167448 0.97217703 0.163811
		 0.39437401 0.82580698 0.40312901 0.42148501 0.82520002 0.376026 0.090824001 0.99486399
		 0.044679999 0.067901 0.99527502 0.069408 0.42148501 0.82520002 0.376026 0.52629298
		 0.809928 0.25890601 0.25487599 0.96430999 -0.071731001 0.090824001 0.99486399 0.044679999
		 0.090824001 0.99486399 0.044679999 0.25487599 0.96430999 -0.071731001 0.167448 0.97217703
		 -0.163811 0.024591001 0.99940801 -0.024057001 0.067901 0.99527502 0.069408 0.090824001
		 0.99486399 0.044679999 0.024591001 0.99940801 -0.024057001 0 1 0 -0.167448 0.97217703
		 0.163811 -0.024591001 0.99940801 0.024057001 -0.090824001 0.99486399 -0.044679999
		 -0.25487599 0.96430999 0.071731001 -0.024591001 0.99940801 0.024057001 0 1 0 -0.067901
		 0.99527502 -0.069408 -0.090824001 0.99486399 -0.044679999 -0.090824001 0.99486399
		 -0.044679999 -0.067901 0.99527502 -0.069408 -0.39437401 0.82580698 -0.40312901 -0.42148501
		 0.82520002 -0.376026 -0.25487599 0.96430999 0.071731001 -0.090824001 0.99486399 -0.044679999
		 -0.42148501 0.82520002 -0.376026 -0.52629298 0.809928 -0.25890601 0 1 0 0.024591001
		 0.99940801 -0.024057001 -0.042675 0.99486399 -0.091783002 -0.067901 0.99527502 -0.069408
		 0.024591001 0.99940801 -0.024057001 0.167448 0.97217703 -0.163811 0.077308998 0.96430898
		 -0.25323999 -0.042675 0.99486399 -0.091783002 -0.042675 0.99486399 -0.091783002 0.077308998
		 0.96430898 -0.25323999 -0.247289 0.809928 -0.53184998 -0.36668199 0.82520002 -0.42963901
		 -0.067901 0.99527502 -0.069408 -0.042675 0.99486399 -0.091783002 -0.36668199 0.82520002
		 -0.42963901 -0.39437401 0.82580698 -0.40312901 0.167448 0.97217703 -0.163811 0.25487599
		 0.96430999 -0.071731001 0.53995699 0.809349 -0.231087 0.41876701 0.81043297 -0.40967301
		 0.25487599 0.96430999 -0.071731001 0.52629298 0.809928 0.25890601 0.70441198 0.619452
		 0.34652901 0.53995699 0.809349 -0.231087 -0.247289 0.809928 -0.53184998 0.077308998
		 0.96430898 -0.25323999 0.24288499 0.809349 -0.53475398 -0.33098099 0.61945099 -0.711851
		 0.077308998 0.96430898 -0.25323999 0.167448 0.97217703 -0.163811 0.41876701 0.81043297
		 -0.40967301 0.24288499 0.809349 -0.53475398 0.247289 0.809928 0.53184998 -0.077308998
		 0.96430999 0.25323999 -0.24288601 0.809349 0.53475302 0.33098099 0.619452 0.71184999
		 -0.077308998 0.96430999 0.25323999 -0.167448 0.97217703 0.163811 -0.41876701 0.81043398
		 0.40967199 -0.24288601 0.809349 0.53475302 -0.167448 0.97217703 0.163811 -0.25487599
		 0.96430999 0.071731001 -0.53995597 0.809349 0.231087 -0.41876701 0.81043398 0.40967199
		 -0.25487599 0.96430999 0.071731001 -0.52629298 0.809928 -0.25890601 -0.70441198 0.619452
		 -0.34652999 -0.53995597 0.809349 0.231087 -0.73439997 0 -0.67871702 -0.69930202 0
		 -0.714827 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 -1e-006 -0.44141999
		 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775 -0.66242999 0 -0.74912399
		 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202
		 0 -0.714827 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702
		 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.69930202
		 0 -0.714827 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827
		 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.69930202 0 -0.714827
		 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775;
	setAttr ".n[166:331]" -type "float3"  -0.42161399 0 -0.906775 -0.66242999 0
		 -0.74912399 -0.66242999 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775
		 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999
		 0 -0.74912399 -0.69930202 0 -0.714827 -0.060573999 -0.99771899 -0.029798999 -0.052843001
		 -0.99750501 -0.046805002 -0.008986 -0.99994999 -0.0044200001 -0.02781 -0.999587 0.0071720001
		 -0.052843001 -0.99750501 -0.046805002 -0.046137001 -0.99782097 -0.047161002 -0.0066049998
		 -0.999955 -0.0067520002 -0.008986 -0.99994999 -0.0044200001 -0.008986 -0.99994999
		 -0.0044200001 -0.0066049998 -0.999955 -0.0067520002 0 -1 0 -0.002382 -0.99999398
		 0.0023310001 -0.02781 -0.999587 0.0071720001 -0.008986 -0.99994999 -0.0044200001
		 -0.002382 -0.99999398 0.0023310001 -0.016672 -0.99972802 0.016310001 -0.046137001
		 -0.99782097 -0.047161002 -0.045634001 -0.99750501 -0.053858001 -0.004222 -0.99994999
		 -0.0090810005 -0.0066049998 -0.999955 -0.0067520002 -0.045634001 -0.99750501 -0.053858001
		 -0.028462 -0.99771899 -0.061213002 0.0077809999 -0.999587 -0.027646 -0.004222 -0.99994999
		 -0.0090810005 -0.004222 -0.99994999 -0.0090810005 0.0077809999 -0.999587 -0.027646
		 0.016672 -0.99972802 -0.016310001 0.002382 -0.99999398 -0.0023310001 -0.0066049998
		 -0.999955 -0.0067520002 -0.004222 -0.99994999 -0.0090810005 0.002382 -0.99999398
		 -0.0023310001 0 -1 0 -0.016672 -0.99972802 0.016310001 -0.002382 -0.99999398 0.0023310001
		 0.004222 -0.99994999 0.0090810005 -0.0077809999 -0.999587 0.027646 -0.002382 -0.99999398
		 0.0023310001 0 -1 0 0.0066049998 -0.999955 0.0067520002 0.004222 -0.99994999 0.0090810005
		 0.004222 -0.99994999 0.0090810005 0.0066049998 -0.999955 0.0067520002 0.046137001
		 -0.99782097 0.047161002 0.045634001 -0.99750501 0.053856999 -0.0077809999 -0.999587
		 0.027646 0.004222 -0.99994999 0.0090810005 0.045634001 -0.99750501 0.053856999 0.028462
		 -0.99771899 0.061213002 0 -1 0 0.002382 -0.99999398 -0.0023310001 0.008986 -0.99994999
		 0.0044209999 0.0066049998 -0.999955 0.0067520002 0.002382 -0.99999398 -0.0023310001
		 0.016672 -0.99972802 -0.016310001 0.02781 -0.99958801 -0.0071720001 0.008986 -0.99994999
		 0.0044209999 0.008986 -0.99994999 0.0044209999 0.02781 -0.99958801 -0.0071720001
		 0.060573999 -0.99771899 0.029798999 0.052843001 -0.99750501 0.046805002 0.0066049998
		 -0.999955 0.0067520002 0.008986 -0.99994999 0.0044209999 0.052843001 -0.99750501
		 0.046805002 0.046137001 -0.99782097 0.047161002 0.42161399 0 0.906775 0.66242999
		 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.90677601 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.66242999 0
		 0.74912399 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.42161399
		 0 0.90677601 0.66242999 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775
		 0.69930202 0 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202
		 0 0.714827 0.73439997 0 0.67871702 0.89730102 0 0.44141901 0.89730102 0 0.44141999
		 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.89730102 0 0.44141999 0.89730102
		 0 0.44141999 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997 0 0.67871702
		 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.42161399 0 0.906775 0.66242999 0
		 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.69930202 0
		 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997
		 0 0.67871702 0.89730102 0 0.44141999 0.89730102 0 0.44141901 0.73439997 0 0.67871702
		 0.92501998 0 -0.37991899 0.89730102 0 0.44141901 0.89730102 0 0.44141999 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899
		 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457
		 -0.42161399 0 -0.906775 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.89730102 0 0.44141999
		 0.89730102 0 0.44141999 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.89730102
		 0 0.44141999 0.89730102 0 0.44141901 0.92501998 0 -0.37991899 0.714827 0 -0.69930202
		 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.714827 0 -0.69930202 -0.42161399
		 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457;
	setAttr ".n[332:497]" -type "float3"  -0.42161399 0 -0.906775 0.400134 0 -0.916457
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 -0.40013501 -1e-006 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.40013501 -1e-006 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775 -0.92501998
		 -1e-006 0.37991801 -0.89730102 -1e-006 -0.44141999 -0.89730102 0 -0.44141999 -0.92501998
		 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 -1e-006 0.37991801 -0.92501998 0
		 0.37991801 -0.714827 0 0.69930202 0.42161399 0 0.906775 -0.40013501 0 0.91645598
		 -0.40013501 0 0.91645598 0.42161399 0 0.90677601 -0.40013501 0 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598
		 -0.714827 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399
		 0 0.90677601 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.714827 0 0.69930202 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.714827
		 0 0.69930202 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102 0 -0.44141999
		 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102
		 0 -0.44141999 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 0 0.37991801
		 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.56217402 -0.642546 -0.52066702 -0.66634798 -0.66971999 -0.327804
		 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.51303899 -0.679533 -0.52442902
		 -0.56217402 -0.642546 -0.52066702 -0.56217402 -0.642546 -0.52066702 -0.51303899 -0.679533
		 -0.52442902 -0.046137001 -0.99782097 -0.047161002 -0.052843001 -0.99750501 -0.046805002
		 -0.66634798 -0.66971999 -0.327804 -0.56217402 -0.642546 -0.52066702 -0.052843001
		 -0.99750501 -0.046805002 -0.060573999 -0.99771899 -0.029798999 -0.714827 0 0.69930202
		 -0.92501998 0 0.37991801 -0.37985 -0.91122502 0.159319 -0.25446099 -0.93449497 0.248934
		 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.66634798 -0.66971999 -0.327804
		 -0.37985 -0.91122502 0.159319 -0.37985 -0.91122502 0.159319 -0.66634798 -0.66971999
		 -0.327804 -0.060573999 -0.99771899 -0.029798999 -0.02781 -0.999587 0.0071720001 -0.25446099
		 -0.93449497 0.248934 -0.37985 -0.91122502 0.159319 -0.02781 -0.999587 0.0071720001
		 -0.016672 -0.99972802 0.016310001 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399
		 -0.50819898 -0.64254802 -0.57346898 -0.51303899 -0.679533 -0.52442902 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.31309599 -0.66972101 -0.673383 -0.50819898
		 -0.64254802 -0.57346898 -0.50819898 -0.64254802 -0.57346898 -0.31309599 -0.66972101
		 -0.673383 -0.028462 -0.99771899 -0.061213002 -0.045634001 -0.99750501 -0.053858001
		 -0.51303899 -0.679533 -0.52442902 -0.50819898 -0.64254802 -0.57346898 -0.045634001
		 -0.99750501 -0.053858001 -0.046137001 -0.99782097 -0.047161002 -0.42161399 0 -0.906775
		 0.400134 0 -0.916457 0.16762 -0.91122502 -0.376261 -0.31309599 -0.66972101 -0.673383
		 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.25446099 -0.93449497 -0.248935 0.16762
		 -0.91122502 -0.376261 0.16762 -0.91122502 -0.376261 0.25446099 -0.93449497 -0.248935
		 0.016672 -0.99972802 -0.016310001 0.0077809999 -0.999587 -0.027646 -0.31309599 -0.66972101
		 -0.673383 0.16762 -0.91122502 -0.376261 0.0077809999 -0.999587 -0.027646 -0.028462
		 -0.99771899 -0.061213002 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.50819999
		 -0.642546 0.57347 0.51303899 -0.679533 0.52442902 0.66242999 0 0.74912399 0.42161399
		 0 0.906775 0.31309599 -0.66971999 0.67338401 0.50819999 -0.642546 0.57347 0.50819999
		 -0.642546 0.57347 0.31309599 -0.66971999 0.67338401 0.028462 -0.99771899 0.061213002
		 0.045634001 -0.99750501 0.053856999 0.51303899 -0.679533 0.52442902 0.50819999 -0.642546
		 0.57347 0.045634001 -0.99750501 0.053856999 0.046137001 -0.99782097 0.047161002 0.42161399
		 0 0.906775 -0.40013501 0 0.91645598 -0.16762 -0.91122502 0.376261 0.31309599 -0.66971999
		 0.67338401 -0.40013501 0 0.91645598 -0.714827 0 0.69930202 -0.25446099 -0.93449497
		 0.248934 -0.16762 -0.91122502 0.376261 -0.16762 -0.91122502 0.376261 -0.25446099
		 -0.93449497 0.248934 -0.016672 -0.99972802 0.016310001 -0.0077809999 -0.999587 0.027646
		 0.31309599 -0.66971999 0.67338401 -0.16762 -0.91122502 0.376261 -0.0077809999 -0.999587
		 0.027646 0.028462 -0.99771899 0.061213002 0.714827 0 -0.69930202 0.92501998 0 -0.37991899
		 0.37985 -0.91122502 -0.15932 0.25446099 -0.93449497 -0.248935 0.92501998 0 -0.37991899
		 0.89730102 0 0.44141901 0.66634798 -0.66971999 0.327804 0.37985 -0.91122502 -0.15932
		 0.37985 -0.91122502 -0.15932 0.66634798 -0.66971999 0.327804 0.060573999 -0.99771899
		 0.029798999 0.02781 -0.99958801 -0.0071720001 0.25446099 -0.93449497 -0.248935 0.37985
		 -0.91122502 -0.15932 0.02781 -0.99958801 -0.0071720001 0.016672 -0.99972802 -0.016310001
		 0.89730102 0 0.44141901 0.73439997 0 0.67871702;
	setAttr ".n[498:511]" -type "float3"  0.56217402 -0.642546 0.52066702 0.66634798
		 -0.66971999 0.327804 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.51303899 -0.679533
		 0.52442902 0.56217402 -0.642546 0.52066702 0.56217402 -0.642546 0.52066702 0.51303899
		 -0.679533 0.52442902 0.046137001 -0.99782097 0.047161002 0.052843001 -0.99750501
		 0.046805002 0.66634798 -0.66971999 0.327804 0.56217402 -0.642546 0.52066702 0.052843001
		 -0.99750501 0.046805002 0.060573999 -0.99771899 0.029798999;
	setAttr -s 128 -ch 512 ".fc[0:127]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 65 66 3
		f 4 4 5 6 -2
		mu 0 4 1 67 68 2
		f 4 7 8 9 -6
		mu 0 4 4 69 70 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 16
		mu 0 4 71 72 73 74
		f 4 17 -17 18 19
		mu 0 4 16 10 13 17
		f 4 20 21 22 23
		mu 0 4 75 18 19 76
		f 4 24 -24 25 -15
		mu 0 4 11 14 15 12
		f 4 -19 26 27 28
		mu 0 4 20 77 78 79
		f 4 -16 29 30 -27
		mu 0 4 21 80 81 82
		f 4 -31 31 32 33
		mu 0 4 83 84 85 86
		f 4 -28 -34 34 35
		mu 0 4 23 22 87 88
		f 4 -26 36 37 -30
		mu 0 4 24 89 90 91
		f 4 -23 38 39 -37
		mu 0 4 28 33 92 93
		f 4 -40 40 41 42
		mu 0 4 94 34 95 96
		f 4 -38 -43 43 -32
		mu 0 4 25 29 97 98
		f 4 -35 44 45 46
		mu 0 4 27 99 100 101
		f 4 -33 47 48 -45
		mu 0 4 26 102 103 104
		f 4 -49 49 -5 50
		mu 0 4 105 106 107 108
		f 4 -46 -51 -1 51
		mu 0 4 32 31 37 38
		f 4 -44 52 53 -48
		mu 0 4 30 109 110 111
		f 4 -42 54 55 -53
		mu 0 4 35 39 112 113
		f 4 -56 56 -11 57
		mu 0 4 114 42 44 115
		f 4 -54 -58 -8 -50
		mu 0 4 36 40 43 41
		f 4 -41 58 59 60
		mu 0 4 116 117 118 119
		f 4 -39 -22 61 -59
		mu 0 4 46 49 50 47
		f 4 -57 62 63 -12
		mu 0 4 53 120 121 54
		f 4 -55 -61 64 -63
		mu 0 4 51 45 48 52
		f 4 -29 65 66 -20
		mu 0 4 55 122 123 58
		f 4 -36 67 68 -66
		mu 0 4 56 124 125 57
		f 4 -47 69 70 -68
		mu 0 4 59 126 127 60
		f 4 -52 -4 71 -70
		mu 0 4 61 63 64 62
		f 4 72 73 74 75
		mu 0 4 269 270 271 272
		f 4 76 -76 77 78
		mu 0 4 132 128 273 274
		f 4 79 80 81 82
		mu 0 4 275 135 276 277
		f 4 83 -83 84 -74
		mu 0 4 129 134 278 279
		f 4 -78 85 86 87
		mu 0 4 133 280 281 282
		f 4 -75 88 89 -86
		mu 0 4 131 283 284 285
		f 4 -90 90 91 92
		mu 0 4 286 287 288 289
		f 4 -87 -93 93 94
		mu 0 4 139 138 290 291
		f 4 -85 95 96 -89
		mu 0 4 130 292 293 294
		f 4 -82 97 98 -96
		mu 0 4 137 136 295 296
		f 4 -99 99 100 101
		mu 0 4 297 145 298 299
		f 4 -97 -102 102 -91
		mu 0 4 140 144 300 301
		f 4 103 104 105 106
		mu 0 4 302 303 304 305
		f 4 107 108 109 -105
		mu 0 4 306 307 308 309
		f 4 -110 110 111 112
		mu 0 4 310 311 312 313
		f 4 -106 -113 113 114
		mu 0 4 314 150 315 316
		f 4 115 116 117 -109
		mu 0 4 317 318 319 320
		f 4 118 119 120 -117
		mu 0 4 321 322 323 324
		f 4 -121 121 122 123
		mu 0 4 325 326 327 328
		f 4 -118 -124 124 -111
		mu 0 4 153 158 329 330
		f 4 -114 125 126 127
		mu 0 4 331 332 333 334
		f 4 -112 128 129 -126
		mu 0 4 155 335 336 337
		f 4 -130 130 131 132
		mu 0 4 338 339 340 341
		f 4 -127 -133 133 134
		mu 0 4 342 163 343 344
		f 4 -125 135 136 -129
		mu 0 4 154 345 346 347
		f 4 -123 137 138 -136
		mu 0 4 162 348 349 350
		f 4 -139 139 140 141
		mu 0 4 351 352 353 354
		f 4 -137 -142 142 -131
		mu 0 4 165 169 355 356
		f 4 143 144 145 146
		mu 0 4 357 358 359 360
		f 4 147 148 149 -145
		mu 0 4 361 362 363 364
		f 4 -150 150 151 152
		mu 0 4 365 366 367 368
		f 4 -146 -153 153 154
		mu 0 4 176 175 369 370
		f 4 155 156 157 -149
		mu 0 4 371 372 373 374
		f 4 158 159 160 -157
		mu 0 4 375 376 377 378
		f 4 -161 161 162 163
		mu 0 4 379 185 380 381
		f 4 -158 -164 164 -151
		mu 0 4 178 183 382 383
		f 4 -154 165 166 167
		mu 0 4 181 384 385 189
		f 4 -152 168 169 -166
		mu 0 4 180 386 387 188
		f 4 -165 170 171 -169
		mu 0 4 179 388 389 190
		f 4 -163 172 173 -171
		mu 0 4 187 186 192 191
		f 4 174 -173 175 176
		mu 0 4 390 194 391 392
		f 4 177 -177 178 179
		mu 0 4 393 193 394 395
		f 4 180 -180 181 182
		mu 0 4 396 197 397 398
		f 4 183 -183 184 -81
		mu 0 4 201 199 399 400
		f 4 -179 185 186 187
		mu 0 4 401 402 403 404
		f 4 -176 -162 188 -186
		mu 0 4 196 195 405 406
		f 4 -189 -160 189 190
		mu 0 4 407 205 408 409
		f 4 -187 -191 191 192
		mu 0 4 410 203 411 412
		f 4 -185 193 194 -98
		mu 0 4 202 413 414 415
		f 4 -182 -188 195 -194
		mu 0 4 200 198 416 417
		f 4 -196 -193 196 197
		mu 0 4 418 204 419 420
		f 4 -195 -198 198 -100
		mu 0 4 210 209 421 422
		f 4 199 200 201 202
		mu 0 4 423 424 425 426
		f 4 203 -203 204 -168
		mu 0 4 217 213 427 428
		f 4 205 -79 206 207
		mu 0 4 429 220 430 431
		f 4 208 -208 209 -201
		mu 0 4 214 219 432 433
		f 4 -205 210 211 -155
		mu 0 4 218 434 435 436
		f 4 -202 212 213 -211
		mu 0 4 216 437 438 439
		f 4 -214 214 215 216
		mu 0 4 440 441 442 443
		f 4 -212 -217 217 -147
		mu 0 4 224 223 444 445
		f 4 -210 218 219 -213
		mu 0 4 215 446 447 448
		f 4 -207 -88 220 -219
		mu 0 4 222 221 449 450
		f 4 -221 -95 221 222
		mu 0 4 451 230 452 453
		f 4 -220 -223 223 -215
		mu 0 4 225 229 454 455
		f 4 -94 224 225 226
		mu 0 4 143 456 457 234
		f 4 -92 227 228 -225
		mu 0 4 142 458 459 233
		f 4 -229 229 -108 230
		mu 0 4 460 461 462 463
		f 4 -226 -231 -104 231
		mu 0 4 464 236 149 465
		f 4 -224 232 233 234
		mu 0 4 466 467 468 469
		f 4 -222 -227 235 -233
		mu 0 4 232 231 241 239
		f 4 -236 -232 -107 236
		mu 0 4 470 238 148 471
		f 4 -234 -237 -115 237
		mu 0 4 472 242 151 473
		f 4 -103 238 239 -228
		mu 0 4 141 474 475 235
		f 4 -101 240 241 -239
		mu 0 4 147 146 245 244
		f 4 -242 242 -119 243
		mu 0 4 476 477 478 479
		f 4 -240 -244 -116 -230
		mu 0 4 237 246 157 152
		f 4 -199 244 245 -241
		mu 0 4 212 480 481 249
		f 4 -197 246 247 -245
		mu 0 4 211 482 483 248
		f 4 -248 248 -122 249
		mu 0 4 484 485 486 487
		f 4 -246 -250 -120 -243
		mu 0 4 247 251 160 159
		f 4 -148 250 251 252
		mu 0 4 488 489 490 491
		f 4 -144 253 254 -251
		mu 0 4 174 173 255 253
		f 4 -255 255 -134 256
		mu 0 4 492 493 494 495
		f 4 -252 -257 -132 257
		mu 0 4 496 256 167 497
		f 4 -218 258 259 -254
		mu 0 4 228 498 499 260
		f 4 -216 -235 260 -259
		mu 0 4 227 226 240 259
		f 4 -261 -238 -128 261
		mu 0 4 500 243 156 501
		f 4 -260 -262 -135 -256
		mu 0 4 257 261 164 168
		f 4 -192 262 263 -247
		mu 0 4 208 502 503 250
		f 4 -190 264 265 -263
		mu 0 4 207 206 263 262
		f 4 -266 266 -140 267
		mu 0 4 504 505 506 507
		f 4 -264 -268 -138 -249
		mu 0 4 252 264 170 161
		f 4 -159 268 269 -265
		mu 0 4 184 508 509 267
		f 4 -156 -253 270 -269
		mu 0 4 182 177 254 266
		f 4 -271 -258 -143 271
		mu 0 4 510 258 166 511
		f 4 -270 -272 -141 -267
		mu 0 4 265 268 172 171;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group13";
	setAttr ".rp" -type "double3" 1.0539910717511007 0.89210196646467377 -1.6144041828903868 ;
	setAttr ".sp" -type "double3" 1.0539910717511007 0.89210196646467377 -1.6144041828903868 ;
createNode transform -n "polySurface7" -p "group13";
	setAttr ".t" -type "double3" -0.79939295741674887 0.59194563573218872 -4.1999741838122926 ;
	setAttr ".r" -type "double3" 0 0 88.368255003946373 ;
	setAttr ".s" -type "double3" 0.30534672556760195 0.30534672556760195 0.30534672556760195 ;
	setAttr ".rp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
	setAttr ".sp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
createNode mesh -n "polySurfaceShape7" -p "|group13|polySurface7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "vtx[0:89]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 130 ".uvst[0].uvsp[0:129]" -type "float2" 0.54665703 0.58051997
		 0.47738299 0.610636 0.44862801 0.58188099 0.54665703 0.532866 0.54665703 0.63503498
		 0.50308901 0.63634199 0.44726601 0.67991 0.39961299 0.67991 0.42412099 0.557374 0.54665703
		 0.496106 0.61593097 0.610636 0.64468598 0.58188099 0.59022599 0.63634199 0.54665703
		 0.67991 0.501782 0.67991 0.47738299 0.74918401 0.44862801 0.77793902 0.36285299 0.67991
		 0.66919398 0.557374 0.64604801 0.67991 0.69370103 0.67991 0.59153301 0.67991 0.54665703
		 0.72478598 0.50308901 0.72347897 0.54665703 0.77930099 0.54665703 0.82695401 0.42412099
		 0.80244601 0.73046201 0.67991 0.61593097 0.74918401 0.64468598 0.77793902 0.59022599
		 0.72347897 0.54665703 0.86371499 0.66919398 0.80244601 0.132698 0.49211401 0.010161
		 0.49211401 0.001992 0.39408499 0.132698 0.39408499 0.001992 0.26337999 0.132698 0.26337999
		 0.255234 0.49211401 0.263403 0.39408499 0.001992 0.13267399 0.132698 0.13267399 0.263403
		 0.26337999 0.010161 0.034644999 0.132698 0.034644999 0.263403 0.13267399 0.034667999
		 0.0019690001 0.132698 0.0019690001 0.255234 0.034644999 0.230727 0.0019690001 0.279311
		 0.0019690001 0.40184799 0.0019690001 0.40184799 0.099997997 0.27114201 0.099997997
		 0.52438402 0.0019690001 0.53255302 0.099997997 0.40184799 0.230703 0.27114201 0.230703
		 0.53255302 0.230703 0.40184799 0.36140901 0.27114201 0.36140901 0.53255302 0.36140901
		 0.40184799 0.459438 0.279311 0.459438 0.52438402 0.459438 0.40184799 0.49211401 0.303819
		 0.49211401 0.49987701 0.49211401 0.54826701 0.0019690001 0.67080301 0.0019690001
		 0.67080301 0.099997997 0.54009801 0.099997997 0.79334003 0.0019690001 0.80150902
		 0.099997997 0.67080301 0.230703 0.54009801 0.230703 0.80150902 0.230703 0.67080301
		 0.36140901 0.54009801 0.36140901 0.80150902 0.36140901 0.67080301 0.459438 0.54826701
		 0.459438 0.79334003 0.459438 0.67080301 0.49211401 0.57277399 0.49211401 0.76883203
		 0.49211401 0.744766 0.496106 0.867302 0.496106 0.867302 0.59413499 0.736597 0.59413499
		 0.98983902 0.496106 0.99800801 0.59413499 0.867302 0.72483999 0.736597 0.72483999
		 0.99800801 0.72483999 0.867302 0.855546 0.736597 0.855546 0.99800801 0.855546 0.867302
		 0.95357502 0.744766 0.95357502 0.98983902 0.95357502 0.867302 0.986251 0.76927298
		 0.986251 0.96533197 0.986251 0.111644 0.74117798 0.062629998 0.64314902 0.110283
		 0.64314902 0.14040001 0.71242303 0.111644 0.54512 0.14040001 0.57387501 0.16479801
		 0.64314902 0.166105 0.68671799 0.209674 0.79019302 0.209674 0.74254 0.209674 0.496106
		 0.209674 0.54375899 0.166105 0.599581 0.209674 0.64314902 0.209674 0.688025 0.30770299
		 0.74117798 0.278947 0.71242303 0.30770299 0.54512 0.278947 0.57387501 0.209674 0.59827399
		 0.254549 0.64314902 0.25324199 0.68671799 0.35671699 0.64314902 0.309064 0.64314902
		 0.25324199 0.599581;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 90 ".vt[0:89]"  1.72786701 -0.001375 2.52718496 1.86212301 -0.001375 2.56290102
		 1.89783895 -0.001375 2.4286449 1.76358294 -0.001375 2.39292908 1.65568697 0.027774001 2.56903005
		 1.90396798 0.027774001 2.63508105 1.97001898 0.027774001 2.38680005 1.72173798 0.027774001 2.32074904
		 1.64520895 0.231821 2.575104 1.91004205 0.231821 2.64555907 1.980497 0.231821 2.38072491
		 1.71566296 0.231821 2.31027102 1.65568697 0.435868 2.56903005 1.90396798 0.435868 2.63508105
		 1.97001898 0.435868 2.38680005 1.72173798 0.435868 2.32074904 1.72786701 0.465018 2.52718496
		 1.86212301 0.465018 2.56290102 1.89783895 0.465018 2.4286449 1.76358294 0.465018 2.39292908
		 1.81285298 -0.001375 2.47791505 1.81285298 0.465018 2.47791505 1.85122502 0.465018 2.45566893
		 1.79060698 0.465018 2.43954301 1.78795898 -0.001375 2.5714891 1.68711996 -0.001375 2.550807
		 1.88574505 -0.001375 2.60364795 1.76881897 0.027774001 2.64343596 1.90642703 -0.001375 2.50280905
		 1.938586 -0.001375 2.4050231 1.978374 0.027774001 2.52194905 1.83774698 -0.001375 2.38434005
		 1.73996103 -0.001375 2.35218191 1.85688698 0.027774001 2.3123939 1.71927905 -0.001375 2.45302105
		 1.64733195 0.027774001 2.43388104 1.64520895 0.115223 2.575104 1.91004205 0.115223 2.64555907
		 1.76588404 0.231821 2.65446997 1.980497 0.115223 2.38072491 1.98940802 0.231821 2.52488399
		 1.71566296 0.115223 2.31027102 1.85982203 0.231821 2.30135894 1.63629699 0.231821 2.43094492
		 1.64520895 0.34841999 2.575104 1.91004205 0.34841999 2.64555907 1.76881897 0.435868 2.64343596
		 1.980497 0.34841999 2.38072491 1.978374 0.435868 2.52194905 1.71566296 0.34841999 2.31027102
		 1.85688698 0.435868 2.3123939 1.64733195 0.435868 2.43388104 1.68711996 0.465018 2.550807
		 1.88574505 0.465018 2.60364795 1.78795898 0.465018 2.5714891 1.938586 0.465018 2.4050231
		 1.90642703 0.465018 2.50280905 1.73996103 0.465018 2.35218191 1.83774698 0.465018 2.38434005
		 1.71927905 0.465018 2.45302105 1.83509898 -0.001375 2.51628709 1.77448106 -0.001375 2.50015998
		 1.85122502 -0.001375 2.45566893 1.79060698 -0.001375 2.43954301 1.77448106 0.465018 2.50015998
		 1.83509898 0.465018 2.51628709 1.77762604 -0.001375 2.61033106 1.94526899 -0.001375 2.51314211
		 1.84808004 -0.001375 2.34549809 1.68043602 -0.001375 2.44268799 1.76588404 0.115223 2.65446997
		 1.98940802 0.115223 2.52488399 1.85982203 0.115223 2.30135894 1.63629699 0.115223 2.43094492
		 1.76588404 0.34841999 2.65446997 1.98940802 0.34841999 2.52488399 1.85982203 0.34841999 2.30135894
		 1.63629699 0.34841999 2.43094492 1.77762604 0.465018 2.61033106 1.94526899 0.465018 2.51314211
		 1.84808004 0.465018 2.34549809 1.68043602 0.465018 2.44268799 1.79719603 -0.001375 2.53676701
		 1.87170506 -0.001375 2.49357104 1.82850897 -0.001375 2.41906309 1.75400102 -0.001375 2.4622581
		 1.79719603 0.465018 2.53676701 1.87170506 0.465018 2.49357104 1.82850897 0.465018 2.41906309
		 1.75400102 0.465018 2.4622581;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  0 24 0 24 66 0 66 25 0 25 0 0 24 1 0 1 26 0 26 66 0
		 26 5 0 5 27 0 27 66 0 27 4 0 4 25 0 1 28 0 28 67 0 67 26 0 28 2 0 2 29 0 29 67 0
		 29 6 0 6 30 0 30 67 0 30 5 0 2 31 0 31 68 0 68 29 0 31 3 0 3 32 0 32 68 0 32 7 0
		 7 33 0 33 68 0 33 6 0 3 34 0 34 69 0 69 32 0 34 0 0 25 69 0 4 35 0 35 69 0 35 7 0
		 27 70 0 70 36 0 36 4 0 5 37 0 37 70 0 37 9 0 9 38 0 38 70 0 38 8 0 8 36 0 30 71 0
		 71 37 0 6 39 0 39 71 0 39 10 0 10 40 0 40 71 0 40 9 0 33 72 0 72 39 0 7 41 0 41 72 0
		 41 11 0 11 42 0 42 72 0 42 10 0 35 73 0 73 41 0 36 73 0 8 43 0 43 73 0 43 11 0 38 74 0
		 74 44 0 44 8 0 9 45 0 45 74 0 45 13 0 13 46 0 46 74 0 46 12 0 12 44 0 40 75 0 75 45 0
		 10 47 0 47 75 0 47 14 0 14 48 0 48 75 0 48 13 0 42 76 0 76 47 0 11 49 0 49 76 0 49 15 0
		 15 50 0 50 76 0 50 14 0 43 77 0 77 49 0 44 77 0 12 51 0 51 77 0 51 15 0 46 78 0 78 52 0
		 52 12 0 13 53 0 53 78 0 53 17 0 17 54 0 54 78 0 54 16 0 16 52 0 48 79 0 79 53 0 14 55 0
		 55 79 0 55 18 0 18 56 0 56 79 0 56 17 0 50 80 0 80 55 0 15 57 0 57 80 0 57 19 0 19 58 0
		 58 80 0 58 18 0 51 81 0 81 57 0 52 81 0 16 59 0 59 81 0 59 19 0 24 82 0 82 60 0 60 1 0
		 0 61 0 61 82 0 20 60 0 61 20 0 28 83 0 83 62 0 62 2 0 60 83 0 20 62 0 31 84 0 84 63 0
		 63 3 0 62 84 0 20 63 0 34 85 0 85 61 0 63 85 0 54 86 0 86 64 0 64 16 0 17 65 0 65 86 0
		 21 64 0 65 21 0 56 87 0 87 65 0 18 22 0;
	setAttr ".ed[166:175]" 22 87 0 22 21 0 58 88 0 88 22 0 19 23 0 23 88 0 23 21 0
		 59 89 0 89 23 0 64 89 0;
	setAttr -s 352 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -1 0 0 -1 0 -0.118217 -0.888008 0.444372
		 -0.40015301 -0.88660097 0.231984 0 -1 0 0 -1 0 0.231984 -0.88660097 0.40015301 -0.118217
		 -0.888008 0.444372 -0.118217 -0.888008 0.444372 0.231984 -0.88660097 0.40015301 0.475146
		 -0.32018101 0.81958598 -0.243854 -0.31672499 0.91663498 -0.40015301 -0.88660097 0.231984
		 -0.118217 -0.888008 0.444372 -0.243854 -0.31672499 0.91663498 -0.81958598 -0.32018101
		 0.475146 0 -1 0 0 -1 0 0.444372 -0.888008 0.118217 0.231984 -0.88660097 0.40015301
		 0 -1 0 0 -1 0 0.40015301 -0.88660097 -0.231984 0.444372 -0.888008 0.118217 0.444372
		 -0.888008 0.118217 0.40015301 -0.88660097 -0.231984 0.81958598 -0.32018101 -0.475146
		 0.91663498 -0.31672499 0.243854 0.231984 -0.88660097 0.40015301 0.444372 -0.888008
		 0.118217 0.91663498 -0.31672499 0.243854 0.475146 -0.32018101 0.81958598 0 -1 0 0
		 -1 0 0.118217 -0.888008 -0.444372 0.40015301 -0.88660097 -0.231984 0 -1 0 0 -1 0
		 -0.231985 -0.88660097 -0.40015301 0.118217 -0.888008 -0.444372 0.118217 -0.888008
		 -0.444372 -0.231985 -0.88660097 -0.40015301 -0.47514501 -0.32018101 -0.81958598 0.243854
		 -0.31672499 -0.91663498 0.40015301 -0.88660097 -0.231984 0.118217 -0.888008 -0.444372
		 0.243854 -0.31672499 -0.91663498 0.81958598 -0.32018101 -0.475146 0 -1 0 0 -1 0 -0.444372
		 -0.888008 -0.118217 -0.231985 -0.88660097 -0.40015301 0 -1 0 0 -1 0 -0.40015301 -0.88660097
		 0.231984 -0.444372 -0.888008 -0.118217 -0.444372 -0.888008 -0.118217 -0.40015301
		 -0.88660097 0.231984 -0.81958598 -0.32018101 0.475146 -0.91663498 -0.31672499 -0.243854
		 -0.231985 -0.88660097 -0.40015301 -0.444372 -0.888008 -0.118217 -0.91663498 -0.31672499
		 -0.243854 -0.47514501 -0.32018101 -0.81958598 -0.81958598 -0.32018101 0.475146 -0.243854
		 -0.31672499 0.91663498 -0.25671399 -0.054110002 0.96497202 -0.86372399 -0.056977
		 0.50073397 -0.243854 -0.31672499 0.91663498 0.475146 -0.32018101 0.81958598 0.50073397
		 -0.056977 0.86372399 -0.25671399 -0.054110002 0.96497202 -0.25671399 -0.054110002
		 0.96497202 0.50073397 -0.056977 0.86372399 0.50154901 0 0.86512899 -0.25709 0 0.96638697
		 -0.86372399 -0.056977 0.50073397 -0.25671399 -0.054110002 0.96497202 -0.25709 0 0.96638697
		 -0.86512899 0 0.50154901 0.475146 -0.32018101 0.81958598 0.91663498 -0.31672499 0.243854
		 0.96497202 -0.054110002 0.25671399 0.50073397 -0.056977 0.86372399 0.91663498 -0.31672499
		 0.243854 0.81958598 -0.32018101 -0.475146 0.86372399 -0.056977 -0.50073397 0.96497202
		 -0.054110002 0.25671399 0.96497202 -0.054110002 0.25671399 0.86372399 -0.056977 -0.50073397
		 0.86512899 0 -0.50154901 0.96638697 0 0.25709 0.50073397 -0.056977 0.86372399 0.96497202
		 -0.054110002 0.25671399 0.96638697 0 0.25709 0.50154901 0 0.86512899 0.81958598 -0.32018101
		 -0.475146 0.243854 -0.31672499 -0.91663498 0.256713 -0.054110002 -0.96497202 0.86372399
		 -0.056977 -0.50073397 0.243854 -0.31672499 -0.91663498 -0.47514501 -0.32018101 -0.81958598
		 -0.50073397 -0.056977 -0.86372399 0.256713 -0.054110002 -0.96497202 0.256713 -0.054110002
		 -0.96497202 -0.50073397 -0.056977 -0.86372399 -0.50154901 0 -0.86512899 0.25709 0
		 -0.96638697 0.86372399 -0.056977 -0.50073397 0.256713 -0.054110002 -0.96497202 0.25709
		 0 -0.96638697 0.86512899 0 -0.50154901 -0.47514501 -0.32018101 -0.81958598 -0.91663498
		 -0.31672499 -0.243854 -0.96497202 -0.054110002 -0.256713 -0.50073397 -0.056977 -0.86372399
		 -0.91663498 -0.31672499 -0.243854 -0.81958598 -0.32018101 0.475146 -0.86372399 -0.056977
		 0.50073397 -0.96497202 -0.054110002 -0.256713 -0.96497202 -0.054110002 -0.256713
		 -0.86372399 -0.056977 0.50073397 -0.86512899 0 0.50154901 -0.96638799 0 -0.25709
		 -0.50073397 -0.056977 -0.86372399 -0.96497202 -0.054110002 -0.256713 -0.96638799
		 0 -0.25709 -0.50154901 0 -0.86512899 -0.86512899 0 0.50154901 -0.25709 0 0.96638697
		 -0.25671399 0.054110002 0.96497202 -0.86372399 0.056977 0.50073397 -0.25709 0 0.96638697
		 0.50154901 0 0.86512899 0.50073397 0.056977 0.86372399 -0.25671399 0.054110002 0.96497202
		 -0.25671399 0.054110002 0.96497202 0.50073397 0.056977 0.86372399 0.475146 0.32018101
		 0.81958598 -0.243854 0.31672499 0.91663498 -0.86372399 0.056977 0.50073397 -0.25671399
		 0.054110002 0.96497202 -0.243854 0.31672499 0.91663498 -0.81958598 0.32018101 0.475146
		 0.50154901 0 0.86512899 0.96638697 0 0.25709 0.96497202 0.054110002 0.25671399 0.50073397
		 0.056977 0.86372399 0.96638697 0 0.25709 0.86512899 0 -0.50154901 0.86372399 0.056977
		 -0.50073397 0.96497202 0.054110002 0.25671399 0.96497202 0.054110002 0.25671399 0.86372399
		 0.056977 -0.50073397 0.81958598 0.32018101 -0.475146 0.91663498 0.31672499 0.243854
		 0.50073397 0.056977 0.86372399 0.96497202 0.054110002 0.25671399 0.91663498 0.31672499
		 0.243854 0.475146 0.32018101 0.81958598 0.86512899 0 -0.50154901 0.25709 0 -0.96638697
		 0.256713 0.054110002 -0.96497202 0.86372399 0.056977 -0.50073397 0.25709 0 -0.96638697
		 -0.50154901 0 -0.86512899;
	setAttr ".n[166:331]" -type "float3"  -0.50073397 0.056977 -0.86372399 0.256713
		 0.054110002 -0.96497202 0.256713 0.054110002 -0.96497202 -0.50073397 0.056977 -0.86372399
		 -0.47514501 0.32018101 -0.81958598 0.243854 0.31672499 -0.91663498 0.86372399 0.056977
		 -0.50073397 0.256713 0.054110002 -0.96497202 0.243854 0.31672499 -0.91663498 0.81958598
		 0.32018101 -0.475146 -0.50154901 0 -0.86512899 -0.96638799 0 -0.25709 -0.96497202
		 0.054110002 -0.256713 -0.50073397 0.056977 -0.86372399 -0.96638799 0 -0.25709 -0.86512899
		 0 0.50154901 -0.86372399 0.056977 0.50073397 -0.96497202 0.054110002 -0.256713 -0.96497202
		 0.054110002 -0.256713 -0.86372399 0.056977 0.50073397 -0.81958598 0.32018101 0.475146
		 -0.91663498 0.31672499 -0.243854 -0.50073397 0.056977 -0.86372399 -0.96497202 0.054110002
		 -0.256713 -0.91663498 0.31672499 -0.243854 -0.47514501 0.32018101 -0.81958598 -0.81958598
		 0.32018101 0.475146 -0.243854 0.31672499 0.91663498 -0.118217 0.888008 0.444372 -0.40015301
		 0.88660097 0.231984 -0.243854 0.31672499 0.91663498 0.475146 0.32018101 0.81958598
		 0.231984 0.88660097 0.40015301 -0.118217 0.888008 0.444372 -0.118217 0.888008 0.444372
		 0.231984 0.88660097 0.40015301 0 1 0 0 1 0 -0.40015301 0.88660097 0.231984 -0.118217
		 0.888008 0.444372 0 1 0 0 1 0 0.475146 0.32018101 0.81958598 0.91663498 0.31672499
		 0.243854 0.444372 0.888008 0.118217 0.231984 0.88660097 0.40015301 0.91663498 0.31672499
		 0.243854 0.81958598 0.32018101 -0.475146 0.40015301 0.88660097 -0.231985 0.444372
		 0.888008 0.118217 0.444372 0.888008 0.118217 0.40015301 0.88660097 -0.231985 0 1
		 0 0 1 0 0.231984 0.88660097 0.40015301 0.444372 0.888008 0.118217 0 1 0 0 1 0 0.81958598
		 0.32018101 -0.475146 0.243854 0.31672499 -0.91663498 0.118217 0.888008 -0.444372
		 0.40015301 0.88660097 -0.231985 0.243854 0.31672499 -0.91663498 -0.47514501 0.32018101
		 -0.81958598 -0.231985 0.88660097 -0.40015301 0.118217 0.888008 -0.444372 0.118217
		 0.888008 -0.444372 -0.231985 0.88660097 -0.40015301 0 1 0 0 1 0 0.40015301 0.88660097
		 -0.231985 0.118217 0.888008 -0.444372 0 1 0 0 1 0 -0.47514501 0.32018101 -0.81958598
		 -0.91663498 0.31672499 -0.243854 -0.444372 0.888008 -0.118217 -0.231985 0.88660097
		 -0.40015301 -0.91663498 0.31672499 -0.243854 -0.81958598 0.32018101 0.475146 -0.40015301
		 0.88660097 0.231984 -0.444372 0.888008 -0.118217 -0.444372 0.888008 -0.118217 -0.40015301
		 0.88660097 0.231984 0 1 0 0 1 0 -0.231985 0.88660097 -0.40015301 -0.444372 0.888008
		 -0.118217 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr ".n[332:351]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr -s 88 -ch 352 ".fc[0:87]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 6 7 2
		f 4 -7 7 8 9
		mu 0 4 2 7 17 8
		f 4 -3 -10 10 11
		mu 0 4 3 2 8 9
		f 4 12 13 14 -6
		mu 0 4 6 15 16 7
		f 4 15 16 17 -14
		mu 0 4 15 24 25 16
		f 4 -18 18 19 20
		mu 0 4 16 25 31 26
		f 4 -15 -21 21 -8
		mu 0 4 7 16 26 17
		f 4 22 23 24 -17
		mu 0 4 24 28 29 25
		f 4 25 26 27 -24
		mu 0 4 28 19 20 29
		f 4 -28 28 29 30
		mu 0 4 29 20 27 32
		f 4 -25 -31 31 -19
		mu 0 4 25 29 32 31
		f 4 32 33 34 -27
		mu 0 4 19 10 11 20
		f 4 35 -4 36 -34
		mu 0 4 10 0 3 11
		f 4 -37 -12 37 38
		mu 0 4 11 3 9 18
		f 4 -35 -39 39 -29
		mu 0 4 20 11 18 27
		f 4 -11 40 41 42
		mu 0 4 33 34 35 36
		f 4 -9 43 44 -41
		mu 0 4 51 52 53 54
		f 4 -45 45 46 47
		mu 0 4 54 53 57 58
		f 4 -42 -48 48 49
		mu 0 4 36 35 37 38
		f 4 -22 50 51 -44
		mu 0 4 52 55 56 53
		f 4 -20 52 53 -51
		mu 0 4 69 70 71 72
		f 4 -54 54 55 56
		mu 0 4 72 71 75 76
		f 4 -52 -57 57 -46
		mu 0 4 53 56 59 57
		f 4 -32 58 59 -53
		mu 0 4 70 73 74 71
		f 4 -30 60 61 -59
		mu 0 4 87 88 89 90
		f 4 -62 62 63 64
		mu 0 4 90 89 93 94
		f 4 -60 -65 65 -55
		mu 0 4 71 74 77 75
		f 4 -40 66 67 -61
		mu 0 4 88 91 92 89
		f 4 -38 -43 68 -67
		mu 0 4 39 33 36 40
		f 4 -69 -50 69 70
		mu 0 4 40 36 38 43
		f 4 -68 -71 71 -63
		mu 0 4 89 92 95 93
		f 4 -49 72 73 74
		mu 0 4 38 37 41 42
		f 4 -47 75 76 -73
		mu 0 4 58 57 60 61
		f 4 -77 77 78 79
		mu 0 4 61 60 63 64
		f 4 -74 -80 80 81
		mu 0 4 42 41 44 45
		f 4 -58 82 83 -76
		mu 0 4 57 59 62 60
		f 4 -56 84 85 -83
		mu 0 4 76 75 78 79
		f 4 -86 86 87 88
		mu 0 4 79 78 81 82
		f 4 -84 -89 89 -78
		mu 0 4 60 62 65 63
		f 4 -66 90 91 -85
		mu 0 4 75 77 80 78
		f 4 -64 92 93 -91
		mu 0 4 94 93 96 97
		f 4 -94 94 95 96
		mu 0 4 97 96 99 100
		f 4 -92 -97 97 -87
		mu 0 4 78 80 83 81
		f 4 -72 98 99 -93
		mu 0 4 93 95 98 96
		f 4 -70 -75 100 -99
		mu 0 4 43 38 42 46
		f 4 -101 -82 101 102
		mu 0 4 46 42 45 49
		f 4 -100 -103 103 -95
		mu 0 4 96 98 101 99
		f 4 -81 104 105 106
		mu 0 4 45 44 47 48
		f 4 -79 107 108 -105
		mu 0 4 64 63 66 67
		f 4 -109 109 110 111
		mu 0 4 105 106 107 108
		f 4 -106 -112 112 113
		mu 0 4 113 105 108 114
		f 4 -90 114 115 -108
		mu 0 4 63 65 68 66
		f 4 -88 116 117 -115
		mu 0 4 82 81 84 85
		f 4 -118 118 119 120
		mu 0 4 109 115 116 110
		f 4 -116 -121 121 -110
		mu 0 4 106 109 110 107
		f 4 -98 122 123 -117
		mu 0 4 81 83 86 84
		f 4 -96 124 125 -123
		mu 0 4 100 99 102 103
		f 4 -126 126 127 128
		mu 0 4 122 127 128 123
		f 4 -124 -129 129 -119
		mu 0 4 115 122 123 116
		f 4 -104 130 131 -125
		mu 0 4 99 101 104 102
		f 4 -102 -107 132 -131
		mu 0 4 49 45 48 50
		f 4 -133 -114 133 134
		mu 0 4 120 113 114 121
		f 4 -132 -135 135 -127
		mu 0 4 127 120 121 128
		f 4 -5 136 137 138
		mu 0 4 6 1 5 14
		f 4 139 140 -137 -1
		mu 0 4 0 4 5 1
		f 4 141 -138 -141 142
		mu 0 4 13 14 5 4
		f 4 -16 143 144 145
		mu 0 4 24 15 23 22
		f 4 -139 146 -144 -13
		mu 0 4 6 14 23 15
		f 4 147 -145 -147 -142
		mu 0 4 13 22 23 14
		f 4 -26 148 149 150
		mu 0 4 19 28 30 21
		f 4 -146 151 -149 -23
		mu 0 4 24 22 30 28
		f 4 152 -150 -152 -148
		mu 0 4 13 21 30 22
		f 4 -36 153 154 -140
		mu 0 4 0 10 12 4
		f 4 -151 155 -154 -33
		mu 0 4 19 21 12 10
		f 4 -143 -155 -156 -153
		mu 0 4 13 4 12 21
		f 4 -113 156 157 158
		mu 0 4 114 108 112 119
		f 4 159 160 -157 -111
		mu 0 4 107 111 112 108
		f 4 161 -158 -161 162
		mu 0 4 118 119 112 111
		f 4 -122 163 164 -160
		mu 0 4 107 110 117 111
		f 4 165 166 -164 -120
		mu 0 4 116 124 117 110
		f 4 -163 -165 -167 167
		mu 0 4 118 111 117 124
		f 4 -130 168 169 -166
		mu 0 4 116 123 129 124
		f 4 170 171 -169 -128
		mu 0 4 128 125 129 123
		f 4 -168 -170 -172 172
		mu 0 4 118 124 129 125
		f 4 -136 173 174 -171
		mu 0 4 128 121 126 125
		f 4 -159 175 -174 -134
		mu 0 4 114 119 126 121
		f 4 -173 -175 -176 -162
		mu 0 4 118 125 126 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface1" -p "group13";
	setAttr ".t" -type "double3" -0.8568545549324238 0.59053732015256455 -4.0472469767265347 ;
	setAttr ".s" -type "double3" 0.30534672556760195 0.30534672556760195 0.30534672556760195 ;
	setAttr ".rp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
	setAttr ".sp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
createNode mesh -n "polySurfaceShape1" -p "|group13|polySurface1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "vtx[0:89]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 130 ".uvst[0].uvsp[0:129]" -type "float2" 0.54665703 0.58051997
		 0.47738299 0.610636 0.44862801 0.58188099 0.54665703 0.532866 0.54665703 0.63503498
		 0.50308901 0.63634199 0.44726601 0.67991 0.39961299 0.67991 0.42412099 0.557374 0.54665703
		 0.496106 0.61593097 0.610636 0.64468598 0.58188099 0.59022599 0.63634199 0.54665703
		 0.67991 0.501782 0.67991 0.47738299 0.74918401 0.44862801 0.77793902 0.36285299 0.67991
		 0.66919398 0.557374 0.64604801 0.67991 0.69370103 0.67991 0.59153301 0.67991 0.54665703
		 0.72478598 0.50308901 0.72347897 0.54665703 0.77930099 0.54665703 0.82695401 0.42412099
		 0.80244601 0.73046201 0.67991 0.61593097 0.74918401 0.64468598 0.77793902 0.59022599
		 0.72347897 0.54665703 0.86371499 0.66919398 0.80244601 0.132698 0.49211401 0.010161
		 0.49211401 0.001992 0.39408499 0.132698 0.39408499 0.001992 0.26337999 0.132698 0.26337999
		 0.255234 0.49211401 0.263403 0.39408499 0.001992 0.13267399 0.132698 0.13267399 0.263403
		 0.26337999 0.010161 0.034644999 0.132698 0.034644999 0.263403 0.13267399 0.034667999
		 0.0019690001 0.132698 0.0019690001 0.255234 0.034644999 0.230727 0.0019690001 0.279311
		 0.0019690001 0.40184799 0.0019690001 0.40184799 0.099997997 0.27114201 0.099997997
		 0.52438402 0.0019690001 0.53255302 0.099997997 0.40184799 0.230703 0.27114201 0.230703
		 0.53255302 0.230703 0.40184799 0.36140901 0.27114201 0.36140901 0.53255302 0.36140901
		 0.40184799 0.459438 0.279311 0.459438 0.52438402 0.459438 0.40184799 0.49211401 0.303819
		 0.49211401 0.49987701 0.49211401 0.54826701 0.0019690001 0.67080301 0.0019690001
		 0.67080301 0.099997997 0.54009801 0.099997997 0.79334003 0.0019690001 0.80150902
		 0.099997997 0.67080301 0.230703 0.54009801 0.230703 0.80150902 0.230703 0.67080301
		 0.36140901 0.54009801 0.36140901 0.80150902 0.36140901 0.67080301 0.459438 0.54826701
		 0.459438 0.79334003 0.459438 0.67080301 0.49211401 0.57277399 0.49211401 0.76883203
		 0.49211401 0.744766 0.496106 0.867302 0.496106 0.867302 0.59413499 0.736597 0.59413499
		 0.98983902 0.496106 0.99800801 0.59413499 0.867302 0.72483999 0.736597 0.72483999
		 0.99800801 0.72483999 0.867302 0.855546 0.736597 0.855546 0.99800801 0.855546 0.867302
		 0.95357502 0.744766 0.95357502 0.98983902 0.95357502 0.867302 0.986251 0.76927298
		 0.986251 0.96533197 0.986251 0.111644 0.74117798 0.062629998 0.64314902 0.110283
		 0.64314902 0.14040001 0.71242303 0.111644 0.54512 0.14040001 0.57387501 0.16479801
		 0.64314902 0.166105 0.68671799 0.209674 0.79019302 0.209674 0.74254 0.209674 0.496106
		 0.209674 0.54375899 0.166105 0.599581 0.209674 0.64314902 0.209674 0.688025 0.30770299
		 0.74117798 0.278947 0.71242303 0.30770299 0.54512 0.278947 0.57387501 0.209674 0.59827399
		 0.254549 0.64314902 0.25324199 0.68671799 0.35671699 0.64314902 0.309064 0.64314902
		 0.25324199 0.599581;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 90 ".vt[0:89]"  1.72786701 -0.001375 2.52718496 1.86212301 -0.001375 2.56290102
		 1.89783895 -0.001375 2.4286449 1.76358294 -0.001375 2.39292908 1.65568697 0.027774001 2.56903005
		 1.90396798 0.027774001 2.63508105 1.97001898 0.027774001 2.38680005 1.72173798 0.027774001 2.32074904
		 1.64520895 0.231821 2.575104 1.91004205 0.231821 2.64555907 1.980497 0.231821 2.38072491
		 1.71566296 0.231821 2.31027102 1.65568697 0.435868 2.56903005 1.90396798 0.435868 2.63508105
		 1.97001898 0.435868 2.38680005 1.72173798 0.435868 2.32074904 1.72786701 0.465018 2.52718496
		 1.86212301 0.465018 2.56290102 1.89783895 0.465018 2.4286449 1.76358294 0.465018 2.39292908
		 1.81285298 -0.001375 2.47791505 1.81285298 0.465018 2.47791505 1.85122502 0.465018 2.45566893
		 1.79060698 0.465018 2.43954301 1.78795898 -0.001375 2.5714891 1.68711996 -0.001375 2.550807
		 1.88574505 -0.001375 2.60364795 1.76881897 0.027774001 2.64343596 1.90642703 -0.001375 2.50280905
		 1.938586 -0.001375 2.4050231 1.978374 0.027774001 2.52194905 1.83774698 -0.001375 2.38434005
		 1.73996103 -0.001375 2.35218191 1.85688698 0.027774001 2.3123939 1.71927905 -0.001375 2.45302105
		 1.64733195 0.027774001 2.43388104 1.64520895 0.115223 2.575104 1.91004205 0.115223 2.64555907
		 1.76588404 0.231821 2.65446997 1.980497 0.115223 2.38072491 1.98940802 0.231821 2.52488399
		 1.71566296 0.115223 2.31027102 1.85982203 0.231821 2.30135894 1.63629699 0.231821 2.43094492
		 1.64520895 0.34841999 2.575104 1.91004205 0.34841999 2.64555907 1.76881897 0.435868 2.64343596
		 1.980497 0.34841999 2.38072491 1.978374 0.435868 2.52194905 1.71566296 0.34841999 2.31027102
		 1.85688698 0.435868 2.3123939 1.64733195 0.435868 2.43388104 1.68711996 0.465018 2.550807
		 1.88574505 0.465018 2.60364795 1.78795898 0.465018 2.5714891 1.938586 0.465018 2.4050231
		 1.90642703 0.465018 2.50280905 1.73996103 0.465018 2.35218191 1.83774698 0.465018 2.38434005
		 1.71927905 0.465018 2.45302105 1.83509898 -0.001375 2.51628709 1.77448106 -0.001375 2.50015998
		 1.85122502 -0.001375 2.45566893 1.79060698 -0.001375 2.43954301 1.77448106 0.465018 2.50015998
		 1.83509898 0.465018 2.51628709 1.77762604 -0.001375 2.61033106 1.94526899 -0.001375 2.51314211
		 1.84808004 -0.001375 2.34549809 1.68043602 -0.001375 2.44268799 1.76588404 0.115223 2.65446997
		 1.98940802 0.115223 2.52488399 1.85982203 0.115223 2.30135894 1.63629699 0.115223 2.43094492
		 1.76588404 0.34841999 2.65446997 1.98940802 0.34841999 2.52488399 1.85982203 0.34841999 2.30135894
		 1.63629699 0.34841999 2.43094492 1.77762604 0.465018 2.61033106 1.94526899 0.465018 2.51314211
		 1.84808004 0.465018 2.34549809 1.68043602 0.465018 2.44268799 1.79719603 -0.001375 2.53676701
		 1.87170506 -0.001375 2.49357104 1.82850897 -0.001375 2.41906309 1.75400102 -0.001375 2.4622581
		 1.79719603 0.465018 2.53676701 1.87170506 0.465018 2.49357104 1.82850897 0.465018 2.41906309
		 1.75400102 0.465018 2.4622581;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  0 24 0 24 66 0 66 25 0 25 0 0 24 1 0 1 26 0 26 66 0
		 26 5 0 5 27 0 27 66 0 27 4 0 4 25 0 1 28 0 28 67 0 67 26 0 28 2 0 2 29 0 29 67 0
		 29 6 0 6 30 0 30 67 0 30 5 0 2 31 0 31 68 0 68 29 0 31 3 0 3 32 0 32 68 0 32 7 0
		 7 33 0 33 68 0 33 6 0 3 34 0 34 69 0 69 32 0 34 0 0 25 69 0 4 35 0 35 69 0 35 7 0
		 27 70 0 70 36 0 36 4 0 5 37 0 37 70 0 37 9 0 9 38 0 38 70 0 38 8 0 8 36 0 30 71 0
		 71 37 0 6 39 0 39 71 0 39 10 0 10 40 0 40 71 0 40 9 0 33 72 0 72 39 0 7 41 0 41 72 0
		 41 11 0 11 42 0 42 72 0 42 10 0 35 73 0 73 41 0 36 73 0 8 43 0 43 73 0 43 11 0 38 74 0
		 74 44 0 44 8 0 9 45 0 45 74 0 45 13 0 13 46 0 46 74 0 46 12 0 12 44 0 40 75 0 75 45 0
		 10 47 0 47 75 0 47 14 0 14 48 0 48 75 0 48 13 0 42 76 0 76 47 0 11 49 0 49 76 0 49 15 0
		 15 50 0 50 76 0 50 14 0 43 77 0 77 49 0 44 77 0 12 51 0 51 77 0 51 15 0 46 78 0 78 52 0
		 52 12 0 13 53 0 53 78 0 53 17 0 17 54 0 54 78 0 54 16 0 16 52 0 48 79 0 79 53 0 14 55 0
		 55 79 0 55 18 0 18 56 0 56 79 0 56 17 0 50 80 0 80 55 0 15 57 0 57 80 0 57 19 0 19 58 0
		 58 80 0 58 18 0 51 81 0 81 57 0 52 81 0 16 59 0 59 81 0 59 19 0 24 82 0 82 60 0 60 1 0
		 0 61 0 61 82 0 20 60 0 61 20 0 28 83 0 83 62 0 62 2 0 60 83 0 20 62 0 31 84 0 84 63 0
		 63 3 0 62 84 0 20 63 0 34 85 0 85 61 0 63 85 0 54 86 0 86 64 0 64 16 0 17 65 0 65 86 0
		 21 64 0 65 21 0 56 87 0 87 65 0 18 22 0;
	setAttr ".ed[166:175]" 22 87 0 22 21 0 58 88 0 88 22 0 19 23 0 23 88 0 23 21 0
		 59 89 0 89 23 0 64 89 0;
	setAttr -s 352 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -1 0 0 -1 0 -0.118217 -0.888008 0.444372
		 -0.40015301 -0.88660097 0.231984 0 -1 0 0 -1 0 0.231984 -0.88660097 0.40015301 -0.118217
		 -0.888008 0.444372 -0.118217 -0.888008 0.444372 0.231984 -0.88660097 0.40015301 0.475146
		 -0.32018101 0.81958598 -0.243854 -0.31672499 0.91663498 -0.40015301 -0.88660097 0.231984
		 -0.118217 -0.888008 0.444372 -0.243854 -0.31672499 0.91663498 -0.81958598 -0.32018101
		 0.475146 0 -1 0 0 -1 0 0.444372 -0.888008 0.118217 0.231984 -0.88660097 0.40015301
		 0 -1 0 0 -1 0 0.40015301 -0.88660097 -0.231984 0.444372 -0.888008 0.118217 0.444372
		 -0.888008 0.118217 0.40015301 -0.88660097 -0.231984 0.81958598 -0.32018101 -0.475146
		 0.91663498 -0.31672499 0.243854 0.231984 -0.88660097 0.40015301 0.444372 -0.888008
		 0.118217 0.91663498 -0.31672499 0.243854 0.475146 -0.32018101 0.81958598 0 -1 0 0
		 -1 0 0.118217 -0.888008 -0.444372 0.40015301 -0.88660097 -0.231984 0 -1 0 0 -1 0
		 -0.231985 -0.88660097 -0.40015301 0.118217 -0.888008 -0.444372 0.118217 -0.888008
		 -0.444372 -0.231985 -0.88660097 -0.40015301 -0.47514501 -0.32018101 -0.81958598 0.243854
		 -0.31672499 -0.91663498 0.40015301 -0.88660097 -0.231984 0.118217 -0.888008 -0.444372
		 0.243854 -0.31672499 -0.91663498 0.81958598 -0.32018101 -0.475146 0 -1 0 0 -1 0 -0.444372
		 -0.888008 -0.118217 -0.231985 -0.88660097 -0.40015301 0 -1 0 0 -1 0 -0.40015301 -0.88660097
		 0.231984 -0.444372 -0.888008 -0.118217 -0.444372 -0.888008 -0.118217 -0.40015301
		 -0.88660097 0.231984 -0.81958598 -0.32018101 0.475146 -0.91663498 -0.31672499 -0.243854
		 -0.231985 -0.88660097 -0.40015301 -0.444372 -0.888008 -0.118217 -0.91663498 -0.31672499
		 -0.243854 -0.47514501 -0.32018101 -0.81958598 -0.81958598 -0.32018101 0.475146 -0.243854
		 -0.31672499 0.91663498 -0.25671399 -0.054110002 0.96497202 -0.86372399 -0.056977
		 0.50073397 -0.243854 -0.31672499 0.91663498 0.475146 -0.32018101 0.81958598 0.50073397
		 -0.056977 0.86372399 -0.25671399 -0.054110002 0.96497202 -0.25671399 -0.054110002
		 0.96497202 0.50073397 -0.056977 0.86372399 0.50154901 0 0.86512899 -0.25709 0 0.96638697
		 -0.86372399 -0.056977 0.50073397 -0.25671399 -0.054110002 0.96497202 -0.25709 0 0.96638697
		 -0.86512899 0 0.50154901 0.475146 -0.32018101 0.81958598 0.91663498 -0.31672499 0.243854
		 0.96497202 -0.054110002 0.25671399 0.50073397 -0.056977 0.86372399 0.91663498 -0.31672499
		 0.243854 0.81958598 -0.32018101 -0.475146 0.86372399 -0.056977 -0.50073397 0.96497202
		 -0.054110002 0.25671399 0.96497202 -0.054110002 0.25671399 0.86372399 -0.056977 -0.50073397
		 0.86512899 0 -0.50154901 0.96638697 0 0.25709 0.50073397 -0.056977 0.86372399 0.96497202
		 -0.054110002 0.25671399 0.96638697 0 0.25709 0.50154901 0 0.86512899 0.81958598 -0.32018101
		 -0.475146 0.243854 -0.31672499 -0.91663498 0.256713 -0.054110002 -0.96497202 0.86372399
		 -0.056977 -0.50073397 0.243854 -0.31672499 -0.91663498 -0.47514501 -0.32018101 -0.81958598
		 -0.50073397 -0.056977 -0.86372399 0.256713 -0.054110002 -0.96497202 0.256713 -0.054110002
		 -0.96497202 -0.50073397 -0.056977 -0.86372399 -0.50154901 0 -0.86512899 0.25709 0
		 -0.96638697 0.86372399 -0.056977 -0.50073397 0.256713 -0.054110002 -0.96497202 0.25709
		 0 -0.96638697 0.86512899 0 -0.50154901 -0.47514501 -0.32018101 -0.81958598 -0.91663498
		 -0.31672499 -0.243854 -0.96497202 -0.054110002 -0.256713 -0.50073397 -0.056977 -0.86372399
		 -0.91663498 -0.31672499 -0.243854 -0.81958598 -0.32018101 0.475146 -0.86372399 -0.056977
		 0.50073397 -0.96497202 -0.054110002 -0.256713 -0.96497202 -0.054110002 -0.256713
		 -0.86372399 -0.056977 0.50073397 -0.86512899 0 0.50154901 -0.96638799 0 -0.25709
		 -0.50073397 -0.056977 -0.86372399 -0.96497202 -0.054110002 -0.256713 -0.96638799
		 0 -0.25709 -0.50154901 0 -0.86512899 -0.86512899 0 0.50154901 -0.25709 0 0.96638697
		 -0.25671399 0.054110002 0.96497202 -0.86372399 0.056977 0.50073397 -0.25709 0 0.96638697
		 0.50154901 0 0.86512899 0.50073397 0.056977 0.86372399 -0.25671399 0.054110002 0.96497202
		 -0.25671399 0.054110002 0.96497202 0.50073397 0.056977 0.86372399 0.475146 0.32018101
		 0.81958598 -0.243854 0.31672499 0.91663498 -0.86372399 0.056977 0.50073397 -0.25671399
		 0.054110002 0.96497202 -0.243854 0.31672499 0.91663498 -0.81958598 0.32018101 0.475146
		 0.50154901 0 0.86512899 0.96638697 0 0.25709 0.96497202 0.054110002 0.25671399 0.50073397
		 0.056977 0.86372399 0.96638697 0 0.25709 0.86512899 0 -0.50154901 0.86372399 0.056977
		 -0.50073397 0.96497202 0.054110002 0.25671399 0.96497202 0.054110002 0.25671399 0.86372399
		 0.056977 -0.50073397 0.81958598 0.32018101 -0.475146 0.91663498 0.31672499 0.243854
		 0.50073397 0.056977 0.86372399 0.96497202 0.054110002 0.25671399 0.91663498 0.31672499
		 0.243854 0.475146 0.32018101 0.81958598 0.86512899 0 -0.50154901 0.25709 0 -0.96638697
		 0.256713 0.054110002 -0.96497202 0.86372399 0.056977 -0.50073397 0.25709 0 -0.96638697
		 -0.50154901 0 -0.86512899;
	setAttr ".n[166:331]" -type "float3"  -0.50073397 0.056977 -0.86372399 0.256713
		 0.054110002 -0.96497202 0.256713 0.054110002 -0.96497202 -0.50073397 0.056977 -0.86372399
		 -0.47514501 0.32018101 -0.81958598 0.243854 0.31672499 -0.91663498 0.86372399 0.056977
		 -0.50073397 0.256713 0.054110002 -0.96497202 0.243854 0.31672499 -0.91663498 0.81958598
		 0.32018101 -0.475146 -0.50154901 0 -0.86512899 -0.96638799 0 -0.25709 -0.96497202
		 0.054110002 -0.256713 -0.50073397 0.056977 -0.86372399 -0.96638799 0 -0.25709 -0.86512899
		 0 0.50154901 -0.86372399 0.056977 0.50073397 -0.96497202 0.054110002 -0.256713 -0.96497202
		 0.054110002 -0.256713 -0.86372399 0.056977 0.50073397 -0.81958598 0.32018101 0.475146
		 -0.91663498 0.31672499 -0.243854 -0.50073397 0.056977 -0.86372399 -0.96497202 0.054110002
		 -0.256713 -0.91663498 0.31672499 -0.243854 -0.47514501 0.32018101 -0.81958598 -0.81958598
		 0.32018101 0.475146 -0.243854 0.31672499 0.91663498 -0.118217 0.888008 0.444372 -0.40015301
		 0.88660097 0.231984 -0.243854 0.31672499 0.91663498 0.475146 0.32018101 0.81958598
		 0.231984 0.88660097 0.40015301 -0.118217 0.888008 0.444372 -0.118217 0.888008 0.444372
		 0.231984 0.88660097 0.40015301 0 1 0 0 1 0 -0.40015301 0.88660097 0.231984 -0.118217
		 0.888008 0.444372 0 1 0 0 1 0 0.475146 0.32018101 0.81958598 0.91663498 0.31672499
		 0.243854 0.444372 0.888008 0.118217 0.231984 0.88660097 0.40015301 0.91663498 0.31672499
		 0.243854 0.81958598 0.32018101 -0.475146 0.40015301 0.88660097 -0.231985 0.444372
		 0.888008 0.118217 0.444372 0.888008 0.118217 0.40015301 0.88660097 -0.231985 0 1
		 0 0 1 0 0.231984 0.88660097 0.40015301 0.444372 0.888008 0.118217 0 1 0 0 1 0 0.81958598
		 0.32018101 -0.475146 0.243854 0.31672499 -0.91663498 0.118217 0.888008 -0.444372
		 0.40015301 0.88660097 -0.231985 0.243854 0.31672499 -0.91663498 -0.47514501 0.32018101
		 -0.81958598 -0.231985 0.88660097 -0.40015301 0.118217 0.888008 -0.444372 0.118217
		 0.888008 -0.444372 -0.231985 0.88660097 -0.40015301 0 1 0 0 1 0 0.40015301 0.88660097
		 -0.231985 0.118217 0.888008 -0.444372 0 1 0 0 1 0 -0.47514501 0.32018101 -0.81958598
		 -0.91663498 0.31672499 -0.243854 -0.444372 0.888008 -0.118217 -0.231985 0.88660097
		 -0.40015301 -0.91663498 0.31672499 -0.243854 -0.81958598 0.32018101 0.475146 -0.40015301
		 0.88660097 0.231984 -0.444372 0.888008 -0.118217 -0.444372 0.888008 -0.118217 -0.40015301
		 0.88660097 0.231984 0 1 0 0 1 0 -0.231985 0.88660097 -0.40015301 -0.444372 0.888008
		 -0.118217 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr ".n[332:351]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr -s 88 -ch 352 ".fc[0:87]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 6 7 2
		f 4 -7 7 8 9
		mu 0 4 2 7 17 8
		f 4 -3 -10 10 11
		mu 0 4 3 2 8 9
		f 4 12 13 14 -6
		mu 0 4 6 15 16 7
		f 4 15 16 17 -14
		mu 0 4 15 24 25 16
		f 4 -18 18 19 20
		mu 0 4 16 25 31 26
		f 4 -15 -21 21 -8
		mu 0 4 7 16 26 17
		f 4 22 23 24 -17
		mu 0 4 24 28 29 25
		f 4 25 26 27 -24
		mu 0 4 28 19 20 29
		f 4 -28 28 29 30
		mu 0 4 29 20 27 32
		f 4 -25 -31 31 -19
		mu 0 4 25 29 32 31
		f 4 32 33 34 -27
		mu 0 4 19 10 11 20
		f 4 35 -4 36 -34
		mu 0 4 10 0 3 11
		f 4 -37 -12 37 38
		mu 0 4 11 3 9 18
		f 4 -35 -39 39 -29
		mu 0 4 20 11 18 27
		f 4 -11 40 41 42
		mu 0 4 33 34 35 36
		f 4 -9 43 44 -41
		mu 0 4 51 52 53 54
		f 4 -45 45 46 47
		mu 0 4 54 53 57 58
		f 4 -42 -48 48 49
		mu 0 4 36 35 37 38
		f 4 -22 50 51 -44
		mu 0 4 52 55 56 53
		f 4 -20 52 53 -51
		mu 0 4 69 70 71 72
		f 4 -54 54 55 56
		mu 0 4 72 71 75 76
		f 4 -52 -57 57 -46
		mu 0 4 53 56 59 57
		f 4 -32 58 59 -53
		mu 0 4 70 73 74 71
		f 4 -30 60 61 -59
		mu 0 4 87 88 89 90
		f 4 -62 62 63 64
		mu 0 4 90 89 93 94
		f 4 -60 -65 65 -55
		mu 0 4 71 74 77 75
		f 4 -40 66 67 -61
		mu 0 4 88 91 92 89
		f 4 -38 -43 68 -67
		mu 0 4 39 33 36 40
		f 4 -69 -50 69 70
		mu 0 4 40 36 38 43
		f 4 -68 -71 71 -63
		mu 0 4 89 92 95 93
		f 4 -49 72 73 74
		mu 0 4 38 37 41 42
		f 4 -47 75 76 -73
		mu 0 4 58 57 60 61
		f 4 -77 77 78 79
		mu 0 4 61 60 63 64
		f 4 -74 -80 80 81
		mu 0 4 42 41 44 45
		f 4 -58 82 83 -76
		mu 0 4 57 59 62 60
		f 4 -56 84 85 -83
		mu 0 4 76 75 78 79
		f 4 -86 86 87 88
		mu 0 4 79 78 81 82
		f 4 -84 -89 89 -78
		mu 0 4 60 62 65 63
		f 4 -66 90 91 -85
		mu 0 4 75 77 80 78
		f 4 -64 92 93 -91
		mu 0 4 94 93 96 97
		f 4 -94 94 95 96
		mu 0 4 97 96 99 100
		f 4 -92 -97 97 -87
		mu 0 4 78 80 83 81
		f 4 -72 98 99 -93
		mu 0 4 93 95 98 96
		f 4 -70 -75 100 -99
		mu 0 4 43 38 42 46
		f 4 -101 -82 101 102
		mu 0 4 46 42 45 49
		f 4 -100 -103 103 -95
		mu 0 4 96 98 101 99
		f 4 -81 104 105 106
		mu 0 4 45 44 47 48
		f 4 -79 107 108 -105
		mu 0 4 64 63 66 67
		f 4 -109 109 110 111
		mu 0 4 105 106 107 108
		f 4 -106 -112 112 113
		mu 0 4 113 105 108 114
		f 4 -90 114 115 -108
		mu 0 4 63 65 68 66
		f 4 -88 116 117 -115
		mu 0 4 82 81 84 85
		f 4 -118 118 119 120
		mu 0 4 109 115 116 110
		f 4 -116 -121 121 -110
		mu 0 4 106 109 110 107
		f 4 -98 122 123 -117
		mu 0 4 81 83 86 84
		f 4 -96 124 125 -123
		mu 0 4 100 99 102 103
		f 4 -126 126 127 128
		mu 0 4 122 127 128 123
		f 4 -124 -129 129 -119
		mu 0 4 115 122 123 116
		f 4 -104 130 131 -125
		mu 0 4 99 101 104 102
		f 4 -102 -107 132 -131
		mu 0 4 49 45 48 50
		f 4 -133 -114 133 134
		mu 0 4 120 113 114 121
		f 4 -132 -135 135 -127
		mu 0 4 127 120 121 128
		f 4 -5 136 137 138
		mu 0 4 6 1 5 14
		f 4 139 140 -137 -1
		mu 0 4 0 4 5 1
		f 4 141 -138 -141 142
		mu 0 4 13 14 5 4
		f 4 -16 143 144 145
		mu 0 4 24 15 23 22
		f 4 -139 146 -144 -13
		mu 0 4 6 14 23 15
		f 4 147 -145 -147 -142
		mu 0 4 13 22 23 14
		f 4 -26 148 149 150
		mu 0 4 19 28 30 21
		f 4 -146 151 -149 -23
		mu 0 4 24 22 30 28
		f 4 152 -150 -152 -148
		mu 0 4 13 21 30 22
		f 4 -36 153 154 -140
		mu 0 4 0 10 12 4
		f 4 -151 155 -154 -33
		mu 0 4 19 21 12 10
		f 4 -143 -155 -156 -153
		mu 0 4 13 4 12 21
		f 4 -113 156 157 158
		mu 0 4 114 108 112 119
		f 4 159 160 -157 -111
		mu 0 4 107 111 112 108
		f 4 161 -158 -161 162
		mu 0 4 118 119 112 111
		f 4 -122 163 164 -160
		mu 0 4 107 110 117 111
		f 4 165 166 -164 -120
		mu 0 4 116 124 117 110
		f 4 -163 -165 -167 167
		mu 0 4 118 111 117 124
		f 4 -130 168 169 -166
		mu 0 4 116 123 129 124
		f 4 170 171 -169 -128
		mu 0 4 128 125 129 123
		f 4 -168 -170 -172 172
		mu 0 4 118 124 129 125
		f 4 -136 173 174 -171
		mu 0 4 128 121 126 125
		f 4 -159 175 -174 -134
		mu 0 4 114 119 126 121
		f 4 -173 -175 -176 -162
		mu 0 4 118 125 126 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface8" -p "group13";
	setAttr ".t" -type "double3" -0.8044488538583201 0.7350510307803948 -4.0564958629562646 ;
	setAttr ".s" -type "double3" 0.30534672556760195 0.30534672556760195 0.30534672556760195 ;
	setAttr ".rp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
	setAttr ".sp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
createNode mesh -n "polySurfaceShape8" -p "|group13|polySurface8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "vtx[0:89]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 130 ".uvst[0].uvsp[0:129]" -type "float2" 0.54665703 0.58051997
		 0.47738299 0.610636 0.44862801 0.58188099 0.54665703 0.532866 0.54665703 0.63503498
		 0.50308901 0.63634199 0.44726601 0.67991 0.39961299 0.67991 0.42412099 0.557374 0.54665703
		 0.496106 0.61593097 0.610636 0.64468598 0.58188099 0.59022599 0.63634199 0.54665703
		 0.67991 0.501782 0.67991 0.47738299 0.74918401 0.44862801 0.77793902 0.36285299 0.67991
		 0.66919398 0.557374 0.64604801 0.67991 0.69370103 0.67991 0.59153301 0.67991 0.54665703
		 0.72478598 0.50308901 0.72347897 0.54665703 0.77930099 0.54665703 0.82695401 0.42412099
		 0.80244601 0.73046201 0.67991 0.61593097 0.74918401 0.64468598 0.77793902 0.59022599
		 0.72347897 0.54665703 0.86371499 0.66919398 0.80244601 0.132698 0.49211401 0.010161
		 0.49211401 0.001992 0.39408499 0.132698 0.39408499 0.001992 0.26337999 0.132698 0.26337999
		 0.255234 0.49211401 0.263403 0.39408499 0.001992 0.13267399 0.132698 0.13267399 0.263403
		 0.26337999 0.010161 0.034644999 0.132698 0.034644999 0.263403 0.13267399 0.034667999
		 0.0019690001 0.132698 0.0019690001 0.255234 0.034644999 0.230727 0.0019690001 0.279311
		 0.0019690001 0.40184799 0.0019690001 0.40184799 0.099997997 0.27114201 0.099997997
		 0.52438402 0.0019690001 0.53255302 0.099997997 0.40184799 0.230703 0.27114201 0.230703
		 0.53255302 0.230703 0.40184799 0.36140901 0.27114201 0.36140901 0.53255302 0.36140901
		 0.40184799 0.459438 0.279311 0.459438 0.52438402 0.459438 0.40184799 0.49211401 0.303819
		 0.49211401 0.49987701 0.49211401 0.54826701 0.0019690001 0.67080301 0.0019690001
		 0.67080301 0.099997997 0.54009801 0.099997997 0.79334003 0.0019690001 0.80150902
		 0.099997997 0.67080301 0.230703 0.54009801 0.230703 0.80150902 0.230703 0.67080301
		 0.36140901 0.54009801 0.36140901 0.80150902 0.36140901 0.67080301 0.459438 0.54826701
		 0.459438 0.79334003 0.459438 0.67080301 0.49211401 0.57277399 0.49211401 0.76883203
		 0.49211401 0.744766 0.496106 0.867302 0.496106 0.867302 0.59413499 0.736597 0.59413499
		 0.98983902 0.496106 0.99800801 0.59413499 0.867302 0.72483999 0.736597 0.72483999
		 0.99800801 0.72483999 0.867302 0.855546 0.736597 0.855546 0.99800801 0.855546 0.867302
		 0.95357502 0.744766 0.95357502 0.98983902 0.95357502 0.867302 0.986251 0.76927298
		 0.986251 0.96533197 0.986251 0.111644 0.74117798 0.062629998 0.64314902 0.110283
		 0.64314902 0.14040001 0.71242303 0.111644 0.54512 0.14040001 0.57387501 0.16479801
		 0.64314902 0.166105 0.68671799 0.209674 0.79019302 0.209674 0.74254 0.209674 0.496106
		 0.209674 0.54375899 0.166105 0.599581 0.209674 0.64314902 0.209674 0.688025 0.30770299
		 0.74117798 0.278947 0.71242303 0.30770299 0.54512 0.278947 0.57387501 0.209674 0.59827399
		 0.254549 0.64314902 0.25324199 0.68671799 0.35671699 0.64314902 0.309064 0.64314902
		 0.25324199 0.599581;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 90 ".vt[0:89]"  1.72786701 -0.001375 2.52718496 1.86212301 -0.001375 2.56290102
		 1.89783895 -0.001375 2.4286449 1.76358294 -0.001375 2.39292908 1.65568697 0.027774001 2.56903005
		 1.90396798 0.027774001 2.63508105 1.97001898 0.027774001 2.38680005 1.72173798 0.027774001 2.32074904
		 1.64520895 0.231821 2.575104 1.91004205 0.231821 2.64555907 1.980497 0.231821 2.38072491
		 1.71566296 0.231821 2.31027102 1.65568697 0.435868 2.56903005 1.90396798 0.435868 2.63508105
		 1.97001898 0.435868 2.38680005 1.72173798 0.435868 2.32074904 1.72786701 0.465018 2.52718496
		 1.86212301 0.465018 2.56290102 1.89783895 0.465018 2.4286449 1.76358294 0.465018 2.39292908
		 1.81285298 -0.001375 2.47791505 1.81285298 0.465018 2.47791505 1.85122502 0.465018 2.45566893
		 1.79060698 0.465018 2.43954301 1.78795898 -0.001375 2.5714891 1.68711996 -0.001375 2.550807
		 1.88574505 -0.001375 2.60364795 1.76881897 0.027774001 2.64343596 1.90642703 -0.001375 2.50280905
		 1.938586 -0.001375 2.4050231 1.978374 0.027774001 2.52194905 1.83774698 -0.001375 2.38434005
		 1.73996103 -0.001375 2.35218191 1.85688698 0.027774001 2.3123939 1.71927905 -0.001375 2.45302105
		 1.64733195 0.027774001 2.43388104 1.64520895 0.115223 2.575104 1.91004205 0.115223 2.64555907
		 1.76588404 0.231821 2.65446997 1.980497 0.115223 2.38072491 1.98940802 0.231821 2.52488399
		 1.71566296 0.115223 2.31027102 1.85982203 0.231821 2.30135894 1.63629699 0.231821 2.43094492
		 1.64520895 0.34841999 2.575104 1.91004205 0.34841999 2.64555907 1.76881897 0.435868 2.64343596
		 1.980497 0.34841999 2.38072491 1.978374 0.435868 2.52194905 1.71566296 0.34841999 2.31027102
		 1.85688698 0.435868 2.3123939 1.64733195 0.435868 2.43388104 1.68711996 0.465018 2.550807
		 1.88574505 0.465018 2.60364795 1.78795898 0.465018 2.5714891 1.938586 0.465018 2.4050231
		 1.90642703 0.465018 2.50280905 1.73996103 0.465018 2.35218191 1.83774698 0.465018 2.38434005
		 1.71927905 0.465018 2.45302105 1.83509898 -0.001375 2.51628709 1.77448106 -0.001375 2.50015998
		 1.85122502 -0.001375 2.45566893 1.79060698 -0.001375 2.43954301 1.77448106 0.465018 2.50015998
		 1.83509898 0.465018 2.51628709 1.77762604 -0.001375 2.61033106 1.94526899 -0.001375 2.51314211
		 1.84808004 -0.001375 2.34549809 1.68043602 -0.001375 2.44268799 1.76588404 0.115223 2.65446997
		 1.98940802 0.115223 2.52488399 1.85982203 0.115223 2.30135894 1.63629699 0.115223 2.43094492
		 1.76588404 0.34841999 2.65446997 1.98940802 0.34841999 2.52488399 1.85982203 0.34841999 2.30135894
		 1.63629699 0.34841999 2.43094492 1.77762604 0.465018 2.61033106 1.94526899 0.465018 2.51314211
		 1.84808004 0.465018 2.34549809 1.68043602 0.465018 2.44268799 1.79719603 -0.001375 2.53676701
		 1.87170506 -0.001375 2.49357104 1.82850897 -0.001375 2.41906309 1.75400102 -0.001375 2.4622581
		 1.79719603 0.465018 2.53676701 1.87170506 0.465018 2.49357104 1.82850897 0.465018 2.41906309
		 1.75400102 0.465018 2.4622581;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  0 24 0 24 66 0 66 25 0 25 0 0 24 1 0 1 26 0 26 66 0
		 26 5 0 5 27 0 27 66 0 27 4 0 4 25 0 1 28 0 28 67 0 67 26 0 28 2 0 2 29 0 29 67 0
		 29 6 0 6 30 0 30 67 0 30 5 0 2 31 0 31 68 0 68 29 0 31 3 0 3 32 0 32 68 0 32 7 0
		 7 33 0 33 68 0 33 6 0 3 34 0 34 69 0 69 32 0 34 0 0 25 69 0 4 35 0 35 69 0 35 7 0
		 27 70 0 70 36 0 36 4 0 5 37 0 37 70 0 37 9 0 9 38 0 38 70 0 38 8 0 8 36 0 30 71 0
		 71 37 0 6 39 0 39 71 0 39 10 0 10 40 0 40 71 0 40 9 0 33 72 0 72 39 0 7 41 0 41 72 0
		 41 11 0 11 42 0 42 72 0 42 10 0 35 73 0 73 41 0 36 73 0 8 43 0 43 73 0 43 11 0 38 74 0
		 74 44 0 44 8 0 9 45 0 45 74 0 45 13 0 13 46 0 46 74 0 46 12 0 12 44 0 40 75 0 75 45 0
		 10 47 0 47 75 0 47 14 0 14 48 0 48 75 0 48 13 0 42 76 0 76 47 0 11 49 0 49 76 0 49 15 0
		 15 50 0 50 76 0 50 14 0 43 77 0 77 49 0 44 77 0 12 51 0 51 77 0 51 15 0 46 78 0 78 52 0
		 52 12 0 13 53 0 53 78 0 53 17 0 17 54 0 54 78 0 54 16 0 16 52 0 48 79 0 79 53 0 14 55 0
		 55 79 0 55 18 0 18 56 0 56 79 0 56 17 0 50 80 0 80 55 0 15 57 0 57 80 0 57 19 0 19 58 0
		 58 80 0 58 18 0 51 81 0 81 57 0 52 81 0 16 59 0 59 81 0 59 19 0 24 82 0 82 60 0 60 1 0
		 0 61 0 61 82 0 20 60 0 61 20 0 28 83 0 83 62 0 62 2 0 60 83 0 20 62 0 31 84 0 84 63 0
		 63 3 0 62 84 0 20 63 0 34 85 0 85 61 0 63 85 0 54 86 0 86 64 0 64 16 0 17 65 0 65 86 0
		 21 64 0 65 21 0 56 87 0 87 65 0 18 22 0;
	setAttr ".ed[166:175]" 22 87 0 22 21 0 58 88 0 88 22 0 19 23 0 23 88 0 23 21 0
		 59 89 0 89 23 0 64 89 0;
	setAttr -s 352 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -1 0 0 -1 0 -0.118217 -0.888008 0.444372
		 -0.40015301 -0.88660097 0.231984 0 -1 0 0 -1 0 0.231984 -0.88660097 0.40015301 -0.118217
		 -0.888008 0.444372 -0.118217 -0.888008 0.444372 0.231984 -0.88660097 0.40015301 0.475146
		 -0.32018101 0.81958598 -0.243854 -0.31672499 0.91663498 -0.40015301 -0.88660097 0.231984
		 -0.118217 -0.888008 0.444372 -0.243854 -0.31672499 0.91663498 -0.81958598 -0.32018101
		 0.475146 0 -1 0 0 -1 0 0.444372 -0.888008 0.118217 0.231984 -0.88660097 0.40015301
		 0 -1 0 0 -1 0 0.40015301 -0.88660097 -0.231984 0.444372 -0.888008 0.118217 0.444372
		 -0.888008 0.118217 0.40015301 -0.88660097 -0.231984 0.81958598 -0.32018101 -0.475146
		 0.91663498 -0.31672499 0.243854 0.231984 -0.88660097 0.40015301 0.444372 -0.888008
		 0.118217 0.91663498 -0.31672499 0.243854 0.475146 -0.32018101 0.81958598 0 -1 0 0
		 -1 0 0.118217 -0.888008 -0.444372 0.40015301 -0.88660097 -0.231984 0 -1 0 0 -1 0
		 -0.231985 -0.88660097 -0.40015301 0.118217 -0.888008 -0.444372 0.118217 -0.888008
		 -0.444372 -0.231985 -0.88660097 -0.40015301 -0.47514501 -0.32018101 -0.81958598 0.243854
		 -0.31672499 -0.91663498 0.40015301 -0.88660097 -0.231984 0.118217 -0.888008 -0.444372
		 0.243854 -0.31672499 -0.91663498 0.81958598 -0.32018101 -0.475146 0 -1 0 0 -1 0 -0.444372
		 -0.888008 -0.118217 -0.231985 -0.88660097 -0.40015301 0 -1 0 0 -1 0 -0.40015301 -0.88660097
		 0.231984 -0.444372 -0.888008 -0.118217 -0.444372 -0.888008 -0.118217 -0.40015301
		 -0.88660097 0.231984 -0.81958598 -0.32018101 0.475146 -0.91663498 -0.31672499 -0.243854
		 -0.231985 -0.88660097 -0.40015301 -0.444372 -0.888008 -0.118217 -0.91663498 -0.31672499
		 -0.243854 -0.47514501 -0.32018101 -0.81958598 -0.81958598 -0.32018101 0.475146 -0.243854
		 -0.31672499 0.91663498 -0.25671399 -0.054110002 0.96497202 -0.86372399 -0.056977
		 0.50073397 -0.243854 -0.31672499 0.91663498 0.475146 -0.32018101 0.81958598 0.50073397
		 -0.056977 0.86372399 -0.25671399 -0.054110002 0.96497202 -0.25671399 -0.054110002
		 0.96497202 0.50073397 -0.056977 0.86372399 0.50154901 0 0.86512899 -0.25709 0 0.96638697
		 -0.86372399 -0.056977 0.50073397 -0.25671399 -0.054110002 0.96497202 -0.25709 0 0.96638697
		 -0.86512899 0 0.50154901 0.475146 -0.32018101 0.81958598 0.91663498 -0.31672499 0.243854
		 0.96497202 -0.054110002 0.25671399 0.50073397 -0.056977 0.86372399 0.91663498 -0.31672499
		 0.243854 0.81958598 -0.32018101 -0.475146 0.86372399 -0.056977 -0.50073397 0.96497202
		 -0.054110002 0.25671399 0.96497202 -0.054110002 0.25671399 0.86372399 -0.056977 -0.50073397
		 0.86512899 0 -0.50154901 0.96638697 0 0.25709 0.50073397 -0.056977 0.86372399 0.96497202
		 -0.054110002 0.25671399 0.96638697 0 0.25709 0.50154901 0 0.86512899 0.81958598 -0.32018101
		 -0.475146 0.243854 -0.31672499 -0.91663498 0.256713 -0.054110002 -0.96497202 0.86372399
		 -0.056977 -0.50073397 0.243854 -0.31672499 -0.91663498 -0.47514501 -0.32018101 -0.81958598
		 -0.50073397 -0.056977 -0.86372399 0.256713 -0.054110002 -0.96497202 0.256713 -0.054110002
		 -0.96497202 -0.50073397 -0.056977 -0.86372399 -0.50154901 0 -0.86512899 0.25709 0
		 -0.96638697 0.86372399 -0.056977 -0.50073397 0.256713 -0.054110002 -0.96497202 0.25709
		 0 -0.96638697 0.86512899 0 -0.50154901 -0.47514501 -0.32018101 -0.81958598 -0.91663498
		 -0.31672499 -0.243854 -0.96497202 -0.054110002 -0.256713 -0.50073397 -0.056977 -0.86372399
		 -0.91663498 -0.31672499 -0.243854 -0.81958598 -0.32018101 0.475146 -0.86372399 -0.056977
		 0.50073397 -0.96497202 -0.054110002 -0.256713 -0.96497202 -0.054110002 -0.256713
		 -0.86372399 -0.056977 0.50073397 -0.86512899 0 0.50154901 -0.96638799 0 -0.25709
		 -0.50073397 -0.056977 -0.86372399 -0.96497202 -0.054110002 -0.256713 -0.96638799
		 0 -0.25709 -0.50154901 0 -0.86512899 -0.86512899 0 0.50154901 -0.25709 0 0.96638697
		 -0.25671399 0.054110002 0.96497202 -0.86372399 0.056977 0.50073397 -0.25709 0 0.96638697
		 0.50154901 0 0.86512899 0.50073397 0.056977 0.86372399 -0.25671399 0.054110002 0.96497202
		 -0.25671399 0.054110002 0.96497202 0.50073397 0.056977 0.86372399 0.475146 0.32018101
		 0.81958598 -0.243854 0.31672499 0.91663498 -0.86372399 0.056977 0.50073397 -0.25671399
		 0.054110002 0.96497202 -0.243854 0.31672499 0.91663498 -0.81958598 0.32018101 0.475146
		 0.50154901 0 0.86512899 0.96638697 0 0.25709 0.96497202 0.054110002 0.25671399 0.50073397
		 0.056977 0.86372399 0.96638697 0 0.25709 0.86512899 0 -0.50154901 0.86372399 0.056977
		 -0.50073397 0.96497202 0.054110002 0.25671399 0.96497202 0.054110002 0.25671399 0.86372399
		 0.056977 -0.50073397 0.81958598 0.32018101 -0.475146 0.91663498 0.31672499 0.243854
		 0.50073397 0.056977 0.86372399 0.96497202 0.054110002 0.25671399 0.91663498 0.31672499
		 0.243854 0.475146 0.32018101 0.81958598 0.86512899 0 -0.50154901 0.25709 0 -0.96638697
		 0.256713 0.054110002 -0.96497202 0.86372399 0.056977 -0.50073397 0.25709 0 -0.96638697
		 -0.50154901 0 -0.86512899;
	setAttr ".n[166:331]" -type "float3"  -0.50073397 0.056977 -0.86372399 0.256713
		 0.054110002 -0.96497202 0.256713 0.054110002 -0.96497202 -0.50073397 0.056977 -0.86372399
		 -0.47514501 0.32018101 -0.81958598 0.243854 0.31672499 -0.91663498 0.86372399 0.056977
		 -0.50073397 0.256713 0.054110002 -0.96497202 0.243854 0.31672499 -0.91663498 0.81958598
		 0.32018101 -0.475146 -0.50154901 0 -0.86512899 -0.96638799 0 -0.25709 -0.96497202
		 0.054110002 -0.256713 -0.50073397 0.056977 -0.86372399 -0.96638799 0 -0.25709 -0.86512899
		 0 0.50154901 -0.86372399 0.056977 0.50073397 -0.96497202 0.054110002 -0.256713 -0.96497202
		 0.054110002 -0.256713 -0.86372399 0.056977 0.50073397 -0.81958598 0.32018101 0.475146
		 -0.91663498 0.31672499 -0.243854 -0.50073397 0.056977 -0.86372399 -0.96497202 0.054110002
		 -0.256713 -0.91663498 0.31672499 -0.243854 -0.47514501 0.32018101 -0.81958598 -0.81958598
		 0.32018101 0.475146 -0.243854 0.31672499 0.91663498 -0.118217 0.888008 0.444372 -0.40015301
		 0.88660097 0.231984 -0.243854 0.31672499 0.91663498 0.475146 0.32018101 0.81958598
		 0.231984 0.88660097 0.40015301 -0.118217 0.888008 0.444372 -0.118217 0.888008 0.444372
		 0.231984 0.88660097 0.40015301 0 1 0 0 1 0 -0.40015301 0.88660097 0.231984 -0.118217
		 0.888008 0.444372 0 1 0 0 1 0 0.475146 0.32018101 0.81958598 0.91663498 0.31672499
		 0.243854 0.444372 0.888008 0.118217 0.231984 0.88660097 0.40015301 0.91663498 0.31672499
		 0.243854 0.81958598 0.32018101 -0.475146 0.40015301 0.88660097 -0.231985 0.444372
		 0.888008 0.118217 0.444372 0.888008 0.118217 0.40015301 0.88660097 -0.231985 0 1
		 0 0 1 0 0.231984 0.88660097 0.40015301 0.444372 0.888008 0.118217 0 1 0 0 1 0 0.81958598
		 0.32018101 -0.475146 0.243854 0.31672499 -0.91663498 0.118217 0.888008 -0.444372
		 0.40015301 0.88660097 -0.231985 0.243854 0.31672499 -0.91663498 -0.47514501 0.32018101
		 -0.81958598 -0.231985 0.88660097 -0.40015301 0.118217 0.888008 -0.444372 0.118217
		 0.888008 -0.444372 -0.231985 0.88660097 -0.40015301 0 1 0 0 1 0 0.40015301 0.88660097
		 -0.231985 0.118217 0.888008 -0.444372 0 1 0 0 1 0 -0.47514501 0.32018101 -0.81958598
		 -0.91663498 0.31672499 -0.243854 -0.444372 0.888008 -0.118217 -0.231985 0.88660097
		 -0.40015301 -0.91663498 0.31672499 -0.243854 -0.81958598 0.32018101 0.475146 -0.40015301
		 0.88660097 0.231984 -0.444372 0.888008 -0.118217 -0.444372 0.888008 -0.118217 -0.40015301
		 0.88660097 0.231984 0 1 0 0 1 0 -0.231985 0.88660097 -0.40015301 -0.444372 0.888008
		 -0.118217 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr ".n[332:351]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr -s 88 -ch 352 ".fc[0:87]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 6 7 2
		f 4 -7 7 8 9
		mu 0 4 2 7 17 8
		f 4 -3 -10 10 11
		mu 0 4 3 2 8 9
		f 4 12 13 14 -6
		mu 0 4 6 15 16 7
		f 4 15 16 17 -14
		mu 0 4 15 24 25 16
		f 4 -18 18 19 20
		mu 0 4 16 25 31 26
		f 4 -15 -21 21 -8
		mu 0 4 7 16 26 17
		f 4 22 23 24 -17
		mu 0 4 24 28 29 25
		f 4 25 26 27 -24
		mu 0 4 28 19 20 29
		f 4 -28 28 29 30
		mu 0 4 29 20 27 32
		f 4 -25 -31 31 -19
		mu 0 4 25 29 32 31
		f 4 32 33 34 -27
		mu 0 4 19 10 11 20
		f 4 35 -4 36 -34
		mu 0 4 10 0 3 11
		f 4 -37 -12 37 38
		mu 0 4 11 3 9 18
		f 4 -35 -39 39 -29
		mu 0 4 20 11 18 27
		f 4 -11 40 41 42
		mu 0 4 33 34 35 36
		f 4 -9 43 44 -41
		mu 0 4 51 52 53 54
		f 4 -45 45 46 47
		mu 0 4 54 53 57 58
		f 4 -42 -48 48 49
		mu 0 4 36 35 37 38
		f 4 -22 50 51 -44
		mu 0 4 52 55 56 53
		f 4 -20 52 53 -51
		mu 0 4 69 70 71 72
		f 4 -54 54 55 56
		mu 0 4 72 71 75 76
		f 4 -52 -57 57 -46
		mu 0 4 53 56 59 57
		f 4 -32 58 59 -53
		mu 0 4 70 73 74 71
		f 4 -30 60 61 -59
		mu 0 4 87 88 89 90
		f 4 -62 62 63 64
		mu 0 4 90 89 93 94
		f 4 -60 -65 65 -55
		mu 0 4 71 74 77 75
		f 4 -40 66 67 -61
		mu 0 4 88 91 92 89
		f 4 -38 -43 68 -67
		mu 0 4 39 33 36 40
		f 4 -69 -50 69 70
		mu 0 4 40 36 38 43
		f 4 -68 -71 71 -63
		mu 0 4 89 92 95 93
		f 4 -49 72 73 74
		mu 0 4 38 37 41 42
		f 4 -47 75 76 -73
		mu 0 4 58 57 60 61
		f 4 -77 77 78 79
		mu 0 4 61 60 63 64
		f 4 -74 -80 80 81
		mu 0 4 42 41 44 45
		f 4 -58 82 83 -76
		mu 0 4 57 59 62 60
		f 4 -56 84 85 -83
		mu 0 4 76 75 78 79
		f 4 -86 86 87 88
		mu 0 4 79 78 81 82
		f 4 -84 -89 89 -78
		mu 0 4 60 62 65 63
		f 4 -66 90 91 -85
		mu 0 4 75 77 80 78
		f 4 -64 92 93 -91
		mu 0 4 94 93 96 97
		f 4 -94 94 95 96
		mu 0 4 97 96 99 100
		f 4 -92 -97 97 -87
		mu 0 4 78 80 83 81
		f 4 -72 98 99 -93
		mu 0 4 93 95 98 96
		f 4 -70 -75 100 -99
		mu 0 4 43 38 42 46
		f 4 -101 -82 101 102
		mu 0 4 46 42 45 49
		f 4 -100 -103 103 -95
		mu 0 4 96 98 101 99
		f 4 -81 104 105 106
		mu 0 4 45 44 47 48
		f 4 -79 107 108 -105
		mu 0 4 64 63 66 67
		f 4 -109 109 110 111
		mu 0 4 105 106 107 108
		f 4 -106 -112 112 113
		mu 0 4 113 105 108 114
		f 4 -90 114 115 -108
		mu 0 4 63 65 68 66
		f 4 -88 116 117 -115
		mu 0 4 82 81 84 85
		f 4 -118 118 119 120
		mu 0 4 109 115 116 110
		f 4 -116 -121 121 -110
		mu 0 4 106 109 110 107
		f 4 -98 122 123 -117
		mu 0 4 81 83 86 84
		f 4 -96 124 125 -123
		mu 0 4 100 99 102 103
		f 4 -126 126 127 128
		mu 0 4 122 127 128 123
		f 4 -124 -129 129 -119
		mu 0 4 115 122 123 116
		f 4 -104 130 131 -125
		mu 0 4 99 101 104 102
		f 4 -102 -107 132 -131
		mu 0 4 49 45 48 50
		f 4 -133 -114 133 134
		mu 0 4 120 113 114 121
		f 4 -132 -135 135 -127
		mu 0 4 127 120 121 128
		f 4 -5 136 137 138
		mu 0 4 6 1 5 14
		f 4 139 140 -137 -1
		mu 0 4 0 4 5 1
		f 4 141 -138 -141 142
		mu 0 4 13 14 5 4
		f 4 -16 143 144 145
		mu 0 4 24 15 23 22
		f 4 -139 146 -144 -13
		mu 0 4 6 14 23 15
		f 4 147 -145 -147 -142
		mu 0 4 13 22 23 14
		f 4 -26 148 149 150
		mu 0 4 19 28 30 21
		f 4 -146 151 -149 -23
		mu 0 4 24 22 30 28
		f 4 152 -150 -152 -148
		mu 0 4 13 21 30 22
		f 4 -36 153 154 -140
		mu 0 4 0 10 12 4
		f 4 -151 155 -154 -33
		mu 0 4 19 21 12 10
		f 4 -143 -155 -156 -153
		mu 0 4 13 4 12 21
		f 4 -113 156 157 158
		mu 0 4 114 108 112 119
		f 4 159 160 -157 -111
		mu 0 4 107 111 112 108
		f 4 161 -158 -161 162
		mu 0 4 118 119 112 111
		f 4 -122 163 164 -160
		mu 0 4 107 110 117 111
		f 4 165 166 -164 -120
		mu 0 4 116 124 117 110
		f 4 -163 -165 -167 167
		mu 0 4 118 111 117 124
		f 4 -130 168 169 -166
		mu 0 4 116 123 129 124
		f 4 170 171 -169 -128
		mu 0 4 128 125 129 123
		f 4 -168 -170 -172 172
		mu 0 4 118 124 129 125
		f 4 -136 173 174 -171
		mu 0 4 128 121 126 125
		f 4 -159 175 -174 -134
		mu 0 4 114 119 126 121
		f 4 -173 -175 -176 -162
		mu 0 4 118 125 126 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "barrel:polySurface1" -p "group13";
	setAttr ".t" -type "double3" -0.74604270484863999 0.59053732015256455 -4.0472469767265347 ;
	setAttr ".s" -type "double3" 0.30534672556760195 0.30534672556760195 0.30534672556760195 ;
	setAttr ".rp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
	setAttr ".sp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
createNode mesh -n "barrel:polySurfaceShape1" -p "barrel:polySurface1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "vtx[0:89]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 130 ".uvst[0].uvsp[0:129]" -type "float2" 0.54665703 0.58051997
		 0.47738299 0.610636 0.44862801 0.58188099 0.54665703 0.532866 0.54665703 0.63503498
		 0.50308901 0.63634199 0.44726601 0.67991 0.39961299 0.67991 0.42412099 0.557374 0.54665703
		 0.496106 0.61593097 0.610636 0.64468598 0.58188099 0.59022599 0.63634199 0.54665703
		 0.67991 0.501782 0.67991 0.47738299 0.74918401 0.44862801 0.77793902 0.36285299 0.67991
		 0.66919398 0.557374 0.64604801 0.67991 0.69370103 0.67991 0.59153301 0.67991 0.54665703
		 0.72478598 0.50308901 0.72347897 0.54665703 0.77930099 0.54665703 0.82695401 0.42412099
		 0.80244601 0.73046201 0.67991 0.61593097 0.74918401 0.64468598 0.77793902 0.59022599
		 0.72347897 0.54665703 0.86371499 0.66919398 0.80244601 0.132698 0.49211401 0.010161
		 0.49211401 0.001992 0.39408499 0.132698 0.39408499 0.001992 0.26337999 0.132698 0.26337999
		 0.255234 0.49211401 0.263403 0.39408499 0.001992 0.13267399 0.132698 0.13267399 0.263403
		 0.26337999 0.010161 0.034644999 0.132698 0.034644999 0.263403 0.13267399 0.034667999
		 0.0019690001 0.132698 0.0019690001 0.255234 0.034644999 0.230727 0.0019690001 0.279311
		 0.0019690001 0.40184799 0.0019690001 0.40184799 0.099997997 0.27114201 0.099997997
		 0.52438402 0.0019690001 0.53255302 0.099997997 0.40184799 0.230703 0.27114201 0.230703
		 0.53255302 0.230703 0.40184799 0.36140901 0.27114201 0.36140901 0.53255302 0.36140901
		 0.40184799 0.459438 0.279311 0.459438 0.52438402 0.459438 0.40184799 0.49211401 0.303819
		 0.49211401 0.49987701 0.49211401 0.54826701 0.0019690001 0.67080301 0.0019690001
		 0.67080301 0.099997997 0.54009801 0.099997997 0.79334003 0.0019690001 0.80150902
		 0.099997997 0.67080301 0.230703 0.54009801 0.230703 0.80150902 0.230703 0.67080301
		 0.36140901 0.54009801 0.36140901 0.80150902 0.36140901 0.67080301 0.459438 0.54826701
		 0.459438 0.79334003 0.459438 0.67080301 0.49211401 0.57277399 0.49211401 0.76883203
		 0.49211401 0.744766 0.496106 0.867302 0.496106 0.867302 0.59413499 0.736597 0.59413499
		 0.98983902 0.496106 0.99800801 0.59413499 0.867302 0.72483999 0.736597 0.72483999
		 0.99800801 0.72483999 0.867302 0.855546 0.736597 0.855546 0.99800801 0.855546 0.867302
		 0.95357502 0.744766 0.95357502 0.98983902 0.95357502 0.867302 0.986251 0.76927298
		 0.986251 0.96533197 0.986251 0.111644 0.74117798 0.062629998 0.64314902 0.110283
		 0.64314902 0.14040001 0.71242303 0.111644 0.54512 0.14040001 0.57387501 0.16479801
		 0.64314902 0.166105 0.68671799 0.209674 0.79019302 0.209674 0.74254 0.209674 0.496106
		 0.209674 0.54375899 0.166105 0.599581 0.209674 0.64314902 0.209674 0.688025 0.30770299
		 0.74117798 0.278947 0.71242303 0.30770299 0.54512 0.278947 0.57387501 0.209674 0.59827399
		 0.254549 0.64314902 0.25324199 0.68671799 0.35671699 0.64314902 0.309064 0.64314902
		 0.25324199 0.599581;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 90 ".vt[0:89]"  1.72786701 -0.001375 2.52718496 1.86212301 -0.001375 2.56290102
		 1.89783895 -0.001375 2.4286449 1.76358294 -0.001375 2.39292908 1.65568697 0.027774001 2.56903005
		 1.90396798 0.027774001 2.63508105 1.97001898 0.027774001 2.38680005 1.72173798 0.027774001 2.32074904
		 1.64520895 0.231821 2.575104 1.91004205 0.231821 2.64555907 1.980497 0.231821 2.38072491
		 1.71566296 0.231821 2.31027102 1.65568697 0.435868 2.56903005 1.90396798 0.435868 2.63508105
		 1.97001898 0.435868 2.38680005 1.72173798 0.435868 2.32074904 1.72786701 0.465018 2.52718496
		 1.86212301 0.465018 2.56290102 1.89783895 0.465018 2.4286449 1.76358294 0.465018 2.39292908
		 1.81285298 -0.001375 2.47791505 1.81285298 0.465018 2.47791505 1.85122502 0.465018 2.45566893
		 1.79060698 0.465018 2.43954301 1.78795898 -0.001375 2.5714891 1.68711996 -0.001375 2.550807
		 1.88574505 -0.001375 2.60364795 1.76881897 0.027774001 2.64343596 1.90642703 -0.001375 2.50280905
		 1.938586 -0.001375 2.4050231 1.978374 0.027774001 2.52194905 1.83774698 -0.001375 2.38434005
		 1.73996103 -0.001375 2.35218191 1.85688698 0.027774001 2.3123939 1.71927905 -0.001375 2.45302105
		 1.64733195 0.027774001 2.43388104 1.64520895 0.115223 2.575104 1.91004205 0.115223 2.64555907
		 1.76588404 0.231821 2.65446997 1.980497 0.115223 2.38072491 1.98940802 0.231821 2.52488399
		 1.71566296 0.115223 2.31027102 1.85982203 0.231821 2.30135894 1.63629699 0.231821 2.43094492
		 1.64520895 0.34841999 2.575104 1.91004205 0.34841999 2.64555907 1.76881897 0.435868 2.64343596
		 1.980497 0.34841999 2.38072491 1.978374 0.435868 2.52194905 1.71566296 0.34841999 2.31027102
		 1.85688698 0.435868 2.3123939 1.64733195 0.435868 2.43388104 1.68711996 0.465018 2.550807
		 1.88574505 0.465018 2.60364795 1.78795898 0.465018 2.5714891 1.938586 0.465018 2.4050231
		 1.90642703 0.465018 2.50280905 1.73996103 0.465018 2.35218191 1.83774698 0.465018 2.38434005
		 1.71927905 0.465018 2.45302105 1.83509898 -0.001375 2.51628709 1.77448106 -0.001375 2.50015998
		 1.85122502 -0.001375 2.45566893 1.79060698 -0.001375 2.43954301 1.77448106 0.465018 2.50015998
		 1.83509898 0.465018 2.51628709 1.77762604 -0.001375 2.61033106 1.94526899 -0.001375 2.51314211
		 1.84808004 -0.001375 2.34549809 1.68043602 -0.001375 2.44268799 1.76588404 0.115223 2.65446997
		 1.98940802 0.115223 2.52488399 1.85982203 0.115223 2.30135894 1.63629699 0.115223 2.43094492
		 1.76588404 0.34841999 2.65446997 1.98940802 0.34841999 2.52488399 1.85982203 0.34841999 2.30135894
		 1.63629699 0.34841999 2.43094492 1.77762604 0.465018 2.61033106 1.94526899 0.465018 2.51314211
		 1.84808004 0.465018 2.34549809 1.68043602 0.465018 2.44268799 1.79719603 -0.001375 2.53676701
		 1.87170506 -0.001375 2.49357104 1.82850897 -0.001375 2.41906309 1.75400102 -0.001375 2.4622581
		 1.79719603 0.465018 2.53676701 1.87170506 0.465018 2.49357104 1.82850897 0.465018 2.41906309
		 1.75400102 0.465018 2.4622581;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  0 24 0 24 66 0 66 25 0 25 0 0 24 1 0 1 26 0 26 66 0
		 26 5 0 5 27 0 27 66 0 27 4 0 4 25 0 1 28 0 28 67 0 67 26 0 28 2 0 2 29 0 29 67 0
		 29 6 0 6 30 0 30 67 0 30 5 0 2 31 0 31 68 0 68 29 0 31 3 0 3 32 0 32 68 0 32 7 0
		 7 33 0 33 68 0 33 6 0 3 34 0 34 69 0 69 32 0 34 0 0 25 69 0 4 35 0 35 69 0 35 7 0
		 27 70 0 70 36 0 36 4 0 5 37 0 37 70 0 37 9 0 9 38 0 38 70 0 38 8 0 8 36 0 30 71 0
		 71 37 0 6 39 0 39 71 0 39 10 0 10 40 0 40 71 0 40 9 0 33 72 0 72 39 0 7 41 0 41 72 0
		 41 11 0 11 42 0 42 72 0 42 10 0 35 73 0 73 41 0 36 73 0 8 43 0 43 73 0 43 11 0 38 74 0
		 74 44 0 44 8 0 9 45 0 45 74 0 45 13 0 13 46 0 46 74 0 46 12 0 12 44 0 40 75 0 75 45 0
		 10 47 0 47 75 0 47 14 0 14 48 0 48 75 0 48 13 0 42 76 0 76 47 0 11 49 0 49 76 0 49 15 0
		 15 50 0 50 76 0 50 14 0 43 77 0 77 49 0 44 77 0 12 51 0 51 77 0 51 15 0 46 78 0 78 52 0
		 52 12 0 13 53 0 53 78 0 53 17 0 17 54 0 54 78 0 54 16 0 16 52 0 48 79 0 79 53 0 14 55 0
		 55 79 0 55 18 0 18 56 0 56 79 0 56 17 0 50 80 0 80 55 0 15 57 0 57 80 0 57 19 0 19 58 0
		 58 80 0 58 18 0 51 81 0 81 57 0 52 81 0 16 59 0 59 81 0 59 19 0 24 82 0 82 60 0 60 1 0
		 0 61 0 61 82 0 20 60 0 61 20 0 28 83 0 83 62 0 62 2 0 60 83 0 20 62 0 31 84 0 84 63 0
		 63 3 0 62 84 0 20 63 0 34 85 0 85 61 0 63 85 0 54 86 0 86 64 0 64 16 0 17 65 0 65 86 0
		 21 64 0 65 21 0 56 87 0 87 65 0 18 22 0;
	setAttr ".ed[166:175]" 22 87 0 22 21 0 58 88 0 88 22 0 19 23 0 23 88 0 23 21 0
		 59 89 0 89 23 0 64 89 0;
	setAttr -s 352 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -1 0 0 -1 0 -0.118217 -0.888008 0.444372
		 -0.40015301 -0.88660097 0.231984 0 -1 0 0 -1 0 0.231984 -0.88660097 0.40015301 -0.118217
		 -0.888008 0.444372 -0.118217 -0.888008 0.444372 0.231984 -0.88660097 0.40015301 0.475146
		 -0.32018101 0.81958598 -0.243854 -0.31672499 0.91663498 -0.40015301 -0.88660097 0.231984
		 -0.118217 -0.888008 0.444372 -0.243854 -0.31672499 0.91663498 -0.81958598 -0.32018101
		 0.475146 0 -1 0 0 -1 0 0.444372 -0.888008 0.118217 0.231984 -0.88660097 0.40015301
		 0 -1 0 0 -1 0 0.40015301 -0.88660097 -0.231984 0.444372 -0.888008 0.118217 0.444372
		 -0.888008 0.118217 0.40015301 -0.88660097 -0.231984 0.81958598 -0.32018101 -0.475146
		 0.91663498 -0.31672499 0.243854 0.231984 -0.88660097 0.40015301 0.444372 -0.888008
		 0.118217 0.91663498 -0.31672499 0.243854 0.475146 -0.32018101 0.81958598 0 -1 0 0
		 -1 0 0.118217 -0.888008 -0.444372 0.40015301 -0.88660097 -0.231984 0 -1 0 0 -1 0
		 -0.231985 -0.88660097 -0.40015301 0.118217 -0.888008 -0.444372 0.118217 -0.888008
		 -0.444372 -0.231985 -0.88660097 -0.40015301 -0.47514501 -0.32018101 -0.81958598 0.243854
		 -0.31672499 -0.91663498 0.40015301 -0.88660097 -0.231984 0.118217 -0.888008 -0.444372
		 0.243854 -0.31672499 -0.91663498 0.81958598 -0.32018101 -0.475146 0 -1 0 0 -1 0 -0.444372
		 -0.888008 -0.118217 -0.231985 -0.88660097 -0.40015301 0 -1 0 0 -1 0 -0.40015301 -0.88660097
		 0.231984 -0.444372 -0.888008 -0.118217 -0.444372 -0.888008 -0.118217 -0.40015301
		 -0.88660097 0.231984 -0.81958598 -0.32018101 0.475146 -0.91663498 -0.31672499 -0.243854
		 -0.231985 -0.88660097 -0.40015301 -0.444372 -0.888008 -0.118217 -0.91663498 -0.31672499
		 -0.243854 -0.47514501 -0.32018101 -0.81958598 -0.81958598 -0.32018101 0.475146 -0.243854
		 -0.31672499 0.91663498 -0.25671399 -0.054110002 0.96497202 -0.86372399 -0.056977
		 0.50073397 -0.243854 -0.31672499 0.91663498 0.475146 -0.32018101 0.81958598 0.50073397
		 -0.056977 0.86372399 -0.25671399 -0.054110002 0.96497202 -0.25671399 -0.054110002
		 0.96497202 0.50073397 -0.056977 0.86372399 0.50154901 0 0.86512899 -0.25709 0 0.96638697
		 -0.86372399 -0.056977 0.50073397 -0.25671399 -0.054110002 0.96497202 -0.25709 0 0.96638697
		 -0.86512899 0 0.50154901 0.475146 -0.32018101 0.81958598 0.91663498 -0.31672499 0.243854
		 0.96497202 -0.054110002 0.25671399 0.50073397 -0.056977 0.86372399 0.91663498 -0.31672499
		 0.243854 0.81958598 -0.32018101 -0.475146 0.86372399 -0.056977 -0.50073397 0.96497202
		 -0.054110002 0.25671399 0.96497202 -0.054110002 0.25671399 0.86372399 -0.056977 -0.50073397
		 0.86512899 0 -0.50154901 0.96638697 0 0.25709 0.50073397 -0.056977 0.86372399 0.96497202
		 -0.054110002 0.25671399 0.96638697 0 0.25709 0.50154901 0 0.86512899 0.81958598 -0.32018101
		 -0.475146 0.243854 -0.31672499 -0.91663498 0.256713 -0.054110002 -0.96497202 0.86372399
		 -0.056977 -0.50073397 0.243854 -0.31672499 -0.91663498 -0.47514501 -0.32018101 -0.81958598
		 -0.50073397 -0.056977 -0.86372399 0.256713 -0.054110002 -0.96497202 0.256713 -0.054110002
		 -0.96497202 -0.50073397 -0.056977 -0.86372399 -0.50154901 0 -0.86512899 0.25709 0
		 -0.96638697 0.86372399 -0.056977 -0.50073397 0.256713 -0.054110002 -0.96497202 0.25709
		 0 -0.96638697 0.86512899 0 -0.50154901 -0.47514501 -0.32018101 -0.81958598 -0.91663498
		 -0.31672499 -0.243854 -0.96497202 -0.054110002 -0.256713 -0.50073397 -0.056977 -0.86372399
		 -0.91663498 -0.31672499 -0.243854 -0.81958598 -0.32018101 0.475146 -0.86372399 -0.056977
		 0.50073397 -0.96497202 -0.054110002 -0.256713 -0.96497202 -0.054110002 -0.256713
		 -0.86372399 -0.056977 0.50073397 -0.86512899 0 0.50154901 -0.96638799 0 -0.25709
		 -0.50073397 -0.056977 -0.86372399 -0.96497202 -0.054110002 -0.256713 -0.96638799
		 0 -0.25709 -0.50154901 0 -0.86512899 -0.86512899 0 0.50154901 -0.25709 0 0.96638697
		 -0.25671399 0.054110002 0.96497202 -0.86372399 0.056977 0.50073397 -0.25709 0 0.96638697
		 0.50154901 0 0.86512899 0.50073397 0.056977 0.86372399 -0.25671399 0.054110002 0.96497202
		 -0.25671399 0.054110002 0.96497202 0.50073397 0.056977 0.86372399 0.475146 0.32018101
		 0.81958598 -0.243854 0.31672499 0.91663498 -0.86372399 0.056977 0.50073397 -0.25671399
		 0.054110002 0.96497202 -0.243854 0.31672499 0.91663498 -0.81958598 0.32018101 0.475146
		 0.50154901 0 0.86512899 0.96638697 0 0.25709 0.96497202 0.054110002 0.25671399 0.50073397
		 0.056977 0.86372399 0.96638697 0 0.25709 0.86512899 0 -0.50154901 0.86372399 0.056977
		 -0.50073397 0.96497202 0.054110002 0.25671399 0.96497202 0.054110002 0.25671399 0.86372399
		 0.056977 -0.50073397 0.81958598 0.32018101 -0.475146 0.91663498 0.31672499 0.243854
		 0.50073397 0.056977 0.86372399 0.96497202 0.054110002 0.25671399 0.91663498 0.31672499
		 0.243854 0.475146 0.32018101 0.81958598 0.86512899 0 -0.50154901 0.25709 0 -0.96638697
		 0.256713 0.054110002 -0.96497202 0.86372399 0.056977 -0.50073397 0.25709 0 -0.96638697
		 -0.50154901 0 -0.86512899;
	setAttr ".n[166:331]" -type "float3"  -0.50073397 0.056977 -0.86372399 0.256713
		 0.054110002 -0.96497202 0.256713 0.054110002 -0.96497202 -0.50073397 0.056977 -0.86372399
		 -0.47514501 0.32018101 -0.81958598 0.243854 0.31672499 -0.91663498 0.86372399 0.056977
		 -0.50073397 0.256713 0.054110002 -0.96497202 0.243854 0.31672499 -0.91663498 0.81958598
		 0.32018101 -0.475146 -0.50154901 0 -0.86512899 -0.96638799 0 -0.25709 -0.96497202
		 0.054110002 -0.256713 -0.50073397 0.056977 -0.86372399 -0.96638799 0 -0.25709 -0.86512899
		 0 0.50154901 -0.86372399 0.056977 0.50073397 -0.96497202 0.054110002 -0.256713 -0.96497202
		 0.054110002 -0.256713 -0.86372399 0.056977 0.50073397 -0.81958598 0.32018101 0.475146
		 -0.91663498 0.31672499 -0.243854 -0.50073397 0.056977 -0.86372399 -0.96497202 0.054110002
		 -0.256713 -0.91663498 0.31672499 -0.243854 -0.47514501 0.32018101 -0.81958598 -0.81958598
		 0.32018101 0.475146 -0.243854 0.31672499 0.91663498 -0.118217 0.888008 0.444372 -0.40015301
		 0.88660097 0.231984 -0.243854 0.31672499 0.91663498 0.475146 0.32018101 0.81958598
		 0.231984 0.88660097 0.40015301 -0.118217 0.888008 0.444372 -0.118217 0.888008 0.444372
		 0.231984 0.88660097 0.40015301 0 1 0 0 1 0 -0.40015301 0.88660097 0.231984 -0.118217
		 0.888008 0.444372 0 1 0 0 1 0 0.475146 0.32018101 0.81958598 0.91663498 0.31672499
		 0.243854 0.444372 0.888008 0.118217 0.231984 0.88660097 0.40015301 0.91663498 0.31672499
		 0.243854 0.81958598 0.32018101 -0.475146 0.40015301 0.88660097 -0.231985 0.444372
		 0.888008 0.118217 0.444372 0.888008 0.118217 0.40015301 0.88660097 -0.231985 0 1
		 0 0 1 0 0.231984 0.88660097 0.40015301 0.444372 0.888008 0.118217 0 1 0 0 1 0 0.81958598
		 0.32018101 -0.475146 0.243854 0.31672499 -0.91663498 0.118217 0.888008 -0.444372
		 0.40015301 0.88660097 -0.231985 0.243854 0.31672499 -0.91663498 -0.47514501 0.32018101
		 -0.81958598 -0.231985 0.88660097 -0.40015301 0.118217 0.888008 -0.444372 0.118217
		 0.888008 -0.444372 -0.231985 0.88660097 -0.40015301 0 1 0 0 1 0 0.40015301 0.88660097
		 -0.231985 0.118217 0.888008 -0.444372 0 1 0 0 1 0 -0.47514501 0.32018101 -0.81958598
		 -0.91663498 0.31672499 -0.243854 -0.444372 0.888008 -0.118217 -0.231985 0.88660097
		 -0.40015301 -0.91663498 0.31672499 -0.243854 -0.81958598 0.32018101 0.475146 -0.40015301
		 0.88660097 0.231984 -0.444372 0.888008 -0.118217 -0.444372 0.888008 -0.118217 -0.40015301
		 0.88660097 0.231984 0 1 0 0 1 0 -0.231985 0.88660097 -0.40015301 -0.444372 0.888008
		 -0.118217 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr ".n[332:351]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr -s 88 -ch 352 ".fc[0:87]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 6 7 2
		f 4 -7 7 8 9
		mu 0 4 2 7 17 8
		f 4 -3 -10 10 11
		mu 0 4 3 2 8 9
		f 4 12 13 14 -6
		mu 0 4 6 15 16 7
		f 4 15 16 17 -14
		mu 0 4 15 24 25 16
		f 4 -18 18 19 20
		mu 0 4 16 25 31 26
		f 4 -15 -21 21 -8
		mu 0 4 7 16 26 17
		f 4 22 23 24 -17
		mu 0 4 24 28 29 25
		f 4 25 26 27 -24
		mu 0 4 28 19 20 29
		f 4 -28 28 29 30
		mu 0 4 29 20 27 32
		f 4 -25 -31 31 -19
		mu 0 4 25 29 32 31
		f 4 32 33 34 -27
		mu 0 4 19 10 11 20
		f 4 35 -4 36 -34
		mu 0 4 10 0 3 11
		f 4 -37 -12 37 38
		mu 0 4 11 3 9 18
		f 4 -35 -39 39 -29
		mu 0 4 20 11 18 27
		f 4 -11 40 41 42
		mu 0 4 33 34 35 36
		f 4 -9 43 44 -41
		mu 0 4 51 52 53 54
		f 4 -45 45 46 47
		mu 0 4 54 53 57 58
		f 4 -42 -48 48 49
		mu 0 4 36 35 37 38
		f 4 -22 50 51 -44
		mu 0 4 52 55 56 53
		f 4 -20 52 53 -51
		mu 0 4 69 70 71 72
		f 4 -54 54 55 56
		mu 0 4 72 71 75 76
		f 4 -52 -57 57 -46
		mu 0 4 53 56 59 57
		f 4 -32 58 59 -53
		mu 0 4 70 73 74 71
		f 4 -30 60 61 -59
		mu 0 4 87 88 89 90
		f 4 -62 62 63 64
		mu 0 4 90 89 93 94
		f 4 -60 -65 65 -55
		mu 0 4 71 74 77 75
		f 4 -40 66 67 -61
		mu 0 4 88 91 92 89
		f 4 -38 -43 68 -67
		mu 0 4 39 33 36 40
		f 4 -69 -50 69 70
		mu 0 4 40 36 38 43
		f 4 -68 -71 71 -63
		mu 0 4 89 92 95 93
		f 4 -49 72 73 74
		mu 0 4 38 37 41 42
		f 4 -47 75 76 -73
		mu 0 4 58 57 60 61
		f 4 -77 77 78 79
		mu 0 4 61 60 63 64
		f 4 -74 -80 80 81
		mu 0 4 42 41 44 45
		f 4 -58 82 83 -76
		mu 0 4 57 59 62 60
		f 4 -56 84 85 -83
		mu 0 4 76 75 78 79
		f 4 -86 86 87 88
		mu 0 4 79 78 81 82
		f 4 -84 -89 89 -78
		mu 0 4 60 62 65 63
		f 4 -66 90 91 -85
		mu 0 4 75 77 80 78
		f 4 -64 92 93 -91
		mu 0 4 94 93 96 97
		f 4 -94 94 95 96
		mu 0 4 97 96 99 100
		f 4 -92 -97 97 -87
		mu 0 4 78 80 83 81
		f 4 -72 98 99 -93
		mu 0 4 93 95 98 96
		f 4 -70 -75 100 -99
		mu 0 4 43 38 42 46
		f 4 -101 -82 101 102
		mu 0 4 46 42 45 49
		f 4 -100 -103 103 -95
		mu 0 4 96 98 101 99
		f 4 -81 104 105 106
		mu 0 4 45 44 47 48
		f 4 -79 107 108 -105
		mu 0 4 64 63 66 67
		f 4 -109 109 110 111
		mu 0 4 105 106 107 108
		f 4 -106 -112 112 113
		mu 0 4 113 105 108 114
		f 4 -90 114 115 -108
		mu 0 4 63 65 68 66
		f 4 -88 116 117 -115
		mu 0 4 82 81 84 85
		f 4 -118 118 119 120
		mu 0 4 109 115 116 110
		f 4 -116 -121 121 -110
		mu 0 4 106 109 110 107
		f 4 -98 122 123 -117
		mu 0 4 81 83 86 84
		f 4 -96 124 125 -123
		mu 0 4 100 99 102 103
		f 4 -126 126 127 128
		mu 0 4 122 127 128 123
		f 4 -124 -129 129 -119
		mu 0 4 115 122 123 116
		f 4 -104 130 131 -125
		mu 0 4 99 101 104 102
		f 4 -102 -107 132 -131
		mu 0 4 49 45 48 50
		f 4 -133 -114 133 134
		mu 0 4 120 113 114 121
		f 4 -132 -135 135 -127
		mu 0 4 127 120 121 128
		f 4 -5 136 137 138
		mu 0 4 6 1 5 14
		f 4 139 140 -137 -1
		mu 0 4 0 4 5 1
		f 4 141 -138 -141 142
		mu 0 4 13 14 5 4
		f 4 -16 143 144 145
		mu 0 4 24 15 23 22
		f 4 -139 146 -144 -13
		mu 0 4 6 14 23 15
		f 4 147 -145 -147 -142
		mu 0 4 13 22 23 14
		f 4 -26 148 149 150
		mu 0 4 19 28 30 21
		f 4 -146 151 -149 -23
		mu 0 4 24 22 30 28
		f 4 152 -150 -152 -148
		mu 0 4 13 21 30 22
		f 4 -36 153 154 -140
		mu 0 4 0 10 12 4
		f 4 -151 155 -154 -33
		mu 0 4 19 21 12 10
		f 4 -143 -155 -156 -153
		mu 0 4 13 4 12 21
		f 4 -113 156 157 158
		mu 0 4 114 108 112 119
		f 4 159 160 -157 -111
		mu 0 4 107 111 112 108
		f 4 161 -158 -161 162
		mu 0 4 118 119 112 111
		f 4 -122 163 164 -160
		mu 0 4 107 110 117 111
		f 4 165 166 -164 -120
		mu 0 4 116 124 117 110
		f 4 -163 -165 -167 167
		mu 0 4 118 111 117 124
		f 4 -130 168 169 -166
		mu 0 4 116 123 129 124
		f 4 170 171 -169 -128
		mu 0 4 128 125 129 123
		f 4 -168 -170 -172 172
		mu 0 4 118 124 129 125
		f 4 -136 173 174 -171
		mu 0 4 128 121 126 125
		f 4 -159 175 -174 -134
		mu 0 4 114 119 126 121
		f 4 -173 -175 -176 -162
		mu 0 4 118 125 126 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group14";
	setAttr ".t" -type "double3" -0.24523236615314614 0 0 ;
	setAttr ".r" -type "double3" 0 -190.13602006929446 0 ;
	setAttr ".rp" -type "double3" 1.0539910717511007 0.89210196646467377 -1.6144041828903868 ;
	setAttr ".sp" -type "double3" 1.0539910717511007 0.89210196646467377 -1.6144041828903868 ;
createNode transform -n "polySurface7" -p "group14";
	setAttr ".t" -type "double3" -0.79939295741674887 0.59194563573218872 -4.1999741838122926 ;
	setAttr ".r" -type "double3" 0 0 88.368255003946373 ;
	setAttr ".s" -type "double3" 0.30534672556760195 0.30534672556760195 0.30534672556760195 ;
	setAttr ".rp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
	setAttr ".sp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
createNode mesh -n "polySurfaceShape7" -p "|group14|polySurface7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "vtx[0:89]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 130 ".uvst[0].uvsp[0:129]" -type "float2" 0.54665703 0.58051997
		 0.47738299 0.610636 0.44862801 0.58188099 0.54665703 0.532866 0.54665703 0.63503498
		 0.50308901 0.63634199 0.44726601 0.67991 0.39961299 0.67991 0.42412099 0.557374 0.54665703
		 0.496106 0.61593097 0.610636 0.64468598 0.58188099 0.59022599 0.63634199 0.54665703
		 0.67991 0.501782 0.67991 0.47738299 0.74918401 0.44862801 0.77793902 0.36285299 0.67991
		 0.66919398 0.557374 0.64604801 0.67991 0.69370103 0.67991 0.59153301 0.67991 0.54665703
		 0.72478598 0.50308901 0.72347897 0.54665703 0.77930099 0.54665703 0.82695401 0.42412099
		 0.80244601 0.73046201 0.67991 0.61593097 0.74918401 0.64468598 0.77793902 0.59022599
		 0.72347897 0.54665703 0.86371499 0.66919398 0.80244601 0.132698 0.49211401 0.010161
		 0.49211401 0.001992 0.39408499 0.132698 0.39408499 0.001992 0.26337999 0.132698 0.26337999
		 0.255234 0.49211401 0.263403 0.39408499 0.001992 0.13267399 0.132698 0.13267399 0.263403
		 0.26337999 0.010161 0.034644999 0.132698 0.034644999 0.263403 0.13267399 0.034667999
		 0.0019690001 0.132698 0.0019690001 0.255234 0.034644999 0.230727 0.0019690001 0.279311
		 0.0019690001 0.40184799 0.0019690001 0.40184799 0.099997997 0.27114201 0.099997997
		 0.52438402 0.0019690001 0.53255302 0.099997997 0.40184799 0.230703 0.27114201 0.230703
		 0.53255302 0.230703 0.40184799 0.36140901 0.27114201 0.36140901 0.53255302 0.36140901
		 0.40184799 0.459438 0.279311 0.459438 0.52438402 0.459438 0.40184799 0.49211401 0.303819
		 0.49211401 0.49987701 0.49211401 0.54826701 0.0019690001 0.67080301 0.0019690001
		 0.67080301 0.099997997 0.54009801 0.099997997 0.79334003 0.0019690001 0.80150902
		 0.099997997 0.67080301 0.230703 0.54009801 0.230703 0.80150902 0.230703 0.67080301
		 0.36140901 0.54009801 0.36140901 0.80150902 0.36140901 0.67080301 0.459438 0.54826701
		 0.459438 0.79334003 0.459438 0.67080301 0.49211401 0.57277399 0.49211401 0.76883203
		 0.49211401 0.744766 0.496106 0.867302 0.496106 0.867302 0.59413499 0.736597 0.59413499
		 0.98983902 0.496106 0.99800801 0.59413499 0.867302 0.72483999 0.736597 0.72483999
		 0.99800801 0.72483999 0.867302 0.855546 0.736597 0.855546 0.99800801 0.855546 0.867302
		 0.95357502 0.744766 0.95357502 0.98983902 0.95357502 0.867302 0.986251 0.76927298
		 0.986251 0.96533197 0.986251 0.111644 0.74117798 0.062629998 0.64314902 0.110283
		 0.64314902 0.14040001 0.71242303 0.111644 0.54512 0.14040001 0.57387501 0.16479801
		 0.64314902 0.166105 0.68671799 0.209674 0.79019302 0.209674 0.74254 0.209674 0.496106
		 0.209674 0.54375899 0.166105 0.599581 0.209674 0.64314902 0.209674 0.688025 0.30770299
		 0.74117798 0.278947 0.71242303 0.30770299 0.54512 0.278947 0.57387501 0.209674 0.59827399
		 0.254549 0.64314902 0.25324199 0.68671799 0.35671699 0.64314902 0.309064 0.64314902
		 0.25324199 0.599581;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 90 ".vt[0:89]"  1.72786701 -0.001375 2.52718496 1.86212301 -0.001375 2.56290102
		 1.89783895 -0.001375 2.4286449 1.76358294 -0.001375 2.39292908 1.65568697 0.027774001 2.56903005
		 1.90396798 0.027774001 2.63508105 1.97001898 0.027774001 2.38680005 1.72173798 0.027774001 2.32074904
		 1.64520895 0.231821 2.575104 1.91004205 0.231821 2.64555907 1.980497 0.231821 2.38072491
		 1.71566296 0.231821 2.31027102 1.65568697 0.435868 2.56903005 1.90396798 0.435868 2.63508105
		 1.97001898 0.435868 2.38680005 1.72173798 0.435868 2.32074904 1.72786701 0.465018 2.52718496
		 1.86212301 0.465018 2.56290102 1.89783895 0.465018 2.4286449 1.76358294 0.465018 2.39292908
		 1.81285298 -0.001375 2.47791505 1.81285298 0.465018 2.47791505 1.85122502 0.465018 2.45566893
		 1.79060698 0.465018 2.43954301 1.78795898 -0.001375 2.5714891 1.68711996 -0.001375 2.550807
		 1.88574505 -0.001375 2.60364795 1.76881897 0.027774001 2.64343596 1.90642703 -0.001375 2.50280905
		 1.938586 -0.001375 2.4050231 1.978374 0.027774001 2.52194905 1.83774698 -0.001375 2.38434005
		 1.73996103 -0.001375 2.35218191 1.85688698 0.027774001 2.3123939 1.71927905 -0.001375 2.45302105
		 1.64733195 0.027774001 2.43388104 1.64520895 0.115223 2.575104 1.91004205 0.115223 2.64555907
		 1.76588404 0.231821 2.65446997 1.980497 0.115223 2.38072491 1.98940802 0.231821 2.52488399
		 1.71566296 0.115223 2.31027102 1.85982203 0.231821 2.30135894 1.63629699 0.231821 2.43094492
		 1.64520895 0.34841999 2.575104 1.91004205 0.34841999 2.64555907 1.76881897 0.435868 2.64343596
		 1.980497 0.34841999 2.38072491 1.978374 0.435868 2.52194905 1.71566296 0.34841999 2.31027102
		 1.85688698 0.435868 2.3123939 1.64733195 0.435868 2.43388104 1.68711996 0.465018 2.550807
		 1.88574505 0.465018 2.60364795 1.78795898 0.465018 2.5714891 1.938586 0.465018 2.4050231
		 1.90642703 0.465018 2.50280905 1.73996103 0.465018 2.35218191 1.83774698 0.465018 2.38434005
		 1.71927905 0.465018 2.45302105 1.83509898 -0.001375 2.51628709 1.77448106 -0.001375 2.50015998
		 1.85122502 -0.001375 2.45566893 1.79060698 -0.001375 2.43954301 1.77448106 0.465018 2.50015998
		 1.83509898 0.465018 2.51628709 1.77762604 -0.001375 2.61033106 1.94526899 -0.001375 2.51314211
		 1.84808004 -0.001375 2.34549809 1.68043602 -0.001375 2.44268799 1.76588404 0.115223 2.65446997
		 1.98940802 0.115223 2.52488399 1.85982203 0.115223 2.30135894 1.63629699 0.115223 2.43094492
		 1.76588404 0.34841999 2.65446997 1.98940802 0.34841999 2.52488399 1.85982203 0.34841999 2.30135894
		 1.63629699 0.34841999 2.43094492 1.77762604 0.465018 2.61033106 1.94526899 0.465018 2.51314211
		 1.84808004 0.465018 2.34549809 1.68043602 0.465018 2.44268799 1.79719603 -0.001375 2.53676701
		 1.87170506 -0.001375 2.49357104 1.82850897 -0.001375 2.41906309 1.75400102 -0.001375 2.4622581
		 1.79719603 0.465018 2.53676701 1.87170506 0.465018 2.49357104 1.82850897 0.465018 2.41906309
		 1.75400102 0.465018 2.4622581;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  0 24 0 24 66 0 66 25 0 25 0 0 24 1 0 1 26 0 26 66 0
		 26 5 0 5 27 0 27 66 0 27 4 0 4 25 0 1 28 0 28 67 0 67 26 0 28 2 0 2 29 0 29 67 0
		 29 6 0 6 30 0 30 67 0 30 5 0 2 31 0 31 68 0 68 29 0 31 3 0 3 32 0 32 68 0 32 7 0
		 7 33 0 33 68 0 33 6 0 3 34 0 34 69 0 69 32 0 34 0 0 25 69 0 4 35 0 35 69 0 35 7 0
		 27 70 0 70 36 0 36 4 0 5 37 0 37 70 0 37 9 0 9 38 0 38 70 0 38 8 0 8 36 0 30 71 0
		 71 37 0 6 39 0 39 71 0 39 10 0 10 40 0 40 71 0 40 9 0 33 72 0 72 39 0 7 41 0 41 72 0
		 41 11 0 11 42 0 42 72 0 42 10 0 35 73 0 73 41 0 36 73 0 8 43 0 43 73 0 43 11 0 38 74 0
		 74 44 0 44 8 0 9 45 0 45 74 0 45 13 0 13 46 0 46 74 0 46 12 0 12 44 0 40 75 0 75 45 0
		 10 47 0 47 75 0 47 14 0 14 48 0 48 75 0 48 13 0 42 76 0 76 47 0 11 49 0 49 76 0 49 15 0
		 15 50 0 50 76 0 50 14 0 43 77 0 77 49 0 44 77 0 12 51 0 51 77 0 51 15 0 46 78 0 78 52 0
		 52 12 0 13 53 0 53 78 0 53 17 0 17 54 0 54 78 0 54 16 0 16 52 0 48 79 0 79 53 0 14 55 0
		 55 79 0 55 18 0 18 56 0 56 79 0 56 17 0 50 80 0 80 55 0 15 57 0 57 80 0 57 19 0 19 58 0
		 58 80 0 58 18 0 51 81 0 81 57 0 52 81 0 16 59 0 59 81 0 59 19 0 24 82 0 82 60 0 60 1 0
		 0 61 0 61 82 0 20 60 0 61 20 0 28 83 0 83 62 0 62 2 0 60 83 0 20 62 0 31 84 0 84 63 0
		 63 3 0 62 84 0 20 63 0 34 85 0 85 61 0 63 85 0 54 86 0 86 64 0 64 16 0 17 65 0 65 86 0
		 21 64 0 65 21 0 56 87 0 87 65 0 18 22 0;
	setAttr ".ed[166:175]" 22 87 0 22 21 0 58 88 0 88 22 0 19 23 0 23 88 0 23 21 0
		 59 89 0 89 23 0 64 89 0;
	setAttr -s 352 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -1 0 0 -1 0 -0.118217 -0.888008 0.444372
		 -0.40015301 -0.88660097 0.231984 0 -1 0 0 -1 0 0.231984 -0.88660097 0.40015301 -0.118217
		 -0.888008 0.444372 -0.118217 -0.888008 0.444372 0.231984 -0.88660097 0.40015301 0.475146
		 -0.32018101 0.81958598 -0.243854 -0.31672499 0.91663498 -0.40015301 -0.88660097 0.231984
		 -0.118217 -0.888008 0.444372 -0.243854 -0.31672499 0.91663498 -0.81958598 -0.32018101
		 0.475146 0 -1 0 0 -1 0 0.444372 -0.888008 0.118217 0.231984 -0.88660097 0.40015301
		 0 -1 0 0 -1 0 0.40015301 -0.88660097 -0.231984 0.444372 -0.888008 0.118217 0.444372
		 -0.888008 0.118217 0.40015301 -0.88660097 -0.231984 0.81958598 -0.32018101 -0.475146
		 0.91663498 -0.31672499 0.243854 0.231984 -0.88660097 0.40015301 0.444372 -0.888008
		 0.118217 0.91663498 -0.31672499 0.243854 0.475146 -0.32018101 0.81958598 0 -1 0 0
		 -1 0 0.118217 -0.888008 -0.444372 0.40015301 -0.88660097 -0.231984 0 -1 0 0 -1 0
		 -0.231985 -0.88660097 -0.40015301 0.118217 -0.888008 -0.444372 0.118217 -0.888008
		 -0.444372 -0.231985 -0.88660097 -0.40015301 -0.47514501 -0.32018101 -0.81958598 0.243854
		 -0.31672499 -0.91663498 0.40015301 -0.88660097 -0.231984 0.118217 -0.888008 -0.444372
		 0.243854 -0.31672499 -0.91663498 0.81958598 -0.32018101 -0.475146 0 -1 0 0 -1 0 -0.444372
		 -0.888008 -0.118217 -0.231985 -0.88660097 -0.40015301 0 -1 0 0 -1 0 -0.40015301 -0.88660097
		 0.231984 -0.444372 -0.888008 -0.118217 -0.444372 -0.888008 -0.118217 -0.40015301
		 -0.88660097 0.231984 -0.81958598 -0.32018101 0.475146 -0.91663498 -0.31672499 -0.243854
		 -0.231985 -0.88660097 -0.40015301 -0.444372 -0.888008 -0.118217 -0.91663498 -0.31672499
		 -0.243854 -0.47514501 -0.32018101 -0.81958598 -0.81958598 -0.32018101 0.475146 -0.243854
		 -0.31672499 0.91663498 -0.25671399 -0.054110002 0.96497202 -0.86372399 -0.056977
		 0.50073397 -0.243854 -0.31672499 0.91663498 0.475146 -0.32018101 0.81958598 0.50073397
		 -0.056977 0.86372399 -0.25671399 -0.054110002 0.96497202 -0.25671399 -0.054110002
		 0.96497202 0.50073397 -0.056977 0.86372399 0.50154901 0 0.86512899 -0.25709 0 0.96638697
		 -0.86372399 -0.056977 0.50073397 -0.25671399 -0.054110002 0.96497202 -0.25709 0 0.96638697
		 -0.86512899 0 0.50154901 0.475146 -0.32018101 0.81958598 0.91663498 -0.31672499 0.243854
		 0.96497202 -0.054110002 0.25671399 0.50073397 -0.056977 0.86372399 0.91663498 -0.31672499
		 0.243854 0.81958598 -0.32018101 -0.475146 0.86372399 -0.056977 -0.50073397 0.96497202
		 -0.054110002 0.25671399 0.96497202 -0.054110002 0.25671399 0.86372399 -0.056977 -0.50073397
		 0.86512899 0 -0.50154901 0.96638697 0 0.25709 0.50073397 -0.056977 0.86372399 0.96497202
		 -0.054110002 0.25671399 0.96638697 0 0.25709 0.50154901 0 0.86512899 0.81958598 -0.32018101
		 -0.475146 0.243854 -0.31672499 -0.91663498 0.256713 -0.054110002 -0.96497202 0.86372399
		 -0.056977 -0.50073397 0.243854 -0.31672499 -0.91663498 -0.47514501 -0.32018101 -0.81958598
		 -0.50073397 -0.056977 -0.86372399 0.256713 -0.054110002 -0.96497202 0.256713 -0.054110002
		 -0.96497202 -0.50073397 -0.056977 -0.86372399 -0.50154901 0 -0.86512899 0.25709 0
		 -0.96638697 0.86372399 -0.056977 -0.50073397 0.256713 -0.054110002 -0.96497202 0.25709
		 0 -0.96638697 0.86512899 0 -0.50154901 -0.47514501 -0.32018101 -0.81958598 -0.91663498
		 -0.31672499 -0.243854 -0.96497202 -0.054110002 -0.256713 -0.50073397 -0.056977 -0.86372399
		 -0.91663498 -0.31672499 -0.243854 -0.81958598 -0.32018101 0.475146 -0.86372399 -0.056977
		 0.50073397 -0.96497202 -0.054110002 -0.256713 -0.96497202 -0.054110002 -0.256713
		 -0.86372399 -0.056977 0.50073397 -0.86512899 0 0.50154901 -0.96638799 0 -0.25709
		 -0.50073397 -0.056977 -0.86372399 -0.96497202 -0.054110002 -0.256713 -0.96638799
		 0 -0.25709 -0.50154901 0 -0.86512899 -0.86512899 0 0.50154901 -0.25709 0 0.96638697
		 -0.25671399 0.054110002 0.96497202 -0.86372399 0.056977 0.50073397 -0.25709 0 0.96638697
		 0.50154901 0 0.86512899 0.50073397 0.056977 0.86372399 -0.25671399 0.054110002 0.96497202
		 -0.25671399 0.054110002 0.96497202 0.50073397 0.056977 0.86372399 0.475146 0.32018101
		 0.81958598 -0.243854 0.31672499 0.91663498 -0.86372399 0.056977 0.50073397 -0.25671399
		 0.054110002 0.96497202 -0.243854 0.31672499 0.91663498 -0.81958598 0.32018101 0.475146
		 0.50154901 0 0.86512899 0.96638697 0 0.25709 0.96497202 0.054110002 0.25671399 0.50073397
		 0.056977 0.86372399 0.96638697 0 0.25709 0.86512899 0 -0.50154901 0.86372399 0.056977
		 -0.50073397 0.96497202 0.054110002 0.25671399 0.96497202 0.054110002 0.25671399 0.86372399
		 0.056977 -0.50073397 0.81958598 0.32018101 -0.475146 0.91663498 0.31672499 0.243854
		 0.50073397 0.056977 0.86372399 0.96497202 0.054110002 0.25671399 0.91663498 0.31672499
		 0.243854 0.475146 0.32018101 0.81958598 0.86512899 0 -0.50154901 0.25709 0 -0.96638697
		 0.256713 0.054110002 -0.96497202 0.86372399 0.056977 -0.50073397 0.25709 0 -0.96638697
		 -0.50154901 0 -0.86512899;
	setAttr ".n[166:331]" -type "float3"  -0.50073397 0.056977 -0.86372399 0.256713
		 0.054110002 -0.96497202 0.256713 0.054110002 -0.96497202 -0.50073397 0.056977 -0.86372399
		 -0.47514501 0.32018101 -0.81958598 0.243854 0.31672499 -0.91663498 0.86372399 0.056977
		 -0.50073397 0.256713 0.054110002 -0.96497202 0.243854 0.31672499 -0.91663498 0.81958598
		 0.32018101 -0.475146 -0.50154901 0 -0.86512899 -0.96638799 0 -0.25709 -0.96497202
		 0.054110002 -0.256713 -0.50073397 0.056977 -0.86372399 -0.96638799 0 -0.25709 -0.86512899
		 0 0.50154901 -0.86372399 0.056977 0.50073397 -0.96497202 0.054110002 -0.256713 -0.96497202
		 0.054110002 -0.256713 -0.86372399 0.056977 0.50073397 -0.81958598 0.32018101 0.475146
		 -0.91663498 0.31672499 -0.243854 -0.50073397 0.056977 -0.86372399 -0.96497202 0.054110002
		 -0.256713 -0.91663498 0.31672499 -0.243854 -0.47514501 0.32018101 -0.81958598 -0.81958598
		 0.32018101 0.475146 -0.243854 0.31672499 0.91663498 -0.118217 0.888008 0.444372 -0.40015301
		 0.88660097 0.231984 -0.243854 0.31672499 0.91663498 0.475146 0.32018101 0.81958598
		 0.231984 0.88660097 0.40015301 -0.118217 0.888008 0.444372 -0.118217 0.888008 0.444372
		 0.231984 0.88660097 0.40015301 0 1 0 0 1 0 -0.40015301 0.88660097 0.231984 -0.118217
		 0.888008 0.444372 0 1 0 0 1 0 0.475146 0.32018101 0.81958598 0.91663498 0.31672499
		 0.243854 0.444372 0.888008 0.118217 0.231984 0.88660097 0.40015301 0.91663498 0.31672499
		 0.243854 0.81958598 0.32018101 -0.475146 0.40015301 0.88660097 -0.231985 0.444372
		 0.888008 0.118217 0.444372 0.888008 0.118217 0.40015301 0.88660097 -0.231985 0 1
		 0 0 1 0 0.231984 0.88660097 0.40015301 0.444372 0.888008 0.118217 0 1 0 0 1 0 0.81958598
		 0.32018101 -0.475146 0.243854 0.31672499 -0.91663498 0.118217 0.888008 -0.444372
		 0.40015301 0.88660097 -0.231985 0.243854 0.31672499 -0.91663498 -0.47514501 0.32018101
		 -0.81958598 -0.231985 0.88660097 -0.40015301 0.118217 0.888008 -0.444372 0.118217
		 0.888008 -0.444372 -0.231985 0.88660097 -0.40015301 0 1 0 0 1 0 0.40015301 0.88660097
		 -0.231985 0.118217 0.888008 -0.444372 0 1 0 0 1 0 -0.47514501 0.32018101 -0.81958598
		 -0.91663498 0.31672499 -0.243854 -0.444372 0.888008 -0.118217 -0.231985 0.88660097
		 -0.40015301 -0.91663498 0.31672499 -0.243854 -0.81958598 0.32018101 0.475146 -0.40015301
		 0.88660097 0.231984 -0.444372 0.888008 -0.118217 -0.444372 0.888008 -0.118217 -0.40015301
		 0.88660097 0.231984 0 1 0 0 1 0 -0.231985 0.88660097 -0.40015301 -0.444372 0.888008
		 -0.118217 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr ".n[332:351]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr -s 88 -ch 352 ".fc[0:87]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 6 7 2
		f 4 -7 7 8 9
		mu 0 4 2 7 17 8
		f 4 -3 -10 10 11
		mu 0 4 3 2 8 9
		f 4 12 13 14 -6
		mu 0 4 6 15 16 7
		f 4 15 16 17 -14
		mu 0 4 15 24 25 16
		f 4 -18 18 19 20
		mu 0 4 16 25 31 26
		f 4 -15 -21 21 -8
		mu 0 4 7 16 26 17
		f 4 22 23 24 -17
		mu 0 4 24 28 29 25
		f 4 25 26 27 -24
		mu 0 4 28 19 20 29
		f 4 -28 28 29 30
		mu 0 4 29 20 27 32
		f 4 -25 -31 31 -19
		mu 0 4 25 29 32 31
		f 4 32 33 34 -27
		mu 0 4 19 10 11 20
		f 4 35 -4 36 -34
		mu 0 4 10 0 3 11
		f 4 -37 -12 37 38
		mu 0 4 11 3 9 18
		f 4 -35 -39 39 -29
		mu 0 4 20 11 18 27
		f 4 -11 40 41 42
		mu 0 4 33 34 35 36
		f 4 -9 43 44 -41
		mu 0 4 51 52 53 54
		f 4 -45 45 46 47
		mu 0 4 54 53 57 58
		f 4 -42 -48 48 49
		mu 0 4 36 35 37 38
		f 4 -22 50 51 -44
		mu 0 4 52 55 56 53
		f 4 -20 52 53 -51
		mu 0 4 69 70 71 72
		f 4 -54 54 55 56
		mu 0 4 72 71 75 76
		f 4 -52 -57 57 -46
		mu 0 4 53 56 59 57
		f 4 -32 58 59 -53
		mu 0 4 70 73 74 71
		f 4 -30 60 61 -59
		mu 0 4 87 88 89 90
		f 4 -62 62 63 64
		mu 0 4 90 89 93 94
		f 4 -60 -65 65 -55
		mu 0 4 71 74 77 75
		f 4 -40 66 67 -61
		mu 0 4 88 91 92 89
		f 4 -38 -43 68 -67
		mu 0 4 39 33 36 40
		f 4 -69 -50 69 70
		mu 0 4 40 36 38 43
		f 4 -68 -71 71 -63
		mu 0 4 89 92 95 93
		f 4 -49 72 73 74
		mu 0 4 38 37 41 42
		f 4 -47 75 76 -73
		mu 0 4 58 57 60 61
		f 4 -77 77 78 79
		mu 0 4 61 60 63 64
		f 4 -74 -80 80 81
		mu 0 4 42 41 44 45
		f 4 -58 82 83 -76
		mu 0 4 57 59 62 60
		f 4 -56 84 85 -83
		mu 0 4 76 75 78 79
		f 4 -86 86 87 88
		mu 0 4 79 78 81 82
		f 4 -84 -89 89 -78
		mu 0 4 60 62 65 63
		f 4 -66 90 91 -85
		mu 0 4 75 77 80 78
		f 4 -64 92 93 -91
		mu 0 4 94 93 96 97
		f 4 -94 94 95 96
		mu 0 4 97 96 99 100
		f 4 -92 -97 97 -87
		mu 0 4 78 80 83 81
		f 4 -72 98 99 -93
		mu 0 4 93 95 98 96
		f 4 -70 -75 100 -99
		mu 0 4 43 38 42 46
		f 4 -101 -82 101 102
		mu 0 4 46 42 45 49
		f 4 -100 -103 103 -95
		mu 0 4 96 98 101 99
		f 4 -81 104 105 106
		mu 0 4 45 44 47 48
		f 4 -79 107 108 -105
		mu 0 4 64 63 66 67
		f 4 -109 109 110 111
		mu 0 4 105 106 107 108
		f 4 -106 -112 112 113
		mu 0 4 113 105 108 114
		f 4 -90 114 115 -108
		mu 0 4 63 65 68 66
		f 4 -88 116 117 -115
		mu 0 4 82 81 84 85
		f 4 -118 118 119 120
		mu 0 4 109 115 116 110
		f 4 -116 -121 121 -110
		mu 0 4 106 109 110 107
		f 4 -98 122 123 -117
		mu 0 4 81 83 86 84
		f 4 -96 124 125 -123
		mu 0 4 100 99 102 103
		f 4 -126 126 127 128
		mu 0 4 122 127 128 123
		f 4 -124 -129 129 -119
		mu 0 4 115 122 123 116
		f 4 -104 130 131 -125
		mu 0 4 99 101 104 102
		f 4 -102 -107 132 -131
		mu 0 4 49 45 48 50
		f 4 -133 -114 133 134
		mu 0 4 120 113 114 121
		f 4 -132 -135 135 -127
		mu 0 4 127 120 121 128
		f 4 -5 136 137 138
		mu 0 4 6 1 5 14
		f 4 139 140 -137 -1
		mu 0 4 0 4 5 1
		f 4 141 -138 -141 142
		mu 0 4 13 14 5 4
		f 4 -16 143 144 145
		mu 0 4 24 15 23 22
		f 4 -139 146 -144 -13
		mu 0 4 6 14 23 15
		f 4 147 -145 -147 -142
		mu 0 4 13 22 23 14
		f 4 -26 148 149 150
		mu 0 4 19 28 30 21
		f 4 -146 151 -149 -23
		mu 0 4 24 22 30 28
		f 4 152 -150 -152 -148
		mu 0 4 13 21 30 22
		f 4 -36 153 154 -140
		mu 0 4 0 10 12 4
		f 4 -151 155 -154 -33
		mu 0 4 19 21 12 10
		f 4 -143 -155 -156 -153
		mu 0 4 13 4 12 21
		f 4 -113 156 157 158
		mu 0 4 114 108 112 119
		f 4 159 160 -157 -111
		mu 0 4 107 111 112 108
		f 4 161 -158 -161 162
		mu 0 4 118 119 112 111
		f 4 -122 163 164 -160
		mu 0 4 107 110 117 111
		f 4 165 166 -164 -120
		mu 0 4 116 124 117 110
		f 4 -163 -165 -167 167
		mu 0 4 118 111 117 124
		f 4 -130 168 169 -166
		mu 0 4 116 123 129 124
		f 4 170 171 -169 -128
		mu 0 4 128 125 129 123
		f 4 -168 -170 -172 172
		mu 0 4 118 124 129 125
		f 4 -136 173 174 -171
		mu 0 4 128 121 126 125
		f 4 -159 175 -174 -134
		mu 0 4 114 119 126 121
		f 4 -173 -175 -176 -162
		mu 0 4 118 125 126 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface1" -p "group14";
	setAttr ".t" -type "double3" -0.8568545549324238 0.59053732015256455 -4.0472469767265347 ;
	setAttr ".s" -type "double3" 0.30534672556760195 0.30534672556760195 0.30534672556760195 ;
	setAttr ".rp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
	setAttr ".sp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
createNode mesh -n "polySurfaceShape1" -p "|group14|polySurface1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "vtx[0:89]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 130 ".uvst[0].uvsp[0:129]" -type "float2" 0.54665703 0.58051997
		 0.47738299 0.610636 0.44862801 0.58188099 0.54665703 0.532866 0.54665703 0.63503498
		 0.50308901 0.63634199 0.44726601 0.67991 0.39961299 0.67991 0.42412099 0.557374 0.54665703
		 0.496106 0.61593097 0.610636 0.64468598 0.58188099 0.59022599 0.63634199 0.54665703
		 0.67991 0.501782 0.67991 0.47738299 0.74918401 0.44862801 0.77793902 0.36285299 0.67991
		 0.66919398 0.557374 0.64604801 0.67991 0.69370103 0.67991 0.59153301 0.67991 0.54665703
		 0.72478598 0.50308901 0.72347897 0.54665703 0.77930099 0.54665703 0.82695401 0.42412099
		 0.80244601 0.73046201 0.67991 0.61593097 0.74918401 0.64468598 0.77793902 0.59022599
		 0.72347897 0.54665703 0.86371499 0.66919398 0.80244601 0.132698 0.49211401 0.010161
		 0.49211401 0.001992 0.39408499 0.132698 0.39408499 0.001992 0.26337999 0.132698 0.26337999
		 0.255234 0.49211401 0.263403 0.39408499 0.001992 0.13267399 0.132698 0.13267399 0.263403
		 0.26337999 0.010161 0.034644999 0.132698 0.034644999 0.263403 0.13267399 0.034667999
		 0.0019690001 0.132698 0.0019690001 0.255234 0.034644999 0.230727 0.0019690001 0.279311
		 0.0019690001 0.40184799 0.0019690001 0.40184799 0.099997997 0.27114201 0.099997997
		 0.52438402 0.0019690001 0.53255302 0.099997997 0.40184799 0.230703 0.27114201 0.230703
		 0.53255302 0.230703 0.40184799 0.36140901 0.27114201 0.36140901 0.53255302 0.36140901
		 0.40184799 0.459438 0.279311 0.459438 0.52438402 0.459438 0.40184799 0.49211401 0.303819
		 0.49211401 0.49987701 0.49211401 0.54826701 0.0019690001 0.67080301 0.0019690001
		 0.67080301 0.099997997 0.54009801 0.099997997 0.79334003 0.0019690001 0.80150902
		 0.099997997 0.67080301 0.230703 0.54009801 0.230703 0.80150902 0.230703 0.67080301
		 0.36140901 0.54009801 0.36140901 0.80150902 0.36140901 0.67080301 0.459438 0.54826701
		 0.459438 0.79334003 0.459438 0.67080301 0.49211401 0.57277399 0.49211401 0.76883203
		 0.49211401 0.744766 0.496106 0.867302 0.496106 0.867302 0.59413499 0.736597 0.59413499
		 0.98983902 0.496106 0.99800801 0.59413499 0.867302 0.72483999 0.736597 0.72483999
		 0.99800801 0.72483999 0.867302 0.855546 0.736597 0.855546 0.99800801 0.855546 0.867302
		 0.95357502 0.744766 0.95357502 0.98983902 0.95357502 0.867302 0.986251 0.76927298
		 0.986251 0.96533197 0.986251 0.111644 0.74117798 0.062629998 0.64314902 0.110283
		 0.64314902 0.14040001 0.71242303 0.111644 0.54512 0.14040001 0.57387501 0.16479801
		 0.64314902 0.166105 0.68671799 0.209674 0.79019302 0.209674 0.74254 0.209674 0.496106
		 0.209674 0.54375899 0.166105 0.599581 0.209674 0.64314902 0.209674 0.688025 0.30770299
		 0.74117798 0.278947 0.71242303 0.30770299 0.54512 0.278947 0.57387501 0.209674 0.59827399
		 0.254549 0.64314902 0.25324199 0.68671799 0.35671699 0.64314902 0.309064 0.64314902
		 0.25324199 0.599581;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 90 ".vt[0:89]"  1.72786701 -0.001375 2.52718496 1.86212301 -0.001375 2.56290102
		 1.89783895 -0.001375 2.4286449 1.76358294 -0.001375 2.39292908 1.65568697 0.027774001 2.56903005
		 1.90396798 0.027774001 2.63508105 1.97001898 0.027774001 2.38680005 1.72173798 0.027774001 2.32074904
		 1.64520895 0.231821 2.575104 1.91004205 0.231821 2.64555907 1.980497 0.231821 2.38072491
		 1.71566296 0.231821 2.31027102 1.65568697 0.435868 2.56903005 1.90396798 0.435868 2.63508105
		 1.97001898 0.435868 2.38680005 1.72173798 0.435868 2.32074904 1.72786701 0.465018 2.52718496
		 1.86212301 0.465018 2.56290102 1.89783895 0.465018 2.4286449 1.76358294 0.465018 2.39292908
		 1.81285298 -0.001375 2.47791505 1.81285298 0.465018 2.47791505 1.85122502 0.465018 2.45566893
		 1.79060698 0.465018 2.43954301 1.78795898 -0.001375 2.5714891 1.68711996 -0.001375 2.550807
		 1.88574505 -0.001375 2.60364795 1.76881897 0.027774001 2.64343596 1.90642703 -0.001375 2.50280905
		 1.938586 -0.001375 2.4050231 1.978374 0.027774001 2.52194905 1.83774698 -0.001375 2.38434005
		 1.73996103 -0.001375 2.35218191 1.85688698 0.027774001 2.3123939 1.71927905 -0.001375 2.45302105
		 1.64733195 0.027774001 2.43388104 1.64520895 0.115223 2.575104 1.91004205 0.115223 2.64555907
		 1.76588404 0.231821 2.65446997 1.980497 0.115223 2.38072491 1.98940802 0.231821 2.52488399
		 1.71566296 0.115223 2.31027102 1.85982203 0.231821 2.30135894 1.63629699 0.231821 2.43094492
		 1.64520895 0.34841999 2.575104 1.91004205 0.34841999 2.64555907 1.76881897 0.435868 2.64343596
		 1.980497 0.34841999 2.38072491 1.978374 0.435868 2.52194905 1.71566296 0.34841999 2.31027102
		 1.85688698 0.435868 2.3123939 1.64733195 0.435868 2.43388104 1.68711996 0.465018 2.550807
		 1.88574505 0.465018 2.60364795 1.78795898 0.465018 2.5714891 1.938586 0.465018 2.4050231
		 1.90642703 0.465018 2.50280905 1.73996103 0.465018 2.35218191 1.83774698 0.465018 2.38434005
		 1.71927905 0.465018 2.45302105 1.83509898 -0.001375 2.51628709 1.77448106 -0.001375 2.50015998
		 1.85122502 -0.001375 2.45566893 1.79060698 -0.001375 2.43954301 1.77448106 0.465018 2.50015998
		 1.83509898 0.465018 2.51628709 1.77762604 -0.001375 2.61033106 1.94526899 -0.001375 2.51314211
		 1.84808004 -0.001375 2.34549809 1.68043602 -0.001375 2.44268799 1.76588404 0.115223 2.65446997
		 1.98940802 0.115223 2.52488399 1.85982203 0.115223 2.30135894 1.63629699 0.115223 2.43094492
		 1.76588404 0.34841999 2.65446997 1.98940802 0.34841999 2.52488399 1.85982203 0.34841999 2.30135894
		 1.63629699 0.34841999 2.43094492 1.77762604 0.465018 2.61033106 1.94526899 0.465018 2.51314211
		 1.84808004 0.465018 2.34549809 1.68043602 0.465018 2.44268799 1.79719603 -0.001375 2.53676701
		 1.87170506 -0.001375 2.49357104 1.82850897 -0.001375 2.41906309 1.75400102 -0.001375 2.4622581
		 1.79719603 0.465018 2.53676701 1.87170506 0.465018 2.49357104 1.82850897 0.465018 2.41906309
		 1.75400102 0.465018 2.4622581;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  0 24 0 24 66 0 66 25 0 25 0 0 24 1 0 1 26 0 26 66 0
		 26 5 0 5 27 0 27 66 0 27 4 0 4 25 0 1 28 0 28 67 0 67 26 0 28 2 0 2 29 0 29 67 0
		 29 6 0 6 30 0 30 67 0 30 5 0 2 31 0 31 68 0 68 29 0 31 3 0 3 32 0 32 68 0 32 7 0
		 7 33 0 33 68 0 33 6 0 3 34 0 34 69 0 69 32 0 34 0 0 25 69 0 4 35 0 35 69 0 35 7 0
		 27 70 0 70 36 0 36 4 0 5 37 0 37 70 0 37 9 0 9 38 0 38 70 0 38 8 0 8 36 0 30 71 0
		 71 37 0 6 39 0 39 71 0 39 10 0 10 40 0 40 71 0 40 9 0 33 72 0 72 39 0 7 41 0 41 72 0
		 41 11 0 11 42 0 42 72 0 42 10 0 35 73 0 73 41 0 36 73 0 8 43 0 43 73 0 43 11 0 38 74 0
		 74 44 0 44 8 0 9 45 0 45 74 0 45 13 0 13 46 0 46 74 0 46 12 0 12 44 0 40 75 0 75 45 0
		 10 47 0 47 75 0 47 14 0 14 48 0 48 75 0 48 13 0 42 76 0 76 47 0 11 49 0 49 76 0 49 15 0
		 15 50 0 50 76 0 50 14 0 43 77 0 77 49 0 44 77 0 12 51 0 51 77 0 51 15 0 46 78 0 78 52 0
		 52 12 0 13 53 0 53 78 0 53 17 0 17 54 0 54 78 0 54 16 0 16 52 0 48 79 0 79 53 0 14 55 0
		 55 79 0 55 18 0 18 56 0 56 79 0 56 17 0 50 80 0 80 55 0 15 57 0 57 80 0 57 19 0 19 58 0
		 58 80 0 58 18 0 51 81 0 81 57 0 52 81 0 16 59 0 59 81 0 59 19 0 24 82 0 82 60 0 60 1 0
		 0 61 0 61 82 0 20 60 0 61 20 0 28 83 0 83 62 0 62 2 0 60 83 0 20 62 0 31 84 0 84 63 0
		 63 3 0 62 84 0 20 63 0 34 85 0 85 61 0 63 85 0 54 86 0 86 64 0 64 16 0 17 65 0 65 86 0
		 21 64 0 65 21 0 56 87 0 87 65 0 18 22 0;
	setAttr ".ed[166:175]" 22 87 0 22 21 0 58 88 0 88 22 0 19 23 0 23 88 0 23 21 0
		 59 89 0 89 23 0 64 89 0;
	setAttr -s 352 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -1 0 0 -1 0 -0.118217 -0.888008 0.444372
		 -0.40015301 -0.88660097 0.231984 0 -1 0 0 -1 0 0.231984 -0.88660097 0.40015301 -0.118217
		 -0.888008 0.444372 -0.118217 -0.888008 0.444372 0.231984 -0.88660097 0.40015301 0.475146
		 -0.32018101 0.81958598 -0.243854 -0.31672499 0.91663498 -0.40015301 -0.88660097 0.231984
		 -0.118217 -0.888008 0.444372 -0.243854 -0.31672499 0.91663498 -0.81958598 -0.32018101
		 0.475146 0 -1 0 0 -1 0 0.444372 -0.888008 0.118217 0.231984 -0.88660097 0.40015301
		 0 -1 0 0 -1 0 0.40015301 -0.88660097 -0.231984 0.444372 -0.888008 0.118217 0.444372
		 -0.888008 0.118217 0.40015301 -0.88660097 -0.231984 0.81958598 -0.32018101 -0.475146
		 0.91663498 -0.31672499 0.243854 0.231984 -0.88660097 0.40015301 0.444372 -0.888008
		 0.118217 0.91663498 -0.31672499 0.243854 0.475146 -0.32018101 0.81958598 0 -1 0 0
		 -1 0 0.118217 -0.888008 -0.444372 0.40015301 -0.88660097 -0.231984 0 -1 0 0 -1 0
		 -0.231985 -0.88660097 -0.40015301 0.118217 -0.888008 -0.444372 0.118217 -0.888008
		 -0.444372 -0.231985 -0.88660097 -0.40015301 -0.47514501 -0.32018101 -0.81958598 0.243854
		 -0.31672499 -0.91663498 0.40015301 -0.88660097 -0.231984 0.118217 -0.888008 -0.444372
		 0.243854 -0.31672499 -0.91663498 0.81958598 -0.32018101 -0.475146 0 -1 0 0 -1 0 -0.444372
		 -0.888008 -0.118217 -0.231985 -0.88660097 -0.40015301 0 -1 0 0 -1 0 -0.40015301 -0.88660097
		 0.231984 -0.444372 -0.888008 -0.118217 -0.444372 -0.888008 -0.118217 -0.40015301
		 -0.88660097 0.231984 -0.81958598 -0.32018101 0.475146 -0.91663498 -0.31672499 -0.243854
		 -0.231985 -0.88660097 -0.40015301 -0.444372 -0.888008 -0.118217 -0.91663498 -0.31672499
		 -0.243854 -0.47514501 -0.32018101 -0.81958598 -0.81958598 -0.32018101 0.475146 -0.243854
		 -0.31672499 0.91663498 -0.25671399 -0.054110002 0.96497202 -0.86372399 -0.056977
		 0.50073397 -0.243854 -0.31672499 0.91663498 0.475146 -0.32018101 0.81958598 0.50073397
		 -0.056977 0.86372399 -0.25671399 -0.054110002 0.96497202 -0.25671399 -0.054110002
		 0.96497202 0.50073397 -0.056977 0.86372399 0.50154901 0 0.86512899 -0.25709 0 0.96638697
		 -0.86372399 -0.056977 0.50073397 -0.25671399 -0.054110002 0.96497202 -0.25709 0 0.96638697
		 -0.86512899 0 0.50154901 0.475146 -0.32018101 0.81958598 0.91663498 -0.31672499 0.243854
		 0.96497202 -0.054110002 0.25671399 0.50073397 -0.056977 0.86372399 0.91663498 -0.31672499
		 0.243854 0.81958598 -0.32018101 -0.475146 0.86372399 -0.056977 -0.50073397 0.96497202
		 -0.054110002 0.25671399 0.96497202 -0.054110002 0.25671399 0.86372399 -0.056977 -0.50073397
		 0.86512899 0 -0.50154901 0.96638697 0 0.25709 0.50073397 -0.056977 0.86372399 0.96497202
		 -0.054110002 0.25671399 0.96638697 0 0.25709 0.50154901 0 0.86512899 0.81958598 -0.32018101
		 -0.475146 0.243854 -0.31672499 -0.91663498 0.256713 -0.054110002 -0.96497202 0.86372399
		 -0.056977 -0.50073397 0.243854 -0.31672499 -0.91663498 -0.47514501 -0.32018101 -0.81958598
		 -0.50073397 -0.056977 -0.86372399 0.256713 -0.054110002 -0.96497202 0.256713 -0.054110002
		 -0.96497202 -0.50073397 -0.056977 -0.86372399 -0.50154901 0 -0.86512899 0.25709 0
		 -0.96638697 0.86372399 -0.056977 -0.50073397 0.256713 -0.054110002 -0.96497202 0.25709
		 0 -0.96638697 0.86512899 0 -0.50154901 -0.47514501 -0.32018101 -0.81958598 -0.91663498
		 -0.31672499 -0.243854 -0.96497202 -0.054110002 -0.256713 -0.50073397 -0.056977 -0.86372399
		 -0.91663498 -0.31672499 -0.243854 -0.81958598 -0.32018101 0.475146 -0.86372399 -0.056977
		 0.50073397 -0.96497202 -0.054110002 -0.256713 -0.96497202 -0.054110002 -0.256713
		 -0.86372399 -0.056977 0.50073397 -0.86512899 0 0.50154901 -0.96638799 0 -0.25709
		 -0.50073397 -0.056977 -0.86372399 -0.96497202 -0.054110002 -0.256713 -0.96638799
		 0 -0.25709 -0.50154901 0 -0.86512899 -0.86512899 0 0.50154901 -0.25709 0 0.96638697
		 -0.25671399 0.054110002 0.96497202 -0.86372399 0.056977 0.50073397 -0.25709 0 0.96638697
		 0.50154901 0 0.86512899 0.50073397 0.056977 0.86372399 -0.25671399 0.054110002 0.96497202
		 -0.25671399 0.054110002 0.96497202 0.50073397 0.056977 0.86372399 0.475146 0.32018101
		 0.81958598 -0.243854 0.31672499 0.91663498 -0.86372399 0.056977 0.50073397 -0.25671399
		 0.054110002 0.96497202 -0.243854 0.31672499 0.91663498 -0.81958598 0.32018101 0.475146
		 0.50154901 0 0.86512899 0.96638697 0 0.25709 0.96497202 0.054110002 0.25671399 0.50073397
		 0.056977 0.86372399 0.96638697 0 0.25709 0.86512899 0 -0.50154901 0.86372399 0.056977
		 -0.50073397 0.96497202 0.054110002 0.25671399 0.96497202 0.054110002 0.25671399 0.86372399
		 0.056977 -0.50073397 0.81958598 0.32018101 -0.475146 0.91663498 0.31672499 0.243854
		 0.50073397 0.056977 0.86372399 0.96497202 0.054110002 0.25671399 0.91663498 0.31672499
		 0.243854 0.475146 0.32018101 0.81958598 0.86512899 0 -0.50154901 0.25709 0 -0.96638697
		 0.256713 0.054110002 -0.96497202 0.86372399 0.056977 -0.50073397 0.25709 0 -0.96638697
		 -0.50154901 0 -0.86512899;
	setAttr ".n[166:331]" -type "float3"  -0.50073397 0.056977 -0.86372399 0.256713
		 0.054110002 -0.96497202 0.256713 0.054110002 -0.96497202 -0.50073397 0.056977 -0.86372399
		 -0.47514501 0.32018101 -0.81958598 0.243854 0.31672499 -0.91663498 0.86372399 0.056977
		 -0.50073397 0.256713 0.054110002 -0.96497202 0.243854 0.31672499 -0.91663498 0.81958598
		 0.32018101 -0.475146 -0.50154901 0 -0.86512899 -0.96638799 0 -0.25709 -0.96497202
		 0.054110002 -0.256713 -0.50073397 0.056977 -0.86372399 -0.96638799 0 -0.25709 -0.86512899
		 0 0.50154901 -0.86372399 0.056977 0.50073397 -0.96497202 0.054110002 -0.256713 -0.96497202
		 0.054110002 -0.256713 -0.86372399 0.056977 0.50073397 -0.81958598 0.32018101 0.475146
		 -0.91663498 0.31672499 -0.243854 -0.50073397 0.056977 -0.86372399 -0.96497202 0.054110002
		 -0.256713 -0.91663498 0.31672499 -0.243854 -0.47514501 0.32018101 -0.81958598 -0.81958598
		 0.32018101 0.475146 -0.243854 0.31672499 0.91663498 -0.118217 0.888008 0.444372 -0.40015301
		 0.88660097 0.231984 -0.243854 0.31672499 0.91663498 0.475146 0.32018101 0.81958598
		 0.231984 0.88660097 0.40015301 -0.118217 0.888008 0.444372 -0.118217 0.888008 0.444372
		 0.231984 0.88660097 0.40015301 0 1 0 0 1 0 -0.40015301 0.88660097 0.231984 -0.118217
		 0.888008 0.444372 0 1 0 0 1 0 0.475146 0.32018101 0.81958598 0.91663498 0.31672499
		 0.243854 0.444372 0.888008 0.118217 0.231984 0.88660097 0.40015301 0.91663498 0.31672499
		 0.243854 0.81958598 0.32018101 -0.475146 0.40015301 0.88660097 -0.231985 0.444372
		 0.888008 0.118217 0.444372 0.888008 0.118217 0.40015301 0.88660097 -0.231985 0 1
		 0 0 1 0 0.231984 0.88660097 0.40015301 0.444372 0.888008 0.118217 0 1 0 0 1 0 0.81958598
		 0.32018101 -0.475146 0.243854 0.31672499 -0.91663498 0.118217 0.888008 -0.444372
		 0.40015301 0.88660097 -0.231985 0.243854 0.31672499 -0.91663498 -0.47514501 0.32018101
		 -0.81958598 -0.231985 0.88660097 -0.40015301 0.118217 0.888008 -0.444372 0.118217
		 0.888008 -0.444372 -0.231985 0.88660097 -0.40015301 0 1 0 0 1 0 0.40015301 0.88660097
		 -0.231985 0.118217 0.888008 -0.444372 0 1 0 0 1 0 -0.47514501 0.32018101 -0.81958598
		 -0.91663498 0.31672499 -0.243854 -0.444372 0.888008 -0.118217 -0.231985 0.88660097
		 -0.40015301 -0.91663498 0.31672499 -0.243854 -0.81958598 0.32018101 0.475146 -0.40015301
		 0.88660097 0.231984 -0.444372 0.888008 -0.118217 -0.444372 0.888008 -0.118217 -0.40015301
		 0.88660097 0.231984 0 1 0 0 1 0 -0.231985 0.88660097 -0.40015301 -0.444372 0.888008
		 -0.118217 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr ".n[332:351]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr -s 88 -ch 352 ".fc[0:87]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 6 7 2
		f 4 -7 7 8 9
		mu 0 4 2 7 17 8
		f 4 -3 -10 10 11
		mu 0 4 3 2 8 9
		f 4 12 13 14 -6
		mu 0 4 6 15 16 7
		f 4 15 16 17 -14
		mu 0 4 15 24 25 16
		f 4 -18 18 19 20
		mu 0 4 16 25 31 26
		f 4 -15 -21 21 -8
		mu 0 4 7 16 26 17
		f 4 22 23 24 -17
		mu 0 4 24 28 29 25
		f 4 25 26 27 -24
		mu 0 4 28 19 20 29
		f 4 -28 28 29 30
		mu 0 4 29 20 27 32
		f 4 -25 -31 31 -19
		mu 0 4 25 29 32 31
		f 4 32 33 34 -27
		mu 0 4 19 10 11 20
		f 4 35 -4 36 -34
		mu 0 4 10 0 3 11
		f 4 -37 -12 37 38
		mu 0 4 11 3 9 18
		f 4 -35 -39 39 -29
		mu 0 4 20 11 18 27
		f 4 -11 40 41 42
		mu 0 4 33 34 35 36
		f 4 -9 43 44 -41
		mu 0 4 51 52 53 54
		f 4 -45 45 46 47
		mu 0 4 54 53 57 58
		f 4 -42 -48 48 49
		mu 0 4 36 35 37 38
		f 4 -22 50 51 -44
		mu 0 4 52 55 56 53
		f 4 -20 52 53 -51
		mu 0 4 69 70 71 72
		f 4 -54 54 55 56
		mu 0 4 72 71 75 76
		f 4 -52 -57 57 -46
		mu 0 4 53 56 59 57
		f 4 -32 58 59 -53
		mu 0 4 70 73 74 71
		f 4 -30 60 61 -59
		mu 0 4 87 88 89 90
		f 4 -62 62 63 64
		mu 0 4 90 89 93 94
		f 4 -60 -65 65 -55
		mu 0 4 71 74 77 75
		f 4 -40 66 67 -61
		mu 0 4 88 91 92 89
		f 4 -38 -43 68 -67
		mu 0 4 39 33 36 40
		f 4 -69 -50 69 70
		mu 0 4 40 36 38 43
		f 4 -68 -71 71 -63
		mu 0 4 89 92 95 93
		f 4 -49 72 73 74
		mu 0 4 38 37 41 42
		f 4 -47 75 76 -73
		mu 0 4 58 57 60 61
		f 4 -77 77 78 79
		mu 0 4 61 60 63 64
		f 4 -74 -80 80 81
		mu 0 4 42 41 44 45
		f 4 -58 82 83 -76
		mu 0 4 57 59 62 60
		f 4 -56 84 85 -83
		mu 0 4 76 75 78 79
		f 4 -86 86 87 88
		mu 0 4 79 78 81 82
		f 4 -84 -89 89 -78
		mu 0 4 60 62 65 63
		f 4 -66 90 91 -85
		mu 0 4 75 77 80 78
		f 4 -64 92 93 -91
		mu 0 4 94 93 96 97
		f 4 -94 94 95 96
		mu 0 4 97 96 99 100
		f 4 -92 -97 97 -87
		mu 0 4 78 80 83 81
		f 4 -72 98 99 -93
		mu 0 4 93 95 98 96
		f 4 -70 -75 100 -99
		mu 0 4 43 38 42 46
		f 4 -101 -82 101 102
		mu 0 4 46 42 45 49
		f 4 -100 -103 103 -95
		mu 0 4 96 98 101 99
		f 4 -81 104 105 106
		mu 0 4 45 44 47 48
		f 4 -79 107 108 -105
		mu 0 4 64 63 66 67
		f 4 -109 109 110 111
		mu 0 4 105 106 107 108
		f 4 -106 -112 112 113
		mu 0 4 113 105 108 114
		f 4 -90 114 115 -108
		mu 0 4 63 65 68 66
		f 4 -88 116 117 -115
		mu 0 4 82 81 84 85
		f 4 -118 118 119 120
		mu 0 4 109 115 116 110
		f 4 -116 -121 121 -110
		mu 0 4 106 109 110 107
		f 4 -98 122 123 -117
		mu 0 4 81 83 86 84
		f 4 -96 124 125 -123
		mu 0 4 100 99 102 103
		f 4 -126 126 127 128
		mu 0 4 122 127 128 123
		f 4 -124 -129 129 -119
		mu 0 4 115 122 123 116
		f 4 -104 130 131 -125
		mu 0 4 99 101 104 102
		f 4 -102 -107 132 -131
		mu 0 4 49 45 48 50
		f 4 -133 -114 133 134
		mu 0 4 120 113 114 121
		f 4 -132 -135 135 -127
		mu 0 4 127 120 121 128
		f 4 -5 136 137 138
		mu 0 4 6 1 5 14
		f 4 139 140 -137 -1
		mu 0 4 0 4 5 1
		f 4 141 -138 -141 142
		mu 0 4 13 14 5 4
		f 4 -16 143 144 145
		mu 0 4 24 15 23 22
		f 4 -139 146 -144 -13
		mu 0 4 6 14 23 15
		f 4 147 -145 -147 -142
		mu 0 4 13 22 23 14
		f 4 -26 148 149 150
		mu 0 4 19 28 30 21
		f 4 -146 151 -149 -23
		mu 0 4 24 22 30 28
		f 4 152 -150 -152 -148
		mu 0 4 13 21 30 22
		f 4 -36 153 154 -140
		mu 0 4 0 10 12 4
		f 4 -151 155 -154 -33
		mu 0 4 19 21 12 10
		f 4 -143 -155 -156 -153
		mu 0 4 13 4 12 21
		f 4 -113 156 157 158
		mu 0 4 114 108 112 119
		f 4 159 160 -157 -111
		mu 0 4 107 111 112 108
		f 4 161 -158 -161 162
		mu 0 4 118 119 112 111
		f 4 -122 163 164 -160
		mu 0 4 107 110 117 111
		f 4 165 166 -164 -120
		mu 0 4 116 124 117 110
		f 4 -163 -165 -167 167
		mu 0 4 118 111 117 124
		f 4 -130 168 169 -166
		mu 0 4 116 123 129 124
		f 4 170 171 -169 -128
		mu 0 4 128 125 129 123
		f 4 -168 -170 -172 172
		mu 0 4 118 124 129 125
		f 4 -136 173 174 -171
		mu 0 4 128 121 126 125
		f 4 -159 175 -174 -134
		mu 0 4 114 119 126 121
		f 4 -173 -175 -176 -162
		mu 0 4 118 125 126 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface8" -p "group14";
	setAttr ".t" -type "double3" -0.8044488538583201 0.7350510307803948 -4.0564958629562646 ;
	setAttr ".s" -type "double3" 0.30534672556760195 0.30534672556760195 0.30534672556760195 ;
	setAttr ".rp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
	setAttr ".sp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
createNode mesh -n "polySurfaceShape8" -p "|group14|polySurface8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "vtx[0:89]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 130 ".uvst[0].uvsp[0:129]" -type "float2" 0.54665703 0.58051997
		 0.47738299 0.610636 0.44862801 0.58188099 0.54665703 0.532866 0.54665703 0.63503498
		 0.50308901 0.63634199 0.44726601 0.67991 0.39961299 0.67991 0.42412099 0.557374 0.54665703
		 0.496106 0.61593097 0.610636 0.64468598 0.58188099 0.59022599 0.63634199 0.54665703
		 0.67991 0.501782 0.67991 0.47738299 0.74918401 0.44862801 0.77793902 0.36285299 0.67991
		 0.66919398 0.557374 0.64604801 0.67991 0.69370103 0.67991 0.59153301 0.67991 0.54665703
		 0.72478598 0.50308901 0.72347897 0.54665703 0.77930099 0.54665703 0.82695401 0.42412099
		 0.80244601 0.73046201 0.67991 0.61593097 0.74918401 0.64468598 0.77793902 0.59022599
		 0.72347897 0.54665703 0.86371499 0.66919398 0.80244601 0.132698 0.49211401 0.010161
		 0.49211401 0.001992 0.39408499 0.132698 0.39408499 0.001992 0.26337999 0.132698 0.26337999
		 0.255234 0.49211401 0.263403 0.39408499 0.001992 0.13267399 0.132698 0.13267399 0.263403
		 0.26337999 0.010161 0.034644999 0.132698 0.034644999 0.263403 0.13267399 0.034667999
		 0.0019690001 0.132698 0.0019690001 0.255234 0.034644999 0.230727 0.0019690001 0.279311
		 0.0019690001 0.40184799 0.0019690001 0.40184799 0.099997997 0.27114201 0.099997997
		 0.52438402 0.0019690001 0.53255302 0.099997997 0.40184799 0.230703 0.27114201 0.230703
		 0.53255302 0.230703 0.40184799 0.36140901 0.27114201 0.36140901 0.53255302 0.36140901
		 0.40184799 0.459438 0.279311 0.459438 0.52438402 0.459438 0.40184799 0.49211401 0.303819
		 0.49211401 0.49987701 0.49211401 0.54826701 0.0019690001 0.67080301 0.0019690001
		 0.67080301 0.099997997 0.54009801 0.099997997 0.79334003 0.0019690001 0.80150902
		 0.099997997 0.67080301 0.230703 0.54009801 0.230703 0.80150902 0.230703 0.67080301
		 0.36140901 0.54009801 0.36140901 0.80150902 0.36140901 0.67080301 0.459438 0.54826701
		 0.459438 0.79334003 0.459438 0.67080301 0.49211401 0.57277399 0.49211401 0.76883203
		 0.49211401 0.744766 0.496106 0.867302 0.496106 0.867302 0.59413499 0.736597 0.59413499
		 0.98983902 0.496106 0.99800801 0.59413499 0.867302 0.72483999 0.736597 0.72483999
		 0.99800801 0.72483999 0.867302 0.855546 0.736597 0.855546 0.99800801 0.855546 0.867302
		 0.95357502 0.744766 0.95357502 0.98983902 0.95357502 0.867302 0.986251 0.76927298
		 0.986251 0.96533197 0.986251 0.111644 0.74117798 0.062629998 0.64314902 0.110283
		 0.64314902 0.14040001 0.71242303 0.111644 0.54512 0.14040001 0.57387501 0.16479801
		 0.64314902 0.166105 0.68671799 0.209674 0.79019302 0.209674 0.74254 0.209674 0.496106
		 0.209674 0.54375899 0.166105 0.599581 0.209674 0.64314902 0.209674 0.688025 0.30770299
		 0.74117798 0.278947 0.71242303 0.30770299 0.54512 0.278947 0.57387501 0.209674 0.59827399
		 0.254549 0.64314902 0.25324199 0.68671799 0.35671699 0.64314902 0.309064 0.64314902
		 0.25324199 0.599581;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 90 ".vt[0:89]"  1.72786701 -0.001375 2.52718496 1.86212301 -0.001375 2.56290102
		 1.89783895 -0.001375 2.4286449 1.76358294 -0.001375 2.39292908 1.65568697 0.027774001 2.56903005
		 1.90396798 0.027774001 2.63508105 1.97001898 0.027774001 2.38680005 1.72173798 0.027774001 2.32074904
		 1.64520895 0.231821 2.575104 1.91004205 0.231821 2.64555907 1.980497 0.231821 2.38072491
		 1.71566296 0.231821 2.31027102 1.65568697 0.435868 2.56903005 1.90396798 0.435868 2.63508105
		 1.97001898 0.435868 2.38680005 1.72173798 0.435868 2.32074904 1.72786701 0.465018 2.52718496
		 1.86212301 0.465018 2.56290102 1.89783895 0.465018 2.4286449 1.76358294 0.465018 2.39292908
		 1.81285298 -0.001375 2.47791505 1.81285298 0.465018 2.47791505 1.85122502 0.465018 2.45566893
		 1.79060698 0.465018 2.43954301 1.78795898 -0.001375 2.5714891 1.68711996 -0.001375 2.550807
		 1.88574505 -0.001375 2.60364795 1.76881897 0.027774001 2.64343596 1.90642703 -0.001375 2.50280905
		 1.938586 -0.001375 2.4050231 1.978374 0.027774001 2.52194905 1.83774698 -0.001375 2.38434005
		 1.73996103 -0.001375 2.35218191 1.85688698 0.027774001 2.3123939 1.71927905 -0.001375 2.45302105
		 1.64733195 0.027774001 2.43388104 1.64520895 0.115223 2.575104 1.91004205 0.115223 2.64555907
		 1.76588404 0.231821 2.65446997 1.980497 0.115223 2.38072491 1.98940802 0.231821 2.52488399
		 1.71566296 0.115223 2.31027102 1.85982203 0.231821 2.30135894 1.63629699 0.231821 2.43094492
		 1.64520895 0.34841999 2.575104 1.91004205 0.34841999 2.64555907 1.76881897 0.435868 2.64343596
		 1.980497 0.34841999 2.38072491 1.978374 0.435868 2.52194905 1.71566296 0.34841999 2.31027102
		 1.85688698 0.435868 2.3123939 1.64733195 0.435868 2.43388104 1.68711996 0.465018 2.550807
		 1.88574505 0.465018 2.60364795 1.78795898 0.465018 2.5714891 1.938586 0.465018 2.4050231
		 1.90642703 0.465018 2.50280905 1.73996103 0.465018 2.35218191 1.83774698 0.465018 2.38434005
		 1.71927905 0.465018 2.45302105 1.83509898 -0.001375 2.51628709 1.77448106 -0.001375 2.50015998
		 1.85122502 -0.001375 2.45566893 1.79060698 -0.001375 2.43954301 1.77448106 0.465018 2.50015998
		 1.83509898 0.465018 2.51628709 1.77762604 -0.001375 2.61033106 1.94526899 -0.001375 2.51314211
		 1.84808004 -0.001375 2.34549809 1.68043602 -0.001375 2.44268799 1.76588404 0.115223 2.65446997
		 1.98940802 0.115223 2.52488399 1.85982203 0.115223 2.30135894 1.63629699 0.115223 2.43094492
		 1.76588404 0.34841999 2.65446997 1.98940802 0.34841999 2.52488399 1.85982203 0.34841999 2.30135894
		 1.63629699 0.34841999 2.43094492 1.77762604 0.465018 2.61033106 1.94526899 0.465018 2.51314211
		 1.84808004 0.465018 2.34549809 1.68043602 0.465018 2.44268799 1.79719603 -0.001375 2.53676701
		 1.87170506 -0.001375 2.49357104 1.82850897 -0.001375 2.41906309 1.75400102 -0.001375 2.4622581
		 1.79719603 0.465018 2.53676701 1.87170506 0.465018 2.49357104 1.82850897 0.465018 2.41906309
		 1.75400102 0.465018 2.4622581;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  0 24 0 24 66 0 66 25 0 25 0 0 24 1 0 1 26 0 26 66 0
		 26 5 0 5 27 0 27 66 0 27 4 0 4 25 0 1 28 0 28 67 0 67 26 0 28 2 0 2 29 0 29 67 0
		 29 6 0 6 30 0 30 67 0 30 5 0 2 31 0 31 68 0 68 29 0 31 3 0 3 32 0 32 68 0 32 7 0
		 7 33 0 33 68 0 33 6 0 3 34 0 34 69 0 69 32 0 34 0 0 25 69 0 4 35 0 35 69 0 35 7 0
		 27 70 0 70 36 0 36 4 0 5 37 0 37 70 0 37 9 0 9 38 0 38 70 0 38 8 0 8 36 0 30 71 0
		 71 37 0 6 39 0 39 71 0 39 10 0 10 40 0 40 71 0 40 9 0 33 72 0 72 39 0 7 41 0 41 72 0
		 41 11 0 11 42 0 42 72 0 42 10 0 35 73 0 73 41 0 36 73 0 8 43 0 43 73 0 43 11 0 38 74 0
		 74 44 0 44 8 0 9 45 0 45 74 0 45 13 0 13 46 0 46 74 0 46 12 0 12 44 0 40 75 0 75 45 0
		 10 47 0 47 75 0 47 14 0 14 48 0 48 75 0 48 13 0 42 76 0 76 47 0 11 49 0 49 76 0 49 15 0
		 15 50 0 50 76 0 50 14 0 43 77 0 77 49 0 44 77 0 12 51 0 51 77 0 51 15 0 46 78 0 78 52 0
		 52 12 0 13 53 0 53 78 0 53 17 0 17 54 0 54 78 0 54 16 0 16 52 0 48 79 0 79 53 0 14 55 0
		 55 79 0 55 18 0 18 56 0 56 79 0 56 17 0 50 80 0 80 55 0 15 57 0 57 80 0 57 19 0 19 58 0
		 58 80 0 58 18 0 51 81 0 81 57 0 52 81 0 16 59 0 59 81 0 59 19 0 24 82 0 82 60 0 60 1 0
		 0 61 0 61 82 0 20 60 0 61 20 0 28 83 0 83 62 0 62 2 0 60 83 0 20 62 0 31 84 0 84 63 0
		 63 3 0 62 84 0 20 63 0 34 85 0 85 61 0 63 85 0 54 86 0 86 64 0 64 16 0 17 65 0 65 86 0
		 21 64 0 65 21 0 56 87 0 87 65 0 18 22 0;
	setAttr ".ed[166:175]" 22 87 0 22 21 0 58 88 0 88 22 0 19 23 0 23 88 0 23 21 0
		 59 89 0 89 23 0 64 89 0;
	setAttr -s 352 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -1 0 0 -1 0 -0.118217 -0.888008 0.444372
		 -0.40015301 -0.88660097 0.231984 0 -1 0 0 -1 0 0.231984 -0.88660097 0.40015301 -0.118217
		 -0.888008 0.444372 -0.118217 -0.888008 0.444372 0.231984 -0.88660097 0.40015301 0.475146
		 -0.32018101 0.81958598 -0.243854 -0.31672499 0.91663498 -0.40015301 -0.88660097 0.231984
		 -0.118217 -0.888008 0.444372 -0.243854 -0.31672499 0.91663498 -0.81958598 -0.32018101
		 0.475146 0 -1 0 0 -1 0 0.444372 -0.888008 0.118217 0.231984 -0.88660097 0.40015301
		 0 -1 0 0 -1 0 0.40015301 -0.88660097 -0.231984 0.444372 -0.888008 0.118217 0.444372
		 -0.888008 0.118217 0.40015301 -0.88660097 -0.231984 0.81958598 -0.32018101 -0.475146
		 0.91663498 -0.31672499 0.243854 0.231984 -0.88660097 0.40015301 0.444372 -0.888008
		 0.118217 0.91663498 -0.31672499 0.243854 0.475146 -0.32018101 0.81958598 0 -1 0 0
		 -1 0 0.118217 -0.888008 -0.444372 0.40015301 -0.88660097 -0.231984 0 -1 0 0 -1 0
		 -0.231985 -0.88660097 -0.40015301 0.118217 -0.888008 -0.444372 0.118217 -0.888008
		 -0.444372 -0.231985 -0.88660097 -0.40015301 -0.47514501 -0.32018101 -0.81958598 0.243854
		 -0.31672499 -0.91663498 0.40015301 -0.88660097 -0.231984 0.118217 -0.888008 -0.444372
		 0.243854 -0.31672499 -0.91663498 0.81958598 -0.32018101 -0.475146 0 -1 0 0 -1 0 -0.444372
		 -0.888008 -0.118217 -0.231985 -0.88660097 -0.40015301 0 -1 0 0 -1 0 -0.40015301 -0.88660097
		 0.231984 -0.444372 -0.888008 -0.118217 -0.444372 -0.888008 -0.118217 -0.40015301
		 -0.88660097 0.231984 -0.81958598 -0.32018101 0.475146 -0.91663498 -0.31672499 -0.243854
		 -0.231985 -0.88660097 -0.40015301 -0.444372 -0.888008 -0.118217 -0.91663498 -0.31672499
		 -0.243854 -0.47514501 -0.32018101 -0.81958598 -0.81958598 -0.32018101 0.475146 -0.243854
		 -0.31672499 0.91663498 -0.25671399 -0.054110002 0.96497202 -0.86372399 -0.056977
		 0.50073397 -0.243854 -0.31672499 0.91663498 0.475146 -0.32018101 0.81958598 0.50073397
		 -0.056977 0.86372399 -0.25671399 -0.054110002 0.96497202 -0.25671399 -0.054110002
		 0.96497202 0.50073397 -0.056977 0.86372399 0.50154901 0 0.86512899 -0.25709 0 0.96638697
		 -0.86372399 -0.056977 0.50073397 -0.25671399 -0.054110002 0.96497202 -0.25709 0 0.96638697
		 -0.86512899 0 0.50154901 0.475146 -0.32018101 0.81958598 0.91663498 -0.31672499 0.243854
		 0.96497202 -0.054110002 0.25671399 0.50073397 -0.056977 0.86372399 0.91663498 -0.31672499
		 0.243854 0.81958598 -0.32018101 -0.475146 0.86372399 -0.056977 -0.50073397 0.96497202
		 -0.054110002 0.25671399 0.96497202 -0.054110002 0.25671399 0.86372399 -0.056977 -0.50073397
		 0.86512899 0 -0.50154901 0.96638697 0 0.25709 0.50073397 -0.056977 0.86372399 0.96497202
		 -0.054110002 0.25671399 0.96638697 0 0.25709 0.50154901 0 0.86512899 0.81958598 -0.32018101
		 -0.475146 0.243854 -0.31672499 -0.91663498 0.256713 -0.054110002 -0.96497202 0.86372399
		 -0.056977 -0.50073397 0.243854 -0.31672499 -0.91663498 -0.47514501 -0.32018101 -0.81958598
		 -0.50073397 -0.056977 -0.86372399 0.256713 -0.054110002 -0.96497202 0.256713 -0.054110002
		 -0.96497202 -0.50073397 -0.056977 -0.86372399 -0.50154901 0 -0.86512899 0.25709 0
		 -0.96638697 0.86372399 -0.056977 -0.50073397 0.256713 -0.054110002 -0.96497202 0.25709
		 0 -0.96638697 0.86512899 0 -0.50154901 -0.47514501 -0.32018101 -0.81958598 -0.91663498
		 -0.31672499 -0.243854 -0.96497202 -0.054110002 -0.256713 -0.50073397 -0.056977 -0.86372399
		 -0.91663498 -0.31672499 -0.243854 -0.81958598 -0.32018101 0.475146 -0.86372399 -0.056977
		 0.50073397 -0.96497202 -0.054110002 -0.256713 -0.96497202 -0.054110002 -0.256713
		 -0.86372399 -0.056977 0.50073397 -0.86512899 0 0.50154901 -0.96638799 0 -0.25709
		 -0.50073397 -0.056977 -0.86372399 -0.96497202 -0.054110002 -0.256713 -0.96638799
		 0 -0.25709 -0.50154901 0 -0.86512899 -0.86512899 0 0.50154901 -0.25709 0 0.96638697
		 -0.25671399 0.054110002 0.96497202 -0.86372399 0.056977 0.50073397 -0.25709 0 0.96638697
		 0.50154901 0 0.86512899 0.50073397 0.056977 0.86372399 -0.25671399 0.054110002 0.96497202
		 -0.25671399 0.054110002 0.96497202 0.50073397 0.056977 0.86372399 0.475146 0.32018101
		 0.81958598 -0.243854 0.31672499 0.91663498 -0.86372399 0.056977 0.50073397 -0.25671399
		 0.054110002 0.96497202 -0.243854 0.31672499 0.91663498 -0.81958598 0.32018101 0.475146
		 0.50154901 0 0.86512899 0.96638697 0 0.25709 0.96497202 0.054110002 0.25671399 0.50073397
		 0.056977 0.86372399 0.96638697 0 0.25709 0.86512899 0 -0.50154901 0.86372399 0.056977
		 -0.50073397 0.96497202 0.054110002 0.25671399 0.96497202 0.054110002 0.25671399 0.86372399
		 0.056977 -0.50073397 0.81958598 0.32018101 -0.475146 0.91663498 0.31672499 0.243854
		 0.50073397 0.056977 0.86372399 0.96497202 0.054110002 0.25671399 0.91663498 0.31672499
		 0.243854 0.475146 0.32018101 0.81958598 0.86512899 0 -0.50154901 0.25709 0 -0.96638697
		 0.256713 0.054110002 -0.96497202 0.86372399 0.056977 -0.50073397 0.25709 0 -0.96638697
		 -0.50154901 0 -0.86512899;
	setAttr ".n[166:331]" -type "float3"  -0.50073397 0.056977 -0.86372399 0.256713
		 0.054110002 -0.96497202 0.256713 0.054110002 -0.96497202 -0.50073397 0.056977 -0.86372399
		 -0.47514501 0.32018101 -0.81958598 0.243854 0.31672499 -0.91663498 0.86372399 0.056977
		 -0.50073397 0.256713 0.054110002 -0.96497202 0.243854 0.31672499 -0.91663498 0.81958598
		 0.32018101 -0.475146 -0.50154901 0 -0.86512899 -0.96638799 0 -0.25709 -0.96497202
		 0.054110002 -0.256713 -0.50073397 0.056977 -0.86372399 -0.96638799 0 -0.25709 -0.86512899
		 0 0.50154901 -0.86372399 0.056977 0.50073397 -0.96497202 0.054110002 -0.256713 -0.96497202
		 0.054110002 -0.256713 -0.86372399 0.056977 0.50073397 -0.81958598 0.32018101 0.475146
		 -0.91663498 0.31672499 -0.243854 -0.50073397 0.056977 -0.86372399 -0.96497202 0.054110002
		 -0.256713 -0.91663498 0.31672499 -0.243854 -0.47514501 0.32018101 -0.81958598 -0.81958598
		 0.32018101 0.475146 -0.243854 0.31672499 0.91663498 -0.118217 0.888008 0.444372 -0.40015301
		 0.88660097 0.231984 -0.243854 0.31672499 0.91663498 0.475146 0.32018101 0.81958598
		 0.231984 0.88660097 0.40015301 -0.118217 0.888008 0.444372 -0.118217 0.888008 0.444372
		 0.231984 0.88660097 0.40015301 0 1 0 0 1 0 -0.40015301 0.88660097 0.231984 -0.118217
		 0.888008 0.444372 0 1 0 0 1 0 0.475146 0.32018101 0.81958598 0.91663498 0.31672499
		 0.243854 0.444372 0.888008 0.118217 0.231984 0.88660097 0.40015301 0.91663498 0.31672499
		 0.243854 0.81958598 0.32018101 -0.475146 0.40015301 0.88660097 -0.231985 0.444372
		 0.888008 0.118217 0.444372 0.888008 0.118217 0.40015301 0.88660097 -0.231985 0 1
		 0 0 1 0 0.231984 0.88660097 0.40015301 0.444372 0.888008 0.118217 0 1 0 0 1 0 0.81958598
		 0.32018101 -0.475146 0.243854 0.31672499 -0.91663498 0.118217 0.888008 -0.444372
		 0.40015301 0.88660097 -0.231985 0.243854 0.31672499 -0.91663498 -0.47514501 0.32018101
		 -0.81958598 -0.231985 0.88660097 -0.40015301 0.118217 0.888008 -0.444372 0.118217
		 0.888008 -0.444372 -0.231985 0.88660097 -0.40015301 0 1 0 0 1 0 0.40015301 0.88660097
		 -0.231985 0.118217 0.888008 -0.444372 0 1 0 0 1 0 -0.47514501 0.32018101 -0.81958598
		 -0.91663498 0.31672499 -0.243854 -0.444372 0.888008 -0.118217 -0.231985 0.88660097
		 -0.40015301 -0.91663498 0.31672499 -0.243854 -0.81958598 0.32018101 0.475146 -0.40015301
		 0.88660097 0.231984 -0.444372 0.888008 -0.118217 -0.444372 0.888008 -0.118217 -0.40015301
		 0.88660097 0.231984 0 1 0 0 1 0 -0.231985 0.88660097 -0.40015301 -0.444372 0.888008
		 -0.118217 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr ".n[332:351]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr -s 88 -ch 352 ".fc[0:87]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 6 7 2
		f 4 -7 7 8 9
		mu 0 4 2 7 17 8
		f 4 -3 -10 10 11
		mu 0 4 3 2 8 9
		f 4 12 13 14 -6
		mu 0 4 6 15 16 7
		f 4 15 16 17 -14
		mu 0 4 15 24 25 16
		f 4 -18 18 19 20
		mu 0 4 16 25 31 26
		f 4 -15 -21 21 -8
		mu 0 4 7 16 26 17
		f 4 22 23 24 -17
		mu 0 4 24 28 29 25
		f 4 25 26 27 -24
		mu 0 4 28 19 20 29
		f 4 -28 28 29 30
		mu 0 4 29 20 27 32
		f 4 -25 -31 31 -19
		mu 0 4 25 29 32 31
		f 4 32 33 34 -27
		mu 0 4 19 10 11 20
		f 4 35 -4 36 -34
		mu 0 4 10 0 3 11
		f 4 -37 -12 37 38
		mu 0 4 11 3 9 18
		f 4 -35 -39 39 -29
		mu 0 4 20 11 18 27
		f 4 -11 40 41 42
		mu 0 4 33 34 35 36
		f 4 -9 43 44 -41
		mu 0 4 51 52 53 54
		f 4 -45 45 46 47
		mu 0 4 54 53 57 58
		f 4 -42 -48 48 49
		mu 0 4 36 35 37 38
		f 4 -22 50 51 -44
		mu 0 4 52 55 56 53
		f 4 -20 52 53 -51
		mu 0 4 69 70 71 72
		f 4 -54 54 55 56
		mu 0 4 72 71 75 76
		f 4 -52 -57 57 -46
		mu 0 4 53 56 59 57
		f 4 -32 58 59 -53
		mu 0 4 70 73 74 71
		f 4 -30 60 61 -59
		mu 0 4 87 88 89 90
		f 4 -62 62 63 64
		mu 0 4 90 89 93 94
		f 4 -60 -65 65 -55
		mu 0 4 71 74 77 75
		f 4 -40 66 67 -61
		mu 0 4 88 91 92 89
		f 4 -38 -43 68 -67
		mu 0 4 39 33 36 40
		f 4 -69 -50 69 70
		mu 0 4 40 36 38 43
		f 4 -68 -71 71 -63
		mu 0 4 89 92 95 93
		f 4 -49 72 73 74
		mu 0 4 38 37 41 42
		f 4 -47 75 76 -73
		mu 0 4 58 57 60 61
		f 4 -77 77 78 79
		mu 0 4 61 60 63 64
		f 4 -74 -80 80 81
		mu 0 4 42 41 44 45
		f 4 -58 82 83 -76
		mu 0 4 57 59 62 60
		f 4 -56 84 85 -83
		mu 0 4 76 75 78 79
		f 4 -86 86 87 88
		mu 0 4 79 78 81 82
		f 4 -84 -89 89 -78
		mu 0 4 60 62 65 63
		f 4 -66 90 91 -85
		mu 0 4 75 77 80 78
		f 4 -64 92 93 -91
		mu 0 4 94 93 96 97
		f 4 -94 94 95 96
		mu 0 4 97 96 99 100
		f 4 -92 -97 97 -87
		mu 0 4 78 80 83 81
		f 4 -72 98 99 -93
		mu 0 4 93 95 98 96
		f 4 -70 -75 100 -99
		mu 0 4 43 38 42 46
		f 4 -101 -82 101 102
		mu 0 4 46 42 45 49
		f 4 -100 -103 103 -95
		mu 0 4 96 98 101 99
		f 4 -81 104 105 106
		mu 0 4 45 44 47 48
		f 4 -79 107 108 -105
		mu 0 4 64 63 66 67
		f 4 -109 109 110 111
		mu 0 4 105 106 107 108
		f 4 -106 -112 112 113
		mu 0 4 113 105 108 114
		f 4 -90 114 115 -108
		mu 0 4 63 65 68 66
		f 4 -88 116 117 -115
		mu 0 4 82 81 84 85
		f 4 -118 118 119 120
		mu 0 4 109 115 116 110
		f 4 -116 -121 121 -110
		mu 0 4 106 109 110 107
		f 4 -98 122 123 -117
		mu 0 4 81 83 86 84
		f 4 -96 124 125 -123
		mu 0 4 100 99 102 103
		f 4 -126 126 127 128
		mu 0 4 122 127 128 123
		f 4 -124 -129 129 -119
		mu 0 4 115 122 123 116
		f 4 -104 130 131 -125
		mu 0 4 99 101 104 102
		f 4 -102 -107 132 -131
		mu 0 4 49 45 48 50
		f 4 -133 -114 133 134
		mu 0 4 120 113 114 121
		f 4 -132 -135 135 -127
		mu 0 4 127 120 121 128
		f 4 -5 136 137 138
		mu 0 4 6 1 5 14
		f 4 139 140 -137 -1
		mu 0 4 0 4 5 1
		f 4 141 -138 -141 142
		mu 0 4 13 14 5 4
		f 4 -16 143 144 145
		mu 0 4 24 15 23 22
		f 4 -139 146 -144 -13
		mu 0 4 6 14 23 15
		f 4 147 -145 -147 -142
		mu 0 4 13 22 23 14
		f 4 -26 148 149 150
		mu 0 4 19 28 30 21
		f 4 -146 151 -149 -23
		mu 0 4 24 22 30 28
		f 4 152 -150 -152 -148
		mu 0 4 13 21 30 22
		f 4 -36 153 154 -140
		mu 0 4 0 10 12 4
		f 4 -151 155 -154 -33
		mu 0 4 19 21 12 10
		f 4 -143 -155 -156 -153
		mu 0 4 13 4 12 21
		f 4 -113 156 157 158
		mu 0 4 114 108 112 119
		f 4 159 160 -157 -111
		mu 0 4 107 111 112 108
		f 4 161 -158 -161 162
		mu 0 4 118 119 112 111
		f 4 -122 163 164 -160
		mu 0 4 107 110 117 111
		f 4 165 166 -164 -120
		mu 0 4 116 124 117 110
		f 4 -163 -165 -167 167
		mu 0 4 118 111 117 124
		f 4 -130 168 169 -166
		mu 0 4 116 123 129 124
		f 4 170 171 -169 -128
		mu 0 4 128 125 129 123
		f 4 -168 -170 -172 172
		mu 0 4 118 124 129 125
		f 4 -136 173 174 -171
		mu 0 4 128 121 126 125
		f 4 -159 175 -174 -134
		mu 0 4 114 119 126 121
		f 4 -173 -175 -176 -162
		mu 0 4 118 125 126 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface9" -p "group14";
	setAttr ".t" -type "double3" -0.74604270484863999 0.59053732015256455 -4.0472469767265347 ;
	setAttr ".s" -type "double3" 0.30534672556760195 0.30534672556760195 0.30534672556760195 ;
	setAttr ".rp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
	setAttr ".sp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
createNode mesh -n "polySurfaceShape9" -p "|group14|polySurface9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "vtx[0:89]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 130 ".uvst[0].uvsp[0:129]" -type "float2" 0.54665703 0.58051997
		 0.47738299 0.610636 0.44862801 0.58188099 0.54665703 0.532866 0.54665703 0.63503498
		 0.50308901 0.63634199 0.44726601 0.67991 0.39961299 0.67991 0.42412099 0.557374 0.54665703
		 0.496106 0.61593097 0.610636 0.64468598 0.58188099 0.59022599 0.63634199 0.54665703
		 0.67991 0.501782 0.67991 0.47738299 0.74918401 0.44862801 0.77793902 0.36285299 0.67991
		 0.66919398 0.557374 0.64604801 0.67991 0.69370103 0.67991 0.59153301 0.67991 0.54665703
		 0.72478598 0.50308901 0.72347897 0.54665703 0.77930099 0.54665703 0.82695401 0.42412099
		 0.80244601 0.73046201 0.67991 0.61593097 0.74918401 0.64468598 0.77793902 0.59022599
		 0.72347897 0.54665703 0.86371499 0.66919398 0.80244601 0.132698 0.49211401 0.010161
		 0.49211401 0.001992 0.39408499 0.132698 0.39408499 0.001992 0.26337999 0.132698 0.26337999
		 0.255234 0.49211401 0.263403 0.39408499 0.001992 0.13267399 0.132698 0.13267399 0.263403
		 0.26337999 0.010161 0.034644999 0.132698 0.034644999 0.263403 0.13267399 0.034667999
		 0.0019690001 0.132698 0.0019690001 0.255234 0.034644999 0.230727 0.0019690001 0.279311
		 0.0019690001 0.40184799 0.0019690001 0.40184799 0.099997997 0.27114201 0.099997997
		 0.52438402 0.0019690001 0.53255302 0.099997997 0.40184799 0.230703 0.27114201 0.230703
		 0.53255302 0.230703 0.40184799 0.36140901 0.27114201 0.36140901 0.53255302 0.36140901
		 0.40184799 0.459438 0.279311 0.459438 0.52438402 0.459438 0.40184799 0.49211401 0.303819
		 0.49211401 0.49987701 0.49211401 0.54826701 0.0019690001 0.67080301 0.0019690001
		 0.67080301 0.099997997 0.54009801 0.099997997 0.79334003 0.0019690001 0.80150902
		 0.099997997 0.67080301 0.230703 0.54009801 0.230703 0.80150902 0.230703 0.67080301
		 0.36140901 0.54009801 0.36140901 0.80150902 0.36140901 0.67080301 0.459438 0.54826701
		 0.459438 0.79334003 0.459438 0.67080301 0.49211401 0.57277399 0.49211401 0.76883203
		 0.49211401 0.744766 0.496106 0.867302 0.496106 0.867302 0.59413499 0.736597 0.59413499
		 0.98983902 0.496106 0.99800801 0.59413499 0.867302 0.72483999 0.736597 0.72483999
		 0.99800801 0.72483999 0.867302 0.855546 0.736597 0.855546 0.99800801 0.855546 0.867302
		 0.95357502 0.744766 0.95357502 0.98983902 0.95357502 0.867302 0.986251 0.76927298
		 0.986251 0.96533197 0.986251 0.111644 0.74117798 0.062629998 0.64314902 0.110283
		 0.64314902 0.14040001 0.71242303 0.111644 0.54512 0.14040001 0.57387501 0.16479801
		 0.64314902 0.166105 0.68671799 0.209674 0.79019302 0.209674 0.74254 0.209674 0.496106
		 0.209674 0.54375899 0.166105 0.599581 0.209674 0.64314902 0.209674 0.688025 0.30770299
		 0.74117798 0.278947 0.71242303 0.30770299 0.54512 0.278947 0.57387501 0.209674 0.59827399
		 0.254549 0.64314902 0.25324199 0.68671799 0.35671699 0.64314902 0.309064 0.64314902
		 0.25324199 0.599581;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 90 ".vt[0:89]"  1.72786701 -0.001375 2.52718496 1.86212301 -0.001375 2.56290102
		 1.89783895 -0.001375 2.4286449 1.76358294 -0.001375 2.39292908 1.65568697 0.027774001 2.56903005
		 1.90396798 0.027774001 2.63508105 1.97001898 0.027774001 2.38680005 1.72173798 0.027774001 2.32074904
		 1.64520895 0.231821 2.575104 1.91004205 0.231821 2.64555907 1.980497 0.231821 2.38072491
		 1.71566296 0.231821 2.31027102 1.65568697 0.435868 2.56903005 1.90396798 0.435868 2.63508105
		 1.97001898 0.435868 2.38680005 1.72173798 0.435868 2.32074904 1.72786701 0.465018 2.52718496
		 1.86212301 0.465018 2.56290102 1.89783895 0.465018 2.4286449 1.76358294 0.465018 2.39292908
		 1.81285298 -0.001375 2.47791505 1.81285298 0.465018 2.47791505 1.85122502 0.465018 2.45566893
		 1.79060698 0.465018 2.43954301 1.78795898 -0.001375 2.5714891 1.68711996 -0.001375 2.550807
		 1.88574505 -0.001375 2.60364795 1.76881897 0.027774001 2.64343596 1.90642703 -0.001375 2.50280905
		 1.938586 -0.001375 2.4050231 1.978374 0.027774001 2.52194905 1.83774698 -0.001375 2.38434005
		 1.73996103 -0.001375 2.35218191 1.85688698 0.027774001 2.3123939 1.71927905 -0.001375 2.45302105
		 1.64733195 0.027774001 2.43388104 1.64520895 0.115223 2.575104 1.91004205 0.115223 2.64555907
		 1.76588404 0.231821 2.65446997 1.980497 0.115223 2.38072491 1.98940802 0.231821 2.52488399
		 1.71566296 0.115223 2.31027102 1.85982203 0.231821 2.30135894 1.63629699 0.231821 2.43094492
		 1.64520895 0.34841999 2.575104 1.91004205 0.34841999 2.64555907 1.76881897 0.435868 2.64343596
		 1.980497 0.34841999 2.38072491 1.978374 0.435868 2.52194905 1.71566296 0.34841999 2.31027102
		 1.85688698 0.435868 2.3123939 1.64733195 0.435868 2.43388104 1.68711996 0.465018 2.550807
		 1.88574505 0.465018 2.60364795 1.78795898 0.465018 2.5714891 1.938586 0.465018 2.4050231
		 1.90642703 0.465018 2.50280905 1.73996103 0.465018 2.35218191 1.83774698 0.465018 2.38434005
		 1.71927905 0.465018 2.45302105 1.83509898 -0.001375 2.51628709 1.77448106 -0.001375 2.50015998
		 1.85122502 -0.001375 2.45566893 1.79060698 -0.001375 2.43954301 1.77448106 0.465018 2.50015998
		 1.83509898 0.465018 2.51628709 1.77762604 -0.001375 2.61033106 1.94526899 -0.001375 2.51314211
		 1.84808004 -0.001375 2.34549809 1.68043602 -0.001375 2.44268799 1.76588404 0.115223 2.65446997
		 1.98940802 0.115223 2.52488399 1.85982203 0.115223 2.30135894 1.63629699 0.115223 2.43094492
		 1.76588404 0.34841999 2.65446997 1.98940802 0.34841999 2.52488399 1.85982203 0.34841999 2.30135894
		 1.63629699 0.34841999 2.43094492 1.77762604 0.465018 2.61033106 1.94526899 0.465018 2.51314211
		 1.84808004 0.465018 2.34549809 1.68043602 0.465018 2.44268799 1.79719603 -0.001375 2.53676701
		 1.87170506 -0.001375 2.49357104 1.82850897 -0.001375 2.41906309 1.75400102 -0.001375 2.4622581
		 1.79719603 0.465018 2.53676701 1.87170506 0.465018 2.49357104 1.82850897 0.465018 2.41906309
		 1.75400102 0.465018 2.4622581;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  0 24 0 24 66 0 66 25 0 25 0 0 24 1 0 1 26 0 26 66 0
		 26 5 0 5 27 0 27 66 0 27 4 0 4 25 0 1 28 0 28 67 0 67 26 0 28 2 0 2 29 0 29 67 0
		 29 6 0 6 30 0 30 67 0 30 5 0 2 31 0 31 68 0 68 29 0 31 3 0 3 32 0 32 68 0 32 7 0
		 7 33 0 33 68 0 33 6 0 3 34 0 34 69 0 69 32 0 34 0 0 25 69 0 4 35 0 35 69 0 35 7 0
		 27 70 0 70 36 0 36 4 0 5 37 0 37 70 0 37 9 0 9 38 0 38 70 0 38 8 0 8 36 0 30 71 0
		 71 37 0 6 39 0 39 71 0 39 10 0 10 40 0 40 71 0 40 9 0 33 72 0 72 39 0 7 41 0 41 72 0
		 41 11 0 11 42 0 42 72 0 42 10 0 35 73 0 73 41 0 36 73 0 8 43 0 43 73 0 43 11 0 38 74 0
		 74 44 0 44 8 0 9 45 0 45 74 0 45 13 0 13 46 0 46 74 0 46 12 0 12 44 0 40 75 0 75 45 0
		 10 47 0 47 75 0 47 14 0 14 48 0 48 75 0 48 13 0 42 76 0 76 47 0 11 49 0 49 76 0 49 15 0
		 15 50 0 50 76 0 50 14 0 43 77 0 77 49 0 44 77 0 12 51 0 51 77 0 51 15 0 46 78 0 78 52 0
		 52 12 0 13 53 0 53 78 0 53 17 0 17 54 0 54 78 0 54 16 0 16 52 0 48 79 0 79 53 0 14 55 0
		 55 79 0 55 18 0 18 56 0 56 79 0 56 17 0 50 80 0 80 55 0 15 57 0 57 80 0 57 19 0 19 58 0
		 58 80 0 58 18 0 51 81 0 81 57 0 52 81 0 16 59 0 59 81 0 59 19 0 24 82 0 82 60 0 60 1 0
		 0 61 0 61 82 0 20 60 0 61 20 0 28 83 0 83 62 0 62 2 0 60 83 0 20 62 0 31 84 0 84 63 0
		 63 3 0 62 84 0 20 63 0 34 85 0 85 61 0 63 85 0 54 86 0 86 64 0 64 16 0 17 65 0 65 86 0
		 21 64 0 65 21 0 56 87 0 87 65 0 18 22 0;
	setAttr ".ed[166:175]" 22 87 0 22 21 0 58 88 0 88 22 0 19 23 0 23 88 0 23 21 0
		 59 89 0 89 23 0 64 89 0;
	setAttr -s 352 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -1 0 0 -1 0 -0.118217 -0.888008 0.444372
		 -0.40015301 -0.88660097 0.231984 0 -1 0 0 -1 0 0.231984 -0.88660097 0.40015301 -0.118217
		 -0.888008 0.444372 -0.118217 -0.888008 0.444372 0.231984 -0.88660097 0.40015301 0.475146
		 -0.32018101 0.81958598 -0.243854 -0.31672499 0.91663498 -0.40015301 -0.88660097 0.231984
		 -0.118217 -0.888008 0.444372 -0.243854 -0.31672499 0.91663498 -0.81958598 -0.32018101
		 0.475146 0 -1 0 0 -1 0 0.444372 -0.888008 0.118217 0.231984 -0.88660097 0.40015301
		 0 -1 0 0 -1 0 0.40015301 -0.88660097 -0.231984 0.444372 -0.888008 0.118217 0.444372
		 -0.888008 0.118217 0.40015301 -0.88660097 -0.231984 0.81958598 -0.32018101 -0.475146
		 0.91663498 -0.31672499 0.243854 0.231984 -0.88660097 0.40015301 0.444372 -0.888008
		 0.118217 0.91663498 -0.31672499 0.243854 0.475146 -0.32018101 0.81958598 0 -1 0 0
		 -1 0 0.118217 -0.888008 -0.444372 0.40015301 -0.88660097 -0.231984 0 -1 0 0 -1 0
		 -0.231985 -0.88660097 -0.40015301 0.118217 -0.888008 -0.444372 0.118217 -0.888008
		 -0.444372 -0.231985 -0.88660097 -0.40015301 -0.47514501 -0.32018101 -0.81958598 0.243854
		 -0.31672499 -0.91663498 0.40015301 -0.88660097 -0.231984 0.118217 -0.888008 -0.444372
		 0.243854 -0.31672499 -0.91663498 0.81958598 -0.32018101 -0.475146 0 -1 0 0 -1 0 -0.444372
		 -0.888008 -0.118217 -0.231985 -0.88660097 -0.40015301 0 -1 0 0 -1 0 -0.40015301 -0.88660097
		 0.231984 -0.444372 -0.888008 -0.118217 -0.444372 -0.888008 -0.118217 -0.40015301
		 -0.88660097 0.231984 -0.81958598 -0.32018101 0.475146 -0.91663498 -0.31672499 -0.243854
		 -0.231985 -0.88660097 -0.40015301 -0.444372 -0.888008 -0.118217 -0.91663498 -0.31672499
		 -0.243854 -0.47514501 -0.32018101 -0.81958598 -0.81958598 -0.32018101 0.475146 -0.243854
		 -0.31672499 0.91663498 -0.25671399 -0.054110002 0.96497202 -0.86372399 -0.056977
		 0.50073397 -0.243854 -0.31672499 0.91663498 0.475146 -0.32018101 0.81958598 0.50073397
		 -0.056977 0.86372399 -0.25671399 -0.054110002 0.96497202 -0.25671399 -0.054110002
		 0.96497202 0.50073397 -0.056977 0.86372399 0.50154901 0 0.86512899 -0.25709 0 0.96638697
		 -0.86372399 -0.056977 0.50073397 -0.25671399 -0.054110002 0.96497202 -0.25709 0 0.96638697
		 -0.86512899 0 0.50154901 0.475146 -0.32018101 0.81958598 0.91663498 -0.31672499 0.243854
		 0.96497202 -0.054110002 0.25671399 0.50073397 -0.056977 0.86372399 0.91663498 -0.31672499
		 0.243854 0.81958598 -0.32018101 -0.475146 0.86372399 -0.056977 -0.50073397 0.96497202
		 -0.054110002 0.25671399 0.96497202 -0.054110002 0.25671399 0.86372399 -0.056977 -0.50073397
		 0.86512899 0 -0.50154901 0.96638697 0 0.25709 0.50073397 -0.056977 0.86372399 0.96497202
		 -0.054110002 0.25671399 0.96638697 0 0.25709 0.50154901 0 0.86512899 0.81958598 -0.32018101
		 -0.475146 0.243854 -0.31672499 -0.91663498 0.256713 -0.054110002 -0.96497202 0.86372399
		 -0.056977 -0.50073397 0.243854 -0.31672499 -0.91663498 -0.47514501 -0.32018101 -0.81958598
		 -0.50073397 -0.056977 -0.86372399 0.256713 -0.054110002 -0.96497202 0.256713 -0.054110002
		 -0.96497202 -0.50073397 -0.056977 -0.86372399 -0.50154901 0 -0.86512899 0.25709 0
		 -0.96638697 0.86372399 -0.056977 -0.50073397 0.256713 -0.054110002 -0.96497202 0.25709
		 0 -0.96638697 0.86512899 0 -0.50154901 -0.47514501 -0.32018101 -0.81958598 -0.91663498
		 -0.31672499 -0.243854 -0.96497202 -0.054110002 -0.256713 -0.50073397 -0.056977 -0.86372399
		 -0.91663498 -0.31672499 -0.243854 -0.81958598 -0.32018101 0.475146 -0.86372399 -0.056977
		 0.50073397 -0.96497202 -0.054110002 -0.256713 -0.96497202 -0.054110002 -0.256713
		 -0.86372399 -0.056977 0.50073397 -0.86512899 0 0.50154901 -0.96638799 0 -0.25709
		 -0.50073397 -0.056977 -0.86372399 -0.96497202 -0.054110002 -0.256713 -0.96638799
		 0 -0.25709 -0.50154901 0 -0.86512899 -0.86512899 0 0.50154901 -0.25709 0 0.96638697
		 -0.25671399 0.054110002 0.96497202 -0.86372399 0.056977 0.50073397 -0.25709 0 0.96638697
		 0.50154901 0 0.86512899 0.50073397 0.056977 0.86372399 -0.25671399 0.054110002 0.96497202
		 -0.25671399 0.054110002 0.96497202 0.50073397 0.056977 0.86372399 0.475146 0.32018101
		 0.81958598 -0.243854 0.31672499 0.91663498 -0.86372399 0.056977 0.50073397 -0.25671399
		 0.054110002 0.96497202 -0.243854 0.31672499 0.91663498 -0.81958598 0.32018101 0.475146
		 0.50154901 0 0.86512899 0.96638697 0 0.25709 0.96497202 0.054110002 0.25671399 0.50073397
		 0.056977 0.86372399 0.96638697 0 0.25709 0.86512899 0 -0.50154901 0.86372399 0.056977
		 -0.50073397 0.96497202 0.054110002 0.25671399 0.96497202 0.054110002 0.25671399 0.86372399
		 0.056977 -0.50073397 0.81958598 0.32018101 -0.475146 0.91663498 0.31672499 0.243854
		 0.50073397 0.056977 0.86372399 0.96497202 0.054110002 0.25671399 0.91663498 0.31672499
		 0.243854 0.475146 0.32018101 0.81958598 0.86512899 0 -0.50154901 0.25709 0 -0.96638697
		 0.256713 0.054110002 -0.96497202 0.86372399 0.056977 -0.50073397 0.25709 0 -0.96638697
		 -0.50154901 0 -0.86512899;
	setAttr ".n[166:331]" -type "float3"  -0.50073397 0.056977 -0.86372399 0.256713
		 0.054110002 -0.96497202 0.256713 0.054110002 -0.96497202 -0.50073397 0.056977 -0.86372399
		 -0.47514501 0.32018101 -0.81958598 0.243854 0.31672499 -0.91663498 0.86372399 0.056977
		 -0.50073397 0.256713 0.054110002 -0.96497202 0.243854 0.31672499 -0.91663498 0.81958598
		 0.32018101 -0.475146 -0.50154901 0 -0.86512899 -0.96638799 0 -0.25709 -0.96497202
		 0.054110002 -0.256713 -0.50073397 0.056977 -0.86372399 -0.96638799 0 -0.25709 -0.86512899
		 0 0.50154901 -0.86372399 0.056977 0.50073397 -0.96497202 0.054110002 -0.256713 -0.96497202
		 0.054110002 -0.256713 -0.86372399 0.056977 0.50073397 -0.81958598 0.32018101 0.475146
		 -0.91663498 0.31672499 -0.243854 -0.50073397 0.056977 -0.86372399 -0.96497202 0.054110002
		 -0.256713 -0.91663498 0.31672499 -0.243854 -0.47514501 0.32018101 -0.81958598 -0.81958598
		 0.32018101 0.475146 -0.243854 0.31672499 0.91663498 -0.118217 0.888008 0.444372 -0.40015301
		 0.88660097 0.231984 -0.243854 0.31672499 0.91663498 0.475146 0.32018101 0.81958598
		 0.231984 0.88660097 0.40015301 -0.118217 0.888008 0.444372 -0.118217 0.888008 0.444372
		 0.231984 0.88660097 0.40015301 0 1 0 0 1 0 -0.40015301 0.88660097 0.231984 -0.118217
		 0.888008 0.444372 0 1 0 0 1 0 0.475146 0.32018101 0.81958598 0.91663498 0.31672499
		 0.243854 0.444372 0.888008 0.118217 0.231984 0.88660097 0.40015301 0.91663498 0.31672499
		 0.243854 0.81958598 0.32018101 -0.475146 0.40015301 0.88660097 -0.231985 0.444372
		 0.888008 0.118217 0.444372 0.888008 0.118217 0.40015301 0.88660097 -0.231985 0 1
		 0 0 1 0 0.231984 0.88660097 0.40015301 0.444372 0.888008 0.118217 0 1 0 0 1 0 0.81958598
		 0.32018101 -0.475146 0.243854 0.31672499 -0.91663498 0.118217 0.888008 -0.444372
		 0.40015301 0.88660097 -0.231985 0.243854 0.31672499 -0.91663498 -0.47514501 0.32018101
		 -0.81958598 -0.231985 0.88660097 -0.40015301 0.118217 0.888008 -0.444372 0.118217
		 0.888008 -0.444372 -0.231985 0.88660097 -0.40015301 0 1 0 0 1 0 0.40015301 0.88660097
		 -0.231985 0.118217 0.888008 -0.444372 0 1 0 0 1 0 -0.47514501 0.32018101 -0.81958598
		 -0.91663498 0.31672499 -0.243854 -0.444372 0.888008 -0.118217 -0.231985 0.88660097
		 -0.40015301 -0.91663498 0.31672499 -0.243854 -0.81958598 0.32018101 0.475146 -0.40015301
		 0.88660097 0.231984 -0.444372 0.888008 -0.118217 -0.444372 0.888008 -0.118217 -0.40015301
		 0.88660097 0.231984 0 1 0 0 1 0 -0.231985 0.88660097 -0.40015301 -0.444372 0.888008
		 -0.118217 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr ".n[332:351]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr -s 88 -ch 352 ".fc[0:87]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 6 7 2
		f 4 -7 7 8 9
		mu 0 4 2 7 17 8
		f 4 -3 -10 10 11
		mu 0 4 3 2 8 9
		f 4 12 13 14 -6
		mu 0 4 6 15 16 7
		f 4 15 16 17 -14
		mu 0 4 15 24 25 16
		f 4 -18 18 19 20
		mu 0 4 16 25 31 26
		f 4 -15 -21 21 -8
		mu 0 4 7 16 26 17
		f 4 22 23 24 -17
		mu 0 4 24 28 29 25
		f 4 25 26 27 -24
		mu 0 4 28 19 20 29
		f 4 -28 28 29 30
		mu 0 4 29 20 27 32
		f 4 -25 -31 31 -19
		mu 0 4 25 29 32 31
		f 4 32 33 34 -27
		mu 0 4 19 10 11 20
		f 4 35 -4 36 -34
		mu 0 4 10 0 3 11
		f 4 -37 -12 37 38
		mu 0 4 11 3 9 18
		f 4 -35 -39 39 -29
		mu 0 4 20 11 18 27
		f 4 -11 40 41 42
		mu 0 4 33 34 35 36
		f 4 -9 43 44 -41
		mu 0 4 51 52 53 54
		f 4 -45 45 46 47
		mu 0 4 54 53 57 58
		f 4 -42 -48 48 49
		mu 0 4 36 35 37 38
		f 4 -22 50 51 -44
		mu 0 4 52 55 56 53
		f 4 -20 52 53 -51
		mu 0 4 69 70 71 72
		f 4 -54 54 55 56
		mu 0 4 72 71 75 76
		f 4 -52 -57 57 -46
		mu 0 4 53 56 59 57
		f 4 -32 58 59 -53
		mu 0 4 70 73 74 71
		f 4 -30 60 61 -59
		mu 0 4 87 88 89 90
		f 4 -62 62 63 64
		mu 0 4 90 89 93 94
		f 4 -60 -65 65 -55
		mu 0 4 71 74 77 75
		f 4 -40 66 67 -61
		mu 0 4 88 91 92 89
		f 4 -38 -43 68 -67
		mu 0 4 39 33 36 40
		f 4 -69 -50 69 70
		mu 0 4 40 36 38 43
		f 4 -68 -71 71 -63
		mu 0 4 89 92 95 93
		f 4 -49 72 73 74
		mu 0 4 38 37 41 42
		f 4 -47 75 76 -73
		mu 0 4 58 57 60 61
		f 4 -77 77 78 79
		mu 0 4 61 60 63 64
		f 4 -74 -80 80 81
		mu 0 4 42 41 44 45
		f 4 -58 82 83 -76
		mu 0 4 57 59 62 60
		f 4 -56 84 85 -83
		mu 0 4 76 75 78 79
		f 4 -86 86 87 88
		mu 0 4 79 78 81 82
		f 4 -84 -89 89 -78
		mu 0 4 60 62 65 63
		f 4 -66 90 91 -85
		mu 0 4 75 77 80 78
		f 4 -64 92 93 -91
		mu 0 4 94 93 96 97
		f 4 -94 94 95 96
		mu 0 4 97 96 99 100
		f 4 -92 -97 97 -87
		mu 0 4 78 80 83 81
		f 4 -72 98 99 -93
		mu 0 4 93 95 98 96
		f 4 -70 -75 100 -99
		mu 0 4 43 38 42 46
		f 4 -101 -82 101 102
		mu 0 4 46 42 45 49
		f 4 -100 -103 103 -95
		mu 0 4 96 98 101 99
		f 4 -81 104 105 106
		mu 0 4 45 44 47 48
		f 4 -79 107 108 -105
		mu 0 4 64 63 66 67
		f 4 -109 109 110 111
		mu 0 4 105 106 107 108
		f 4 -106 -112 112 113
		mu 0 4 113 105 108 114
		f 4 -90 114 115 -108
		mu 0 4 63 65 68 66
		f 4 -88 116 117 -115
		mu 0 4 82 81 84 85
		f 4 -118 118 119 120
		mu 0 4 109 115 116 110
		f 4 -116 -121 121 -110
		mu 0 4 106 109 110 107
		f 4 -98 122 123 -117
		mu 0 4 81 83 86 84
		f 4 -96 124 125 -123
		mu 0 4 100 99 102 103
		f 4 -126 126 127 128
		mu 0 4 122 127 128 123
		f 4 -124 -129 129 -119
		mu 0 4 115 122 123 116
		f 4 -104 130 131 -125
		mu 0 4 99 101 104 102
		f 4 -102 -107 132 -131
		mu 0 4 49 45 48 50
		f 4 -133 -114 133 134
		mu 0 4 120 113 114 121
		f 4 -132 -135 135 -127
		mu 0 4 127 120 121 128
		f 4 -5 136 137 138
		mu 0 4 6 1 5 14
		f 4 139 140 -137 -1
		mu 0 4 0 4 5 1
		f 4 141 -138 -141 142
		mu 0 4 13 14 5 4
		f 4 -16 143 144 145
		mu 0 4 24 15 23 22
		f 4 -139 146 -144 -13
		mu 0 4 6 14 23 15
		f 4 147 -145 -147 -142
		mu 0 4 13 22 23 14
		f 4 -26 148 149 150
		mu 0 4 19 28 30 21
		f 4 -146 151 -149 -23
		mu 0 4 24 22 30 28
		f 4 152 -150 -152 -148
		mu 0 4 13 21 30 22
		f 4 -36 153 154 -140
		mu 0 4 0 10 12 4
		f 4 -151 155 -154 -33
		mu 0 4 19 21 12 10
		f 4 -143 -155 -156 -153
		mu 0 4 13 4 12 21
		f 4 -113 156 157 158
		mu 0 4 114 108 112 119
		f 4 159 160 -157 -111
		mu 0 4 107 111 112 108
		f 4 161 -158 -161 162
		mu 0 4 118 119 112 111
		f 4 -122 163 164 -160
		mu 0 4 107 110 117 111
		f 4 165 166 -164 -120
		mu 0 4 116 124 117 110
		f 4 -163 -165 -167 167
		mu 0 4 118 111 117 124
		f 4 -130 168 169 -166
		mu 0 4 116 123 129 124
		f 4 170 171 -169 -128
		mu 0 4 128 125 129 123
		f 4 -168 -170 -172 172
		mu 0 4 118 124 129 125
		f 4 -136 173 174 -171
		mu 0 4 128 121 126 125
		f 4 -159 175 -174 -134
		mu 0 4 114 119 126 121
		f 4 -173 -175 -176 -162
		mu 0 4 118 125 126 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface16" -p "group14";
	setAttr ".t" -type "double3" -0.80444885385831988 0.58839601043281697 -3.9348148398988925 ;
	setAttr ".s" -type "double3" 0.30534672556760195 0.30534672556760195 0.30534672556760195 ;
	setAttr ".rp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
	setAttr ".sp" -type "double3" 1.8510074752513535 0.27363673317726867 2.5009873175956416 ;
createNode mesh -n "polySurfaceShape16" -p "polySurface16";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "vtx[0:89]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[0:87]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 130 ".uvst[0].uvsp[0:129]" -type "float2" 0.54665703 0.58051997
		 0.47738299 0.610636 0.44862801 0.58188099 0.54665703 0.532866 0.54665703 0.63503498
		 0.50308901 0.63634199 0.44726601 0.67991 0.39961299 0.67991 0.42412099 0.557374 0.54665703
		 0.496106 0.61593097 0.610636 0.64468598 0.58188099 0.59022599 0.63634199 0.54665703
		 0.67991 0.501782 0.67991 0.47738299 0.74918401 0.44862801 0.77793902 0.36285299 0.67991
		 0.66919398 0.557374 0.64604801 0.67991 0.69370103 0.67991 0.59153301 0.67991 0.54665703
		 0.72478598 0.50308901 0.72347897 0.54665703 0.77930099 0.54665703 0.82695401 0.42412099
		 0.80244601 0.73046201 0.67991 0.61593097 0.74918401 0.64468598 0.77793902 0.59022599
		 0.72347897 0.54665703 0.86371499 0.66919398 0.80244601 0.132698 0.49211401 0.010161
		 0.49211401 0.001992 0.39408499 0.132698 0.39408499 0.001992 0.26337999 0.132698 0.26337999
		 0.255234 0.49211401 0.263403 0.39408499 0.001992 0.13267399 0.132698 0.13267399 0.263403
		 0.26337999 0.010161 0.034644999 0.132698 0.034644999 0.263403 0.13267399 0.034667999
		 0.0019690001 0.132698 0.0019690001 0.255234 0.034644999 0.230727 0.0019690001 0.279311
		 0.0019690001 0.40184799 0.0019690001 0.40184799 0.099997997 0.27114201 0.099997997
		 0.52438402 0.0019690001 0.53255302 0.099997997 0.40184799 0.230703 0.27114201 0.230703
		 0.53255302 0.230703 0.40184799 0.36140901 0.27114201 0.36140901 0.53255302 0.36140901
		 0.40184799 0.459438 0.279311 0.459438 0.52438402 0.459438 0.40184799 0.49211401 0.303819
		 0.49211401 0.49987701 0.49211401 0.54826701 0.0019690001 0.67080301 0.0019690001
		 0.67080301 0.099997997 0.54009801 0.099997997 0.79334003 0.0019690001 0.80150902
		 0.099997997 0.67080301 0.230703 0.54009801 0.230703 0.80150902 0.230703 0.67080301
		 0.36140901 0.54009801 0.36140901 0.80150902 0.36140901 0.67080301 0.459438 0.54826701
		 0.459438 0.79334003 0.459438 0.67080301 0.49211401 0.57277399 0.49211401 0.76883203
		 0.49211401 0.744766 0.496106 0.867302 0.496106 0.867302 0.59413499 0.736597 0.59413499
		 0.98983902 0.496106 0.99800801 0.59413499 0.867302 0.72483999 0.736597 0.72483999
		 0.99800801 0.72483999 0.867302 0.855546 0.736597 0.855546 0.99800801 0.855546 0.867302
		 0.95357502 0.744766 0.95357502 0.98983902 0.95357502 0.867302 0.986251 0.76927298
		 0.986251 0.96533197 0.986251 0.111644 0.74117798 0.062629998 0.64314902 0.110283
		 0.64314902 0.14040001 0.71242303 0.111644 0.54512 0.14040001 0.57387501 0.16479801
		 0.64314902 0.166105 0.68671799 0.209674 0.79019302 0.209674 0.74254 0.209674 0.496106
		 0.209674 0.54375899 0.166105 0.599581 0.209674 0.64314902 0.209674 0.688025 0.30770299
		 0.74117798 0.278947 0.71242303 0.30770299 0.54512 0.278947 0.57387501 0.209674 0.59827399
		 0.254549 0.64314902 0.25324199 0.68671799 0.35671699 0.64314902 0.309064 0.64314902
		 0.25324199 0.599581;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 90 ".vt[0:89]"  1.72786701 -0.001375 2.52718496 1.86212301 -0.001375 2.56290102
		 1.89783895 -0.001375 2.4286449 1.76358294 -0.001375 2.39292908 1.65568697 0.027774001 2.56903005
		 1.90396798 0.027774001 2.63508105 1.97001898 0.027774001 2.38680005 1.72173798 0.027774001 2.32074904
		 1.64520895 0.231821 2.575104 1.91004205 0.231821 2.64555907 1.980497 0.231821 2.38072491
		 1.71566296 0.231821 2.31027102 1.65568697 0.435868 2.56903005 1.90396798 0.435868 2.63508105
		 1.97001898 0.435868 2.38680005 1.72173798 0.435868 2.32074904 1.72786701 0.465018 2.52718496
		 1.86212301 0.465018 2.56290102 1.89783895 0.465018 2.4286449 1.76358294 0.465018 2.39292908
		 1.81285298 -0.001375 2.47791505 1.81285298 0.465018 2.47791505 1.85122502 0.465018 2.45566893
		 1.79060698 0.465018 2.43954301 1.78795898 -0.001375 2.5714891 1.68711996 -0.001375 2.550807
		 1.88574505 -0.001375 2.60364795 1.76881897 0.027774001 2.64343596 1.90642703 -0.001375 2.50280905
		 1.938586 -0.001375 2.4050231 1.978374 0.027774001 2.52194905 1.83774698 -0.001375 2.38434005
		 1.73996103 -0.001375 2.35218191 1.85688698 0.027774001 2.3123939 1.71927905 -0.001375 2.45302105
		 1.64733195 0.027774001 2.43388104 1.64520895 0.115223 2.575104 1.91004205 0.115223 2.64555907
		 1.76588404 0.231821 2.65446997 1.980497 0.115223 2.38072491 1.98940802 0.231821 2.52488399
		 1.71566296 0.115223 2.31027102 1.85982203 0.231821 2.30135894 1.63629699 0.231821 2.43094492
		 1.64520895 0.34841999 2.575104 1.91004205 0.34841999 2.64555907 1.76881897 0.435868 2.64343596
		 1.980497 0.34841999 2.38072491 1.978374 0.435868 2.52194905 1.71566296 0.34841999 2.31027102
		 1.85688698 0.435868 2.3123939 1.64733195 0.435868 2.43388104 1.68711996 0.465018 2.550807
		 1.88574505 0.465018 2.60364795 1.78795898 0.465018 2.5714891 1.938586 0.465018 2.4050231
		 1.90642703 0.465018 2.50280905 1.73996103 0.465018 2.35218191 1.83774698 0.465018 2.38434005
		 1.71927905 0.465018 2.45302105 1.83509898 -0.001375 2.51628709 1.77448106 -0.001375 2.50015998
		 1.85122502 -0.001375 2.45566893 1.79060698 -0.001375 2.43954301 1.77448106 0.465018 2.50015998
		 1.83509898 0.465018 2.51628709 1.77762604 -0.001375 2.61033106 1.94526899 -0.001375 2.51314211
		 1.84808004 -0.001375 2.34549809 1.68043602 -0.001375 2.44268799 1.76588404 0.115223 2.65446997
		 1.98940802 0.115223 2.52488399 1.85982203 0.115223 2.30135894 1.63629699 0.115223 2.43094492
		 1.76588404 0.34841999 2.65446997 1.98940802 0.34841999 2.52488399 1.85982203 0.34841999 2.30135894
		 1.63629699 0.34841999 2.43094492 1.77762604 0.465018 2.61033106 1.94526899 0.465018 2.51314211
		 1.84808004 0.465018 2.34549809 1.68043602 0.465018 2.44268799 1.79719603 -0.001375 2.53676701
		 1.87170506 -0.001375 2.49357104 1.82850897 -0.001375 2.41906309 1.75400102 -0.001375 2.4622581
		 1.79719603 0.465018 2.53676701 1.87170506 0.465018 2.49357104 1.82850897 0.465018 2.41906309
		 1.75400102 0.465018 2.4622581;
	setAttr -s 176 ".ed";
	setAttr ".ed[0:165]"  0 24 0 24 66 0 66 25 0 25 0 0 24 1 0 1 26 0 26 66 0
		 26 5 0 5 27 0 27 66 0 27 4 0 4 25 0 1 28 0 28 67 0 67 26 0 28 2 0 2 29 0 29 67 0
		 29 6 0 6 30 0 30 67 0 30 5 0 2 31 0 31 68 0 68 29 0 31 3 0 3 32 0 32 68 0 32 7 0
		 7 33 0 33 68 0 33 6 0 3 34 0 34 69 0 69 32 0 34 0 0 25 69 0 4 35 0 35 69 0 35 7 0
		 27 70 0 70 36 0 36 4 0 5 37 0 37 70 0 37 9 0 9 38 0 38 70 0 38 8 0 8 36 0 30 71 0
		 71 37 0 6 39 0 39 71 0 39 10 0 10 40 0 40 71 0 40 9 0 33 72 0 72 39 0 7 41 0 41 72 0
		 41 11 0 11 42 0 42 72 0 42 10 0 35 73 0 73 41 0 36 73 0 8 43 0 43 73 0 43 11 0 38 74 0
		 74 44 0 44 8 0 9 45 0 45 74 0 45 13 0 13 46 0 46 74 0 46 12 0 12 44 0 40 75 0 75 45 0
		 10 47 0 47 75 0 47 14 0 14 48 0 48 75 0 48 13 0 42 76 0 76 47 0 11 49 0 49 76 0 49 15 0
		 15 50 0 50 76 0 50 14 0 43 77 0 77 49 0 44 77 0 12 51 0 51 77 0 51 15 0 46 78 0 78 52 0
		 52 12 0 13 53 0 53 78 0 53 17 0 17 54 0 54 78 0 54 16 0 16 52 0 48 79 0 79 53 0 14 55 0
		 55 79 0 55 18 0 18 56 0 56 79 0 56 17 0 50 80 0 80 55 0 15 57 0 57 80 0 57 19 0 19 58 0
		 58 80 0 58 18 0 51 81 0 81 57 0 52 81 0 16 59 0 59 81 0 59 19 0 24 82 0 82 60 0 60 1 0
		 0 61 0 61 82 0 20 60 0 61 20 0 28 83 0 83 62 0 62 2 0 60 83 0 20 62 0 31 84 0 84 63 0
		 63 3 0 62 84 0 20 63 0 34 85 0 85 61 0 63 85 0 54 86 0 86 64 0 64 16 0 17 65 0 65 86 0
		 21 64 0 65 21 0 56 87 0 87 65 0 18 22 0;
	setAttr ".ed[166:175]" 22 87 0 22 21 0 58 88 0 88 22 0 19 23 0 23 88 0 23 21 0
		 59 89 0 89 23 0 64 89 0;
	setAttr -s 352 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -1 0 0 -1 0 -0.118217 -0.888008 0.444372
		 -0.40015301 -0.88660097 0.231984 0 -1 0 0 -1 0 0.231984 -0.88660097 0.40015301 -0.118217
		 -0.888008 0.444372 -0.118217 -0.888008 0.444372 0.231984 -0.88660097 0.40015301 0.475146
		 -0.32018101 0.81958598 -0.243854 -0.31672499 0.91663498 -0.40015301 -0.88660097 0.231984
		 -0.118217 -0.888008 0.444372 -0.243854 -0.31672499 0.91663498 -0.81958598 -0.32018101
		 0.475146 0 -1 0 0 -1 0 0.444372 -0.888008 0.118217 0.231984 -0.88660097 0.40015301
		 0 -1 0 0 -1 0 0.40015301 -0.88660097 -0.231984 0.444372 -0.888008 0.118217 0.444372
		 -0.888008 0.118217 0.40015301 -0.88660097 -0.231984 0.81958598 -0.32018101 -0.475146
		 0.91663498 -0.31672499 0.243854 0.231984 -0.88660097 0.40015301 0.444372 -0.888008
		 0.118217 0.91663498 -0.31672499 0.243854 0.475146 -0.32018101 0.81958598 0 -1 0 0
		 -1 0 0.118217 -0.888008 -0.444372 0.40015301 -0.88660097 -0.231984 0 -1 0 0 -1 0
		 -0.231985 -0.88660097 -0.40015301 0.118217 -0.888008 -0.444372 0.118217 -0.888008
		 -0.444372 -0.231985 -0.88660097 -0.40015301 -0.47514501 -0.32018101 -0.81958598 0.243854
		 -0.31672499 -0.91663498 0.40015301 -0.88660097 -0.231984 0.118217 -0.888008 -0.444372
		 0.243854 -0.31672499 -0.91663498 0.81958598 -0.32018101 -0.475146 0 -1 0 0 -1 0 -0.444372
		 -0.888008 -0.118217 -0.231985 -0.88660097 -0.40015301 0 -1 0 0 -1 0 -0.40015301 -0.88660097
		 0.231984 -0.444372 -0.888008 -0.118217 -0.444372 -0.888008 -0.118217 -0.40015301
		 -0.88660097 0.231984 -0.81958598 -0.32018101 0.475146 -0.91663498 -0.31672499 -0.243854
		 -0.231985 -0.88660097 -0.40015301 -0.444372 -0.888008 -0.118217 -0.91663498 -0.31672499
		 -0.243854 -0.47514501 -0.32018101 -0.81958598 -0.81958598 -0.32018101 0.475146 -0.243854
		 -0.31672499 0.91663498 -0.25671399 -0.054110002 0.96497202 -0.86372399 -0.056977
		 0.50073397 -0.243854 -0.31672499 0.91663498 0.475146 -0.32018101 0.81958598 0.50073397
		 -0.056977 0.86372399 -0.25671399 -0.054110002 0.96497202 -0.25671399 -0.054110002
		 0.96497202 0.50073397 -0.056977 0.86372399 0.50154901 0 0.86512899 -0.25709 0 0.96638697
		 -0.86372399 -0.056977 0.50073397 -0.25671399 -0.054110002 0.96497202 -0.25709 0 0.96638697
		 -0.86512899 0 0.50154901 0.475146 -0.32018101 0.81958598 0.91663498 -0.31672499 0.243854
		 0.96497202 -0.054110002 0.25671399 0.50073397 -0.056977 0.86372399 0.91663498 -0.31672499
		 0.243854 0.81958598 -0.32018101 -0.475146 0.86372399 -0.056977 -0.50073397 0.96497202
		 -0.054110002 0.25671399 0.96497202 -0.054110002 0.25671399 0.86372399 -0.056977 -0.50073397
		 0.86512899 0 -0.50154901 0.96638697 0 0.25709 0.50073397 -0.056977 0.86372399 0.96497202
		 -0.054110002 0.25671399 0.96638697 0 0.25709 0.50154901 0 0.86512899 0.81958598 -0.32018101
		 -0.475146 0.243854 -0.31672499 -0.91663498 0.256713 -0.054110002 -0.96497202 0.86372399
		 -0.056977 -0.50073397 0.243854 -0.31672499 -0.91663498 -0.47514501 -0.32018101 -0.81958598
		 -0.50073397 -0.056977 -0.86372399 0.256713 -0.054110002 -0.96497202 0.256713 -0.054110002
		 -0.96497202 -0.50073397 -0.056977 -0.86372399 -0.50154901 0 -0.86512899 0.25709 0
		 -0.96638697 0.86372399 -0.056977 -0.50073397 0.256713 -0.054110002 -0.96497202 0.25709
		 0 -0.96638697 0.86512899 0 -0.50154901 -0.47514501 -0.32018101 -0.81958598 -0.91663498
		 -0.31672499 -0.243854 -0.96497202 -0.054110002 -0.256713 -0.50073397 -0.056977 -0.86372399
		 -0.91663498 -0.31672499 -0.243854 -0.81958598 -0.32018101 0.475146 -0.86372399 -0.056977
		 0.50073397 -0.96497202 -0.054110002 -0.256713 -0.96497202 -0.054110002 -0.256713
		 -0.86372399 -0.056977 0.50073397 -0.86512899 0 0.50154901 -0.96638799 0 -0.25709
		 -0.50073397 -0.056977 -0.86372399 -0.96497202 -0.054110002 -0.256713 -0.96638799
		 0 -0.25709 -0.50154901 0 -0.86512899 -0.86512899 0 0.50154901 -0.25709 0 0.96638697
		 -0.25671399 0.054110002 0.96497202 -0.86372399 0.056977 0.50073397 -0.25709 0 0.96638697
		 0.50154901 0 0.86512899 0.50073397 0.056977 0.86372399 -0.25671399 0.054110002 0.96497202
		 -0.25671399 0.054110002 0.96497202 0.50073397 0.056977 0.86372399 0.475146 0.32018101
		 0.81958598 -0.243854 0.31672499 0.91663498 -0.86372399 0.056977 0.50073397 -0.25671399
		 0.054110002 0.96497202 -0.243854 0.31672499 0.91663498 -0.81958598 0.32018101 0.475146
		 0.50154901 0 0.86512899 0.96638697 0 0.25709 0.96497202 0.054110002 0.25671399 0.50073397
		 0.056977 0.86372399 0.96638697 0 0.25709 0.86512899 0 -0.50154901 0.86372399 0.056977
		 -0.50073397 0.96497202 0.054110002 0.25671399 0.96497202 0.054110002 0.25671399 0.86372399
		 0.056977 -0.50073397 0.81958598 0.32018101 -0.475146 0.91663498 0.31672499 0.243854
		 0.50073397 0.056977 0.86372399 0.96497202 0.054110002 0.25671399 0.91663498 0.31672499
		 0.243854 0.475146 0.32018101 0.81958598 0.86512899 0 -0.50154901 0.25709 0 -0.96638697
		 0.256713 0.054110002 -0.96497202 0.86372399 0.056977 -0.50073397 0.25709 0 -0.96638697
		 -0.50154901 0 -0.86512899;
	setAttr ".n[166:331]" -type "float3"  -0.50073397 0.056977 -0.86372399 0.256713
		 0.054110002 -0.96497202 0.256713 0.054110002 -0.96497202 -0.50073397 0.056977 -0.86372399
		 -0.47514501 0.32018101 -0.81958598 0.243854 0.31672499 -0.91663498 0.86372399 0.056977
		 -0.50073397 0.256713 0.054110002 -0.96497202 0.243854 0.31672499 -0.91663498 0.81958598
		 0.32018101 -0.475146 -0.50154901 0 -0.86512899 -0.96638799 0 -0.25709 -0.96497202
		 0.054110002 -0.256713 -0.50073397 0.056977 -0.86372399 -0.96638799 0 -0.25709 -0.86512899
		 0 0.50154901 -0.86372399 0.056977 0.50073397 -0.96497202 0.054110002 -0.256713 -0.96497202
		 0.054110002 -0.256713 -0.86372399 0.056977 0.50073397 -0.81958598 0.32018101 0.475146
		 -0.91663498 0.31672499 -0.243854 -0.50073397 0.056977 -0.86372399 -0.96497202 0.054110002
		 -0.256713 -0.91663498 0.31672499 -0.243854 -0.47514501 0.32018101 -0.81958598 -0.81958598
		 0.32018101 0.475146 -0.243854 0.31672499 0.91663498 -0.118217 0.888008 0.444372 -0.40015301
		 0.88660097 0.231984 -0.243854 0.31672499 0.91663498 0.475146 0.32018101 0.81958598
		 0.231984 0.88660097 0.40015301 -0.118217 0.888008 0.444372 -0.118217 0.888008 0.444372
		 0.231984 0.88660097 0.40015301 0 1 0 0 1 0 -0.40015301 0.88660097 0.231984 -0.118217
		 0.888008 0.444372 0 1 0 0 1 0 0.475146 0.32018101 0.81958598 0.91663498 0.31672499
		 0.243854 0.444372 0.888008 0.118217 0.231984 0.88660097 0.40015301 0.91663498 0.31672499
		 0.243854 0.81958598 0.32018101 -0.475146 0.40015301 0.88660097 -0.231985 0.444372
		 0.888008 0.118217 0.444372 0.888008 0.118217 0.40015301 0.88660097 -0.231985 0 1
		 0 0 1 0 0.231984 0.88660097 0.40015301 0.444372 0.888008 0.118217 0 1 0 0 1 0 0.81958598
		 0.32018101 -0.475146 0.243854 0.31672499 -0.91663498 0.118217 0.888008 -0.444372
		 0.40015301 0.88660097 -0.231985 0.243854 0.31672499 -0.91663498 -0.47514501 0.32018101
		 -0.81958598 -0.231985 0.88660097 -0.40015301 0.118217 0.888008 -0.444372 0.118217
		 0.888008 -0.444372 -0.231985 0.88660097 -0.40015301 0 1 0 0 1 0 0.40015301 0.88660097
		 -0.231985 0.118217 0.888008 -0.444372 0 1 0 0 1 0 -0.47514501 0.32018101 -0.81958598
		 -0.91663498 0.31672499 -0.243854 -0.444372 0.888008 -0.118217 -0.231985 0.88660097
		 -0.40015301 -0.91663498 0.31672499 -0.243854 -0.81958598 0.32018101 0.475146 -0.40015301
		 0.88660097 0.231984 -0.444372 0.888008 -0.118217 -0.444372 0.888008 -0.118217 -0.40015301
		 0.88660097 0.231984 0 1 0 0 1 0 -0.231985 0.88660097 -0.40015301 -0.444372 0.888008
		 -0.118217 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr ".n[332:351]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr -s 88 -ch 352 ".fc[0:87]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 6 7 2
		f 4 -7 7 8 9
		mu 0 4 2 7 17 8
		f 4 -3 -10 10 11
		mu 0 4 3 2 8 9
		f 4 12 13 14 -6
		mu 0 4 6 15 16 7
		f 4 15 16 17 -14
		mu 0 4 15 24 25 16
		f 4 -18 18 19 20
		mu 0 4 16 25 31 26
		f 4 -15 -21 21 -8
		mu 0 4 7 16 26 17
		f 4 22 23 24 -17
		mu 0 4 24 28 29 25
		f 4 25 26 27 -24
		mu 0 4 28 19 20 29
		f 4 -28 28 29 30
		mu 0 4 29 20 27 32
		f 4 -25 -31 31 -19
		mu 0 4 25 29 32 31
		f 4 32 33 34 -27
		mu 0 4 19 10 11 20
		f 4 35 -4 36 -34
		mu 0 4 10 0 3 11
		f 4 -37 -12 37 38
		mu 0 4 11 3 9 18
		f 4 -35 -39 39 -29
		mu 0 4 20 11 18 27
		f 4 -11 40 41 42
		mu 0 4 33 34 35 36
		f 4 -9 43 44 -41
		mu 0 4 51 52 53 54
		f 4 -45 45 46 47
		mu 0 4 54 53 57 58
		f 4 -42 -48 48 49
		mu 0 4 36 35 37 38
		f 4 -22 50 51 -44
		mu 0 4 52 55 56 53
		f 4 -20 52 53 -51
		mu 0 4 69 70 71 72
		f 4 -54 54 55 56
		mu 0 4 72 71 75 76
		f 4 -52 -57 57 -46
		mu 0 4 53 56 59 57
		f 4 -32 58 59 -53
		mu 0 4 70 73 74 71
		f 4 -30 60 61 -59
		mu 0 4 87 88 89 90
		f 4 -62 62 63 64
		mu 0 4 90 89 93 94
		f 4 -60 -65 65 -55
		mu 0 4 71 74 77 75
		f 4 -40 66 67 -61
		mu 0 4 88 91 92 89
		f 4 -38 -43 68 -67
		mu 0 4 39 33 36 40
		f 4 -69 -50 69 70
		mu 0 4 40 36 38 43
		f 4 -68 -71 71 -63
		mu 0 4 89 92 95 93
		f 4 -49 72 73 74
		mu 0 4 38 37 41 42
		f 4 -47 75 76 -73
		mu 0 4 58 57 60 61
		f 4 -77 77 78 79
		mu 0 4 61 60 63 64
		f 4 -74 -80 80 81
		mu 0 4 42 41 44 45
		f 4 -58 82 83 -76
		mu 0 4 57 59 62 60
		f 4 -56 84 85 -83
		mu 0 4 76 75 78 79
		f 4 -86 86 87 88
		mu 0 4 79 78 81 82
		f 4 -84 -89 89 -78
		mu 0 4 60 62 65 63
		f 4 -66 90 91 -85
		mu 0 4 75 77 80 78
		f 4 -64 92 93 -91
		mu 0 4 94 93 96 97
		f 4 -94 94 95 96
		mu 0 4 97 96 99 100
		f 4 -92 -97 97 -87
		mu 0 4 78 80 83 81
		f 4 -72 98 99 -93
		mu 0 4 93 95 98 96
		f 4 -70 -75 100 -99
		mu 0 4 43 38 42 46
		f 4 -101 -82 101 102
		mu 0 4 46 42 45 49
		f 4 -100 -103 103 -95
		mu 0 4 96 98 101 99
		f 4 -81 104 105 106
		mu 0 4 45 44 47 48
		f 4 -79 107 108 -105
		mu 0 4 64 63 66 67
		f 4 -109 109 110 111
		mu 0 4 105 106 107 108
		f 4 -106 -112 112 113
		mu 0 4 113 105 108 114
		f 4 -90 114 115 -108
		mu 0 4 63 65 68 66
		f 4 -88 116 117 -115
		mu 0 4 82 81 84 85
		f 4 -118 118 119 120
		mu 0 4 109 115 116 110
		f 4 -116 -121 121 -110
		mu 0 4 106 109 110 107
		f 4 -98 122 123 -117
		mu 0 4 81 83 86 84
		f 4 -96 124 125 -123
		mu 0 4 100 99 102 103
		f 4 -126 126 127 128
		mu 0 4 122 127 128 123
		f 4 -124 -129 129 -119
		mu 0 4 115 122 123 116
		f 4 -104 130 131 -125
		mu 0 4 99 101 104 102
		f 4 -102 -107 132 -131
		mu 0 4 49 45 48 50
		f 4 -133 -114 133 134
		mu 0 4 120 113 114 121
		f 4 -132 -135 135 -127
		mu 0 4 127 120 121 128
		f 4 -5 136 137 138
		mu 0 4 6 1 5 14
		f 4 139 140 -137 -1
		mu 0 4 0 4 5 1
		f 4 141 -138 -141 142
		mu 0 4 13 14 5 4
		f 4 -16 143 144 145
		mu 0 4 24 15 23 22
		f 4 -139 146 -144 -13
		mu 0 4 6 14 23 15
		f 4 147 -145 -147 -142
		mu 0 4 13 22 23 14
		f 4 -26 148 149 150
		mu 0 4 19 28 30 21
		f 4 -146 151 -149 -23
		mu 0 4 24 22 30 28
		f 4 152 -150 -152 -148
		mu 0 4 13 21 30 22
		f 4 -36 153 154 -140
		mu 0 4 0 10 12 4
		f 4 -151 155 -154 -33
		mu 0 4 19 21 12 10
		f 4 -143 -155 -156 -153
		mu 0 4 13 4 12 21
		f 4 -113 156 157 158
		mu 0 4 114 108 112 119
		f 4 159 160 -157 -111
		mu 0 4 107 111 112 108
		f 4 161 -158 -161 162
		mu 0 4 118 119 112 111
		f 4 -122 163 164 -160
		mu 0 4 107 110 117 111
		f 4 165 166 -164 -120
		mu 0 4 116 124 117 110
		f 4 -163 -165 -167 167
		mu 0 4 118 111 117 124
		f 4 -130 168 169 -166
		mu 0 4 116 123 129 124
		f 4 170 171 -169 -128
		mu 0 4 128 125 129 123
		f 4 -168 -170 -172 172
		mu 0 4 118 124 129 125
		f 4 -136 173 174 -171
		mu 0 4 128 121 126 125
		f 4 -159 175 -174 -134
		mu 0 4 114 119 126 121
		f 4 -173 -175 -176 -162
		mu 0 4 118 125 126 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface17";
	setAttr ".t" -type "double3" 1.1168370050943419 0.68853362395118278 -4.024574417307039 ;
	setAttr ".r" -type "double3" 0 108.47963193281559 0 ;
	setAttr ".s" -type "double3" 0.45411853506603828 0.45411853506603828 0.45411853506603828 ;
	setAttr ".rp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
	setAttr ".sp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
createNode mesh -n "polySurfaceShape17" -p "polySurface17";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:31]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[32:127]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "vtx[0:145]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 512 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0 0 0 1 0 1 0 0 0 1 0 0
		 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 1
		 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1
		 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1
		 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1
		 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1 1
		 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1
		 0 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 1 0 1 0 1 0
		 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0
		 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 1 0 0
		 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 0 1 0 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 0
		 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0
		 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1
		 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1
		 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1
		 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0
		 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1;
	setAttr ".uvst[0].uvsp[500:511]" 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0
		 0 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 146 ".vt[0:145]"  -2.48131704 0.178654 2.75388694 -2.30557203 0.18639299 2.56610608
		 -2.11397791 0.178654 2.394526 -2.35452199 0.178654 2.88349605 -2.16292906 0.18639299 2.71191597
		 -1.98718405 0.178654 2.52413511 -2.44087791 0.18639299 2.841151 -2.23425007 0.196343 2.63901091
		 -2.027621984 0.18639299 2.4368701 -2.18749905 0.18639299 2.45059705 -2.28100204 0.18639299 2.827425
		 -2.044855118 0.18639299 2.59640694 -2.40012288 0.18639299 2.88281107 -2.19349504 0.196343 2.68067098
		 -2.35232306 0.196343 2.75451994 -1.98686695 0.18639299 2.47852993 -2.11617708 0.196343 2.52350211
		 -2.48163295 0.18639299 2.79949093 -2.2750051 0.196343 2.59735107 -2.068377018 0.18639299 2.39521003
		 -2.42364502 0.18639299 2.68161511 -2.31156802 0.196343 2.79618001 -2.075422049 0.196343 2.56516194
		 -2.39307809 0.196343 2.71286011 -2.15693212 0.196343 2.48184204 -2.43383408 0.156543 2.67120004
		 -2.51220012 0.156543 2.76824594 -2.31576109 0.156543 2.555691 -2.1976881 0.156543 2.44018197
		 -2.098943949 0.156543 2.36396503 -2.27081299 0.156543 2.83784008 -2.15274 0.156543 2.72233105
		 -2.3695569 0.156543 2.91405606 -2.034667015 0.156543 2.60682201 -1.95630002 0.156543 2.50977492
		 -1.95734894 0.156543 2.44965291 -1.99810398 0.156543 2.40799308 -2.038858891 0.156543 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.47039604 0.156543 2.87002802 -2.51115203 0.156543 2.82836795
		 -2.51220012 0.116743 2.76824594 -2.31576109 0.116743 2.555691 -2.098943949 0.116743 2.36396503
		 -2.51220012 0.046128999 2.76824594 -2.31576109 0.046128999 2.555691 -2.098943949 0.046128999 2.36396503
		 -2.47039604 0.046128999 2.87002802 -1.99810398 0.046128999 2.40799308 -2.36955595 0.046128999 2.91405606
		 -2.15274 0.046128999 2.72233105 -1.95630002 0.046128999 2.50977492 -2.36955595 0.116743 2.91405606
		 -2.15274 0.116743 2.72233105 -1.95630002 0.116743 2.50977492 -1.99810398 0.116743 2.40799308
		 -2.47039604 0.116743 2.87002802 -2.48131704 0.031148 2.75388694 -2.30557203 0.030399 2.56610608
		 -2.23425007 0.029436 2.63901091 -2.44087791 0.030399 2.841151 -2.11397791 0.031148 2.394526
		 -2.027621984 0.030399 2.4368701 -2.16292906 0.030399 2.71191597 -2.35452199 0.031148 2.88349605
		 -1.98718405 0.031148 2.52413511 -2.31576109 0.156543 2.555691 -2.43383408 0.116743 2.67120004
		 -2.098943949 0.156543 2.36396503 -2.1976881 0.116743 2.44018197 -2.51220012 0.076943003 2.76824594
		 -2.31576109 0.076943003 2.555691 -2.43383408 0.046128999 2.67120004 -2.098943949 0.076943003 2.36396503
		 -2.1976881 0.046128999 2.44018197 -2.42364502 0.030399 2.68161511 -2.48163295 0.030399 2.79949093
		 -2.2750051 0.029436 2.59735107 -2.35232306 0.029436 2.75451994 -2.18749905 0.030399 2.45059705
		 -2.068377018 0.030399 2.39521003 -2.11617708 0.029436 2.52350211 -2.40012288 0.030399 2.88281107
		 -2.19349504 0.029436 2.68067098 -2.28100204 0.030399 2.827425 -1.98686695 0.030399 2.47852993
		 -2.044855118 0.030399 2.59640694 -2.27081299 0.046128999 2.83784008 -2.3695569 0.076943003 2.91405606
		 -2.15274 0.076943003 2.72233105 -2.27081299 0.116743 2.83784008 -2.034667015 0.046128999 2.60682201
		 -1.95630002 0.076943003 2.50977492 -2.034667015 0.116743 2.60682201 -2.3695569 0.156543 2.91405606
		 -2.15274 0.156543 2.72233105 -1.95630002 0.156543 2.50977492 -1.99810398 0.156543 2.40799308
		 -1.95734894 0.116743 2.44965291 -2.038858891 0.116743 2.36633301 -1.99810398 0.076943003 2.40799308
		 -1.95734894 0.046128999 2.44965291 -2.038858891 0.046128999 2.36633301 -2.47039604 0.156543 2.87002802
		 -2.42964101 0.116743 2.91168809 -2.51115203 0.116743 2.82836795 -2.47039604 0.076943003 2.87002802
		 -2.42964101 0.046128999 2.91168809 -2.51115203 0.046128999 2.82836795 -2.51220012 0.033289 2.76824594
		 -2.31576109 0.033289 2.555691 -2.47039604 0.033289 2.87002802 -2.098943949 0.033289 2.36396503
		 -1.99810398 0.033289 2.40799308 -2.15274 0.033289 2.72233105 -2.3695569 0.033289 2.91405606
		 -1.95630002 0.033289 2.50977492 -2.51220012 0.156543 2.76824594 -2.43383408 0.156543 2.67120004
		 -2.1976881 0.156543 2.44018197 -2.43383408 0.076943003 2.67120004 -2.1976881 0.076943003 2.44018197
		 -2.39307809 0.029436 2.71286011 -2.15693212 0.029436 2.48184204 -2.31156802 0.029436 2.79618001
		 -2.075422049 0.029436 2.56516194 -2.27081299 0.076943003 2.83784008 -2.034667015 0.076943003 2.60682201
		 -2.27081299 0.156543 2.83784008 -2.034667015 0.156543 2.60682201 -1.95734894 0.156543 2.44965291
		 -2.038858891 0.156543 2.36633301 -1.95734894 0.076943003 2.44965291 -2.038858891 0.076943003 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.51115203 0.156543 2.82836795 -2.42964101 0.076943003 2.91168809
		 -2.51115203 0.076943003 2.82836795 -2.43383408 0.033289 2.67120004 -2.51115203 0.033289 2.82836795
		 -2.1976881 0.033289 2.44018197 -2.038858891 0.033289 2.36633301 -2.27081299 0.033289 2.83784008
		 -2.42964101 0.033289 2.91168809 -1.95734894 0.033289 2.44965291 -2.034667015 0.033289 2.60682201;
	setAttr -s 272 ".ed";
	setAttr ".ed[0:165]"  0 20 0 20 25 0 25 26 0 26 0 0 20 1 0 1 27 0 27 25 0
		 1 9 0 9 28 0 28 27 0 9 2 0 2 29 0 29 28 0 30 31 0 31 4 0 4 10 0 10 30 0 32 30 0 10 3 0
		 3 32 0 33 34 0 34 5 0 5 11 0 11 33 0 31 33 0 11 4 0 10 21 0 21 12 0 12 3 0 4 13 0
		 13 21 0 13 7 0 7 14 0 14 21 0 14 6 0 6 12 0 11 22 0 22 13 0 5 15 0 15 22 0 15 8 0
		 8 16 0 16 22 0 16 7 0 14 23 0 23 17 0 17 6 0 7 18 0 18 23 0 18 1 0 20 23 0 0 17 0
		 16 24 0 24 18 0 8 19 0 19 24 0 19 2 0 9 24 0 15 35 0 35 36 0 36 8 0 34 35 0 19 37 0
		 37 29 0 36 37 0 12 38 0 38 32 0 6 39 0 39 38 0 17 40 0 40 39 0 26 40 0 118 66 0 66 42 0
		 42 67 0 67 118 0 117 118 0 67 41 0 41 117 0 119 68 0 68 43 0 43 69 0 69 119 0 66 119 0
		 69 42 0 67 120 0 120 70 0 70 41 0 42 71 0 71 120 0 71 45 0 45 72 0 72 120 0 72 44 0
		 44 70 0 69 121 0 121 71 0 43 73 0 73 121 0 73 46 0 46 74 0 74 121 0 74 45 0 57 75 0
		 75 122 0 122 76 0 76 57 0 75 58 0 58 77 0 77 122 0 77 59 0 59 78 0 78 122 0 78 60 0
		 60 76 0 58 79 0 79 123 0 123 77 0 79 61 0 61 80 0 80 123 0 80 62 0 62 81 0 81 123 0
		 81 59 0 78 124 0 124 82 0 82 60 0 59 83 0 83 124 0 83 63 0 63 84 0 84 124 0 84 64 0
		 64 82 0 81 125 0 125 83 0 62 85 0 85 125 0 85 65 0 65 86 0 86 125 0 86 63 0 49 87 0
		 87 126 0 126 88 0 88 49 0 87 50 0 50 89 0 89 126 0 89 53 0 53 90 0 90 126 0 90 52 0
		 52 88 0 50 91 0 91 127 0 127 89 0 91 51 0 51 92 0 92 127 0 92 54 0 54 93 0 93 127 0
		 93 53 0 90 128 0;
	setAttr ".ed[166:271]" 128 94 0 94 52 0 53 95 0 95 128 0 93 129 0 129 95 0
		 54 96 0 96 129 0 130 96 0 54 98 0 98 130 0 97 130 0 98 55 0 55 97 0 131 97 0 55 99 0
		 99 131 0 68 131 0 99 43 0 98 132 0 132 100 0 100 55 0 92 132 0 51 101 0 101 132 0
		 101 48 0 48 100 0 99 133 0 133 73 0 100 133 0 48 102 0 102 133 0 102 46 0 134 103 0
		 103 56 0 56 104 0 104 134 0 94 134 0 104 52 0 135 117 0 41 105 0 105 135 0 103 135 0
		 105 56 0 104 136 0 136 88 0 56 106 0 106 136 0 106 47 0 47 107 0 107 136 0 107 49 0
		 105 137 0 137 106 0 70 137 0 44 108 0 108 137 0 108 47 0 72 138 0 138 109 0 109 44 0
		 45 110 0 110 138 0 110 58 0 75 138 0 57 109 0 108 139 0 139 111 0 111 47 0 109 139 0
		 76 139 0 60 111 0 74 140 0 140 110 0 46 112 0 112 140 0 112 61 0 79 140 0 102 141 0
		 141 112 0 48 113 0 113 141 0 113 62 0 80 141 0 87 142 0 142 114 0 114 50 0 49 115 0
		 115 142 0 115 64 0 84 142 0 63 114 0 107 143 0 143 115 0 111 143 0 82 143 0 101 144 0
		 144 113 0 51 116 0 116 144 0 116 65 0 85 144 0 91 145 0 145 116 0 114 145 0 86 145 0;
	setAttr -s 512 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.52629298 0.809928 -0.25890601 -0.42148501
		 0.82520002 -0.376026 -0.65006101 0.461981 -0.60332 -0.70441198 0.619452 -0.34652999
		 -0.42148501 0.82520002 -0.376026 -0.39437401 0.82580698 -0.40312901 -0.62843603 0.438642
		 -0.64238697 -0.65006101 0.461981 -0.60332 -0.39437401 0.82580698 -0.40312901 -0.36668199
		 0.82520002 -0.42963901 -0.58890301 0.461981 -0.663149 -0.62843603 0.438642 -0.64238697
		 -0.36668199 0.82520002 -0.42963901 -0.247289 0.809928 -0.53184998 -0.33098099 0.61945099
		 -0.711851 -0.58890301 0.461981 -0.663149 0.58890301 0.461981 0.663149 0.62843603
		 0.438642 0.64238697 0.39437401 0.82580698 0.40312901 0.36668199 0.82520002 0.42963901
		 0.33098099 0.619452 0.71184999 0.58890301 0.461981 0.663149 0.36668199 0.82520002
		 0.42963901 0.247289 0.809928 0.53184998 0.65006101 0.461981 0.60332 0.70441198 0.619452
		 0.34652901 0.52629298 0.809928 0.25890601 0.42148501 0.82520002 0.376026 0.62843603
		 0.438642 0.64238697 0.65006101 0.461981 0.60332 0.42148501 0.82520002 0.376026 0.39437401
		 0.82580698 0.40312901 0.247289 0.809928 0.53184998 0.36668199 0.82520002 0.42963901
		 0.042675 0.99486399 0.091783002 -0.077308998 0.96430999 0.25323999 0.36668199 0.82520002
		 0.42963901 0.39437401 0.82580698 0.40312901 0.067901 0.99527502 0.069408 0.042675
		 0.99486399 0.091783002 0.042675 0.99486399 0.091783002 0.067901 0.99527502 0.069408
		 0 1 0 -0.024591001 0.99940801 0.024057001 -0.077308998 0.96430999 0.25323999 0.042675
		 0.99486399 0.091783002 -0.024591001 0.99940801 0.024057001 -0.167448 0.97217703 0.163811
		 0.39437401 0.82580698 0.40312901 0.42148501 0.82520002 0.376026 0.090824001 0.99486399
		 0.044679999 0.067901 0.99527502 0.069408 0.42148501 0.82520002 0.376026 0.52629298
		 0.809928 0.25890601 0.25487599 0.96430999 -0.071731001 0.090824001 0.99486399 0.044679999
		 0.090824001 0.99486399 0.044679999 0.25487599 0.96430999 -0.071731001 0.167448 0.97217703
		 -0.163811 0.024591001 0.99940801 -0.024057001 0.067901 0.99527502 0.069408 0.090824001
		 0.99486399 0.044679999 0.024591001 0.99940801 -0.024057001 0 1 0 -0.167448 0.97217703
		 0.163811 -0.024591001 0.99940801 0.024057001 -0.090824001 0.99486399 -0.044679999
		 -0.25487599 0.96430999 0.071731001 -0.024591001 0.99940801 0.024057001 0 1 0 -0.067901
		 0.99527502 -0.069408 -0.090824001 0.99486399 -0.044679999 -0.090824001 0.99486399
		 -0.044679999 -0.067901 0.99527502 -0.069408 -0.39437401 0.82580698 -0.40312901 -0.42148501
		 0.82520002 -0.376026 -0.25487599 0.96430999 0.071731001 -0.090824001 0.99486399 -0.044679999
		 -0.42148501 0.82520002 -0.376026 -0.52629298 0.809928 -0.25890601 0 1 0 0.024591001
		 0.99940801 -0.024057001 -0.042675 0.99486399 -0.091783002 -0.067901 0.99527502 -0.069408
		 0.024591001 0.99940801 -0.024057001 0.167448 0.97217703 -0.163811 0.077308998 0.96430898
		 -0.25323999 -0.042675 0.99486399 -0.091783002 -0.042675 0.99486399 -0.091783002 0.077308998
		 0.96430898 -0.25323999 -0.247289 0.809928 -0.53184998 -0.36668199 0.82520002 -0.42963901
		 -0.067901 0.99527502 -0.069408 -0.042675 0.99486399 -0.091783002 -0.36668199 0.82520002
		 -0.42963901 -0.39437401 0.82580698 -0.40312901 0.167448 0.97217703 -0.163811 0.25487599
		 0.96430999 -0.071731001 0.53995699 0.809349 -0.231087 0.41876701 0.81043297 -0.40967301
		 0.25487599 0.96430999 -0.071731001 0.52629298 0.809928 0.25890601 0.70441198 0.619452
		 0.34652901 0.53995699 0.809349 -0.231087 -0.247289 0.809928 -0.53184998 0.077308998
		 0.96430898 -0.25323999 0.24288499 0.809349 -0.53475398 -0.33098099 0.61945099 -0.711851
		 0.077308998 0.96430898 -0.25323999 0.167448 0.97217703 -0.163811 0.41876701 0.81043297
		 -0.40967301 0.24288499 0.809349 -0.53475398 0.247289 0.809928 0.53184998 -0.077308998
		 0.96430999 0.25323999 -0.24288601 0.809349 0.53475302 0.33098099 0.619452 0.71184999
		 -0.077308998 0.96430999 0.25323999 -0.167448 0.97217703 0.163811 -0.41876701 0.81043398
		 0.40967199 -0.24288601 0.809349 0.53475302 -0.167448 0.97217703 0.163811 -0.25487599
		 0.96430999 0.071731001 -0.53995597 0.809349 0.231087 -0.41876701 0.81043398 0.40967199
		 -0.25487599 0.96430999 0.071731001 -0.52629298 0.809928 -0.25890601 -0.70441198 0.619452
		 -0.34652999 -0.53995597 0.809349 0.231087 -0.73439997 0 -0.67871702 -0.69930202 0
		 -0.714827 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 -1e-006 -0.44141999
		 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775 -0.66242999 0 -0.74912399
		 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202
		 0 -0.714827 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702
		 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.69930202
		 0 -0.714827 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827
		 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.69930202 0 -0.714827
		 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775;
	setAttr ".n[166:331]" -type "float3"  -0.42161399 0 -0.906775 -0.66242999 0
		 -0.74912399 -0.66242999 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775
		 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999
		 0 -0.74912399 -0.69930202 0 -0.714827 -0.060573999 -0.99771899 -0.029798999 -0.052843001
		 -0.99750501 -0.046805002 -0.008986 -0.99994999 -0.0044200001 -0.02781 -0.999587 0.0071720001
		 -0.052843001 -0.99750501 -0.046805002 -0.046137001 -0.99782097 -0.047161002 -0.0066049998
		 -0.999955 -0.0067520002 -0.008986 -0.99994999 -0.0044200001 -0.008986 -0.99994999
		 -0.0044200001 -0.0066049998 -0.999955 -0.0067520002 0 -1 0 -0.002382 -0.99999398
		 0.0023310001 -0.02781 -0.999587 0.0071720001 -0.008986 -0.99994999 -0.0044200001
		 -0.002382 -0.99999398 0.0023310001 -0.016672 -0.99972802 0.016310001 -0.046137001
		 -0.99782097 -0.047161002 -0.045634001 -0.99750501 -0.053858001 -0.004222 -0.99994999
		 -0.0090810005 -0.0066049998 -0.999955 -0.0067520002 -0.045634001 -0.99750501 -0.053858001
		 -0.028462 -0.99771899 -0.061213002 0.0077809999 -0.999587 -0.027646 -0.004222 -0.99994999
		 -0.0090810005 -0.004222 -0.99994999 -0.0090810005 0.0077809999 -0.999587 -0.027646
		 0.016672 -0.99972802 -0.016310001 0.002382 -0.99999398 -0.0023310001 -0.0066049998
		 -0.999955 -0.0067520002 -0.004222 -0.99994999 -0.0090810005 0.002382 -0.99999398
		 -0.0023310001 0 -1 0 -0.016672 -0.99972802 0.016310001 -0.002382 -0.99999398 0.0023310001
		 0.004222 -0.99994999 0.0090810005 -0.0077809999 -0.999587 0.027646 -0.002382 -0.99999398
		 0.0023310001 0 -1 0 0.0066049998 -0.999955 0.0067520002 0.004222 -0.99994999 0.0090810005
		 0.004222 -0.99994999 0.0090810005 0.0066049998 -0.999955 0.0067520002 0.046137001
		 -0.99782097 0.047161002 0.045634001 -0.99750501 0.053856999 -0.0077809999 -0.999587
		 0.027646 0.004222 -0.99994999 0.0090810005 0.045634001 -0.99750501 0.053856999 0.028462
		 -0.99771899 0.061213002 0 -1 0 0.002382 -0.99999398 -0.0023310001 0.008986 -0.99994999
		 0.0044209999 0.0066049998 -0.999955 0.0067520002 0.002382 -0.99999398 -0.0023310001
		 0.016672 -0.99972802 -0.016310001 0.02781 -0.99958801 -0.0071720001 0.008986 -0.99994999
		 0.0044209999 0.008986 -0.99994999 0.0044209999 0.02781 -0.99958801 -0.0071720001
		 0.060573999 -0.99771899 0.029798999 0.052843001 -0.99750501 0.046805002 0.0066049998
		 -0.999955 0.0067520002 0.008986 -0.99994999 0.0044209999 0.052843001 -0.99750501
		 0.046805002 0.046137001 -0.99782097 0.047161002 0.42161399 0 0.906775 0.66242999
		 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.90677601 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.66242999 0
		 0.74912399 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.42161399
		 0 0.90677601 0.66242999 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775
		 0.69930202 0 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202
		 0 0.714827 0.73439997 0 0.67871702 0.89730102 0 0.44141901 0.89730102 0 0.44141999
		 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.89730102 0 0.44141999 0.89730102
		 0 0.44141999 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997 0 0.67871702
		 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.42161399 0 0.906775 0.66242999 0
		 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.69930202 0
		 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997
		 0 0.67871702 0.89730102 0 0.44141999 0.89730102 0 0.44141901 0.73439997 0 0.67871702
		 0.92501998 0 -0.37991899 0.89730102 0 0.44141901 0.89730102 0 0.44141999 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899
		 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457
		 -0.42161399 0 -0.906775 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.89730102 0 0.44141999
		 0.89730102 0 0.44141999 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.89730102
		 0 0.44141999 0.89730102 0 0.44141901 0.92501998 0 -0.37991899 0.714827 0 -0.69930202
		 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.714827 0 -0.69930202 -0.42161399
		 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457;
	setAttr ".n[332:497]" -type "float3"  -0.42161399 0 -0.906775 0.400134 0 -0.916457
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 -0.40013501 -1e-006 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.40013501 -1e-006 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775 -0.92501998
		 -1e-006 0.37991801 -0.89730102 -1e-006 -0.44141999 -0.89730102 0 -0.44141999 -0.92501998
		 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 -1e-006 0.37991801 -0.92501998 0
		 0.37991801 -0.714827 0 0.69930202 0.42161399 0 0.906775 -0.40013501 0 0.91645598
		 -0.40013501 0 0.91645598 0.42161399 0 0.90677601 -0.40013501 0 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598
		 -0.714827 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399
		 0 0.90677601 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.714827 0 0.69930202 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.714827
		 0 0.69930202 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102 0 -0.44141999
		 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102
		 0 -0.44141999 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 0 0.37991801
		 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.56217402 -0.642546 -0.52066702 -0.66634798 -0.66971999 -0.327804
		 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.51303899 -0.679533 -0.52442902
		 -0.56217402 -0.642546 -0.52066702 -0.56217402 -0.642546 -0.52066702 -0.51303899 -0.679533
		 -0.52442902 -0.046137001 -0.99782097 -0.047161002 -0.052843001 -0.99750501 -0.046805002
		 -0.66634798 -0.66971999 -0.327804 -0.56217402 -0.642546 -0.52066702 -0.052843001
		 -0.99750501 -0.046805002 -0.060573999 -0.99771899 -0.029798999 -0.714827 0 0.69930202
		 -0.92501998 0 0.37991801 -0.37985 -0.91122502 0.159319 -0.25446099 -0.93449497 0.248934
		 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.66634798 -0.66971999 -0.327804
		 -0.37985 -0.91122502 0.159319 -0.37985 -0.91122502 0.159319 -0.66634798 -0.66971999
		 -0.327804 -0.060573999 -0.99771899 -0.029798999 -0.02781 -0.999587 0.0071720001 -0.25446099
		 -0.93449497 0.248934 -0.37985 -0.91122502 0.159319 -0.02781 -0.999587 0.0071720001
		 -0.016672 -0.99972802 0.016310001 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399
		 -0.50819898 -0.64254802 -0.57346898 -0.51303899 -0.679533 -0.52442902 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.31309599 -0.66972101 -0.673383 -0.50819898
		 -0.64254802 -0.57346898 -0.50819898 -0.64254802 -0.57346898 -0.31309599 -0.66972101
		 -0.673383 -0.028462 -0.99771899 -0.061213002 -0.045634001 -0.99750501 -0.053858001
		 -0.51303899 -0.679533 -0.52442902 -0.50819898 -0.64254802 -0.57346898 -0.045634001
		 -0.99750501 -0.053858001 -0.046137001 -0.99782097 -0.047161002 -0.42161399 0 -0.906775
		 0.400134 0 -0.916457 0.16762 -0.91122502 -0.376261 -0.31309599 -0.66972101 -0.673383
		 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.25446099 -0.93449497 -0.248935 0.16762
		 -0.91122502 -0.376261 0.16762 -0.91122502 -0.376261 0.25446099 -0.93449497 -0.248935
		 0.016672 -0.99972802 -0.016310001 0.0077809999 -0.999587 -0.027646 -0.31309599 -0.66972101
		 -0.673383 0.16762 -0.91122502 -0.376261 0.0077809999 -0.999587 -0.027646 -0.028462
		 -0.99771899 -0.061213002 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.50819999
		 -0.642546 0.57347 0.51303899 -0.679533 0.52442902 0.66242999 0 0.74912399 0.42161399
		 0 0.906775 0.31309599 -0.66971999 0.67338401 0.50819999 -0.642546 0.57347 0.50819999
		 -0.642546 0.57347 0.31309599 -0.66971999 0.67338401 0.028462 -0.99771899 0.061213002
		 0.045634001 -0.99750501 0.053856999 0.51303899 -0.679533 0.52442902 0.50819999 -0.642546
		 0.57347 0.045634001 -0.99750501 0.053856999 0.046137001 -0.99782097 0.047161002 0.42161399
		 0 0.906775 -0.40013501 0 0.91645598 -0.16762 -0.91122502 0.376261 0.31309599 -0.66971999
		 0.67338401 -0.40013501 0 0.91645598 -0.714827 0 0.69930202 -0.25446099 -0.93449497
		 0.248934 -0.16762 -0.91122502 0.376261 -0.16762 -0.91122502 0.376261 -0.25446099
		 -0.93449497 0.248934 -0.016672 -0.99972802 0.016310001 -0.0077809999 -0.999587 0.027646
		 0.31309599 -0.66971999 0.67338401 -0.16762 -0.91122502 0.376261 -0.0077809999 -0.999587
		 0.027646 0.028462 -0.99771899 0.061213002 0.714827 0 -0.69930202 0.92501998 0 -0.37991899
		 0.37985 -0.91122502 -0.15932 0.25446099 -0.93449497 -0.248935 0.92501998 0 -0.37991899
		 0.89730102 0 0.44141901 0.66634798 -0.66971999 0.327804 0.37985 -0.91122502 -0.15932
		 0.37985 -0.91122502 -0.15932 0.66634798 -0.66971999 0.327804 0.060573999 -0.99771899
		 0.029798999 0.02781 -0.99958801 -0.0071720001 0.25446099 -0.93449497 -0.248935 0.37985
		 -0.91122502 -0.15932 0.02781 -0.99958801 -0.0071720001 0.016672 -0.99972802 -0.016310001
		 0.89730102 0 0.44141901 0.73439997 0 0.67871702;
	setAttr ".n[498:511]" -type "float3"  0.56217402 -0.642546 0.52066702 0.66634798
		 -0.66971999 0.327804 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.51303899 -0.679533
		 0.52442902 0.56217402 -0.642546 0.52066702 0.56217402 -0.642546 0.52066702 0.51303899
		 -0.679533 0.52442902 0.046137001 -0.99782097 0.047161002 0.052843001 -0.99750501
		 0.046805002 0.66634798 -0.66971999 0.327804 0.56217402 -0.642546 0.52066702 0.052843001
		 -0.99750501 0.046805002 0.060573999 -0.99771899 0.029798999;
	setAttr -s 128 -ch 512 ".fc[0:127]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 65 66 3
		f 4 4 5 6 -2
		mu 0 4 1 67 68 2
		f 4 7 8 9 -6
		mu 0 4 4 69 70 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 16
		mu 0 4 71 72 73 74
		f 4 17 -17 18 19
		mu 0 4 16 10 13 17
		f 4 20 21 22 23
		mu 0 4 75 18 19 76
		f 4 24 -24 25 -15
		mu 0 4 11 14 15 12
		f 4 -19 26 27 28
		mu 0 4 20 77 78 79
		f 4 -16 29 30 -27
		mu 0 4 21 80 81 82
		f 4 -31 31 32 33
		mu 0 4 83 84 85 86
		f 4 -28 -34 34 35
		mu 0 4 23 22 87 88
		f 4 -26 36 37 -30
		mu 0 4 24 89 90 91
		f 4 -23 38 39 -37
		mu 0 4 28 33 92 93
		f 4 -40 40 41 42
		mu 0 4 94 34 95 96
		f 4 -38 -43 43 -32
		mu 0 4 25 29 97 98
		f 4 -35 44 45 46
		mu 0 4 27 99 100 101
		f 4 -33 47 48 -45
		mu 0 4 26 102 103 104
		f 4 -49 49 -5 50
		mu 0 4 105 106 107 108
		f 4 -46 -51 -1 51
		mu 0 4 32 31 37 38
		f 4 -44 52 53 -48
		mu 0 4 30 109 110 111
		f 4 -42 54 55 -53
		mu 0 4 35 39 112 113
		f 4 -56 56 -11 57
		mu 0 4 114 42 44 115
		f 4 -54 -58 -8 -50
		mu 0 4 36 40 43 41
		f 4 -41 58 59 60
		mu 0 4 116 117 118 119
		f 4 -39 -22 61 -59
		mu 0 4 46 49 50 47
		f 4 -57 62 63 -12
		mu 0 4 53 120 121 54
		f 4 -55 -61 64 -63
		mu 0 4 51 45 48 52
		f 4 -29 65 66 -20
		mu 0 4 55 122 123 58
		f 4 -36 67 68 -66
		mu 0 4 56 124 125 57
		f 4 -47 69 70 -68
		mu 0 4 59 126 127 60
		f 4 -52 -4 71 -70
		mu 0 4 61 63 64 62
		f 4 72 73 74 75
		mu 0 4 269 270 271 272
		f 4 76 -76 77 78
		mu 0 4 132 128 273 274
		f 4 79 80 81 82
		mu 0 4 275 135 276 277
		f 4 83 -83 84 -74
		mu 0 4 129 134 278 279
		f 4 -78 85 86 87
		mu 0 4 133 280 281 282
		f 4 -75 88 89 -86
		mu 0 4 131 283 284 285
		f 4 -90 90 91 92
		mu 0 4 286 287 288 289
		f 4 -87 -93 93 94
		mu 0 4 139 138 290 291
		f 4 -85 95 96 -89
		mu 0 4 130 292 293 294
		f 4 -82 97 98 -96
		mu 0 4 137 136 295 296
		f 4 -99 99 100 101
		mu 0 4 297 145 298 299
		f 4 -97 -102 102 -91
		mu 0 4 140 144 300 301
		f 4 103 104 105 106
		mu 0 4 302 303 304 305
		f 4 107 108 109 -105
		mu 0 4 306 307 308 309
		f 4 -110 110 111 112
		mu 0 4 310 311 312 313
		f 4 -106 -113 113 114
		mu 0 4 314 150 315 316
		f 4 115 116 117 -109
		mu 0 4 317 318 319 320
		f 4 118 119 120 -117
		mu 0 4 321 322 323 324
		f 4 -121 121 122 123
		mu 0 4 325 326 327 328
		f 4 -118 -124 124 -111
		mu 0 4 153 158 329 330
		f 4 -114 125 126 127
		mu 0 4 331 332 333 334
		f 4 -112 128 129 -126
		mu 0 4 155 335 336 337
		f 4 -130 130 131 132
		mu 0 4 338 339 340 341
		f 4 -127 -133 133 134
		mu 0 4 342 163 343 344
		f 4 -125 135 136 -129
		mu 0 4 154 345 346 347
		f 4 -123 137 138 -136
		mu 0 4 162 348 349 350
		f 4 -139 139 140 141
		mu 0 4 351 352 353 354
		f 4 -137 -142 142 -131
		mu 0 4 165 169 355 356
		f 4 143 144 145 146
		mu 0 4 357 358 359 360
		f 4 147 148 149 -145
		mu 0 4 361 362 363 364
		f 4 -150 150 151 152
		mu 0 4 365 366 367 368
		f 4 -146 -153 153 154
		mu 0 4 176 175 369 370
		f 4 155 156 157 -149
		mu 0 4 371 372 373 374
		f 4 158 159 160 -157
		mu 0 4 375 376 377 378
		f 4 -161 161 162 163
		mu 0 4 379 185 380 381
		f 4 -158 -164 164 -151
		mu 0 4 178 183 382 383
		f 4 -154 165 166 167
		mu 0 4 181 384 385 189
		f 4 -152 168 169 -166
		mu 0 4 180 386 387 188
		f 4 -165 170 171 -169
		mu 0 4 179 388 389 190
		f 4 -163 172 173 -171
		mu 0 4 187 186 192 191
		f 4 174 -173 175 176
		mu 0 4 390 194 391 392
		f 4 177 -177 178 179
		mu 0 4 393 193 394 395
		f 4 180 -180 181 182
		mu 0 4 396 197 397 398
		f 4 183 -183 184 -81
		mu 0 4 201 199 399 400
		f 4 -179 185 186 187
		mu 0 4 401 402 403 404
		f 4 -176 -162 188 -186
		mu 0 4 196 195 405 406
		f 4 -189 -160 189 190
		mu 0 4 407 205 408 409
		f 4 -187 -191 191 192
		mu 0 4 410 203 411 412
		f 4 -185 193 194 -98
		mu 0 4 202 413 414 415
		f 4 -182 -188 195 -194
		mu 0 4 200 198 416 417
		f 4 -196 -193 196 197
		mu 0 4 418 204 419 420
		f 4 -195 -198 198 -100
		mu 0 4 210 209 421 422
		f 4 199 200 201 202
		mu 0 4 423 424 425 426
		f 4 203 -203 204 -168
		mu 0 4 217 213 427 428
		f 4 205 -79 206 207
		mu 0 4 429 220 430 431
		f 4 208 -208 209 -201
		mu 0 4 214 219 432 433
		f 4 -205 210 211 -155
		mu 0 4 218 434 435 436
		f 4 -202 212 213 -211
		mu 0 4 216 437 438 439
		f 4 -214 214 215 216
		mu 0 4 440 441 442 443
		f 4 -212 -217 217 -147
		mu 0 4 224 223 444 445
		f 4 -210 218 219 -213
		mu 0 4 215 446 447 448
		f 4 -207 -88 220 -219
		mu 0 4 222 221 449 450
		f 4 -221 -95 221 222
		mu 0 4 451 230 452 453
		f 4 -220 -223 223 -215
		mu 0 4 225 229 454 455
		f 4 -94 224 225 226
		mu 0 4 143 456 457 234
		f 4 -92 227 228 -225
		mu 0 4 142 458 459 233
		f 4 -229 229 -108 230
		mu 0 4 460 461 462 463
		f 4 -226 -231 -104 231
		mu 0 4 464 236 149 465
		f 4 -224 232 233 234
		mu 0 4 466 467 468 469
		f 4 -222 -227 235 -233
		mu 0 4 232 231 241 239
		f 4 -236 -232 -107 236
		mu 0 4 470 238 148 471
		f 4 -234 -237 -115 237
		mu 0 4 472 242 151 473
		f 4 -103 238 239 -228
		mu 0 4 141 474 475 235
		f 4 -101 240 241 -239
		mu 0 4 147 146 245 244
		f 4 -242 242 -119 243
		mu 0 4 476 477 478 479
		f 4 -240 -244 -116 -230
		mu 0 4 237 246 157 152
		f 4 -199 244 245 -241
		mu 0 4 212 480 481 249
		f 4 -197 246 247 -245
		mu 0 4 211 482 483 248
		f 4 -248 248 -122 249
		mu 0 4 484 485 486 487
		f 4 -246 -250 -120 -243
		mu 0 4 247 251 160 159
		f 4 -148 250 251 252
		mu 0 4 488 489 490 491
		f 4 -144 253 254 -251
		mu 0 4 174 173 255 253
		f 4 -255 255 -134 256
		mu 0 4 492 493 494 495
		f 4 -252 -257 -132 257
		mu 0 4 496 256 167 497
		f 4 -218 258 259 -254
		mu 0 4 228 498 499 260
		f 4 -216 -235 260 -259
		mu 0 4 227 226 240 259
		f 4 -261 -238 -128 261
		mu 0 4 500 243 156 501
		f 4 -260 -262 -135 -256
		mu 0 4 257 261 164 168
		f 4 -192 262 263 -247
		mu 0 4 208 502 503 250
		f 4 -190 264 265 -263
		mu 0 4 207 206 263 262
		f 4 -266 266 -140 267
		mu 0 4 504 505 506 507
		f 4 -264 -268 -138 -249
		mu 0 4 252 264 170 161
		f 4 -159 268 269 -265
		mu 0 4 184 508 509 267
		f 4 -156 -253 270 -269
		mu 0 4 182 177 254 266
		f 4 -271 -258 -143 271
		mu 0 4 510 258 166 511
		f 4 -270 -272 -141 -267
		mu 0 4 265 268 172 171;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface18";
	setAttr ".t" -type "double3" 0.85977300488036912 0.68853362395118267 -3.6094122902868615 ;
	setAttr ".r" -type "double3" 0 108.47963193281559 0 ;
	setAttr ".s" -type "double3" 0.45411853506603828 0.45411853506603828 0.45411853506603828 ;
	setAttr ".rp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
	setAttr ".sp" -type "double3" -2.2333820858777207 0.11584148143734746 2.6494293295766127 ;
createNode mesh -n "polySurfaceShape18" -p "polySurface18";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:31]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[32:127]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "vtx[0:145]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[0:127]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 512 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0 0 0 1 0 1 0 0 0 1 0 0
		 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 1 1 0 1 1 0 1 0 0 1 1 0 1 1 1 1 1 0 0 0 0 1
		 1 1 1 0 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 1 0 1 1 1 0 1
		 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1
		 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1
		 0 1 1 0 1 1 1 0 1 0 0 0 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1 1
		 0 1 1 0 1 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 1 0 1 1 0 1 1
		 0 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 1 0 1 0 1 0
		 1 1 1 1 0 1 0 1 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0
		 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 1 0 0
		 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 1 1 1 0 1 0 0 1 1 1 1 0 0 0 0 1 0 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 1 0 0 0 0 1 1 1 1 1 1 0 0 0 1 0 0 1 0
		 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0
		 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 1 0 1 1 1 0
		 1 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1 0 1 1
		 0 1 1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 1
		 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 1
		 0 1 1 0 1 1 0 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 1 0 0 0
		 1 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 1 0 1 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0 1 1 0 1 1;
	setAttr ".uvst[0].uvsp[500:511]" 0 0 0 1 1 0 1 1 0 0 1 0 1 1 0 1 1 0 1 1 0
		 0 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 146 ".vt[0:145]"  -2.48131704 0.178654 2.75388694 -2.30557203 0.18639299 2.56610608
		 -2.11397791 0.178654 2.394526 -2.35452199 0.178654 2.88349605 -2.16292906 0.18639299 2.71191597
		 -1.98718405 0.178654 2.52413511 -2.44087791 0.18639299 2.841151 -2.23425007 0.196343 2.63901091
		 -2.027621984 0.18639299 2.4368701 -2.18749905 0.18639299 2.45059705 -2.28100204 0.18639299 2.827425
		 -2.044855118 0.18639299 2.59640694 -2.40012288 0.18639299 2.88281107 -2.19349504 0.196343 2.68067098
		 -2.35232306 0.196343 2.75451994 -1.98686695 0.18639299 2.47852993 -2.11617708 0.196343 2.52350211
		 -2.48163295 0.18639299 2.79949093 -2.2750051 0.196343 2.59735107 -2.068377018 0.18639299 2.39521003
		 -2.42364502 0.18639299 2.68161511 -2.31156802 0.196343 2.79618001 -2.075422049 0.196343 2.56516194
		 -2.39307809 0.196343 2.71286011 -2.15693212 0.196343 2.48184204 -2.43383408 0.156543 2.67120004
		 -2.51220012 0.156543 2.76824594 -2.31576109 0.156543 2.555691 -2.1976881 0.156543 2.44018197
		 -2.098943949 0.156543 2.36396503 -2.27081299 0.156543 2.83784008 -2.15274 0.156543 2.72233105
		 -2.3695569 0.156543 2.91405606 -2.034667015 0.156543 2.60682201 -1.95630002 0.156543 2.50977492
		 -1.95734894 0.156543 2.44965291 -1.99810398 0.156543 2.40799308 -2.038858891 0.156543 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.47039604 0.156543 2.87002802 -2.51115203 0.156543 2.82836795
		 -2.51220012 0.116743 2.76824594 -2.31576109 0.116743 2.555691 -2.098943949 0.116743 2.36396503
		 -2.51220012 0.046128999 2.76824594 -2.31576109 0.046128999 2.555691 -2.098943949 0.046128999 2.36396503
		 -2.47039604 0.046128999 2.87002802 -1.99810398 0.046128999 2.40799308 -2.36955595 0.046128999 2.91405606
		 -2.15274 0.046128999 2.72233105 -1.95630002 0.046128999 2.50977492 -2.36955595 0.116743 2.91405606
		 -2.15274 0.116743 2.72233105 -1.95630002 0.116743 2.50977492 -1.99810398 0.116743 2.40799308
		 -2.47039604 0.116743 2.87002802 -2.48131704 0.031148 2.75388694 -2.30557203 0.030399 2.56610608
		 -2.23425007 0.029436 2.63901091 -2.44087791 0.030399 2.841151 -2.11397791 0.031148 2.394526
		 -2.027621984 0.030399 2.4368701 -2.16292906 0.030399 2.71191597 -2.35452199 0.031148 2.88349605
		 -1.98718405 0.031148 2.52413511 -2.31576109 0.156543 2.555691 -2.43383408 0.116743 2.67120004
		 -2.098943949 0.156543 2.36396503 -2.1976881 0.116743 2.44018197 -2.51220012 0.076943003 2.76824594
		 -2.31576109 0.076943003 2.555691 -2.43383408 0.046128999 2.67120004 -2.098943949 0.076943003 2.36396503
		 -2.1976881 0.046128999 2.44018197 -2.42364502 0.030399 2.68161511 -2.48163295 0.030399 2.79949093
		 -2.2750051 0.029436 2.59735107 -2.35232306 0.029436 2.75451994 -2.18749905 0.030399 2.45059705
		 -2.068377018 0.030399 2.39521003 -2.11617708 0.029436 2.52350211 -2.40012288 0.030399 2.88281107
		 -2.19349504 0.029436 2.68067098 -2.28100204 0.030399 2.827425 -1.98686695 0.030399 2.47852993
		 -2.044855118 0.030399 2.59640694 -2.27081299 0.046128999 2.83784008 -2.3695569 0.076943003 2.91405606
		 -2.15274 0.076943003 2.72233105 -2.27081299 0.116743 2.83784008 -2.034667015 0.046128999 2.60682201
		 -1.95630002 0.076943003 2.50977492 -2.034667015 0.116743 2.60682201 -2.3695569 0.156543 2.91405606
		 -2.15274 0.156543 2.72233105 -1.95630002 0.156543 2.50977492 -1.99810398 0.156543 2.40799308
		 -1.95734894 0.116743 2.44965291 -2.038858891 0.116743 2.36633301 -1.99810398 0.076943003 2.40799308
		 -1.95734894 0.046128999 2.44965291 -2.038858891 0.046128999 2.36633301 -2.47039604 0.156543 2.87002802
		 -2.42964101 0.116743 2.91168809 -2.51115203 0.116743 2.82836795 -2.47039604 0.076943003 2.87002802
		 -2.42964101 0.046128999 2.91168809 -2.51115203 0.046128999 2.82836795 -2.51220012 0.033289 2.76824594
		 -2.31576109 0.033289 2.555691 -2.47039604 0.033289 2.87002802 -2.098943949 0.033289 2.36396503
		 -1.99810398 0.033289 2.40799308 -2.15274 0.033289 2.72233105 -2.3695569 0.033289 2.91405606
		 -1.95630002 0.033289 2.50977492 -2.51220012 0.156543 2.76824594 -2.43383408 0.156543 2.67120004
		 -2.1976881 0.156543 2.44018197 -2.43383408 0.076943003 2.67120004 -2.1976881 0.076943003 2.44018197
		 -2.39307809 0.029436 2.71286011 -2.15693212 0.029436 2.48184204 -2.31156802 0.029436 2.79618001
		 -2.075422049 0.029436 2.56516194 -2.27081299 0.076943003 2.83784008 -2.034667015 0.076943003 2.60682201
		 -2.27081299 0.156543 2.83784008 -2.034667015 0.156543 2.60682201 -1.95734894 0.156543 2.44965291
		 -2.038858891 0.156543 2.36633301 -1.95734894 0.076943003 2.44965291 -2.038858891 0.076943003 2.36633301
		 -2.42964101 0.156543 2.91168809 -2.51115203 0.156543 2.82836795 -2.42964101 0.076943003 2.91168809
		 -2.51115203 0.076943003 2.82836795 -2.43383408 0.033289 2.67120004 -2.51115203 0.033289 2.82836795
		 -2.1976881 0.033289 2.44018197 -2.038858891 0.033289 2.36633301 -2.27081299 0.033289 2.83784008
		 -2.42964101 0.033289 2.91168809 -1.95734894 0.033289 2.44965291 -2.034667015 0.033289 2.60682201;
	setAttr -s 272 ".ed";
	setAttr ".ed[0:165]"  0 20 0 20 25 0 25 26 0 26 0 0 20 1 0 1 27 0 27 25 0
		 1 9 0 9 28 0 28 27 0 9 2 0 2 29 0 29 28 0 30 31 0 31 4 0 4 10 0 10 30 0 32 30 0 10 3 0
		 3 32 0 33 34 0 34 5 0 5 11 0 11 33 0 31 33 0 11 4 0 10 21 0 21 12 0 12 3 0 4 13 0
		 13 21 0 13 7 0 7 14 0 14 21 0 14 6 0 6 12 0 11 22 0 22 13 0 5 15 0 15 22 0 15 8 0
		 8 16 0 16 22 0 16 7 0 14 23 0 23 17 0 17 6 0 7 18 0 18 23 0 18 1 0 20 23 0 0 17 0
		 16 24 0 24 18 0 8 19 0 19 24 0 19 2 0 9 24 0 15 35 0 35 36 0 36 8 0 34 35 0 19 37 0
		 37 29 0 36 37 0 12 38 0 38 32 0 6 39 0 39 38 0 17 40 0 40 39 0 26 40 0 118 66 0 66 42 0
		 42 67 0 67 118 0 117 118 0 67 41 0 41 117 0 119 68 0 68 43 0 43 69 0 69 119 0 66 119 0
		 69 42 0 67 120 0 120 70 0 70 41 0 42 71 0 71 120 0 71 45 0 45 72 0 72 120 0 72 44 0
		 44 70 0 69 121 0 121 71 0 43 73 0 73 121 0 73 46 0 46 74 0 74 121 0 74 45 0 57 75 0
		 75 122 0 122 76 0 76 57 0 75 58 0 58 77 0 77 122 0 77 59 0 59 78 0 78 122 0 78 60 0
		 60 76 0 58 79 0 79 123 0 123 77 0 79 61 0 61 80 0 80 123 0 80 62 0 62 81 0 81 123 0
		 81 59 0 78 124 0 124 82 0 82 60 0 59 83 0 83 124 0 83 63 0 63 84 0 84 124 0 84 64 0
		 64 82 0 81 125 0 125 83 0 62 85 0 85 125 0 85 65 0 65 86 0 86 125 0 86 63 0 49 87 0
		 87 126 0 126 88 0 88 49 0 87 50 0 50 89 0 89 126 0 89 53 0 53 90 0 90 126 0 90 52 0
		 52 88 0 50 91 0 91 127 0 127 89 0 91 51 0 51 92 0 92 127 0 92 54 0 54 93 0 93 127 0
		 93 53 0 90 128 0;
	setAttr ".ed[166:271]" 128 94 0 94 52 0 53 95 0 95 128 0 93 129 0 129 95 0
		 54 96 0 96 129 0 130 96 0 54 98 0 98 130 0 97 130 0 98 55 0 55 97 0 131 97 0 55 99 0
		 99 131 0 68 131 0 99 43 0 98 132 0 132 100 0 100 55 0 92 132 0 51 101 0 101 132 0
		 101 48 0 48 100 0 99 133 0 133 73 0 100 133 0 48 102 0 102 133 0 102 46 0 134 103 0
		 103 56 0 56 104 0 104 134 0 94 134 0 104 52 0 135 117 0 41 105 0 105 135 0 103 135 0
		 105 56 0 104 136 0 136 88 0 56 106 0 106 136 0 106 47 0 47 107 0 107 136 0 107 49 0
		 105 137 0 137 106 0 70 137 0 44 108 0 108 137 0 108 47 0 72 138 0 138 109 0 109 44 0
		 45 110 0 110 138 0 110 58 0 75 138 0 57 109 0 108 139 0 139 111 0 111 47 0 109 139 0
		 76 139 0 60 111 0 74 140 0 140 110 0 46 112 0 112 140 0 112 61 0 79 140 0 102 141 0
		 141 112 0 48 113 0 113 141 0 113 62 0 80 141 0 87 142 0 142 114 0 114 50 0 49 115 0
		 115 142 0 115 64 0 84 142 0 63 114 0 107 143 0 143 115 0 111 143 0 82 143 0 101 144 0
		 144 113 0 51 116 0 116 144 0 116 65 0 85 144 0 91 145 0 145 116 0 114 145 0 86 145 0;
	setAttr -s 512 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.52629298 0.809928 -0.25890601 -0.42148501
		 0.82520002 -0.376026 -0.65006101 0.461981 -0.60332 -0.70441198 0.619452 -0.34652999
		 -0.42148501 0.82520002 -0.376026 -0.39437401 0.82580698 -0.40312901 -0.62843603 0.438642
		 -0.64238697 -0.65006101 0.461981 -0.60332 -0.39437401 0.82580698 -0.40312901 -0.36668199
		 0.82520002 -0.42963901 -0.58890301 0.461981 -0.663149 -0.62843603 0.438642 -0.64238697
		 -0.36668199 0.82520002 -0.42963901 -0.247289 0.809928 -0.53184998 -0.33098099 0.61945099
		 -0.711851 -0.58890301 0.461981 -0.663149 0.58890301 0.461981 0.663149 0.62843603
		 0.438642 0.64238697 0.39437401 0.82580698 0.40312901 0.36668199 0.82520002 0.42963901
		 0.33098099 0.619452 0.71184999 0.58890301 0.461981 0.663149 0.36668199 0.82520002
		 0.42963901 0.247289 0.809928 0.53184998 0.65006101 0.461981 0.60332 0.70441198 0.619452
		 0.34652901 0.52629298 0.809928 0.25890601 0.42148501 0.82520002 0.376026 0.62843603
		 0.438642 0.64238697 0.65006101 0.461981 0.60332 0.42148501 0.82520002 0.376026 0.39437401
		 0.82580698 0.40312901 0.247289 0.809928 0.53184998 0.36668199 0.82520002 0.42963901
		 0.042675 0.99486399 0.091783002 -0.077308998 0.96430999 0.25323999 0.36668199 0.82520002
		 0.42963901 0.39437401 0.82580698 0.40312901 0.067901 0.99527502 0.069408 0.042675
		 0.99486399 0.091783002 0.042675 0.99486399 0.091783002 0.067901 0.99527502 0.069408
		 0 1 0 -0.024591001 0.99940801 0.024057001 -0.077308998 0.96430999 0.25323999 0.042675
		 0.99486399 0.091783002 -0.024591001 0.99940801 0.024057001 -0.167448 0.97217703 0.163811
		 0.39437401 0.82580698 0.40312901 0.42148501 0.82520002 0.376026 0.090824001 0.99486399
		 0.044679999 0.067901 0.99527502 0.069408 0.42148501 0.82520002 0.376026 0.52629298
		 0.809928 0.25890601 0.25487599 0.96430999 -0.071731001 0.090824001 0.99486399 0.044679999
		 0.090824001 0.99486399 0.044679999 0.25487599 0.96430999 -0.071731001 0.167448 0.97217703
		 -0.163811 0.024591001 0.99940801 -0.024057001 0.067901 0.99527502 0.069408 0.090824001
		 0.99486399 0.044679999 0.024591001 0.99940801 -0.024057001 0 1 0 -0.167448 0.97217703
		 0.163811 -0.024591001 0.99940801 0.024057001 -0.090824001 0.99486399 -0.044679999
		 -0.25487599 0.96430999 0.071731001 -0.024591001 0.99940801 0.024057001 0 1 0 -0.067901
		 0.99527502 -0.069408 -0.090824001 0.99486399 -0.044679999 -0.090824001 0.99486399
		 -0.044679999 -0.067901 0.99527502 -0.069408 -0.39437401 0.82580698 -0.40312901 -0.42148501
		 0.82520002 -0.376026 -0.25487599 0.96430999 0.071731001 -0.090824001 0.99486399 -0.044679999
		 -0.42148501 0.82520002 -0.376026 -0.52629298 0.809928 -0.25890601 0 1 0 0.024591001
		 0.99940801 -0.024057001 -0.042675 0.99486399 -0.091783002 -0.067901 0.99527502 -0.069408
		 0.024591001 0.99940801 -0.024057001 0.167448 0.97217703 -0.163811 0.077308998 0.96430898
		 -0.25323999 -0.042675 0.99486399 -0.091783002 -0.042675 0.99486399 -0.091783002 0.077308998
		 0.96430898 -0.25323999 -0.247289 0.809928 -0.53184998 -0.36668199 0.82520002 -0.42963901
		 -0.067901 0.99527502 -0.069408 -0.042675 0.99486399 -0.091783002 -0.36668199 0.82520002
		 -0.42963901 -0.39437401 0.82580698 -0.40312901 0.167448 0.97217703 -0.163811 0.25487599
		 0.96430999 -0.071731001 0.53995699 0.809349 -0.231087 0.41876701 0.81043297 -0.40967301
		 0.25487599 0.96430999 -0.071731001 0.52629298 0.809928 0.25890601 0.70441198 0.619452
		 0.34652901 0.53995699 0.809349 -0.231087 -0.247289 0.809928 -0.53184998 0.077308998
		 0.96430898 -0.25323999 0.24288499 0.809349 -0.53475398 -0.33098099 0.61945099 -0.711851
		 0.077308998 0.96430898 -0.25323999 0.167448 0.97217703 -0.163811 0.41876701 0.81043297
		 -0.40967301 0.24288499 0.809349 -0.53475398 0.247289 0.809928 0.53184998 -0.077308998
		 0.96430999 0.25323999 -0.24288601 0.809349 0.53475302 0.33098099 0.619452 0.71184999
		 -0.077308998 0.96430999 0.25323999 -0.167448 0.97217703 0.163811 -0.41876701 0.81043398
		 0.40967199 -0.24288601 0.809349 0.53475302 -0.167448 0.97217703 0.163811 -0.25487599
		 0.96430999 0.071731001 -0.53995597 0.809349 0.231087 -0.41876701 0.81043398 0.40967199
		 -0.25487599 0.96430999 0.071731001 -0.52629298 0.809928 -0.25890601 -0.70441198 0.619452
		 -0.34652999 -0.53995597 0.809349 0.231087 -0.73439997 0 -0.67871702 -0.69930202 0
		 -0.714827 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 -1e-006 -0.44141999
		 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775 -0.66242999 0 -0.74912399
		 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202
		 0 -0.714827 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702
		 -0.89730102 0 -0.44141999 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.69930202
		 0 -0.714827 -0.73439997 0 -0.67871702 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827
		 -0.69930202 0 -0.714827 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.73439997 0 -0.67871702 -0.89730102 0 -0.44141999 -0.69930202 0 -0.714827
		 -0.66242999 0 -0.74912399 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775;
	setAttr ".n[166:331]" -type "float3"  -0.42161399 0 -0.906775 -0.66242999 0
		 -0.74912399 -0.66242999 0 -0.74912399 -0.42161399 0 -0.906775 -0.42161399 0 -0.906775
		 -0.66242999 0 -0.74912399 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399 -0.66242999
		 0 -0.74912399 -0.69930202 0 -0.714827 -0.060573999 -0.99771899 -0.029798999 -0.052843001
		 -0.99750501 -0.046805002 -0.008986 -0.99994999 -0.0044200001 -0.02781 -0.999587 0.0071720001
		 -0.052843001 -0.99750501 -0.046805002 -0.046137001 -0.99782097 -0.047161002 -0.0066049998
		 -0.999955 -0.0067520002 -0.008986 -0.99994999 -0.0044200001 -0.008986 -0.99994999
		 -0.0044200001 -0.0066049998 -0.999955 -0.0067520002 0 -1 0 -0.002382 -0.99999398
		 0.0023310001 -0.02781 -0.999587 0.0071720001 -0.008986 -0.99994999 -0.0044200001
		 -0.002382 -0.99999398 0.0023310001 -0.016672 -0.99972802 0.016310001 -0.046137001
		 -0.99782097 -0.047161002 -0.045634001 -0.99750501 -0.053858001 -0.004222 -0.99994999
		 -0.0090810005 -0.0066049998 -0.999955 -0.0067520002 -0.045634001 -0.99750501 -0.053858001
		 -0.028462 -0.99771899 -0.061213002 0.0077809999 -0.999587 -0.027646 -0.004222 -0.99994999
		 -0.0090810005 -0.004222 -0.99994999 -0.0090810005 0.0077809999 -0.999587 -0.027646
		 0.016672 -0.99972802 -0.016310001 0.002382 -0.99999398 -0.0023310001 -0.0066049998
		 -0.999955 -0.0067520002 -0.004222 -0.99994999 -0.0090810005 0.002382 -0.99999398
		 -0.0023310001 0 -1 0 -0.016672 -0.99972802 0.016310001 -0.002382 -0.99999398 0.0023310001
		 0.004222 -0.99994999 0.0090810005 -0.0077809999 -0.999587 0.027646 -0.002382 -0.99999398
		 0.0023310001 0 -1 0 0.0066049998 -0.999955 0.0067520002 0.004222 -0.99994999 0.0090810005
		 0.004222 -0.99994999 0.0090810005 0.0066049998 -0.999955 0.0067520002 0.046137001
		 -0.99782097 0.047161002 0.045634001 -0.99750501 0.053856999 -0.0077809999 -0.999587
		 0.027646 0.004222 -0.99994999 0.0090810005 0.045634001 -0.99750501 0.053856999 0.028462
		 -0.99771899 0.061213002 0 -1 0 0.002382 -0.99999398 -0.0023310001 0.008986 -0.99994999
		 0.0044209999 0.0066049998 -0.999955 0.0067520002 0.002382 -0.99999398 -0.0023310001
		 0.016672 -0.99972802 -0.016310001 0.02781 -0.99958801 -0.0071720001 0.008986 -0.99994999
		 0.0044209999 0.008986 -0.99994999 0.0044209999 0.02781 -0.99958801 -0.0071720001
		 0.060573999 -0.99771899 0.029798999 0.052843001 -0.99750501 0.046805002 0.0066049998
		 -0.999955 0.0067520002 0.008986 -0.99994999 0.0044209999 0.052843001 -0.99750501
		 0.046805002 0.046137001 -0.99782097 0.047161002 0.42161399 0 0.906775 0.66242999
		 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.90677601 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.66242999 0
		 0.74912399 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.42161399
		 0 0.90677601 0.66242999 0 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775
		 0.69930202 0 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202
		 0 0.714827 0.73439997 0 0.67871702 0.89730102 0 0.44141901 0.89730102 0 0.44141999
		 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.89730102 0 0.44141999 0.89730102
		 0 0.44141999 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997 0 0.67871702
		 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.42161399 0 0.906775 0.66242999 0
		 0.74912399 0.66242999 0 0.74912399 0.42161399 0 0.906775 0.66242999 0 0.74912399
		 0.69930202 0 0.714827 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.69930202 0
		 0.714827 0.73439997 0 0.67871702 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.73439997
		 0 0.67871702 0.89730102 0 0.44141999 0.89730102 0 0.44141901 0.73439997 0 0.67871702
		 0.92501998 0 -0.37991899 0.89730102 0 0.44141901 0.89730102 0 0.44141999 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899
		 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457
		 -0.42161399 0 -0.906775 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.92501998
		 0 -0.37991899 0.714827 0 -0.69930202 0.92501998 0 -0.37991899 0.89730102 0 0.44141999
		 0.89730102 0 0.44141999 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.89730102
		 0 0.44141999 0.89730102 0 0.44141901 0.92501998 0 -0.37991899 0.714827 0 -0.69930202
		 0.92501998 0 -0.37991899 0.92501998 0 -0.37991899 0.714827 0 -0.69930202 -0.42161399
		 0 -0.906775 0.400134 0 -0.916457 0.400134 0 -0.916457 -0.42161399 0 -0.906775 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457 0.400134
		 0 -0.916457 0.714827 0 -0.69930202 0.714827 0 -0.69930202 0.400134 0 -0.916457;
	setAttr ".n[332:497]" -type "float3"  -0.42161399 0 -0.906775 0.400134 0 -0.916457
		 0.400134 0 -0.916457 -0.42161399 0 -0.906775 -0.40013501 -1e-006 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.40013501 -1e-006 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775 -0.92501998
		 -1e-006 0.37991801 -0.89730102 -1e-006 -0.44141999 -0.89730102 0 -0.44141999 -0.92501998
		 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 -1e-006 0.37991801 -0.92501998 0
		 0.37991801 -0.714827 0 0.69930202 0.42161399 0 0.906775 -0.40013501 0 0.91645598
		 -0.40013501 0 0.91645598 0.42161399 0 0.90677601 -0.40013501 0 0.91645598 -0.714827
		 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598
		 -0.714827 0 0.69930202 -0.714827 0 0.69930202 -0.40013501 0 0.91645598 0.42161399
		 0 0.90677601 -0.40013501 0 0.91645598 -0.40013501 0 0.91645598 0.42161399 0 0.906775
		 -0.714827 0 0.69930202 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.714827
		 0 0.69930202 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102 0 -0.44141999
		 -0.92501998 0 0.37991801 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.89730102
		 0 -0.44141999 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.92501998 0 0.37991801
		 -0.92501998 0 0.37991801 -0.714827 0 0.69930202 -0.89730102 0 -0.44141999 -0.73439997
		 0 -0.67871702 -0.56217402 -0.642546 -0.52066702 -0.66634798 -0.66971999 -0.327804
		 -0.73439997 0 -0.67871702 -0.69930202 0 -0.714827 -0.51303899 -0.679533 -0.52442902
		 -0.56217402 -0.642546 -0.52066702 -0.56217402 -0.642546 -0.52066702 -0.51303899 -0.679533
		 -0.52442902 -0.046137001 -0.99782097 -0.047161002 -0.052843001 -0.99750501 -0.046805002
		 -0.66634798 -0.66971999 -0.327804 -0.56217402 -0.642546 -0.52066702 -0.052843001
		 -0.99750501 -0.046805002 -0.060573999 -0.99771899 -0.029798999 -0.714827 0 0.69930202
		 -0.92501998 0 0.37991801 -0.37985 -0.91122502 0.159319 -0.25446099 -0.93449497 0.248934
		 -0.92501998 0 0.37991801 -0.89730102 0 -0.44141999 -0.66634798 -0.66971999 -0.327804
		 -0.37985 -0.91122502 0.159319 -0.37985 -0.91122502 0.159319 -0.66634798 -0.66971999
		 -0.327804 -0.060573999 -0.99771899 -0.029798999 -0.02781 -0.999587 0.0071720001 -0.25446099
		 -0.93449497 0.248934 -0.37985 -0.91122502 0.159319 -0.02781 -0.999587 0.0071720001
		 -0.016672 -0.99972802 0.016310001 -0.69930202 0 -0.714827 -0.66242999 0 -0.74912399
		 -0.50819898 -0.64254802 -0.57346898 -0.51303899 -0.679533 -0.52442902 -0.66242999
		 0 -0.74912399 -0.42161399 0 -0.906775 -0.31309599 -0.66972101 -0.673383 -0.50819898
		 -0.64254802 -0.57346898 -0.50819898 -0.64254802 -0.57346898 -0.31309599 -0.66972101
		 -0.673383 -0.028462 -0.99771899 -0.061213002 -0.045634001 -0.99750501 -0.053858001
		 -0.51303899 -0.679533 -0.52442902 -0.50819898 -0.64254802 -0.57346898 -0.045634001
		 -0.99750501 -0.053858001 -0.046137001 -0.99782097 -0.047161002 -0.42161399 0 -0.906775
		 0.400134 0 -0.916457 0.16762 -0.91122502 -0.376261 -0.31309599 -0.66972101 -0.673383
		 0.400134 0 -0.916457 0.714827 0 -0.69930202 0.25446099 -0.93449497 -0.248935 0.16762
		 -0.91122502 -0.376261 0.16762 -0.91122502 -0.376261 0.25446099 -0.93449497 -0.248935
		 0.016672 -0.99972802 -0.016310001 0.0077809999 -0.999587 -0.027646 -0.31309599 -0.66972101
		 -0.673383 0.16762 -0.91122502 -0.376261 0.0077809999 -0.999587 -0.027646 -0.028462
		 -0.99771899 -0.061213002 0.69930202 0 0.714827 0.66242999 0 0.74912399 0.50819999
		 -0.642546 0.57347 0.51303899 -0.679533 0.52442902 0.66242999 0 0.74912399 0.42161399
		 0 0.906775 0.31309599 -0.66971999 0.67338401 0.50819999 -0.642546 0.57347 0.50819999
		 -0.642546 0.57347 0.31309599 -0.66971999 0.67338401 0.028462 -0.99771899 0.061213002
		 0.045634001 -0.99750501 0.053856999 0.51303899 -0.679533 0.52442902 0.50819999 -0.642546
		 0.57347 0.045634001 -0.99750501 0.053856999 0.046137001 -0.99782097 0.047161002 0.42161399
		 0 0.906775 -0.40013501 0 0.91645598 -0.16762 -0.91122502 0.376261 0.31309599 -0.66971999
		 0.67338401 -0.40013501 0 0.91645598 -0.714827 0 0.69930202 -0.25446099 -0.93449497
		 0.248934 -0.16762 -0.91122502 0.376261 -0.16762 -0.91122502 0.376261 -0.25446099
		 -0.93449497 0.248934 -0.016672 -0.99972802 0.016310001 -0.0077809999 -0.999587 0.027646
		 0.31309599 -0.66971999 0.67338401 -0.16762 -0.91122502 0.376261 -0.0077809999 -0.999587
		 0.027646 0.028462 -0.99771899 0.061213002 0.714827 0 -0.69930202 0.92501998 0 -0.37991899
		 0.37985 -0.91122502 -0.15932 0.25446099 -0.93449497 -0.248935 0.92501998 0 -0.37991899
		 0.89730102 0 0.44141901 0.66634798 -0.66971999 0.327804 0.37985 -0.91122502 -0.15932
		 0.37985 -0.91122502 -0.15932 0.66634798 -0.66971999 0.327804 0.060573999 -0.99771899
		 0.029798999 0.02781 -0.99958801 -0.0071720001 0.25446099 -0.93449497 -0.248935 0.37985
		 -0.91122502 -0.15932 0.02781 -0.99958801 -0.0071720001 0.016672 -0.99972802 -0.016310001
		 0.89730102 0 0.44141901 0.73439997 0 0.67871702;
	setAttr ".n[498:511]" -type "float3"  0.56217402 -0.642546 0.52066702 0.66634798
		 -0.66971999 0.327804 0.73439997 0 0.67871702 0.69930202 0 0.714827 0.51303899 -0.679533
		 0.52442902 0.56217402 -0.642546 0.52066702 0.56217402 -0.642546 0.52066702 0.51303899
		 -0.679533 0.52442902 0.046137001 -0.99782097 0.047161002 0.052843001 -0.99750501
		 0.046805002 0.66634798 -0.66971999 0.327804 0.56217402 -0.642546 0.52066702 0.052843001
		 -0.99750501 0.046805002 0.060573999 -0.99771899 0.029798999;
	setAttr -s 128 -ch 512 ".fc[0:127]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 65 66 3
		f 4 4 5 6 -2
		mu 0 4 1 67 68 2
		f 4 7 8 9 -6
		mu 0 4 4 69 70 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 16
		mu 0 4 71 72 73 74
		f 4 17 -17 18 19
		mu 0 4 16 10 13 17
		f 4 20 21 22 23
		mu 0 4 75 18 19 76
		f 4 24 -24 25 -15
		mu 0 4 11 14 15 12
		f 4 -19 26 27 28
		mu 0 4 20 77 78 79
		f 4 -16 29 30 -27
		mu 0 4 21 80 81 82
		f 4 -31 31 32 33
		mu 0 4 83 84 85 86
		f 4 -28 -34 34 35
		mu 0 4 23 22 87 88
		f 4 -26 36 37 -30
		mu 0 4 24 89 90 91
		f 4 -23 38 39 -37
		mu 0 4 28 33 92 93
		f 4 -40 40 41 42
		mu 0 4 94 34 95 96
		f 4 -38 -43 43 -32
		mu 0 4 25 29 97 98
		f 4 -35 44 45 46
		mu 0 4 27 99 100 101
		f 4 -33 47 48 -45
		mu 0 4 26 102 103 104
		f 4 -49 49 -5 50
		mu 0 4 105 106 107 108
		f 4 -46 -51 -1 51
		mu 0 4 32 31 37 38
		f 4 -44 52 53 -48
		mu 0 4 30 109 110 111
		f 4 -42 54 55 -53
		mu 0 4 35 39 112 113
		f 4 -56 56 -11 57
		mu 0 4 114 42 44 115
		f 4 -54 -58 -8 -50
		mu 0 4 36 40 43 41
		f 4 -41 58 59 60
		mu 0 4 116 117 118 119
		f 4 -39 -22 61 -59
		mu 0 4 46 49 50 47
		f 4 -57 62 63 -12
		mu 0 4 53 120 121 54
		f 4 -55 -61 64 -63
		mu 0 4 51 45 48 52
		f 4 -29 65 66 -20
		mu 0 4 55 122 123 58
		f 4 -36 67 68 -66
		mu 0 4 56 124 125 57
		f 4 -47 69 70 -68
		mu 0 4 59 126 127 60
		f 4 -52 -4 71 -70
		mu 0 4 61 63 64 62
		f 4 72 73 74 75
		mu 0 4 269 270 271 272
		f 4 76 -76 77 78
		mu 0 4 132 128 273 274
		f 4 79 80 81 82
		mu 0 4 275 135 276 277
		f 4 83 -83 84 -74
		mu 0 4 129 134 278 279
		f 4 -78 85 86 87
		mu 0 4 133 280 281 282
		f 4 -75 88 89 -86
		mu 0 4 131 283 284 285
		f 4 -90 90 91 92
		mu 0 4 286 287 288 289
		f 4 -87 -93 93 94
		mu 0 4 139 138 290 291
		f 4 -85 95 96 -89
		mu 0 4 130 292 293 294
		f 4 -82 97 98 -96
		mu 0 4 137 136 295 296
		f 4 -99 99 100 101
		mu 0 4 297 145 298 299
		f 4 -97 -102 102 -91
		mu 0 4 140 144 300 301
		f 4 103 104 105 106
		mu 0 4 302 303 304 305
		f 4 107 108 109 -105
		mu 0 4 306 307 308 309
		f 4 -110 110 111 112
		mu 0 4 310 311 312 313
		f 4 -106 -113 113 114
		mu 0 4 314 150 315 316
		f 4 115 116 117 -109
		mu 0 4 317 318 319 320
		f 4 118 119 120 -117
		mu 0 4 321 322 323 324
		f 4 -121 121 122 123
		mu 0 4 325 326 327 328
		f 4 -118 -124 124 -111
		mu 0 4 153 158 329 330
		f 4 -114 125 126 127
		mu 0 4 331 332 333 334
		f 4 -112 128 129 -126
		mu 0 4 155 335 336 337
		f 4 -130 130 131 132
		mu 0 4 338 339 340 341
		f 4 -127 -133 133 134
		mu 0 4 342 163 343 344
		f 4 -125 135 136 -129
		mu 0 4 154 345 346 347
		f 4 -123 137 138 -136
		mu 0 4 162 348 349 350
		f 4 -139 139 140 141
		mu 0 4 351 352 353 354
		f 4 -137 -142 142 -131
		mu 0 4 165 169 355 356
		f 4 143 144 145 146
		mu 0 4 357 358 359 360
		f 4 147 148 149 -145
		mu 0 4 361 362 363 364
		f 4 -150 150 151 152
		mu 0 4 365 366 367 368
		f 4 -146 -153 153 154
		mu 0 4 176 175 369 370
		f 4 155 156 157 -149
		mu 0 4 371 372 373 374
		f 4 158 159 160 -157
		mu 0 4 375 376 377 378
		f 4 -161 161 162 163
		mu 0 4 379 185 380 381
		f 4 -158 -164 164 -151
		mu 0 4 178 183 382 383
		f 4 -154 165 166 167
		mu 0 4 181 384 385 189
		f 4 -152 168 169 -166
		mu 0 4 180 386 387 188
		f 4 -165 170 171 -169
		mu 0 4 179 388 389 190
		f 4 -163 172 173 -171
		mu 0 4 187 186 192 191
		f 4 174 -173 175 176
		mu 0 4 390 194 391 392
		f 4 177 -177 178 179
		mu 0 4 393 193 394 395
		f 4 180 -180 181 182
		mu 0 4 396 197 397 398
		f 4 183 -183 184 -81
		mu 0 4 201 199 399 400
		f 4 -179 185 186 187
		mu 0 4 401 402 403 404
		f 4 -176 -162 188 -186
		mu 0 4 196 195 405 406
		f 4 -189 -160 189 190
		mu 0 4 407 205 408 409
		f 4 -187 -191 191 192
		mu 0 4 410 203 411 412
		f 4 -185 193 194 -98
		mu 0 4 202 413 414 415
		f 4 -182 -188 195 -194
		mu 0 4 200 198 416 417
		f 4 -196 -193 196 197
		mu 0 4 418 204 419 420
		f 4 -195 -198 198 -100
		mu 0 4 210 209 421 422
		f 4 199 200 201 202
		mu 0 4 423 424 425 426
		f 4 203 -203 204 -168
		mu 0 4 217 213 427 428
		f 4 205 -79 206 207
		mu 0 4 429 220 430 431
		f 4 208 -208 209 -201
		mu 0 4 214 219 432 433
		f 4 -205 210 211 -155
		mu 0 4 218 434 435 436
		f 4 -202 212 213 -211
		mu 0 4 216 437 438 439
		f 4 -214 214 215 216
		mu 0 4 440 441 442 443
		f 4 -212 -217 217 -147
		mu 0 4 224 223 444 445
		f 4 -210 218 219 -213
		mu 0 4 215 446 447 448
		f 4 -207 -88 220 -219
		mu 0 4 222 221 449 450
		f 4 -221 -95 221 222
		mu 0 4 451 230 452 453
		f 4 -220 -223 223 -215
		mu 0 4 225 229 454 455
		f 4 -94 224 225 226
		mu 0 4 143 456 457 234
		f 4 -92 227 228 -225
		mu 0 4 142 458 459 233
		f 4 -229 229 -108 230
		mu 0 4 460 461 462 463
		f 4 -226 -231 -104 231
		mu 0 4 464 236 149 465
		f 4 -224 232 233 234
		mu 0 4 466 467 468 469
		f 4 -222 -227 235 -233
		mu 0 4 232 231 241 239
		f 4 -236 -232 -107 236
		mu 0 4 470 238 148 471
		f 4 -234 -237 -115 237
		mu 0 4 472 242 151 473
		f 4 -103 238 239 -228
		mu 0 4 141 474 475 235
		f 4 -101 240 241 -239
		mu 0 4 147 146 245 244
		f 4 -242 242 -119 243
		mu 0 4 476 477 478 479
		f 4 -240 -244 -116 -230
		mu 0 4 237 246 157 152
		f 4 -199 244 245 -241
		mu 0 4 212 480 481 249
		f 4 -197 246 247 -245
		mu 0 4 211 482 483 248
		f 4 -248 248 -122 249
		mu 0 4 484 485 486 487
		f 4 -246 -250 -120 -243
		mu 0 4 247 251 160 159
		f 4 -148 250 251 252
		mu 0 4 488 489 490 491
		f 4 -144 253 254 -251
		mu 0 4 174 173 255 253
		f 4 -255 255 -134 256
		mu 0 4 492 493 494 495
		f 4 -252 -257 -132 257
		mu 0 4 496 256 167 497
		f 4 -218 258 259 -254
		mu 0 4 228 498 499 260
		f 4 -216 -235 260 -259
		mu 0 4 227 226 240 259
		f 4 -261 -238 -128 261
		mu 0 4 500 243 156 501
		f 4 -260 -262 -135 -256
		mu 0 4 257 261 164 168
		f 4 -192 262 263 -247
		mu 0 4 208 502 503 250
		f 4 -190 264 265 -263
		mu 0 4 207 206 263 262
		f 4 -266 266 -140 267
		mu 0 4 504 505 506 507
		f 4 -264 -268 -138 -249
		mu 0 4 252 264 170 161
		f 4 -159 268 269 -265
		mu 0 4 184 508 509 267
		f 4 -156 -253 270 -269
		mu 0 4 182 177 254 266
		f 4 -271 -258 -143 271
		mu 0 4 510 258 166 511
		f 4 -270 -272 -141 -267
		mu 0 4 265 268 172 171;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 0 1.0425296865297811 1.7909657099527521 ;
	setAttr ".r" -type "double3" -90.167021206709748 0 0 ;
	setAttr ".s" -type "double3" 1.7704245993525736 0.54998077604548989 0.52327988263329328 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 12 ".lnk";
	setAttr -s 12 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polySphere -n "polySphere1";
	setAttr ".sa" 14;
	setAttr ".sh" 14;
createNode nonLinear -n "twist1";
	addAttr -is true -ci true -k true -sn "sa" -ln "startAngle" -smn -15 -smx 15 -at "doubleAngle";
	addAttr -is true -ci true -k true -sn "ea" -ln "endAngle" -smn -15 -smx 15 -at "doubleAngle";
	addAttr -is true -ci true -k true -sn "lb" -ln "lowBound" -dv -1 -max 0 -smn -10 
		-smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "hb" -ln "highBound" -dv 1 -min 0 -smn 0 -smx 
		10 -at "double";
	setAttr -k on ".sa" -336.30131502051711;
	setAttr -k on ".ea" 859.43669269623479;
	setAttr -k on ".lb" -1.9875776432223198;
	setAttr -k on ".hb" 1.2422360223573372;
createNode tweak -n "tweak1";
createNode objectSet -n "twist1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "twist1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "twist1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode animCurveTU -n "pSphere1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 119 1 635 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "pSphere1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 119 0 635 0;
createNode animCurveTL -n "pSphere1_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.00063320628000784751 81 -2.5647248463781969
		 139 -1.6839801482742196 264 -0.18357589671822083 373 -6.0209897157537071 555 -0.08017554222620582
		 632 -1.4647220215216965 739 -0.1026915092231997 807 -0.1026915092231997;
	setAttr -s 9 ".kit[0:8]"  18 18 1 1 18 1 1 1 
		1;
	setAttr -s 9 ".kot[0:8]"  18 18 1 1 18 1 18 18 
		1;
	setAttr -s 9 ".kix[2:8]"  0.98859906196594238 0.99835443496704102 
		1 0.98878133296966553 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  -0.15057188272476196 -0.057345345616340637 
		0 -0.14937023818492889 0 0 0;
	setAttr -s 9 ".kox[2:8]"  0.98860055208206177 0.99835443496704102 
		1 0.98878192901611328 1 1 1;
	setAttr -s 9 ".koy[2:8]"  -0.1505621075630188 -0.05734531581401825 
		0 -0.14936631917953491 0 0 0;
createNode animCurveTL -n "pSphere1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 635 0;
createNode animCurveTA -n "pSphere1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 119 0 635 0;
createNode animCurveTA -n "pSphere1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 60 312.53405599092798 635 1229.8239412908222
		 808 1458.7379881330576;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.99387216567993164;
	setAttr -s 4 ".kiy[3]"  0.11053598672151566;
	setAttr -s 4 ".kox[3]"  0.99387210607528687;
	setAttr -s 4 ".koy[3]"  0.11053614318370819;
createNode animCurveTA -n "pSphere1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 119 0 635 0;
createNode animCurveTU -n "pSphere1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.49315254454083512 60 0.49315254454083512
		 119 0.49315254454083512 635 0.49315254454083512;
createNode animCurveTU -n "pSphere1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 2.9796638476757451 60 2.9796638476757451
		 119 2.9796638476757451 635 2.9796638476757451;
createNode animCurveTU -n "pSphere1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.49315254454083512 60 0.49315254454083512
		 119 0.49315254454083512 635 0.49315254454083512;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".sa" 8;
	setAttr ".sh" 2;
	setAttr ".sc" 2;
	setAttr ".cuv" 3;
	setAttr ".rcp" yes;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 2 "f[0:7]" "f[32:39]";
createNode phong -n "phong1";
	setAttr ".it" -type "float3" 0.71795225 0.71795225 0.71795225 ;
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode polyCylinder -n "polyCylinder2";
	setAttr ".sa" 8;
	setAttr ".sh" 2;
	setAttr ".sc" 2;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[32:47]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[24:31]";
	setAttr ".ix" -type "matrix" 4.1608667341218837 0 0 0 0 0.12251209377958865 0 0 0 0 4.1608667341218837 0
		 0 0.17503377396029451 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4800698e-007 0.29754588 1.2400349e-007 ;
	setAttr ".rs" 42108;
	setAttr ".lt" -type "double3" 2.2204460492503131e-016 5.1434495995454414e-016 0.31640376999117775 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.160866238107916 0.29754586773988317 -4.160866238107916 ;
	setAttr ".cbx" -type "double3" 4.1608667341218837 0.29754586773988317 4.1608664861148998 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[24:31]";
	setAttr ".ix" -type "matrix" 4.1608667341218837 0 0 0 0 0.12251209377958865 0 0 0 0 4.1608667341218837 0
		 0 0.17503377396029451 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4800698e-007 0.61394966 0 ;
	setAttr ".rs" 53263;
	setAttr ".lt" -type "double3" 1.1102230246251565e-016 1.1008275432400572e-016 0.49576865135351 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.3930033838069571 0.61394967550899893 -3.3930033838069571 ;
	setAttr ".cbx" -type "double3" 3.3930038798209243 0.61394967550899893 3.3930033838069571 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[40:55]" -type "float3"  -0.13049251 2.3841858e-007
		 0.13049251 1.0999678e-008 2.3841858e-007 0.18454397 1.0999678e-008 2.3841858e-007
		 0.092271984 -0.065246254 2.3841858e-007 0.065246254 0.13049251 2.3841858e-007 0.13049251
		 0.065246269 2.3841858e-007 0.065246254 0.18454397 2.3841858e-007 -9.1101189e-011
		 0.092271984 2.3841858e-007 -9.1101189e-011 0.13049251 2.3841858e-007 -0.13049251
		 0.065246269 2.3841858e-007 -0.065246254 1.0999678e-008 2.3841858e-007 -0.18454397
		 1.0999678e-008 2.3841858e-007 -0.092271984 -0.13049251 2.3841858e-007 -0.13049251
		 -0.065246254 2.3841858e-007 -0.065246254 -0.18454397 2.3841858e-007 4.5550608e-011
		 -0.092271984 2.3841858e-007 4.5550608e-011;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[24:31]";
	setAttr ".ix" -type "matrix" 4.1608667341218837 0 0 0 0 0.12251209377958865 0 0 0 0 4.1608667341218837 0
		 0 0.17503377396029451 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4800698e-007 1.1097183 0 ;
	setAttr ".rs" 58887;
	setAttr ".lt" -type "double3" 0 -0.0018215423670984714 -0.24713223960578024 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5103353686998724 1.1097183431797535 -2.5103353686998724 ;
	setAttr ".cbx" -type "double3" 2.5103358647138396 1.1097183431797535 2.5103353686998724 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[56:71]" -type "float3"  -0.15000218 0 0.1500022 1.2644267e-008
		 0 0.2121356 1.2644267e-008 0 0.1060678 -0.075001091 0 0.075001098 0.15000223 0 0.1500022
		 0.075001113 0 0.075001098 0.2121356 0 -4.0732454e-010 0.1060678 0 -4.0732456e-010
		 0.15000223 0 -0.1500022 0.075001113 0 -0.075001098 1.2644267e-008 0 -0.2121356 1.2644267e-008
		 0 -0.1060678 -0.15000218 0 -0.1500022 -0.075001091 0 -0.075001098 -0.2121356 0 -2.502421e-010
		 -0.1060678 0 -2.5024213e-010;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 8 "f[64]" "f[66]" "f[68]" "f[70]" "f[72]" "f[74]" "f[76]" "f[78]";
	setAttr ".ix" -type "matrix" 4.1608667341218837 0 0 0 0 0.12251209377958865 0 0 0 0 4.1608667341218837 0
		 0 0.17503377396029451 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4800698e-007 1.028142 0.0018214873 ;
	setAttr ".rs" 51330;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3954223248558617 0.83714734797420498 -2.3936009615679725 ;
	setAttr ".cbx" -type "double3" 2.3954228208698289 1.2191366718552534 2.3972439361507347 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[40]" -type "float3" -0.092542015 -1.819001 0.092542015 ;
	setAttr ".tk[41]" -type "float3" 7.8007103e-009 -1.819001 0.13087408 ;
	setAttr ".tk[44]" -type "float3" 0.092542022 -1.819001 0.092542015 ;
	setAttr ".tk[46]" -type "float3" 0.13087414 -1.819001 -6.4606757e-011 ;
	setAttr ".tk[48]" -type "float3" 0.092542022 -1.819001 -0.092542015 ;
	setAttr ".tk[50]" -type "float3" 7.8007103e-009 -1.819001 -0.13087408 ;
	setAttr ".tk[52]" -type "float3" -0.092542015 -1.819001 -0.092542015 ;
	setAttr ".tk[54]" -type "float3" -0.13087414 -1.819001 3.2303427e-011 ;
	setAttr ".tk[56]" -type "float3" -0.042719997 -2.2248495 0.042719997 ;
	setAttr ".tk[57]" -type "float3" 3.6010253e-009 -2.2248495 0.060415246 ;
	setAttr ".tk[60]" -type "float3" 0.042719997 -2.2248495 0.042719997 ;
	setAttr ".tk[62]" -type "float3" 0.060415171 -2.2248495 -1.1600437e-010 ;
	setAttr ".tk[64]" -type "float3" 0.042719997 -2.2248495 -0.042719997 ;
	setAttr ".tk[66]" -type "float3" 3.6010253e-009 -2.2248495 -0.060415246 ;
	setAttr ".tk[68]" -type "float3" -0.042719997 -2.2248495 -0.042719997 ;
	setAttr ".tk[70]" -type "float3" -0.060415171 -2.2248495 -7.1267818e-011 ;
	setAttr ".tk[72]" -type "float3" -0.019528586 2.9103301 0.019528577 ;
	setAttr ".tk[73]" -type "float3" 1.6461373e-009 2.9103301 0.027617598 ;
	setAttr ".tk[74]" -type "float3" 1.6461373e-009 2.9103301 0.013808796 ;
	setAttr ".tk[75]" -type "float3" -0.0097642783 2.9103301 0.0097642886 ;
	setAttr ".tk[76]" -type "float3" 0.019528577 2.9103301 0.019528577 ;
	setAttr ".tk[77]" -type "float3" 0.0097642886 2.9103301 0.0097642886 ;
	setAttr ".tk[78]" -type "float3" 0.027617585 2.9103301 -7.5527451e-010 ;
	setAttr ".tk[79]" -type "float3" 0.013808801 2.9103301 -7.5527451e-010 ;
	setAttr ".tk[80]" -type "float3" 0.019528577 2.9103301 -0.019528577 ;
	setAttr ".tk[81]" -type "float3" 0.0097642886 2.9103301 -0.0097642671 ;
	setAttr ".tk[82]" -type "float3" 1.6461373e-009 2.9103301 -0.027617598 ;
	setAttr ".tk[83]" -type "float3" 1.6461373e-009 2.9103301 -0.013808792 ;
	setAttr ".tk[84]" -type "float3" -0.019528586 2.9103301 -0.019528577 ;
	setAttr ".tk[85]" -type "float3" -0.0097642783 2.9103301 -0.0097642671 ;
	setAttr ".tk[86]" -type "float3" -0.027617585 2.9103301 -5.4224814e-010 ;
	setAttr ".tk[87]" -type "float3" -0.013808796 2.9103301 -5.4224814e-010 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 8 "f[81]" "f[83]" "f[85]" "f[87]" "f[89]" "f[91]" "f[93]" "f[95]";
	setAttr ".ix" -type "matrix" 4.1608667341218837 0 0 0 0 0.12251209377958865 0 0 0 0 4.1608667341218837 0
		 0 0.17503377396029451 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4800698e-007 1.2317719 0.0018214873 ;
	setAttr ".rs" 62093;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.712362105584134 1.2191366718552534 -2.7105407422962444 ;
	setAttr ".cbx" -type "double3" 2.7123626015981013 1.2444072681340042 2.7141837168790071 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[88:103]" -type "float3"  0.05079297 -0.20627055 -0.050850891
		 -4.2815271e-009 -0.20627055 -0.071890019 -4.5401807e-009 0.20627052 -0.076171592
		 0.053861432 0.20627052 -0.053861436 -0.05079297 -0.20627055 -0.050850891 -0.053861436
		 0.20627052 -0.053861436 -0.071832106 -0.20627055 -5.7920985e-005 -0.076171592 0.20627052
		 2.0794402e-009 -0.05079297 -0.20627055 0.050735049 -0.053861436 0.20627052 0.053861436
		 -4.2815271e-009 -0.20627055 0.071774177 -4.5401807e-009 0.20627052 0.076171592 0.05079297
		 -0.20627055 0.050735049 0.053861432 0.20627052 0.053861436 0.071832106 -0.20627055
		 -5.7921021e-005 0.076171592 0.20627052 1.4940814e-009;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[195]" "e[197]" "e[202]" "e[207]" "e[212]" "e[217]" "e[222]" "e[227]";
	setAttr ".ix" -type "matrix" 4.1608667341218837 0 0 0 0 0.12251209377958865 0 0 0 0 4.1608667341218837 0
		 0 0.17503377396029451 0 1;
	setAttr ".wt" 0.56170380115509033;
	setAttr ".dr" no;
	setAttr ".re" 197;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[8]" -type "float3" -0.17433016 0.24654007 0.17433016 ;
	setAttr ".tk[9]" -type "float3" 1.4694933e-008 0.24654007 0.24654007 ;
	setAttr ".tk[10]" -type "float3" 0.17433016 0.24654007 0.17433016 ;
	setAttr ".tk[11]" -type "float3" 0.24654007 0.24654007 0 ;
	setAttr ".tk[12]" -type "float3" 0.17433016 0.24654007 -0.17433016 ;
	setAttr ".tk[13]" -type "float3" 1.4694933e-008 0.24654007 -0.24654007 ;
	setAttr ".tk[14]" -type "float3" -0.17433016 0.24654007 -0.17433016 ;
	setAttr ".tk[15]" -type "float3" -0.24654007 0.24654007 0 ;
	setAttr ".tk[16]" -type "float3" -0.17433016 5.1432202e-008 0.17433016 ;
	setAttr ".tk[17]" -type "float3" 1.4694933e-008 5.1432202e-008 0.24654007 ;
	setAttr ".tk[18]" -type "float3" 0.17433016 5.1432202e-008 0.17433016 ;
	setAttr ".tk[19]" -type "float3" 0.24654007 5.1432202e-008 0 ;
	setAttr ".tk[20]" -type "float3" 0.17433016 5.1432202e-008 -0.17433016 ;
	setAttr ".tk[21]" -type "float3" 1.4694933e-008 5.1432202e-008 -0.24654007 ;
	setAttr ".tk[22]" -type "float3" -0.17433016 5.1432202e-008 -0.17433016 ;
	setAttr ".tk[23]" -type "float3" -0.24654007 5.1432202e-008 0 ;
	setAttr ".tk[24]" -type "float3" -0.17433016 -0.24654007 0.17433016 ;
	setAttr ".tk[25]" -type "float3" 1.4694933e-008 -0.24654007 0.24654007 ;
	setAttr ".tk[26]" -type "float3" 0.17433016 -0.24654007 0.17433016 ;
	setAttr ".tk[27]" -type "float3" 0.24654007 -0.24654007 0 ;
	setAttr ".tk[28]" -type "float3" 0.17433016 -0.24654007 -0.17433016 ;
	setAttr ".tk[29]" -type "float3" 1.4694933e-008 -0.24654007 -0.24654007 ;
	setAttr ".tk[30]" -type "float3" -0.17433016 -0.24654007 -0.17433016 ;
	setAttr ".tk[31]" -type "float3" -0.24654007 -0.24654007 0 ;
	setAttr ".tk[104]" -type "float3" -0.026632868 1.5880328 0.02663287 ;
	setAttr ".tk[105]" -type "float3" 2.244982e-009 1.5880328 0.037664548 ;
	setAttr ".tk[106]" -type "float3" -0.030156679 1.5745379 0.030156683 ;
	setAttr ".tk[107]" -type "float3" 2.5420168e-009 1.5745379 0.042647962 ;
	setAttr ".tk[108]" -type "float3" 0.02663287 1.5880328 0.02663287 ;
	setAttr ".tk[109]" -type "float3" 0.030156683 1.5745379 0.030156683 ;
	setAttr ".tk[110]" -type "float3" 0.037664548 1.5880328 -1.0281712e-009 ;
	setAttr ".tk[111]" -type "float3" 0.042647962 1.5745379 -1.1633693e-009 ;
	setAttr ".tk[112]" -type "float3" 0.02663287 1.5880328 -0.02663287 ;
	setAttr ".tk[113]" -type "float3" 0.030156683 1.5745379 -0.030156683 ;
	setAttr ".tk[114]" -type "float3" 2.244982e-009 1.5880328 -0.037664548 ;
	setAttr ".tk[115]" -type "float3" 2.5420168e-009 1.5745379 -0.042647962 ;
	setAttr ".tk[116]" -type "float3" -0.026632868 1.5880328 -0.02663287 ;
	setAttr ".tk[117]" -type "float3" -0.030156679 1.5745379 -0.030156683 ;
	setAttr ".tk[118]" -type "float3" -0.037664548 1.5880328 -7.3858186e-010 ;
	setAttr ".tk[119]" -type "float3" -0.042647962 1.5745379 -8.3588975e-010 ;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[196]" "e[199]" "e[204]" "e[209]" "e[214]" "e[219]" "e[224]" "e[229]";
	setAttr ".ix" -type "matrix" 4.1608667341218837 0 0 0 0 0.12251209377958865 0 0 0 0 4.1608667341218837 0
		 0 0.17503377396029451 0 1;
	setAttr ".wt" 0.45373892784118652;
	setAttr ".re" 199;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[192:193]" "e[200]" "e[205]" "e[210]" "e[215]" "e[220]" "e[225]";
	setAttr ".ix" -type "matrix" 4.1608667341218837 0 0 0 0 0.12251209377958865 0 0 0 0 4.1608667341218837 0
		 0 0.17503377396029451 0 1;
	setAttr ".wt" 0.25641334056854248;
	setAttr ".re" 192;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[163]" "e[165]" "e[168]" "e[172]" "e[176]" "e[180]" "e[184]" "e[188]";
	setAttr ".ix" -type "matrix" 4.1608667341218837 0 0 0 0 0.12251209377958865 0 0 0 0 4.1608667341218837 0
		 0 0.17503377396029451 0 1;
	setAttr ".wt" 0.52216958999633789;
	setAttr ".dr" no;
	setAttr ".re" 163;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[130]" "e[133]" "e[136]" "e[140]" "e[144]" "e[148]" "e[152]" "e[156]";
	setAttr ".ix" -type "matrix" 4.1608667341218837 0 0 0 0 0.12251209377958865 0 0 0 0 4.1608667341218837 0
		 0 0.17503377396029451 0 1;
	setAttr ".wt" 0.54805803298950195;
	setAttr ".dr" no;
	setAttr ".re" 130;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[96:97]" "e[102]" "e[106]" "e[110]" "e[114]" "e[118]" "e[122]";
	setAttr ".ix" -type "matrix" 4.1608667341218837 0 0 0 0 0.12251209377958865 0 0 0 0 4.1608667341218837 0
		 0 0.17503377396029451 0 1;
	setAttr ".wt" 0.50527846813201904;
	setAttr ".dr" no;
	setAttr ".re" 97;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 9 "f[64]" "f[66]" "f[68]" "f[70]" "f[72]" "f[74]" "f[76]" "f[78]" "f[136:143]";
	setAttr ".ix" -type "matrix" 4.1608667341218837 0 0 0 0 0.12251209377958865 0 0 0 0 4.1608667341218837 0
		 0 0.17503377396029451 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4800698e-007 1.028142 0.0018214873 ;
	setAttr ".rs" 56059;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.712362105584134 0.81187663485881711 -2.7105407422962444 ;
	setAttr ".cbx" -type "double3" 2.7123626015981013 1.2444072681340042 2.7141837168790071 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 9 "f[64]" "f[66]" "f[68]" "f[70]" "f[72]" "f[74]" "f[76]" "f[78]" "f[136:143]";
	setAttr ".ix" -type "matrix" 4.1608667341218837 0 0 0 0 0.12251209377958865 0 0 0 0 4.1608667341218837 0
		 0 0.17503377396029451 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4800698e-007 1.028142 0.0018214873 ;
	setAttr ".rs" 42541;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6054562152140881 0.93059188843649832 -2.6036348519261985 ;
	setAttr ".cbx" -type "double3" 2.6054567112280553 1.1256919561380041 2.6072778265089611 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 38 ".tk[160:197]" -type "float3"  -0.017132832 0.96900856 0.017152365
		 1.2179579e-008 0.96900856 0.024248999 1.2223189e-008 -1.1220745e-007 0.0249711 -0.01765034
		 -1.1220745e-007 0.017660115 0.017132837 0.96900856 0.01715236 0.017650327 -2.0161444e-007
		 0.017660115 0.024229469 0.96900868 1.953717e-005 0.024961349 5.1705342e-008 9.768225e-006
		 0.017132826 0.96900845 -0.017113287 0.017650329 -2.4081652e-007 -0.017640566 7.7322804e-010
		 0.96900845 -0.024209928 5.0662732e-009 -2.4081652e-007 -0.02495157 -0.017132824 0.96900845
		 -0.017113285 -0.01765033 -2.2901581e-007 -0.017640568 -0.024229471 0.96900856 1.9537172e-005
		 -0.024961343 -1.8671328e-007 9.7719112e-006 6.3681938e-010 -0.96900886 0.025693193
		 -0.018167848 -0.96900886 0.018167838 -0.025693199 -0.96900886 -5.0356314e-010 -0.018167844
		 -0.96900886 -0.018167853 -2.0470272e-009 -0.96900886 -0.025693201 0.01816785 -0.96900886
		 -0.018167846 0.025693202 -0.96900886 2.8775067e-009 0.018167842 -0.96900886 0.01816785
		 -9.3132257e-010 0 0 -9.3132257e-010 -1.0430813e-007 -3.7252903e-009 3.7252903e-009
		 0 3.7252903e-009 -7.4505806e-009 -1.0430813e-007 3.7252903e-009 -7.4505806e-009 0
		 -7.2759576e-012 3.7252903e-009 -1.0430813e-007 3.6379788e-012 -9.3132257e-010 -1.4901161e-007
		 0 -3.7252903e-009 -1.4901161e-007 5.5879354e-009 -7.4505806e-009 -1.4901161e-007
		 5.5511151e-017 -3.7252903e-009 -1.4901161e-007 -5.5879354e-009 -9.3132257e-010 -1.4901161e-007
		 0 -7.4505806e-009 -1.4901161e-007 -5.5879354e-009 -1.1175871e-008 -1.4901161e-007
		 1.110223e-016 -7.4505806e-009 -1.4901161e-007 5.5879354e-009;
createNode polyCube -n "polyCube1";
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[19:21]" "e[28:30]" "e[43]" "e[47]";
	setAttr ".ix" -type "matrix" 0.43272906747669138 0 0 0 0 0.45770643297037966 0 0
		 0 0 1 0 -1.5776618562620011 1.4256630190469639 0 1;
	setAttr ".wt" 0.7820168137550354;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[28:30]" "e[48:49]" "e[57]" "e[59]" "e[61]";
	setAttr ".ix" -type "matrix" 0.43272906747669138 0 0 0 0 0.45770643297037966 0 0
		 0 0 1 0 -1.5776618562620011 1.4256630190469639 0 1;
	setAttr ".wt" 0.85165131092071533;
	setAttr ".dr" no;
	setAttr ".re" 48;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[16:18]" "e[31:33]" "e[42]" "e[46]";
	setAttr ".ix" -type "matrix" 0.43272906747669138 0 0 0 0 0.45770643297037966 0 0
		 0 0 1 0 -1.5776618562620011 1.4256630190469639 0 1;
	setAttr ".wt" 0.68117469549179077;
	setAttr ".dr" no;
	setAttr ".re" 46;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[6:15]" -type "float3"  0.045221351 -0.056792308 -0.045221351
		 4.0164628e-017 -0.056792308 -0.045221351 -0.045221351 -0.056792308 -0.045221351 0.045221351
		 -0.056792308 0 4.0164628e-017 -0.056792308 0 -0.045221351 -0.056792308 0 0.045221351
		 -0.056792308 0.045221351 4.0164628e-017 -0.056792308 0.045221351 -0.045221351 -0.056792308
		 0.045221351 0 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 4 "f[2:3]" "f[8:9]" "f[18:19]" "f[22:23]";
	setAttr ".ix" -type "matrix" 0.43272906747669138 0 0 0 0 0.45770643297037966 0 0
		 0 0 1 0 -1.5776618562620011 1.4256630190469639 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5776619 1.4828763 0 ;
	setAttr ".rs" 36182;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7940263900003468 1.4256630190469639 -0.5 ;
	setAttr ".cbx" -type "double3" -1.3612973225236553 1.5400896272895588 0.5 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[40:47]";
	setAttr ".ix" -type "matrix" 0.43272906747669138 0 0 0 0 0.45770643297037966 0 0
		 0 0 1 0 -1.5776618562620011 1.4256630190469639 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5776619 1.3684497 0 ;
	setAttr ".rs" 33588;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7940263900003468 1.311236410804369 -0.5 ;
	setAttr ".cbx" -type "double3" -1.3612973225236553 1.4256630190469639 0.5 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[50:65]" -type "float3"  0 0.062091377 0 0 0.062091377
		 0 0 -0.062091377 0 0 -0.062091377 0 0 0.062091377 0 0 -0.062091377 0 0 -0.062091377
		 0 0 -0.062091377 0 0 0.062091377 0 0 0.062091377 0 0 -0.062091377 0 0 0.062091377
		 0 0 0.062091377 0 0 -0.062091377 0 0 0.062091377 0 0 -0.062091377 0;
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 7 "f[49]" "f[51:52]" "f[54]" "f[57]" "f[59]" "f[61]" "f[63]";
	setAttr ".ix" -type "matrix" 0.43272906747669138 0 0 0 0 0.45770643297037966 0 0
		 0 0 1 0 -1.5776618562620011 1.4256630190469639 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5776619 1.3684497 0 ;
	setAttr ".rs" 32902;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[2]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[42]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[43]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[48]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[49]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[66]" -type "float3" 0.030956671 0.0077391677 0 ;
	setAttr ".tk[67]" -type "float3" 0.030956671 0.0077391677 0.030956671 ;
	setAttr ".tk[68]" -type "float3" 0.030956671 -0.0077391677 0 ;
	setAttr ".tk[69]" -type "float3" 0.030956671 -0.0077391677 0.030956671 ;
	setAttr ".tk[70]" -type "float3" 2.7495047e-017 -0.0077391677 0.030956671 ;
	setAttr ".tk[71]" -type "float3" 2.7495047e-017 0.0077391677 0.030956671 ;
	setAttr ".tk[72]" -type "float3" -0.030956671 -0.0077391677 0.030956671 ;
	setAttr ".tk[73]" -type "float3" -0.030956671 0.0077391677 0.030956671 ;
	setAttr ".tk[74]" -type "float3" -0.030956671 0.0077391677 0 ;
	setAttr ".tk[75]" -type "float3" -0.030956671 -0.0077391677 0 ;
	setAttr ".tk[76]" -type "float3" -0.030956671 0.0077391677 -0.030956671 ;
	setAttr ".tk[77]" -type "float3" -0.030956671 -0.0077391677 -0.030956671 ;
	setAttr ".tk[78]" -type "float3" 2.7495047e-017 0.0077391677 -0.030956671 ;
	setAttr ".tk[79]" -type "float3" 2.7495047e-017 -0.0077391677 -0.030956671 ;
	setAttr ".tk[80]" -type "float3" 0.030956671 0.0077391677 -0.030956671 ;
	setAttr ".tk[81]" -type "float3" 0.030956671 -0.0077391677 -0.030956671 ;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode polySeparate -n "pasted__polySeparate1";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 2 ;
	setAttr -s 2 ".out";
createNode groupId -n "pasted__groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode polyChipOff -n "pasted__polyChipOff1";
	setAttr ".ics" -type "componentList" 7 "f[49]" "f[51:52]" "f[54]" "f[57]" "f[59]" "f[61]" "f[63]";
	setAttr ".ix" -type "matrix" 0.43272906747669138 0 0 0 0 0.45770643297037966 0 0
		 0 0 1 0 -1.5776618562620011 1.4256630190469639 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5776619 1.3684497 0 ;
	setAttr ".rs" 32902;
	setAttr ".dup" no;
createNode polyTweak -n "pasted__polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[2]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.050848272 0 ;
	setAttr ".tk[42]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[43]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[48]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[49]" -type "float3" 0 -0.050848272 0 ;
	setAttr ".tk[66]" -type "float3" 0.030956671 0.0077391677 0 ;
	setAttr ".tk[67]" -type "float3" 0.030956671 0.0077391677 0.030956671 ;
	setAttr ".tk[68]" -type "float3" 0.030956671 -0.0077391677 0 ;
	setAttr ".tk[69]" -type "float3" 0.030956671 -0.0077391677 0.030956671 ;
	setAttr ".tk[70]" -type "float3" 2.7495047e-017 -0.0077391677 0.030956671 ;
	setAttr ".tk[71]" -type "float3" 2.7495047e-017 0.0077391677 0.030956671 ;
	setAttr ".tk[72]" -type "float3" -0.030956671 -0.0077391677 0.030956671 ;
	setAttr ".tk[73]" -type "float3" -0.030956671 0.0077391677 0.030956671 ;
	setAttr ".tk[74]" -type "float3" -0.030956671 0.0077391677 0 ;
	setAttr ".tk[75]" -type "float3" -0.030956671 -0.0077391677 0 ;
	setAttr ".tk[76]" -type "float3" -0.030956671 0.0077391677 -0.030956671 ;
	setAttr ".tk[77]" -type "float3" -0.030956671 -0.0077391677 -0.030956671 ;
	setAttr ".tk[78]" -type "float3" 2.7495047e-017 0.0077391677 -0.030956671 ;
	setAttr ".tk[79]" -type "float3" 2.7495047e-017 -0.0077391677 -0.030956671 ;
	setAttr ".tk[80]" -type "float3" 0.030956671 0.0077391677 -0.030956671 ;
	setAttr ".tk[81]" -type "float3" 0.030956671 -0.0077391677 -0.030956671 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[40:47]";
	setAttr ".ix" -type "matrix" 0.43272906747669138 0 0 0 0 0.45770643297037966 0 0
		 0 0 1 0 -1.5776618562620011 1.4256630190469639 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5776619 1.3684497 0 ;
	setAttr ".rs" 33588;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7940263900003468 1.311236410804369 -0.5 ;
	setAttr ".cbx" -type "double3" -1.3612973225236553 1.4256630190469639 0.5 ;
createNode polyTweak -n "pasted__polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[50:65]" -type "float3"  0 0.062091377 0 0 0.062091377
		 0 0 -0.062091377 0 0 -0.062091377 0 0 0.062091377 0 0 -0.062091377 0 0 -0.062091377
		 0 0 -0.062091377 0 0 0.062091377 0 0 0.062091377 0 0 -0.062091377 0 0 0.062091377
		 0 0 0.062091377 0 0 -0.062091377 0 0 0.062091377 0 0 -0.062091377 0;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 4 "f[2:3]" "f[8:9]" "f[18:19]" "f[22:23]";
	setAttr ".ix" -type "matrix" 0.43272906747669138 0 0 0 0 0.45770643297037966 0 0
		 0 0 1 0 -1.5776618562620011 1.4256630190469639 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5776619 1.4828763 0 ;
	setAttr ".rs" 36182;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7940263900003468 1.4256630190469639 -0.5 ;
	setAttr ".cbx" -type "double3" -1.3612973225236553 1.5400896272895588 0.5 ;
createNode polySplitRing -n "pasted__polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[16:18]" "e[31:33]" "e[42]" "e[46]";
	setAttr ".ix" -type "matrix" 0.43272906747669138 0 0 0 0 0.45770643297037966 0 0
		 0 0 1 0 -1.5776618562620011 1.4256630190469639 0 1;
	setAttr ".wt" 0.68117469549179077;
	setAttr ".dr" no;
	setAttr ".re" 46;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "pasted__polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[6:15]" -type "float3"  0.045221351 -0.056792308 -0.045221351
		 4.0164628e-017 -0.056792308 -0.045221351 -0.045221351 -0.056792308 -0.045221351 0.045221351
		 -0.056792308 0 4.0164628e-017 -0.056792308 0 -0.045221351 -0.056792308 0 0.045221351
		 -0.056792308 0.045221351 4.0164628e-017 -0.056792308 0.045221351 -0.045221351 -0.056792308
		 0.045221351 0 0 0;
createNode polySplitRing -n "pasted__polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[28:30]" "e[48:49]" "e[57]" "e[59]" "e[61]";
	setAttr ".ix" -type "matrix" 0.43272906747669138 0 0 0 0 0.45770643297037966 0 0
		 0 0 1 0 -1.5776618562620011 1.4256630190469639 0 1;
	setAttr ".wt" 0.85165131092071533;
	setAttr ".dr" no;
	setAttr ".re" 48;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[19:21]" "e[28:30]" "e[43]" "e[47]";
	setAttr ".ix" -type "matrix" 0.43272906747669138 0 0 0 0 0.45770643297037966 0 0
		 0 0 1 0 -1.5776618562620011 1.4256630190469639 0 1;
	setAttr ".wt" 0.7820168137550354;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "pasted__polyCube1";
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId4";
	setAttr ".ihi" 0;
createNode materialInfo -n "pasted__materialInfo1";
createNode shadingEngine -n "pasted__phong1SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode phong -n "pasted__phong1";
	setAttr ".it" -type "float3" 0.71795225 0.71795225 0.71795225 ;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[32:39]";
	setAttr ".ix" -type "matrix" 1.1607931247833461 0 0 0 0 0.88498460002059176 0 0 0 0 1.1607931247833461 0
		 0 1.4593091141437913 0 1;
	setAttr ".wt" 0.59068822860717773;
	setAttr ".dr" no;
	setAttr ".re" 38;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 2 "f[3]" "f[7]";
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 2 "f[24:31]" "f[40:47]";
	setAttr ".ix" -type "matrix" 6.9982516209955493e-017 0.090049495407315786 0 0 0.62308810984734841 -6.016814270353545e-016 -0.26585101417065471 0
		 -0.068789006084103071 5.3516786250512782e-017 -0.16122418006541014 0 -0.93456503885180753 0.82606028914848217 0.37146910114183695 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.31147695 0.8260603 0.10561808 ;
	setAttr ".rs" 60101;
	setAttr ".lt" -type "double3" -1.3877787807814457e-017 8.0823144096657012e-017 0.13652939784740037 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.38026593098841788 0.73601080447590217 -0.055606083484517899 ;
	setAttr ".cbx" -type "double3" -0.24268793112064457 0.91610978455579739 0.26684224781717242 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 2 "f[24:31]" "f[40:47]";
	setAttr ".ix" -type "matrix" 6.9982516209955493e-017 0.090049495407315786 0 0 0.62308810984734841 -6.016814270353545e-016 -0.26585101417065471 0
		 -0.068789006084103071 5.3516786250512782e-017 -0.16122418006541014 0 -0.93456503885180753 0.82606028914848217 0.37146910114183695 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.18590021 0.67494506 0.052038632 ;
	setAttr ".rs" 57523;
	setAttr ".lt" -type "double3" 2.7755575615628914e-017 -4.9613091412936683e-016 0.29507559791875337 ;
	setAttr ".ls" -type "double3" 1 1 1.3895169069962781 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28912201769602119 0.64229280952611256 -0.10918548286191954 ;
	setAttr ".cbx" -type "double3" -0.082678244341487295 0.70759727767202341 0.21326281000093086 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk";
	setAttr ".tk[24]" -type "float3" 0 -0.46453083 -2.220446e-016 ;
	setAttr ".tk[25]" -type "float3" 0 -0.46453083 -2.220446e-016 ;
	setAttr ".tk[26]" -type "float3" 0 -0.46453083 -2.220446e-016 ;
	setAttr ".tk[27]" -type "float3" 0 -0.46453083 -2.220446e-016 ;
	setAttr ".tk[28]" -type "float3" 0 -0.46453083 -2.220446e-016 ;
	setAttr ".tk[29]" -type "float3" 0 -0.46453083 -2.220446e-016 ;
	setAttr ".tk[30]" -type "float3" 0 -0.46453083 -2.220446e-016 ;
	setAttr ".tk[31]" -type "float3" 0 -0.46453083 -2.220446e-016 ;
	setAttr ".tk[33]" -type "float3" -2.1288445 0.087597199 -3.5306242e-009 ;
	setAttr ".tk[34]" -type "float3" -1.6781355 -7.3394375e-008 -8.6597396e-015 ;
	setAttr ".tk[35]" -type "float3" -1.6781355 -7.2355604e-008 -1.4321877e-014 ;
	setAttr ".tk[36]" -type "float3" -1.9034895 0.043798536 -1.7653194e-009 ;
	setAttr ".tk[37]" -type "float3" -1.2274276 -0.087597214 3.5305976e-009 ;
	setAttr ".tk[38]" -type "float3" -1.4527812 -0.043798633 1.7652921e-009 ;
	setAttr ".tk[39]" -type "float3" -1.0407386 -0.12388099 4.9930131e-009 ;
	setAttr ".tk[40]" -type "float3" -1.3594372 -0.06194054 2.4964977e-009 ;
	setAttr ".tk[41]" -type "float3" -1.2274289 -0.087596975 3.5305736e-009 ;
	setAttr ".tk[42]" -type "float3" -1.4527825 -0.043798417 1.7652724e-009 ;
	setAttr ".tk[43]" -type "float3" -1.6781356 -6.9458473e-008 -3.0642155e-014 ;
	setAttr ".tk[44]" -type "float3" -1.6781355 -7.0503596e-008 -2.5646152e-014 ;
	setAttr ".tk[45]" -type "float3" -2.1288428 0.087596886 -3.5306242e-009 ;
	setAttr ".tk[46]" -type "float3" -1.9034889 0.043798424 -1.765321e-009 ;
	setAttr ".tk[47]" -type "float3" -2.3155332 0.12388099 -4.9930517e-009 ;
	setAttr ".tk[48]" -type "float3" -1.9968339 0.061940413 -2.4965325e-009 ;
	setAttr ".tk[49]" -type "float3" -1.6781355 -7.1517483e-008 -1.9249273e-014 ;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 2 "f[24:31]" "f[40:47]";
createNode polyCylinder -n "polyCylinder3";
	setAttr ".sa" 8;
	setAttr ".sh" 2;
	setAttr ".sc" 2;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[56:63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 5.0177934031797982 1;
	setAttr ".wt" 0.76967400312423706;
	setAttr ".dr" no;
	setAttr ".re" 58;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[88:89]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]" "e[101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 5.0177934031797982 1;
	setAttr ".wt" 0.65844404697418213;
	setAttr ".dr" no;
	setAttr ".re" 88;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[48:55]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 5.0177934031797982 1;
	setAttr ".wt" 0.2401869148015976;
	setAttr ".re" 50;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[48:55]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 5.0177934031797982 1;
	setAttr ".wt" 0.31523263454437256;
	setAttr ".re" 50;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[48:55]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 5.0177934031797982 1;
	setAttr ".wt" 0.49250486493110657;
	setAttr ".dr" no;
	setAttr ".re" 50;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[104:105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 5.0177934031797982 1;
	setAttr ".wt" 0.64222294092178345;
	setAttr ".dr" no;
	setAttr ".re" 104;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[64:71]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 5.0177934031797982 1;
	setAttr ".wt" 0.43067806959152222;
	setAttr ".re" 67;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[64:71]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 5.0177934031797982 1;
	setAttr ".wt" 0.48077124357223511;
	setAttr ".dr" no;
	setAttr ".re" 67;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySmoothFace -n "polySmoothFace2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyCylinder -n "polyCylinder4";
	setAttr ".sa" 8;
	setAttr ".sh" 2;
	setAttr ".sc" 2;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 2 "f[0:7]" "f[32:39]";
	setAttr ".ix" -type "matrix" 5.3199404445379221e-017 0.23958881803654217 0 0 -5.3199404445379221e-017 0 0.23958881803654217 0
		 0.23958881803654217 -5.3199404445379221e-017 5.3199404445379221e-017 0 3.5265406547380964 0.40314267917801783 2.8961371479600277 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.5265408 0.40314269 2.6565483 ;
	setAttr ".rs" 44251;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.2869518652627669 0.16355388970268844 2.6565483299234853 ;
	setAttr ".cbx" -type "double3" 3.7661294584940324 0.64273149721456002 2.6565483299234858 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 2 "f[0:7]" "f[32:39]";
	setAttr ".ix" -type "matrix" 5.3199404445379221e-017 0.23958881803654217 0 0 -5.3199404445379221e-017 0 0.23958881803654217 0
		 0.23958881803654217 -5.3199404445379221e-017 5.3199404445379221e-017 0 3.5265406547380964 0.40314267917801783 2.8961371479600277 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.526541 0.40314272 2.4230249 ;
	setAttr ".rs" 44100;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.2869520651912567 0.16355390398329483 2.4230249995231263 ;
	setAttr ".cbx" -type "double3" 3.7661297012643411 0.64273152577577275 2.4230249995231263 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk[33:49]" -type "float3"  2.220446e-016 -0.97468466
		 0 2.2204463e-016 -0.97468466 0 2.2204463e-016 -0.97468466 0 2.220446e-016 -0.97468466
		 0 2.220446e-016 -0.97468466 0 2.220446e-016 -0.97468466 0 2.220446e-016 -0.97468466
		 0 2.220446e-016 -0.97468466 0 2.220446e-016 -0.97468466 0 2.220446e-016 -0.97468466
		 0 2.2204463e-016 -0.97468466 0 2.2204463e-016 -0.97468466 0 2.220446e-016 -0.97468466
		 0 2.220446e-016 -0.97468466 0 2.220446e-016 -0.97468466 0 2.220446e-016 -0.97468466
		 0 2.2204463e-016 -0.97468466 0;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 2 "f[0:7]" "f[32:39]";
	setAttr ".ix" -type "matrix" 5.3199404445379221e-017 0.23958881803654217 0 0 -5.3199404445379221e-017 0 0.23958881803654217 0
		 0.23958881803654217 -5.3199404445379221e-017 5.3199404445379221e-017 0 3.5265406547380964 0.40314267917801783 2.8961371479600277 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.2348936 0.40314275 2.0050714 ;
	setAttr ".rs" 59684;
	setAttr ".lt" -type "double3" 5.8286708792820718e-016 -5.624793754647106e-017 0.51930204335030694 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.0321233267485539 0.16355391826390128 1.8774507693601326 ;
	setAttr ".cbx" -type "double3" 3.4376638728016764 0.64273158289819843 2.1326919888378395 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk[41:57]" -type "float3"  -1.110223e-015 -1.55613756
		 -1.16295147 -1.1102231e-015 -1.47813058 -1.14044642 -1.1102231e-015 -1.21179795 -1.063609481
		 -1.110223e-015 -1.36781192 -1.10861957 -1.110223e-015 -1.55613756 -1.16295147 -1.110223e-015
		 -1.36781192 -1.10861957 -1.110223e-015 -1.74446309 -1.21728325 -1.110223e-015 -1.74446309
		 -1.21728325 -1.110223e-015 -1.93278873 -1.27161527 -1.110223e-015 -2.12111425 -1.32594728
		 -1.1102231e-015 -2.010795593 -1.29412031 -1.1102231e-015 -2.27712798 -1.37095737
		 -1.110223e-015 -1.93278873 -1.27161527 -1.110223e-015 -2.12111473 -1.3259474 -1.110223e-015
		 -1.74446309 -1.21728325 -1.110223e-015 -1.74446309 -1.21728325 -1.1102231e-015 -1.74446309
		 -1.21728325;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 2 "f[0:7]" "f[32:39]";
	setAttr ".ix" -type "matrix" 5.3199404445379221e-017 0.23958881803654217 0 0 -5.3199404445379221e-017 0 0.23958881803654217 0
		 0.23958881803654217 -5.3199404445379221e-017 5.3199404445379221e-017 0 3.5265406547380964 0.40314267917801783 2.8961371479600277 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9582794 0.40314278 1.5655729 ;
	setAttr ".rs" 47683;
	setAttr ".lt" -type "double3" -8.3266726846886741e-017 -5.592441066528932e-017 0.53028130750695546 ;
	setAttr ".ls" -type "double3" 1 1 1.8660731042516354 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.7555090091542089 0.16355317567236902 1.4379520837571913 ;
	setAttr ".cbx" -type "double3" 3.1610498979418851 0.64273238261215637 1.693193588847026 ;
createNode polyCube -n "polyCube2";
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polySmoothFace -n "polySmoothFace3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace4";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk[57:73]" -type "float3"  1.8626445e-009 0.14046298
		 -2.16628671 -6.6613424e-016 0.19864772 -2.096184731 3.7252896e-009 0.39729619 -1.85685003
		 -6.6613381e-016 0.28092998 -1.99705076 -6.6613381e-016 0.14046298 -2.16628671 -3.7252903e-009
		 0.28093055 -1.99704874 -5.8208327e-011 -1.9296017e-006 -2.33551955 -1.1641599e-010
		 -1.0124614e-006 -2.33551884 -1.8626458e-009 -0.14046431 -2.50475311 -6.6613381e-016
		 -0.28093037 -2.67398763 -6.6613392e-016 -0.19864887 -2.57485366 -3.7252907e-009 -0.39729616
		 -2.814188 -6.6613381e-016 -0.14046432 -2.50475287 -6.6613381e-016 -0.28093103 -2.67398763
		 -6.6613381e-016 -1.0875521e-006 -2.33551836 -1.1641599e-010 -1.187189e-006 -2.33551812
		 -7.7715612e-015 -1.4619291e-006 -2.33551908;
createNode blinn -n "blinn1";
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/RustMixed0078_1_S.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode polyAutoProj -n "polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:431]";
	setAttr ".ix" -type "matrix" 2.1108695349651363 0 0 0 0 2.1108695349651363 0 0 0 0 2.1108695349651363 0
		 3.4729129035245654 2.0275590502356908 5.017793403179799 1;
	setAttr ".s" -type "double3" 4.6434480556213629 4.6434480556213629 4.6434480556213629 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 209 ".tk";
	setAttr ".tk[24]" -type "float3" -0.023589743 -0.063719854 0.023589745 ;
	setAttr ".tk[25]" -type "float3" 3.2013339e-009 -0.063719854 0.033360939 ;
	setAttr ".tk[26]" -type "float3" 0.023589741 -0.063719854 0.023589745 ;
	setAttr ".tk[27]" -type "float3" 0.033360943 -0.063719854 1.1579281e-009 ;
	setAttr ".tk[28]" -type "float3" 0.023589741 -0.063719854 -0.023589743 ;
	setAttr ".tk[29]" -type "float3" 2.860765e-009 -0.063719854 -0.033360939 ;
	setAttr ".tk[30]" -type "float3" -0.023589743 -0.063719854 -0.023589749 ;
	setAttr ".tk[31]" -type "float3" -0.033360939 -0.063719854 1.0217016e-009 ;
	setAttr ".tk[32]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[33]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[38]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[41]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[50]" -type "float3" 0.023964193 -0.054577801 0.023964193 ;
	setAttr ".tk[51]" -type "float3" 3.40567e-009 -0.054577801 0.033890449 ;
	setAttr ".tk[52]" -type "float3" -0.023964198 -0.054577801 0.023964191 ;
	setAttr ".tk[53]" -type "float3" -0.033890475 -0.054577801 7.4924789e-010 ;
	setAttr ".tk[54]" -type "float3" -0.023964191 -0.054577801 -0.023964191 ;
	setAttr ".tk[55]" -type "float3" 3.133219e-009 -0.054577801 -0.033890482 ;
	setAttr ".tk[56]" -type "float3" 0.023964204 -0.054577801 -0.023964198 ;
	setAttr ".tk[57]" -type "float3" 0.033890482 -0.054577801 9.5358865e-010 ;
	setAttr ".tk[82]" -type "float3" 0.023964185 -0.059720192 0.023964185 ;
	setAttr ".tk[83]" -type "float3" 3.4056709e-009 -0.059720192 0.033890478 ;
	setAttr ".tk[84]" -type "float3" -0.023964183 -0.059720192 0.023964183 ;
	setAttr ".tk[85]" -type "float3" -0.033890482 -0.059720192 7.4924789e-010 ;
	setAttr ".tk[86]" -type "float3" -0.023964183 -0.059720192 -0.023964183 ;
	setAttr ".tk[87]" -type "float3" 3.1332181e-009 -0.059720192 -0.033890482 ;
	setAttr ".tk[88]" -type "float3" 0.023964196 -0.059720192 -0.023964183 ;
	setAttr ".tk[89]" -type "float3" 0.033890482 -0.059720192 9.5358799e-010 ;
	setAttr ".tk[90]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[91]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[92]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[93]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[94]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[95]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[96]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[97]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[98]" -type "float3" -2.6077032e-008 1.0128133e-008 0 ;
	setAttr ".tk[99]" -type "float3" 3.7252903e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".tk[100]" -type "float3" -1.3322676e-015 1.0128133e-008 -3.3527613e-008 ;
	setAttr ".tk[101]" -type "float3" -7.4505806e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".tk[102]" -type "float3" 4.0978193e-008 1.0128133e-008 0 ;
	setAttr ".tk[103]" -type "float3" -3.7252903e-009 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".tk[104]" -type "float3" -1.3322676e-015 1.0128133e-008 3.3527613e-008 ;
	setAttr ".tk[105]" -type "float3" 3.7252903e-009 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".tk[106]" -type "float3" -1.3322676e-015 1.0128133e-008 -1.4901161e-008 ;
	setAttr ".tk[107]" -type "float3" 2.2351742e-008 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".tk[108]" -type "float3" 1.8626451e-008 1.0128133e-008 0 ;
	setAttr ".tk[109]" -type "float3" 2.2351742e-008 1.0128133e-008 7.4505806e-009 ;
	setAttr ".tk[110]" -type "float3" -1.3322676e-015 1.0128133e-008 1.4901161e-008 ;
	setAttr ".tk[111]" -type "float3" -3.7252903e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".tk[176]" -type "float3" -0.012726761 -0.063719854 0.030725151 ;
	setAttr ".tk[177]" -type "float3" 0 1.0128133e-008 0 ;
	setAttr ".tk[178]" -type "float3" -1.3322676e-015 1.0128133e-008 0 ;
	setAttr ".tk[179]" -type "float3" -3.7252903e-009 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".tk[180]" -type "float3" 0.012726758 -0.063719854 0.030725151 ;
	setAttr ".tk[181]" -type "float3" -1.4901161e-008 1.0128133e-008 0 ;
	setAttr ".tk[182]" -type "float3" -9.3132257e-009 1.0128133e-008 0 ;
	setAttr ".tk[183]" -type "float3" 0.030725153 -0.063719854 0.012726755 ;
	setAttr ".tk[184]" -type "float3" 2.9802322e-008 1.0128133e-008 0 ;
	setAttr ".tk[185]" -type "float3" -3.7252903e-009 1.0128133e-008 1.8626451e-009 ;
	setAttr ".tk[186]" -type "float3" 0.030725153 -0.063719854 -0.012726753 ;
	setAttr ".tk[187]" -type "float3" -1.4901161e-008 1.0128133e-008 0 ;
	setAttr ".tk[188]" -type "float3" 1.1175871e-008 1.0128133e-008 -1.8626451e-009 ;
	setAttr ".tk[189]" -type "float3" 0.012726758 -0.063719854 -0.030725151 ;
	setAttr ".tk[190]" -type "float3" -1.7763568e-015 1.0128133e-008 -2.9802322e-008 ;
	setAttr ".tk[191]" -type "float3" -9.3132257e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".tk[192]" -type "float3" -0.01272676 -0.063719854 -0.030725151 ;
	setAttr ".tk[193]" -type "float3" 0 1.0128133e-008 0 ;
	setAttr ".tk[194]" -type "float3" -3.7252903e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".tk[195]" -type "float3" -0.030725151 -0.063719854 -0.012726756 ;
	setAttr ".tk[196]" -type "float3" 0 1.0128133e-008 1.110223e-016 ;
	setAttr ".tk[197]" -type "float3" -1.1175871e-008 1.0128133e-008 -1.8626451e-009 ;
	setAttr ".tk[198]" -type "float3" -0.030725151 -0.063719854 0.012726755 ;
	setAttr ".tk[199]" -type "float3" -1.1175871e-008 1.0128133e-008 1.8626451e-009 ;
	setAttr ".tk[208]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[209]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[210]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[211]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[212]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[213]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[214]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[215]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[216]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[217]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[218]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[219]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[220]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[221]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[222]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[223]" -type "float3" 0 0.13710925 0 ;
	setAttr ".tk[224]" -type "float3" 3.2694438e-009 -0.050578136 0.033890482 ;
	setAttr ".tk[225]" -type "float3" 0.023964193 -0.050578136 0.023964191 ;
	setAttr ".tk[226]" -type "float3" 0.012928779 -0.054577801 0.031212855 ;
	setAttr ".tk[227]" -type "float3" -0.023964196 -0.050578136 0.023964191 ;
	setAttr ".tk[228]" -type "float3" -0.012928776 -0.054577801 0.031212855 ;
	setAttr ".tk[229]" -type "float3" -0.033890449 -0.050578136 8.1736096e-010 ;
	setAttr ".tk[230]" -type "float3" -0.031212844 -0.054577801 0.01292878 ;
	setAttr ".tk[231]" -type "float3" -0.023964198 -0.050578136 -0.023964191 ;
	setAttr ".tk[232]" -type "float3" -0.031212855 -0.054577801 -0.012928776 ;
	setAttr ".tk[233]" -type "float3" 2.9969907e-009 -0.050578136 -0.033890482 ;
	setAttr ".tk[234]" -type "float3" -0.012928778 -0.054577801 -0.031212855 ;
	setAttr ".tk[235]" -type "float3" 0.023964193 -0.050578136 -0.023964198 ;
	setAttr ".tk[236]" -type "float3" 0.012928779 -0.054577801 -0.031212844 ;
	setAttr ".tk[237]" -type "float3" 0.033890475 -0.050578136 1.0898155e-009 ;
	setAttr ".tk[238]" -type "float3" 0.03121287 -0.054577801 -0.012928776 ;
	setAttr ".tk[239]" -type "float3" 0.03121287 -0.054577801 0.01292878 ;
	setAttr ".tk[240]" -type "float3" 3.2694438e-009 -0.057434678 0.033890482 ;
	setAttr ".tk[241]" -type "float3" 0.023964193 -0.057434678 0.023964191 ;
	setAttr ".tk[242]" -type "float3" 0.012928787 -0.059720192 0.031212848 ;
	setAttr ".tk[243]" -type "float3" -0.023964196 -0.057434678 0.023964191 ;
	setAttr ".tk[244]" -type "float3" -0.012928776 -0.059720192 0.031212848 ;
	setAttr ".tk[245]" -type "float3" -0.033890449 -0.057434678 8.1736096e-010 ;
	setAttr ".tk[246]" -type "float3" -0.031212844 -0.059720192 0.012928783 ;
	setAttr ".tk[247]" -type "float3" -0.023964198 -0.057434678 -0.023964191 ;
	setAttr ".tk[248]" -type "float3" -0.031212848 -0.059720192 -0.01292878 ;
	setAttr ".tk[249]" -type "float3" 2.9969907e-009 -0.057434678 -0.033890482 ;
	setAttr ".tk[250]" -type "float3" -0.012928778 -0.059720192 -0.031212848 ;
	setAttr ".tk[251]" -type "float3" 0.023964193 -0.057434678 -0.023964198 ;
	setAttr ".tk[252]" -type "float3" 0.012928787 -0.059720192 -0.031212844 ;
	setAttr ".tk[253]" -type "float3" 0.033890475 -0.057434678 1.0898155e-009 ;
	setAttr ".tk[254]" -type "float3" 0.03121285 -0.059720192 -0.012928779 ;
	setAttr ".tk[255]" -type "float3" 0.03121285 -0.059720192 0.012928783 ;
	setAttr ".tk[296]" -type "float3" 3.2694456e-009 -0.062005706 0.033890482 ;
	setAttr ".tk[297]" -type "float3" 0.023964185 -0.062005706 0.023964183 ;
	setAttr ".tk[298]" -type "float3" -0.023964183 -0.062005706 0.023964183 ;
	setAttr ".tk[299]" -type "float3" -0.033890478 -0.062005706 8.173614e-010 ;
	setAttr ".tk[300]" -type "float3" -0.023964183 -0.062005706 -0.023964183 ;
	setAttr ".tk[301]" -type "float3" 2.9969915e-009 -0.062005706 -0.033890482 ;
	setAttr ".tk[302]" -type "float3" 0.023964185 -0.062005706 -0.023964183 ;
	setAttr ".tk[303]" -type "float3" 0.033890482 -0.062005706 1.089815e-009 ;
	setAttr ".tk[304]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[305]" -type "float3" 0.018306574 0.11270406 0.018306572 ;
	setAttr ".tk[306]" -type "float3" 0.025889406 0.11270406 0 ;
	setAttr ".tk[307]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[308]" -type "float3" 1.3320395e-009 0.11270406 0.025889406 ;
	setAttr ".tk[309]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[310]" -type "float3" -0.018306572 0.11270406 0.018306574 ;
	setAttr ".tk[311]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[312]" -type "float3" -0.025889406 0.11270406 -1.6650492e-010 ;
	setAttr ".tk[313]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[314]" -type "float3" -0.018306574 0.11270406 -0.018306574 ;
	setAttr ".tk[315]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[316]" -type "float3" 1.1655346e-009 0.11270406 -0.025889406 ;
	setAttr ".tk[317]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[318]" -type "float3" 0.018306574 0.11270406 -0.018306574 ;
	setAttr ".tk[319]" -type "float3" 0 0.071453251 0 ;
	setAttr ".tk[320]" -type "float3" -3.7252903e-009 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".tk[321]" -type "float3" 1.1175871e-008 1.0128133e-008 0 ;
	setAttr ".tk[346]" -type "float3" 0 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".tk[347]" -type "float3" 1.8626451e-008 1.0128133e-008 0 ;
	setAttr ".tk[348]" -type "float3" -7.4505806e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".tk[349]" -type "float3" -7.4505806e-009 1.0128133e-008 -7.4505806e-009 ;
	setAttr ".tk[350]" -type "float3" 1.8626451e-008 1.0128133e-008 7.4505806e-009 ;
	setAttr ".tk[351]" -type "float3" -1.8626451e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".tk[352]" -type "float3" 7.4505806e-009 1.0128133e-008 -1.6763806e-008 ;
	setAttr ".tk[353]" -type "float3" 7.4505806e-009 1.0128133e-008 7.4505806e-009 ;
	setAttr ".tk[362]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[363]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[364]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[365]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[366]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[367]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[368]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[369]" -type "float3" -1.4901161e-008 0.19977972 -1.4901161e-008 ;
	setAttr ".tk[370]" -type "float3" 0.012928779 -0.050578136 0.031212855 ;
	setAttr ".tk[371]" -type "float3" -0.012928776 -0.050578136 0.031212855 ;
	setAttr ".tk[372]" -type "float3" -0.031212844 -0.050578136 0.01292878 ;
	setAttr ".tk[373]" -type "float3" -0.031212855 -0.050578136 -0.012928776 ;
	setAttr ".tk[374]" -type "float3" -0.012928778 -0.050578136 -0.031212855 ;
	setAttr ".tk[375]" -type "float3" 0.012928779 -0.050578136 -0.031212844 ;
	setAttr ".tk[376]" -type "float3" 0.03121287 -0.050578136 -0.012928776 ;
	setAttr ".tk[377]" -type "float3" 0.03121287 -0.050578136 0.01292878 ;
	setAttr ".tk[378]" -type "float3" 0.012928779 -0.057434678 0.031212855 ;
	setAttr ".tk[379]" -type "float3" -0.012928776 -0.057434678 0.031212855 ;
	setAttr ".tk[380]" -type "float3" -0.031212844 -0.057434678 0.01292878 ;
	setAttr ".tk[381]" -type "float3" -0.031212855 -0.057434678 -0.012928776 ;
	setAttr ".tk[382]" -type "float3" -0.012928778 -0.057434678 -0.031212855 ;
	setAttr ".tk[383]" -type "float3" 0.012928779 -0.057434678 -0.031212844 ;
	setAttr ".tk[384]" -type "float3" 0.03121287 -0.057434678 -0.012928776 ;
	setAttr ".tk[385]" -type "float3" 0.03121287 -0.057434678 0.01292878 ;
	setAttr ".tk[410]" -type "float3" 0.012928787 -0.062005706 0.031212848 ;
	setAttr ".tk[411]" -type "float3" -0.012928776 -0.062005706 0.031212848 ;
	setAttr ".tk[412]" -type "float3" -0.031212844 -0.062005706 0.012928783 ;
	setAttr ".tk[413]" -type "float3" -0.031212848 -0.062005706 -0.01292878 ;
	setAttr ".tk[414]" -type "float3" -0.012928778 -0.062005706 -0.031212848 ;
	setAttr ".tk[415]" -type "float3" 0.012928787 -0.062005706 -0.031212844 ;
	setAttr ".tk[416]" -type "float3" 0.03121285 -0.062005706 -0.012928779 ;
	setAttr ".tk[417]" -type "float3" 0.03121285 -0.062005706 0.012928783 ;
	setAttr ".tk[418]" -type "float3" 0.023843924 0.11270406 0.0098764757 ;
	setAttr ".tk[419]" -type "float3" 0.0098764757 0.11270406 0.023843922 ;
	setAttr ".tk[420]" -type "float3" -0.0098764729 0.11270406 0.023843922 ;
	setAttr ".tk[421]" -type "float3" -0.023843924 0.11270406 0.0098764757 ;
	setAttr ".tk[422]" -type "float3" -0.023843924 0.11270406 -0.0098764757 ;
	setAttr ".tk[423]" -type "float3" -0.0098764747 0.11270406 -0.023843922 ;
	setAttr ".tk[424]" -type "float3" 0.0098764757 0.11270406 -0.023843922 ;
	setAttr ".tk[425]" -type "float3" 0.023843924 0.11270406 -0.0098764757 ;
	setAttr ".tk[426]" -type "float3" 0 1.0128133e-008 1.8626451e-009 ;
	setAttr ".tk[427]" -type "float3" -3.7252903e-009 1.0128133e-008 3.7252903e-009 ;
	setAttr ".tk[428]" -type "float3" 0 1.0128133e-008 3.7252903e-009 ;
	setAttr ".tk[429]" -type "float3" 0 1.0128133e-008 1.8626451e-009 ;
	setAttr ".tk[430]" -type "float3" 0 1.0128133e-008 -1.8626451e-009 ;
	setAttr ".tk[431]" -type "float3" 0 1.0128133e-008 -3.7252903e-009 ;
	setAttr ".tk[432]" -type "float3" -3.7252903e-009 1.0128133e-008 -3.7252903e-009 ;
	setAttr ".tk[433]" -type "float3" 0 1.0128133e-008 -1.8626451e-009 ;
createNode polyAutoProj -n "polyAutoProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:431]";
	setAttr ".ix" -type "matrix" 2.1108695349651363 0 0 0 0 2.1108695349651363 0 0 0 0 2.1108695349651363 0
		 3.4729129035245654 2.0275590502356908 5.017793403179799 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:431]";
	setAttr ".ix" -type "matrix" 2.1108695349651363 0 0 0 0 2.1108695349651363 0 0 0 0 2.1108695349651363 0
		 -3.4654534740657255 2.0275590502356908 5.017793403179799 1;
	setAttr ".s" -type "double3" 4.6434480556213629 4.6434480556213629 4.6434480556213629 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:431]";
	setAttr ".ix" -type "matrix" 2.1108695349651363 0 0 0 0 2.1108695349651363 0 0 0 0 2.1108695349651363 0
		 -3.4654534740657255 2.0275590502356908 5.017793403179799 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:303]";
	setAttr ".ix" -type "matrix" 5.3199404445379221e-017 0.23958881803654217 0 0 -5.3199404445379221e-017 0 0.23958881803654217 0
		 0.23958881803654217 -5.3199404445379221e-017 5.3199404445379221e-017 0 3.5265406547380964 0.40314267917801783 2.8961371479600277 1;
	setAttr ".s" -type "double3" 2.1738153829040989 2.1738153829040989 2.1738153829040989 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:95]";
	setAttr ".ix" -type "matrix" 0.60369554659738145 0 0 0 0 0.42653249361090084 0 0
		 0 0 0.41774768015175379 0 3.5296898211418704 0.43777346980917908 3.0366226713692437 1;
	setAttr ".s" -type "double3" 0.60369554659738167 0.60369554659738167 0.60369554659738167 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:95]";
	setAttr ".ix" -type "matrix" -0.60369554659738145 0 0 0 0 0.42653249361090084 0 0
		 0 0 0.41774768015175379 0 -3.5296898211418704 0.43777346980917908 3.0366226713692437 1;
	setAttr ".s" -type "double3" 0.60369554659738167 0.60369554659738167 0.60369554659738167 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:303]";
	setAttr ".ix" -type "matrix" -5.3199404445379221e-017 0.23958881803654217 0 0 5.3199404445379221e-017 0 0.23958881803654217 0
		 -0.23958881803654217 -5.3199404445379221e-017 5.3199404445379221e-017 0 -3.5265406547380964 0.40314267917801783 2.8961371479600277 1;
	setAttr ".s" -type "double3" 2.1738153829040989 2.1738153829040989 2.1738153829040989 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:431]";
	setAttr ".ix" -type "matrix" 2.1108695349651363 0 0 0 0 2.1108695349651363 0 0 0 0 2.1108695349651363 0
		 -3.4654534740657255 2.0275590502356908 5.017793403179799 1;
	setAttr ".s" -type "double3" 4.6434480556213629 4.6434480556213629 4.6434480556213629 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "materialInfo3";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/white-spatter.jpg";
createNode place2dTexture -n "place2dTexture2";
createNode blinn -n "blinn2";
createNode shadingEngine -n "blinn2SG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo4";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/metal-316803_1280.jpg";
createNode place2dTexture -n "place2dTexture3";
createNode polyAutoProj -n "polyAutoProj10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:191]";
	setAttr ".ix" -type "matrix" 3.8039763144333922 0 1.68599412168366 0 0 0.069445182058224988 0 0
		 -1.68599412168366 0 3.8039763144333922 0 0 0.17503377396029451 0 1;
	setAttr ".s" -type "double3" 5.8498551747811494 5.8498551747811494 5.8498551747811494 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 48 ".tk";
	setAttr ".tk[104]" -type "float3" 0.0066322489 -0.70479488 -0.0066322517 ;
	setAttr ".tk[105]" -type "float3" -5.5905686e-010 -0.70479488 -0.0093794167 ;
	setAttr ".tk[106]" -type "float3" 0.0075097666 -0.70143461 -0.0075097675 ;
	setAttr ".tk[107]" -type "float3" -6.3302608e-010 -0.70143461 -0.010620411 ;
	setAttr ".tk[108]" -type "float3" -0.0066322517 -0.70479488 -0.0066322517 ;
	setAttr ".tk[109]" -type "float3" -0.0075097675 -0.70143461 -0.0075097675 ;
	setAttr ".tk[110]" -type "float3" -0.0093794176 -0.70479488 2.5619723e-010 ;
	setAttr ".tk[111]" -type "float3" -0.010620414 -0.70143461 2.8966912e-010 ;
	setAttr ".tk[112]" -type "float3" -0.0066322517 -0.70479488 0.0066322517 ;
	setAttr ".tk[113]" -type "float3" -0.0075097675 -0.70143461 0.0075097675 ;
	setAttr ".tk[114]" -type "float3" -5.5905686e-010 -0.70479488 0.0093794167 ;
	setAttr ".tk[115]" -type "float3" -6.3302608e-010 -0.70143461 0.010620411 ;
	setAttr ".tk[116]" -type "float3" 0.0066322489 -0.70479488 0.0066322517 ;
	setAttr ".tk[117]" -type "float3" 0.0075097666 -0.70143461 0.0075097675 ;
	setAttr ".tk[118]" -type "float3" 0.0093794176 -0.70479488 1.8422057e-010 ;
	setAttr ".tk[119]" -type "float3" 0.010620414 -0.70143461 2.0804486e-010 ;
	setAttr ".tk[128]" -type "float3" -5.9604144e-010 -0.70311475 -0.0099999132 ;
	setAttr ".tk[129]" -type "float3" -0.0070710089 -0.70311475 -0.0070710089 ;
	setAttr ".tk[130]" -type "float3" -0.0099999141 -0.70311475 2.7297506e-010 ;
	setAttr ".tk[131]" -type "float3" -0.0070710089 -0.70311475 0.0070710089 ;
	setAttr ".tk[132]" -type "float3" -5.9604144e-010 -0.70311475 0.009999915 ;
	setAttr ".tk[133]" -type "float3" 0.0070710075 -0.70311475 0.0070710089 ;
	setAttr ".tk[134]" -type "float3" 0.0099999141 -0.70311475 1.9583921e-010 ;
	setAttr ".tk[135]" -type "float3" 0.0070710075 -0.70311475 -0.0070710089 ;
	setAttr ".tk[176]" -type "float3" 0.021155873 0.32096869 -0.021180008 ;
	setAttr ".tk[177]" -type "float3" -1.2393832e-009 0.32096869 -0.029943053 ;
	setAttr ".tk[178]" -type "float3" -1.2932498e-009 1.202496e-007 -0.030834718 ;
	setAttr ".tk[179]" -type "float3" 0.021794906 1.202496e-007 -0.021806974 ;
	setAttr ".tk[180]" -type "float3" -0.021155883 0.32096869 -0.021180008 ;
	setAttr ".tk[181]" -type "float3" -0.021794908 1.202496e-007 -0.021806974 ;
	setAttr ".tk[182]" -type "float3" -0.029918928 0.32096869 -2.4124778e-005 ;
	setAttr ".tk[183]" -type "float3" -0.030822659 1.202496e-007 -1.2061959e-005 ;
	setAttr ".tk[184]" -type "float3" -0.021155884 0.32096869 0.021131763 ;
	setAttr ".tk[185]" -type "float3" -0.021794908 4.6706268e-007 0.021782849 ;
	setAttr ".tk[186]" -type "float3" -1.8173029e-009 0.32096869 0.029894793 ;
	setAttr ".tk[187]" -type "float3" -1.6558656e-009 4.6706268e-007 0.030810589 ;
	setAttr ".tk[188]" -type "float3" 0.021155873 0.32096869 0.021131763 ;
	setAttr ".tk[189]" -type "float3" 0.021794906 1.202496e-007 0.021782849 ;
	setAttr ".tk[190]" -type "float3" 0.029918928 0.32096869 -2.4124807e-005 ;
	setAttr ".tk[191]" -type "float3" 0.030822659 1.202496e-007 -1.2061912e-005 ;
	setAttr ".tk[192]" -type "float3" -1.9363668e-009 -0.32096872 -0.031726383 ;
	setAttr ".tk[193]" -type "float3" 0.022433938 -0.32096872 -0.02243394 ;
	setAttr ".tk[194]" -type "float3" 0.031726383 -0.32096872 6.2232203e-010 ;
	setAttr ".tk[195]" -type "float3" 0.022433938 -0.32096872 0.022433938 ;
	setAttr ".tk[196]" -type "float3" -2.0723481e-009 -0.32096872 0.031726383 ;
	setAttr ".tk[197]" -type "float3" -0.022433938 -0.32096872 0.022433938 ;
	setAttr ".tk[198]" -type "float3" -0.031726383 -0.32096872 1.0469752e-009 ;
	setAttr ".tk[199]" -type "float3" -0.022433938 -0.32096872 -0.022433938 ;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:191]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n"
		+ "                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"bottom3\\\" -ps 1 100 55 -ps 2 50 45 -ps 3 50 45 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Hypershade\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"hyperShadePanel\\\" -l (localizedPanelLabel(\\\"Hypershade\\\")) -mbv $menusOkayInPanels `\"\n\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Hypershade\\\")) -mbv $menusOkayInPanels  $panelName\"\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Render View\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"renderWindowPanel\\\" -l (localizedPanelLabel(\\\"Render View\\\")) -mbv $menusOkayInPanels `\"\n\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Render View\\\")) -mbv $menusOkayInPanels  $panelName\"\n\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 807 -ast 1 -aet 807 ";
	setAttr ".st" 6;
createNode polyChipOff -n "polyChipOff2";
	setAttr ".ics" -type "componentList" 19 "f[24:31]" "f[65]" "f[67]" "f[69]" "f[71]" "f[73]" "f[75]" "f[77]" "f[79]" "f[81]" "f[83]" "f[85]" "f[87]" "f[89]" "f[91]" "f[93]" "f[95:135]" "f[144:151]" "f[168:175]";
	setAttr ".ix" -type "matrix" 3.8039763144333922 0 1.68599412168366 0 0 0.069445182058224988 0 0
		 -1.68599412168366 0 3.8039763144333922 0 0 0.17503377396029451 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.17503378 0 ;
	setAttr ".rs" 64628;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 1 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:111]";
createNode lambert -n "lambert3";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode file -n "file4";
	setAttr ".cg" -type "float3" 0.67212939 0.67212939 0.67212939 ;
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/ConcreteBare0210_M.jpg";
createNode place2dTexture -n "place2dTexture4";
createNode polyAutoProj -n "polyAutoProj11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:79]";
	setAttr ".ix" -type "matrix" 3.8039763144333922 0 1.68599412168366 0 0 0.069445182058224988 0 0
		 -1.68599412168366 0 3.8039763144333922 0 0 0.17503377396029451 0 1;
	setAttr ".s" -type "double3" 5.0611475851535621 5.0611475851535621 5.0611475851535621 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 1 "f[4:7]";
	setAttr ".ix" -type "matrix" 0.43270353152300806 0 0.0047010261394757058 0 0 0.45770643297037966 0 0
		 -0.01086367081113393 0 0.99994098858708025 0 1.8850656177139375 0.95192264666136284 -0.031718004109998477 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8850657 1.1547817 -0.031718004 ;
	setAttr ".rs" 37315;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.6833407151436015 1.1547816807603268 -0.48860773486341724 ;
	setAttr ".cbx" -type "double3" 2.0867905202842736 1.1547816807603268 0.42517172664342029 ;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[3]" -type "float3" -0.053957433 -0.0033502888 0.053957433 ;
	setAttr ".tk[4]" -type "float3" 9.5847654e-017 -0.0033502888 0.053957433 ;
	setAttr ".tk[5]" -type "float3" 0.053957433 -0.0033502888 0.053957433 ;
	setAttr ".tk[15]" -type "float3" -0.053957433 -0.0033502888 -0.053957433 ;
	setAttr ".tk[16]" -type "float3" 9.5847654e-017 -0.0033502888 -0.053957433 ;
	setAttr ".tk[17]" -type "float3" 0.053957433 -0.0033502888 -0.053957433 ;
	setAttr ".tk[24]" -type "float3" 0.053957433 -0.0033502888 7.488098e-019 ;
	setAttr ".tk[25]" -type "float3" -0.053957433 -0.0033502888 7.488098e-019 ;
	setAttr ".tk[26]" -type "float3" -0.01578331 -0.0019729163 0.015783336 ;
	setAttr ".tk[27]" -type "float3" -0.01578331 -0.0019729163 2.1903779e-019 ;
	setAttr ".tk[28]" -type "float3" -0.01578331 -0.0019729163 -0.015783336 ;
	setAttr ".tk[29]" -type "float3" 2.8036824e-017 -0.0019729163 -0.015783336 ;
	setAttr ".tk[30]" -type "float3" 0.01578331 -0.0019729163 -0.015783336 ;
	setAttr ".tk[31]" -type "float3" 0.01578331 -0.0019729163 2.1903779e-019 ;
	setAttr ".tk[32]" -type "float3" 0.01578331 -0.0019729163 0.015783336 ;
	setAttr ".tk[33]" -type "float3" 2.8036824e-017 -0.0019729163 0.015783336 ;
	setAttr ".tk[34]" -type "float3" 0.026881076 0.0019729203 -0.026881052 ;
	setAttr ".tk[35]" -type "float3" 0.026881076 0.0019729203 -3.7304954e-019 ;
	setAttr ".tk[36]" -type "float3" 0.026881076 0.0019729203 0.026881052 ;
	setAttr ".tk[37]" -type "float3" 2.5717674e-017 0.0019729203 0.026881052 ;
	setAttr ".tk[38]" -type "float3" -0.026881076 0.0019729203 0.026881052 ;
	setAttr ".tk[39]" -type "float3" -0.026881076 0.0019729203 -3.7304954e-019 ;
	setAttr ".tk[40]" -type "float3" -0.026881076 0.0019729203 -0.026881052 ;
	setAttr ".tk[41]" -type "float3" 2.5717674e-017 0.0019729203 -0.026881052 ;
	setAttr ".tk[50]" -type "float3" -0.053957433 0.0033502888 0.053957433 ;
	setAttr ".tk[51]" -type "float3" 9.5847654e-017 0.0033502888 0.053957433 ;
	setAttr ".tk[54]" -type "float3" 0.053957433 0.0033502888 0.053957433 ;
	setAttr ".tk[58]" -type "float3" 9.5847654e-017 0.0033502888 -0.053957433 ;
	setAttr ".tk[59]" -type "float3" -0.053957433 0.0033502888 -0.053957433 ;
	setAttr ".tk[61]" -type "float3" 0.053957433 0.0033502888 -0.053957433 ;
	setAttr ".tk[62]" -type "float3" 0.053957433 0.0033502888 7.488098e-019 ;
	setAttr ".tk[64]" -type "float3" -0.053957433 0.0033502888 7.488098e-019 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 1 "f[4:7]";
	setAttr ".ix" -type "matrix" 0.43270353152300806 0 0.0047010261394757058 0 0 0.45770643297037966 0 0
		 -0.01086367081113393 0 0.99994098858708025 0 1.8850656177139375 0.95192264666136284 -0.031718004109998477 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8850657 1.1988264 -0.031718034 ;
	setAttr ".rs" 34310;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.704422349234461 1.1988264299050555 -0.44085991750470271 ;
	setAttr ".cbx" -type "double3" 2.065708989357975 1.1988264299050555 0.37742385276581125 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[81:89]" -type "float3"  0.047527257 0.096229009 -0.047527257
		 1.2382884e-008 0.096229009 -0.047527257 1.2382884e-008 0.096229009 -2.607722e-009
		 0.047527269 0.096229009 -2.9970375e-009 -0.047527298 0.096229009 -0.047527257 -0.047527298
		 0.096229009 -2.607722e-009 1.2382884e-008 0.096229009 0.047527257 0.047527257 0.096229009
		 0.047527257 -0.047527257 0.096229009 0.047527257;
createNode blinn -n "blinn3";
createNode shadingEngine -n "blinn3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode file -n "file5";
	setAttr ".co" -type "float3" 0.10655375 0.10655375 0.10655375 ;
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/Rubber0044_1_M.jpg";
createNode place2dTexture -n "place2dTexture5";
createNode polyAutoProj -n "polyAutoProj12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:195]";
	setAttr ".ix" -type "matrix" 0.36471978752446654 0 -0.33193208458238621 0 0 2.9796638476757451 0 0
		 0.33193208458238621 0 0.36471978752446654 0 0 -0.35660180444170608 0 1;
	setAttr ".s" -type "double3" 5.9593276953514902 5.9593276953514902 5.9593276953514902 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyChipOff -n "polyChipOff3";
	setAttr ".ics" -type "componentList" 3 "f[4:7]" "f[24:39]" "f[72:87]";
	setAttr ".ix" -type "matrix" 0.432703531523008 0 0.0047010261394756503 0 0 0.45770643297037966 0 0
		 -0.010863670811133708 0 0.99994098858708025 0 1.8850656177139375 0.95192264666136284 -0.031718004109998366 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8850658 1.2325073 -0.031718045 ;
	setAttr ".rs" 39660;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[89:97]" -type "float3"  0.1763753 0.073586106 -0.17637537
		 2.0618242e-007 0.073586106 -0.17637534 2.0618242e-007 0.073586106 -1.4761576e-008
		 0.17637554 0.073586106 -1.7988315e-008 -0.1763753 0.073586106 -0.17637537 -0.1763753
		 0.073586106 -1.6374953e-008 2.0618242e-007 0.073586106 0.17637537 0.17637554 0.073586106
		 0.17637537 -0.1763753 0.073586106 0.17637531;
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:87]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:51]";
createNode blinn -n "blinn4";
createNode shadingEngine -n "blinn4SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode file -n "file6";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/BronzeCopper0016_3_M.jpg";
createNode place2dTexture -n "place2dTexture6";
createNode polyAutoProj -n "polyAutoProj13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:35]";
	setAttr ".ix" -type "matrix" 0.432703531523008 0 0.0047010261394756503 0 0 0.45770643297037966 0 0
		 -0.010863670811133708 0 0.99994098858708025 0 1.8850656177139375 0.95192264666136284 -0.031718004109998366 1;
	setAttr ".s" -type "double3" 1.0363551673139209 1.0363551673139209 1.0363551673139209 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
lockNode -l 1 ;
createNode objectSet -n "barrel:pCylinder8";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr -s 9 ".gn";
createNode groupId -n "barrel:groupId1";
	setAttr ".ihi" 0;
createNode objectSet -n "barrel:group16";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr -s 9 ".gn";
createNode groupId -n "barrel:groupId2";
	setAttr ".ihi" 0;
createNode objectSet -n "barrel:default1";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr -s 9 ".gn";
createNode groupId -n "barrel:groupId3";
	setAttr ".ihi" 0;
createNode shadingEngine -n "barrel:lambert4SG";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 9 ".gn";
createNode materialInfo -n "barrel:materialInfo1";
createNode groupId -n "barrel:groupId4";
	setAttr ".ihi" 0;
createNode lambert -n "barrel:lambert4SG1";
createNode file -n "barrel:lambert4SG1F";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/MayaAssets/RustPaint0016_M.jpg";
createNode place2dTexture -n "barrel:lambert4SG1P2D";
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode objectSet -n "box:polySurface14";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr -s 10 ".gn";
createNode groupId -n "box:groupId1";
	setAttr ".ihi" 0;
createNode objectSet -n "box:group17";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr -s 10 ".gn";
createNode groupId -n "box:groupId2";
	setAttr ".ihi" 0;
createNode objectSet -n "box:group16";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr -s 10 ".gn";
createNode groupId -n "box:groupId3";
	setAttr ".ihi" 0;
createNode objectSet -n "box:polySurface15";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr -s 10 ".gn";
createNode groupId -n "box:groupId4";
	setAttr ".ihi" 0;
createNode objectSet -n "box:default1";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr -s 10 ".gn";
createNode groupId -n "box:groupId5";
	setAttr ".ihi" 0;
createNode shadingEngine -n "box:blinn3SG";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 10 ".gn";
createNode materialInfo -n "box:materialInfo1";
createNode groupId -n "box:groupId6";
	setAttr ".ihi" 0;
createNode phong -n "box:blinn3SG1";
	setAttr ".cp" 2.059999942779541;
createNode file -n "box:blinn3SG1F";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/MayaAssets/metal-plate-rivets.jpg";
createNode place2dTexture -n "box:blinn3SG1P2D";
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupId -n "groupId39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId45";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode groupId -n "groupId49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId50";
	setAttr ".ihi" 0;
createNode groupId -n "groupId51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId53";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	setAttr ".ihi" 0;
createNode groupId -n "groupId55";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	setAttr ".ihi" 0;
createNode groupId -n "groupId63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId65";
	setAttr ".ihi" 0;
createNode groupId -n "groupId66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	setAttr ".ihi" 0;
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	setAttr ".ihi" 0;
createNode groupId -n "groupId73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId74";
	setAttr ".ihi" 0;
createNode groupId -n "groupId75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId77";
	setAttr ".ihi" 0;
createNode groupId -n "groupId78";
	setAttr ".ihi" 0;
createNode groupId -n "groupId79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId80";
	setAttr ".ihi" 0;
createNode groupId -n "groupId81";
	setAttr ".ihi" 0;
createNode groupId -n "groupId82";
	setAttr ".ihi" 0;
createNode groupId -n "groupId83";
	setAttr ".ihi" 0;
createNode groupId -n "groupId84";
	setAttr ".ihi" 0;
createNode groupId -n "groupId85";
	setAttr ".ihi" 0;
createNode groupId -n "groupId86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId87";
	setAttr ".ihi" 0;
createNode groupId -n "groupId88";
	setAttr ".ihi" 0;
createNode groupId -n "groupId89";
	setAttr ".ihi" 0;
createNode groupId -n "groupId90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId93";
	setAttr ".ihi" 0;
createNode groupId -n "groupId94";
	setAttr ".ihi" 0;
createNode groupId -n "groupId95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId96";
	setAttr ".ihi" 0;
createNode groupId -n "groupId97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube3";
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polyAutoProj -n "polyAutoProj14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:23]";
	setAttr ".ix" -type "matrix" 1.7704245993525736 0 -0 0 -0 -0.0016032301779712909 -0.54997843927975554 0
		 0 0.52327765931467474 -0.0015253953154420455 0 0 1.0425296865297811 1.7909657099527521 1;
	setAttr ".s" -type "double3" 1.6288743426962873 1.6288743426962873 1.6288743426962873 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[0]" -type "float3" 0.039976362 0.20603012 -0.20603012 ;
	setAttr ".tk[2]" -type "float3" -0.039976362 0.20603012 -0.20603012 ;
	setAttr ".tk[3]" -type "float3" 0.039976362 -9.1495751e-017 -0.20603012 ;
	setAttr ".tk[5]" -type "float3" -0.039976362 -9.1495751e-017 -0.20603012 ;
	setAttr ".tk[6]" -type "float3" 0.039976362 -0.20603012 -0.20603012 ;
	setAttr ".tk[8]" -type "float3" -0.039976362 -0.20603012 -0.20603012 ;
	setAttr ".tk[9]" -type "float3" 0.039976362 -0.20603012 0 ;
	setAttr ".tk[11]" -type "float3" -0.039976362 -0.20603012 0 ;
	setAttr ".tk[12]" -type "float3" 0.039976362 -0.20603012 -0.024113564 ;
	setAttr ".tk[13]" -type "float3" 0 4.4408921e-016 0.012560544 ;
	setAttr ".tk[14]" -type "float3" -0.039976362 -0.20603012 -0.021772699 ;
	setAttr ".tk[15]" -type "float3" 0.039976362 7.9668266e-016 -0.027240267 ;
	setAttr ".tk[16]" -type "float3" 0 4.4408752e-016 -0.023698511 ;
	setAttr ".tk[17]" -type "float3" -0.039976362 -9.149589e-017 -0.019670298 ;
	setAttr ".tk[18]" -type "float3" 0.039976362 0.20603012 -0.024113564 ;
	setAttr ".tk[19]" -type "float3" 0 4.4408921e-016 0.012560544 ;
	setAttr ".tk[20]" -type "float3" -0.039976362 0.20603012 -0.021772707 ;
	setAttr ".tk[21]" -type "float3" 0.039976362 0.20603012 0 ;
	setAttr ".tk[23]" -type "float3" -0.039976362 0.20603012 0 ;
	setAttr ".tk[24]" -type "float3" -0.039976362 -9.1495751e-017 0 ;
	setAttr ".tk[25]" -type "float3" 0.039976362 -9.1495751e-017 0 ;
select -ne :time1;
	setAttr ".o" 19;
	setAttr ".unw" 19;
select -ne :renderPartition;
	setAttr -s 12 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 12 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 8 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 8 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 6 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId3.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts3.og" "pCubeShape1.i";
connectAttr "groupId4.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "pasted__groupId3.id" "pasted__pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__pCubeShape1.iog.og[0].gco";
connectAttr "pasted__groupParts3.og" "pasted__pCubeShape1.i";
connectAttr "pasted__groupId4.id" "pasted__pCubeShape1.ciog.cog[0].cgid";
connectAttr "polyAutoProj2.out" "pCylinderShape6.i";
connectAttr "pSphere1_visibility.o" "pSphere1.v";
connectAttr "pSphere1_translateX.o" "pSphere1.tx";
connectAttr "pSphere1_translateY.o" "pSphere1.ty";
connectAttr "pSphere1_translateZ.o" "pSphere1.tz";
connectAttr "pSphere1_rotateX.o" "pSphere1.rx";
connectAttr "pSphere1_rotateY.o" "pSphere1.ry";
connectAttr "pSphere1_rotateZ.o" "pSphere1.rz";
connectAttr "pSphere1_scaleX.o" "pSphere1.sx";
connectAttr "pSphere1_scaleY.o" "pSphere1.sy";
connectAttr "pSphere1_scaleZ.o" "pSphere1.sz";
connectAttr "twist1GroupId.id" "pSphereShape1.iog.og[6].gid";
connectAttr "twist1Set.mwc" "pSphereShape1.iog.og[6].gco";
connectAttr "groupId2.id" "pSphereShape1.iog.og[7].gid";
connectAttr "tweakSet1.mwc" "pSphereShape1.iog.og[7].gco";
connectAttr "twist1.og[0]" "pSphereShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "pSphereShape1.twl";
connectAttr "polySphere1.out" "pSphereShape1Orig.i";
connectAttr "twist1.msg" "twist1Handle.sml";
connectAttr "twist1.sa" "twist1HandleShape.sa";
connectAttr "twist1.ea" "twist1HandleShape.ea";
connectAttr "twist1.lb" "twist1HandleShape.lb";
connectAttr "twist1.hb" "twist1HandleShape.hb";
connectAttr "polySmoothFace1.out" "pCylinderShape1.i";
connectAttr "polyAutoProj11.out" "|group5|pCylinder2|polySurface3|polySurfaceShape7.i"
		;
connectAttr "groupId7.id" "|group5|pCylinder2|polySurface3|polySurfaceShape7.iog.og[0].gid"
		;
connectAttr "lambert3SG.mwc" "|group5|pCylinder2|polySurface3|polySurfaceShape7.iog.og[0].gco"
		;
connectAttr "groupParts6.og" "|group5|pCylinder2|polySurface4|polySurfaceShape8.i"
		;
connectAttr "groupId8.id" "|group5|pCylinder2|polySurface4|polySurfaceShape8.iog.og[0].gid"
		;
connectAttr "blinn2SG.mwc" "|group5|pCylinder2|polySurface4|polySurfaceShape8.iog.og[0].gco"
		;
connectAttr "groupId5.id" "pCylinderShape2.iog.og[0].gid";
connectAttr "blinn2SG.mwc" "pCylinderShape2.iog.og[0].gco";
connectAttr "polyChipOff2.out" "pCylinderShape2.i";
connectAttr "groupId6.id" "pCylinderShape2.ciog.cog[0].cgid";
connectAttr "deleteComponent4.og" "pCylinderShape4.i";
connectAttr "groupParts7.og" "pasted__polySurfaceShape2.i";
connectAttr "groupId9.id" "pasted__polySurfaceShape2.iog.og[2].gid";
connectAttr "lambert2SG.mwc" "pasted__polySurfaceShape2.iog.og[2].gco";
connectAttr "groupId10.id" "pasted__polySurfaceShape2.ciog.cog[1].cgid";
connectAttr "polyAutoProj13.out" "|group5|group9|group11|polySurface6|polySurfaceShape10.i"
		;
connectAttr "pasted__polySeparate1.out[0]" "|group5|group9|group11|pasted__polySurface1|pasted__polySurfaceShape1.i"
		;
connectAttr "groupParts8.og" "|group5|group9|group11|polySurface5|polySurfaceShape9.i"
		;
connectAttr "groupId11.id" "|group5|group9|group11|polySurface5|polySurfaceShape9.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|group5|group9|group11|polySurface5|polySurfaceShape9.iog.og[0].gco"
		;
connectAttr "groupId12.id" "|group5|group9|group12|polySurface5|polySurfaceShape5.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|group5|group9|group12|polySurface5|polySurfaceShape5.iog.og[0].gco"
		;
connectAttr "polyAutoProj9.out" "pCylinderShape7.i";
connectAttr "polyAutoProj5.out" "|group7|pCylinder8|pCylinderShape8.i";
connectAttr "polyAutoProj6.out" "|group7|pCube2|pCubeShape2.i";
connectAttr "polyAutoProj8.out" "|group8|pCylinder8|pCylinderShape8.i";
connectAttr "polyAutoProj7.out" "|group8|pCube2|pCubeShape2.i";
connectAttr "box:groupId1.id" "box:polySurfaceShape1.iog.og[0].gid";
connectAttr "box:polySurface14.mwc" "box:polySurfaceShape1.iog.og[0].gco";
connectAttr "box:groupId2.id" "box:polySurfaceShape1.iog.og[1].gid";
connectAttr "box:group17.mwc" "box:polySurfaceShape1.iog.og[1].gco";
connectAttr "box:groupId3.id" "box:polySurfaceShape1.iog.og[2].gid";
connectAttr "box:group16.mwc" "box:polySurfaceShape1.iog.og[2].gco";
connectAttr "box:groupId4.id" "box:polySurfaceShape1.iog.og[3].gid";
connectAttr "box:polySurface15.mwc" "box:polySurfaceShape1.iog.og[3].gco";
connectAttr "box:groupId5.id" "box:polySurfaceShape1.iog.og[4].gid";
connectAttr "box:default1.mwc" "box:polySurfaceShape1.iog.og[4].gco";
connectAttr "box:groupId6.id" "box:polySurfaceShape1.iog.og[5].gid";
connectAttr "box:blinn3SG.mwc" "box:polySurfaceShape1.iog.og[5].gco";
connectAttr "groupId25.id" "|polySurface9|polySurfaceShape9.iog.og[0].gid";
connectAttr "box:polySurface14.mwc" "|polySurface9|polySurfaceShape9.iog.og[0].gco"
		;
connectAttr "groupId26.id" "|polySurface9|polySurfaceShape9.iog.og[1].gid";
connectAttr "box:group17.mwc" "|polySurface9|polySurfaceShape9.iog.og[1].gco";
connectAttr "groupId27.id" "|polySurface9|polySurfaceShape9.iog.og[2].gid";
connectAttr "box:group16.mwc" "|polySurface9|polySurfaceShape9.iog.og[2].gco";
connectAttr "groupId28.id" "|polySurface9|polySurfaceShape9.iog.og[3].gid";
connectAttr "box:polySurface15.mwc" "|polySurface9|polySurfaceShape9.iog.og[3].gco"
		;
connectAttr "groupId29.id" "|polySurface9|polySurfaceShape9.iog.og[4].gid";
connectAttr "box:default1.mwc" "|polySurface9|polySurfaceShape9.iog.og[4].gco";
connectAttr "groupId30.id" "|polySurface9|polySurfaceShape9.iog.og[5].gid";
connectAttr "box:blinn3SG.mwc" "|polySurface9|polySurfaceShape9.iog.og[5].gco";
connectAttr "groupId31.id" "|polySurface10|polySurfaceShape10.iog.og[0].gid";
connectAttr "box:polySurface14.mwc" "|polySurface10|polySurfaceShape10.iog.og[0].gco"
		;
connectAttr "groupId32.id" "|polySurface10|polySurfaceShape10.iog.og[1].gid";
connectAttr "box:group17.mwc" "|polySurface10|polySurfaceShape10.iog.og[1].gco";
connectAttr "groupId33.id" "|polySurface10|polySurfaceShape10.iog.og[2].gid";
connectAttr "box:group16.mwc" "|polySurface10|polySurfaceShape10.iog.og[2].gco";
connectAttr "groupId34.id" "|polySurface10|polySurfaceShape10.iog.og[3].gid";
connectAttr "box:polySurface15.mwc" "|polySurface10|polySurfaceShape10.iog.og[3].gco"
		;
connectAttr "groupId35.id" "|polySurface10|polySurfaceShape10.iog.og[4].gid";
connectAttr "box:default1.mwc" "|polySurface10|polySurfaceShape10.iog.og[4].gco"
		;
connectAttr "groupId36.id" "|polySurface10|polySurfaceShape10.iog.og[5].gid";
connectAttr "box:blinn3SG.mwc" "|polySurface10|polySurfaceShape10.iog.og[5].gco"
		;
connectAttr "groupId37.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr "box:polySurface14.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupId38.id" "polySurfaceShape11.iog.og[1].gid";
connectAttr "box:group17.mwc" "polySurfaceShape11.iog.og[1].gco";
connectAttr "groupId39.id" "polySurfaceShape11.iog.og[2].gid";
connectAttr "box:group16.mwc" "polySurfaceShape11.iog.og[2].gco";
connectAttr "groupId40.id" "polySurfaceShape11.iog.og[3].gid";
connectAttr "box:polySurface15.mwc" "polySurfaceShape11.iog.og[3].gco";
connectAttr "groupId41.id" "polySurfaceShape11.iog.og[4].gid";
connectAttr "box:default1.mwc" "polySurfaceShape11.iog.og[4].gco";
connectAttr "groupId42.id" "polySurfaceShape11.iog.og[5].gid";
connectAttr "box:blinn3SG.mwc" "polySurfaceShape11.iog.og[5].gco";
connectAttr "groupId43.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr "box:polySurface14.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupId44.id" "polySurfaceShape12.iog.og[1].gid";
connectAttr "box:group17.mwc" "polySurfaceShape12.iog.og[1].gco";
connectAttr "groupId45.id" "polySurfaceShape12.iog.og[2].gid";
connectAttr "box:group16.mwc" "polySurfaceShape12.iog.og[2].gco";
connectAttr "groupId46.id" "polySurfaceShape12.iog.og[3].gid";
connectAttr "box:polySurface15.mwc" "polySurfaceShape12.iog.og[3].gco";
connectAttr "groupId47.id" "polySurfaceShape12.iog.og[4].gid";
connectAttr "box:default1.mwc" "polySurfaceShape12.iog.og[4].gco";
connectAttr "groupId48.id" "polySurfaceShape12.iog.og[5].gid";
connectAttr "box:blinn3SG.mwc" "polySurfaceShape12.iog.og[5].gco";
connectAttr "groupId49.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr "box:polySurface14.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupId50.id" "polySurfaceShape13.iog.og[1].gid";
connectAttr "box:group17.mwc" "polySurfaceShape13.iog.og[1].gco";
connectAttr "groupId51.id" "polySurfaceShape13.iog.og[2].gid";
connectAttr "box:group16.mwc" "polySurfaceShape13.iog.og[2].gco";
connectAttr "groupId52.id" "polySurfaceShape13.iog.og[3].gid";
connectAttr "box:polySurface15.mwc" "polySurfaceShape13.iog.og[3].gco";
connectAttr "groupId53.id" "polySurfaceShape13.iog.og[4].gid";
connectAttr "box:default1.mwc" "polySurfaceShape13.iog.og[4].gco";
connectAttr "groupId54.id" "polySurfaceShape13.iog.og[5].gid";
connectAttr "box:blinn3SG.mwc" "polySurfaceShape13.iog.og[5].gco";
connectAttr "groupId55.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr "box:polySurface14.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupId56.id" "polySurfaceShape14.iog.og[1].gid";
connectAttr "box:group17.mwc" "polySurfaceShape14.iog.og[1].gco";
connectAttr "groupId57.id" "polySurfaceShape14.iog.og[2].gid";
connectAttr "box:group16.mwc" "polySurfaceShape14.iog.og[2].gco";
connectAttr "groupId58.id" "polySurfaceShape14.iog.og[3].gid";
connectAttr "box:polySurface15.mwc" "polySurfaceShape14.iog.og[3].gco";
connectAttr "groupId59.id" "polySurfaceShape14.iog.og[4].gid";
connectAttr "box:default1.mwc" "polySurfaceShape14.iog.og[4].gco";
connectAttr "groupId60.id" "polySurfaceShape14.iog.og[5].gid";
connectAttr "box:blinn3SG.mwc" "polySurfaceShape14.iog.og[5].gco";
connectAttr "groupId61.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr "box:polySurface14.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupId62.id" "polySurfaceShape15.iog.og[1].gid";
connectAttr "box:group17.mwc" "polySurfaceShape15.iog.og[1].gco";
connectAttr "groupId63.id" "polySurfaceShape15.iog.og[2].gid";
connectAttr "box:group16.mwc" "polySurfaceShape15.iog.og[2].gco";
connectAttr "groupId64.id" "polySurfaceShape15.iog.og[3].gid";
connectAttr "box:polySurface15.mwc" "polySurfaceShape15.iog.og[3].gco";
connectAttr "groupId65.id" "polySurfaceShape15.iog.og[4].gid";
connectAttr "box:default1.mwc" "polySurfaceShape15.iog.og[4].gco";
connectAttr "groupId66.id" "polySurfaceShape15.iog.og[5].gid";
connectAttr "box:blinn3SG.mwc" "polySurfaceShape15.iog.og[5].gco";
connectAttr "groupId17.id" "|group13|polySurface7|polySurfaceShape7.iog.og[0].gid"
		;
connectAttr "barrel:pCylinder8.mwc" "|group13|polySurface7|polySurfaceShape7.iog.og[0].gco"
		;
connectAttr "groupId18.id" "|group13|polySurface7|polySurfaceShape7.iog.og[1].gid"
		;
connectAttr "barrel:group16.mwc" "|group13|polySurface7|polySurfaceShape7.iog.og[1].gco"
		;
connectAttr "groupId19.id" "|group13|polySurface7|polySurfaceShape7.iog.og[2].gid"
		;
connectAttr "barrel:default1.mwc" "|group13|polySurface7|polySurfaceShape7.iog.og[2].gco"
		;
connectAttr "groupId20.id" "|group13|polySurface7|polySurfaceShape7.iog.og[3].gid"
		;
connectAttr "barrel:lambert4SG.mwc" "|group13|polySurface7|polySurfaceShape7.iog.og[3].gco"
		;
connectAttr "groupId13.id" "|group13|polySurface1|polySurfaceShape1.iog.og[0].gid"
		;
connectAttr "barrel:pCylinder8.mwc" "|group13|polySurface1|polySurfaceShape1.iog.og[0].gco"
		;
connectAttr "groupId14.id" "|group13|polySurface1|polySurfaceShape1.iog.og[1].gid"
		;
connectAttr "barrel:group16.mwc" "|group13|polySurface1|polySurfaceShape1.iog.og[1].gco"
		;
connectAttr "groupId15.id" "|group13|polySurface1|polySurfaceShape1.iog.og[2].gid"
		;
connectAttr "barrel:default1.mwc" "|group13|polySurface1|polySurfaceShape1.iog.og[2].gco"
		;
connectAttr "groupId16.id" "|group13|polySurface1|polySurfaceShape1.iog.og[3].gid"
		;
connectAttr "barrel:lambert4SG.mwc" "|group13|polySurface1|polySurfaceShape1.iog.og[3].gco"
		;
connectAttr "groupId21.id" "|group13|polySurface8|polySurfaceShape8.iog.og[0].gid"
		;
connectAttr "barrel:pCylinder8.mwc" "|group13|polySurface8|polySurfaceShape8.iog.og[0].gco"
		;
connectAttr "groupId22.id" "|group13|polySurface8|polySurfaceShape8.iog.og[1].gid"
		;
connectAttr "barrel:group16.mwc" "|group13|polySurface8|polySurfaceShape8.iog.og[1].gco"
		;
connectAttr "groupId23.id" "|group13|polySurface8|polySurfaceShape8.iog.og[2].gid"
		;
connectAttr "barrel:default1.mwc" "|group13|polySurface8|polySurfaceShape8.iog.og[2].gco"
		;
connectAttr "groupId24.id" "|group13|polySurface8|polySurfaceShape8.iog.og[3].gid"
		;
connectAttr "barrel:lambert4SG.mwc" "|group13|polySurface8|polySurfaceShape8.iog.og[3].gco"
		;
connectAttr "barrel:groupId1.id" "barrel:polySurfaceShape1.iog.og[0].gid";
connectAttr "barrel:pCylinder8.mwc" "barrel:polySurfaceShape1.iog.og[0].gco";
connectAttr "barrel:groupId2.id" "barrel:polySurfaceShape1.iog.og[1].gid";
connectAttr "barrel:group16.mwc" "barrel:polySurfaceShape1.iog.og[1].gco";
connectAttr "barrel:groupId3.id" "barrel:polySurfaceShape1.iog.og[2].gid";
connectAttr "barrel:default1.mwc" "barrel:polySurfaceShape1.iog.og[2].gco";
connectAttr "barrel:groupId4.id" "barrel:polySurfaceShape1.iog.og[3].gid";
connectAttr "barrel:lambert4SG.mwc" "barrel:polySurfaceShape1.iog.og[3].gco";
connectAttr "groupId67.id" "|group14|polySurface7|polySurfaceShape7.iog.og[0].gid"
		;
connectAttr "barrel:pCylinder8.mwc" "|group14|polySurface7|polySurfaceShape7.iog.og[0].gco"
		;
connectAttr "groupId68.id" "|group14|polySurface7|polySurfaceShape7.iog.og[1].gid"
		;
connectAttr "barrel:group16.mwc" "|group14|polySurface7|polySurfaceShape7.iog.og[1].gco"
		;
connectAttr "groupId69.id" "|group14|polySurface7|polySurfaceShape7.iog.og[2].gid"
		;
connectAttr "barrel:default1.mwc" "|group14|polySurface7|polySurfaceShape7.iog.og[2].gco"
		;
connectAttr "groupId70.id" "|group14|polySurface7|polySurfaceShape7.iog.og[3].gid"
		;
connectAttr "barrel:lambert4SG.mwc" "|group14|polySurface7|polySurfaceShape7.iog.og[3].gco"
		;
connectAttr "groupId71.id" "|group14|polySurface1|polySurfaceShape1.iog.og[0].gid"
		;
connectAttr "barrel:pCylinder8.mwc" "|group14|polySurface1|polySurfaceShape1.iog.og[0].gco"
		;
connectAttr "groupId72.id" "|group14|polySurface1|polySurfaceShape1.iog.og[1].gid"
		;
connectAttr "barrel:group16.mwc" "|group14|polySurface1|polySurfaceShape1.iog.og[1].gco"
		;
connectAttr "groupId73.id" "|group14|polySurface1|polySurfaceShape1.iog.og[2].gid"
		;
connectAttr "barrel:default1.mwc" "|group14|polySurface1|polySurfaceShape1.iog.og[2].gco"
		;
connectAttr "groupId74.id" "|group14|polySurface1|polySurfaceShape1.iog.og[3].gid"
		;
connectAttr "barrel:lambert4SG.mwc" "|group14|polySurface1|polySurfaceShape1.iog.og[3].gco"
		;
connectAttr "groupId75.id" "|group14|polySurface8|polySurfaceShape8.iog.og[0].gid"
		;
connectAttr "barrel:pCylinder8.mwc" "|group14|polySurface8|polySurfaceShape8.iog.og[0].gco"
		;
connectAttr "groupId76.id" "|group14|polySurface8|polySurfaceShape8.iog.og[1].gid"
		;
connectAttr "barrel:group16.mwc" "|group14|polySurface8|polySurfaceShape8.iog.og[1].gco"
		;
connectAttr "groupId77.id" "|group14|polySurface8|polySurfaceShape8.iog.og[2].gid"
		;
connectAttr "barrel:default1.mwc" "|group14|polySurface8|polySurfaceShape8.iog.og[2].gco"
		;
connectAttr "groupId78.id" "|group14|polySurface8|polySurfaceShape8.iog.og[3].gid"
		;
connectAttr "barrel:lambert4SG.mwc" "|group14|polySurface8|polySurfaceShape8.iog.og[3].gco"
		;
connectAttr "groupId79.id" "|group14|polySurface9|polySurfaceShape9.iog.og[0].gid"
		;
connectAttr "barrel:pCylinder8.mwc" "|group14|polySurface9|polySurfaceShape9.iog.og[0].gco"
		;
connectAttr "groupId80.id" "|group14|polySurface9|polySurfaceShape9.iog.og[1].gid"
		;
connectAttr "barrel:group16.mwc" "|group14|polySurface9|polySurfaceShape9.iog.og[1].gco"
		;
connectAttr "groupId81.id" "|group14|polySurface9|polySurfaceShape9.iog.og[2].gid"
		;
connectAttr "barrel:default1.mwc" "|group14|polySurface9|polySurfaceShape9.iog.og[2].gco"
		;
connectAttr "groupId82.id" "|group14|polySurface9|polySurfaceShape9.iog.og[3].gid"
		;
connectAttr "barrel:lambert4SG.mwc" "|group14|polySurface9|polySurfaceShape9.iog.og[3].gco"
		;
connectAttr "groupId83.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr "barrel:pCylinder8.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupId84.id" "polySurfaceShape16.iog.og[1].gid";
connectAttr "barrel:group16.mwc" "polySurfaceShape16.iog.og[1].gco";
connectAttr "groupId85.id" "polySurfaceShape16.iog.og[2].gid";
connectAttr "barrel:default1.mwc" "polySurfaceShape16.iog.og[2].gco";
connectAttr "groupId86.id" "polySurfaceShape16.iog.og[3].gid";
connectAttr "barrel:lambert4SG.mwc" "polySurfaceShape16.iog.og[3].gco";
connectAttr "groupId87.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr "box:polySurface14.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupId88.id" "polySurfaceShape17.iog.og[1].gid";
connectAttr "box:group17.mwc" "polySurfaceShape17.iog.og[1].gco";
connectAttr "groupId89.id" "polySurfaceShape17.iog.og[2].gid";
connectAttr "box:group16.mwc" "polySurfaceShape17.iog.og[2].gco";
connectAttr "groupId90.id" "polySurfaceShape17.iog.og[3].gid";
connectAttr "box:polySurface15.mwc" "polySurfaceShape17.iog.og[3].gco";
connectAttr "groupId91.id" "polySurfaceShape17.iog.og[4].gid";
connectAttr "box:default1.mwc" "polySurfaceShape17.iog.og[4].gco";
connectAttr "groupId92.id" "polySurfaceShape17.iog.og[5].gid";
connectAttr "box:blinn3SG.mwc" "polySurfaceShape17.iog.og[5].gco";
connectAttr "groupId93.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr "box:polySurface14.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupId94.id" "polySurfaceShape18.iog.og[1].gid";
connectAttr "box:group17.mwc" "polySurfaceShape18.iog.og[1].gco";
connectAttr "groupId95.id" "polySurfaceShape18.iog.og[2].gid";
connectAttr "box:group16.mwc" "polySurfaceShape18.iog.og[2].gco";
connectAttr "groupId96.id" "polySurfaceShape18.iog.og[3].gid";
connectAttr "box:polySurface15.mwc" "polySurfaceShape18.iog.og[3].gco";
connectAttr "groupId97.id" "polySurfaceShape18.iog.og[4].gid";
connectAttr "box:default1.mwc" "polySurfaceShape18.iog.og[4].gco";
connectAttr "groupId98.id" "polySurfaceShape18.iog.og[5].gid";
connectAttr "box:blinn3SG.mwc" "polySurfaceShape18.iog.og[5].gco";
connectAttr "polyAutoProj14.out" "pCubeShape3.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "barrel:lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "box:blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "barrel:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "box:blinn3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "twist1GroupParts.og" "twist1.ip[0].ig";
connectAttr "twist1GroupId.id" "twist1.ip[0].gi";
connectAttr "twist1HandleShape.dd" "twist1.dd";
connectAttr "twist1Handle.wm" "twist1.ma";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "twist1GroupId.msg" "twist1Set.gn" -na;
connectAttr "pSphereShape1.iog.og[6]" "twist1Set.dsm" -na;
connectAttr "twist1.msg" "twist1Set.ub[0]";
connectAttr "tweak1.og[0]" "twist1GroupParts.ig";
connectAttr "twist1GroupId.id" "twist1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pSphereShape1.iog.og[7]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "polyAutoProj12.out" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "polyCylinder1.out" "deleteComponent1.ig";
connectAttr "phong1.oc" "phong1SG.ss";
connectAttr "pCylinderShape1.iog" "phong1SG.dsm" -na;
connectAttr "phong1SG.msg" "materialInfo1.sg";
connectAttr "phong1.msg" "materialInfo1.m";
connectAttr "polyCylinder2.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySplitRing1.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing1.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak5.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCylinderShape2.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace7.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak6.ip";
connectAttr "polyCube1.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polyTweak7.out" "polySplitRing9.ip";
connectAttr "pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing8.out" "polyTweak7.ip";
connectAttr "polySplitRing9.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyTweak8.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyChipOff1.ip";
connectAttr "pCubeShape1.wm" "polyChipOff1.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak9.ip";
connectAttr "polyChipOff1.out" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "pasted__pCubeShape1.o" "pasted__polySeparate1.ip";
connectAttr "pasted__polyChipOff1.out" "pasted__groupParts3.ig";
connectAttr "pasted__groupId3.id" "pasted__groupParts3.gi";
connectAttr "pasted__polyTweak9.out" "pasted__polyChipOff1.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyChipOff1.mp";
connectAttr "pasted__polyExtrudeFace9.out" "pasted__polyTweak9.ip";
connectAttr "pasted__polyTweak8.out" "pasted__polyExtrudeFace9.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace9.mp";
connectAttr "pasted__polyExtrudeFace8.out" "pasted__polyTweak8.ip";
connectAttr "pasted__polySplitRing9.out" "pasted__polyExtrudeFace8.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace8.mp";
connectAttr "pasted__polyTweak7.out" "pasted__polySplitRing9.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polySplitRing9.mp";
connectAttr "pasted__polySplitRing8.out" "pasted__polyTweak7.ip";
connectAttr "pasted__polySplitRing7.out" "pasted__polySplitRing8.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polySplitRing8.mp";
connectAttr "pasted__polyCube1.out" "pasted__polySplitRing7.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polySplitRing7.mp";
connectAttr "pasted__phong1SG.msg" "pasted__materialInfo1.sg";
connectAttr "pasted__phong1.msg" "pasted__materialInfo1.m";
connectAttr "pasted__phong1.oc" "pasted__phong1SG.ss";
connectAttr "|group5|group9|group11|pasted__polySurface1|pasted__polySurfaceShape1.iog" "pasted__phong1SG.dsm"
		 -na;
connectAttr "|group5|group9|group12|pasted__polySurface1|pasted__polySurfaceShape1.iog" "pasted__phong1SG.dsm"
		 -na;
connectAttr "deleteComponent1.og" "polySplitRing10.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polySmoothFace1.ip";
connectAttr "|group5|pCylinder4|polySurfaceShape3.o" "polyExtrudeFace10.ip";
connectAttr "pCylinderShape4.wm" "polyExtrudeFace10.mp";
connectAttr "polyTweak10.out" "polyExtrudeFace11.ip";
connectAttr "pCylinderShape4.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak10.ip";
connectAttr "polyExtrudeFace11.out" "deleteComponent4.ig";
connectAttr "polyCylinder3.out" "polySplitRing11.ip";
connectAttr "pCylinderShape6.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCylinderShape6.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "pCylinderShape6.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "pCylinderShape6.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "pCylinderShape6.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "pCylinderShape6.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "pCylinderShape6.wm" "polySplitRing17.mp";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "pCylinderShape6.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polySmoothFace2.ip";
connectAttr "polyCylinder4.out" "polyExtrudeFace12.ip";
connectAttr "|group7|pCylinder8|pCylinderShape8.wm" "polyExtrudeFace12.mp";
connectAttr "polyTweak11.out" "polyExtrudeFace13.ip";
connectAttr "|group7|pCylinder8|pCylinderShape8.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace14.ip";
connectAttr "|group7|pCylinder8|pCylinderShape8.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak12.ip";
connectAttr "polyExtrudeFace14.out" "polyExtrudeFace15.ip";
connectAttr "|group7|pCylinder8|pCylinderShape8.wm" "polyExtrudeFace15.mp";
connectAttr "polyCube2.out" "polySmoothFace3.ip";
connectAttr "polyTweak13.out" "polySmoothFace4.ip";
connectAttr "polyExtrudeFace15.out" "polyTweak13.ip";
connectAttr "file1.oc" "blinn1.c";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "|group8|pCube2|pCubeShape2.iog" "blinn1SG.dsm" -na;
connectAttr "|group8|pCylinder8|pCylinderShape8.iog" "blinn1SG.dsm" -na;
connectAttr "|group7|pCylinder8|pCylinderShape8.iog" "blinn1SG.dsm" -na;
connectAttr "|group7|pCube2|pCubeShape2.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape7.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape6.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo2.sg";
connectAttr "blinn1.msg" "materialInfo2.m";
connectAttr "file1.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "polyTweak14.out" "polyAutoProj1.ip";
connectAttr "pCylinderShape6.wm" "polyAutoProj1.mp";
connectAttr "polySmoothFace2.out" "polyTweak14.ip";
connectAttr "polyAutoProj1.out" "polyAutoProj2.ip";
connectAttr "pCylinderShape6.wm" "polyAutoProj2.mp";
connectAttr "polySurfaceShape4.o" "polyAutoProj3.ip";
connectAttr "pCylinderShape7.wm" "polyAutoProj3.mp";
connectAttr "polyAutoProj3.out" "polyAutoProj4.ip";
connectAttr "pCylinderShape7.wm" "polyAutoProj4.mp";
connectAttr "polySmoothFace4.out" "polyAutoProj5.ip";
connectAttr "|group7|pCylinder8|pCylinderShape8.wm" "polyAutoProj5.mp";
connectAttr "polySmoothFace3.out" "polyAutoProj6.ip";
connectAttr "|group7|pCube2|pCubeShape2.wm" "polyAutoProj6.mp";
connectAttr "|group8|pCube2|polySurfaceShape5.o" "polyAutoProj7.ip";
connectAttr "|group8|pCube2|pCubeShape2.wm" "polyAutoProj7.mp";
connectAttr "|group8|pCylinder8|polySurfaceShape6.o" "polyAutoProj8.ip";
connectAttr "|group8|pCylinder8|pCylinderShape8.wm" "polyAutoProj8.mp";
connectAttr "polyAutoProj4.out" "polyAutoProj9.ip";
connectAttr "pCylinderShape7.wm" "polyAutoProj9.mp";
connectAttr "file2.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pasted__polySurfaceShape2.iog.og[2]" "lambert2SG.dsm" -na;
connectAttr "pasted__polySurfaceShape2.ciog.cog[1]" "lambert2SG.dsm" -na;
connectAttr "|group5|group9|group11|polySurface5|polySurfaceShape9.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group5|group9|group12|polySurface5|polySurfaceShape5.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "groupId9.msg" "lambert2SG.gn" -na;
connectAttr "groupId10.msg" "lambert2SG.gn" -na;
connectAttr "groupId11.msg" "lambert2SG.gn" -na;
connectAttr "groupId12.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "file2.msg" "materialInfo3.t" -na;
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "file3.oc" "blinn2.c";
connectAttr "blinn2.oc" "blinn2SG.ss";
connectAttr "pCylinderShape2.iog.og[0]" "blinn2SG.dsm" -na;
connectAttr "|group5|pCylinder2|polySurface4|polySurfaceShape8.iog.og[0]" "blinn2SG.dsm"
		 -na;
connectAttr "pCylinderShape5.iog" "blinn2SG.dsm" -na;
connectAttr "pCylinderShape4.iog" "blinn2SG.dsm" -na;
connectAttr "groupId7.msg" "blinn2SG.gn" -na;
connectAttr "groupId8.msg" "blinn2SG.gn" -na;
connectAttr "blinn2SG.msg" "materialInfo4.sg";
connectAttr "blinn2.msg" "materialInfo4.m";
connectAttr "file3.msg" "materialInfo4.t" -na;
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "polyTweak15.out" "polyAutoProj10.ip";
connectAttr "pCylinderShape2.wm" "polyAutoProj10.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak15.ip";
connectAttr "polyAutoProj10.out" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "groupParts4.og" "polyChipOff2.ip";
connectAttr "pCylinderShape2.wm" "polyChipOff2.mp";
connectAttr "pCylinderShape2.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts5.ig";
connectAttr "groupId7.id" "groupParts5.gi";
connectAttr "polySeparate2.out[1]" "groupParts6.ig";
connectAttr "groupId8.id" "groupParts6.gi";
connectAttr "file4.oc" "lambert3.c";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "|group5|pCylinder2|polySurface3|polySurfaceShape7.iog.og[0]" "lambert3SG.dsm"
		 -na;
connectAttr "lambert3SG.msg" "materialInfo5.sg";
connectAttr "lambert3.msg" "materialInfo5.m";
connectAttr "file4.msg" "materialInfo5.t" -na;
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "groupParts5.og" "polyAutoProj11.ip";
connectAttr "|group5|pCylinder2|polySurface3|polySurfaceShape7.wm" "polyAutoProj11.mp"
		;
connectAttr "polyTweak16.out" "polyExtrudeFace16.ip";
connectAttr "pasted__polySurfaceShape2.wm" "polyExtrudeFace16.mp";
connectAttr "pasted__polySeparate1.out[1]" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace17.ip";
connectAttr "pasted__polySurfaceShape2.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak17.ip";
connectAttr "file5.oc" "blinn3.c";
connectAttr "blinn3.oc" "blinn3SG.ss";
connectAttr "pSphereShape1.iog" "blinn3SG.dsm" -na;
connectAttr "blinn3SG.msg" "materialInfo6.sg";
connectAttr "blinn3.msg" "materialInfo6.m";
connectAttr "file5.msg" "materialInfo6.t" -na;
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr "pSphereShape1Orig.w" "polyAutoProj12.ip";
connectAttr "pSphereShape1.wm" "polyAutoProj12.mp";
connectAttr "polyTweak18.out" "polyChipOff3.ip";
connectAttr "pasted__polySurfaceShape2.wm" "polyChipOff3.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak18.ip";
connectAttr "pasted__polySurfaceShape2.o" "polySeparate3.ip";
connectAttr "polyChipOff3.out" "groupParts7.ig";
connectAttr "groupId9.id" "groupParts7.gi";
connectAttr "polySeparate3.out[0]" "groupParts8.ig";
connectAttr "groupId11.id" "groupParts8.gi";
connectAttr "file6.oc" "blinn4.c";
connectAttr "blinn4.oc" "blinn4SG.ss";
connectAttr "|group5|group9|group11|polySurface6|polySurfaceShape10.iog" "blinn4SG.dsm"
		 -na;
connectAttr "|group5|group9|group12|polySurface6|polySurfaceShape6.iog" "blinn4SG.dsm"
		 -na;
connectAttr "blinn4SG.msg" "materialInfo7.sg";
connectAttr "blinn4.msg" "materialInfo7.m";
connectAttr "file6.msg" "materialInfo7.t" -na;
connectAttr "place2dTexture6.c" "file6.c";
connectAttr "place2dTexture6.tf" "file6.tf";
connectAttr "place2dTexture6.rf" "file6.rf";
connectAttr "place2dTexture6.mu" "file6.mu";
connectAttr "place2dTexture6.mv" "file6.mv";
connectAttr "place2dTexture6.s" "file6.s";
connectAttr "place2dTexture6.wu" "file6.wu";
connectAttr "place2dTexture6.wv" "file6.wv";
connectAttr "place2dTexture6.re" "file6.re";
connectAttr "place2dTexture6.of" "file6.of";
connectAttr "place2dTexture6.r" "file6.ro";
connectAttr "place2dTexture6.n" "file6.n";
connectAttr "place2dTexture6.vt1" "file6.vt1";
connectAttr "place2dTexture6.vt2" "file6.vt2";
connectAttr "place2dTexture6.vt3" "file6.vt3";
connectAttr "place2dTexture6.vc1" "file6.vc1";
connectAttr "place2dTexture6.o" "file6.uv";
connectAttr "place2dTexture6.ofs" "file6.fs";
connectAttr "polySeparate3.out[1]" "polyAutoProj13.ip";
connectAttr "|group5|group9|group11|polySurface6|polySurfaceShape10.wm" "polyAutoProj13.mp"
		;
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "barrel:groupId1.msg" "barrel:pCylinder8.gn" -na;
connectAttr "groupId13.msg" "barrel:pCylinder8.gn" -na;
connectAttr "groupId17.msg" "barrel:pCylinder8.gn" -na;
connectAttr "groupId21.msg" "barrel:pCylinder8.gn" -na;
connectAttr "groupId67.msg" "barrel:pCylinder8.gn" -na;
connectAttr "groupId71.msg" "barrel:pCylinder8.gn" -na;
connectAttr "groupId75.msg" "barrel:pCylinder8.gn" -na;
connectAttr "groupId79.msg" "barrel:pCylinder8.gn" -na;
connectAttr "groupId83.msg" "barrel:pCylinder8.gn" -na;
connectAttr "barrel:polySurfaceShape1.iog.og[0]" "barrel:pCylinder8.dsm" -na;
connectAttr "|group13|polySurface1|polySurfaceShape1.iog.og[0]" "barrel:pCylinder8.dsm"
		 -na;
connectAttr "|group13|polySurface7|polySurfaceShape7.iog.og[0]" "barrel:pCylinder8.dsm"
		 -na;
connectAttr "|group13|polySurface8|polySurfaceShape8.iog.og[0]" "barrel:pCylinder8.dsm"
		 -na;
connectAttr "|group14|polySurface7|polySurfaceShape7.iog.og[0]" "barrel:pCylinder8.dsm"
		 -na;
connectAttr "|group14|polySurface1|polySurfaceShape1.iog.og[0]" "barrel:pCylinder8.dsm"
		 -na;
connectAttr "|group14|polySurface8|polySurfaceShape8.iog.og[0]" "barrel:pCylinder8.dsm"
		 -na;
connectAttr "|group14|polySurface9|polySurfaceShape9.iog.og[0]" "barrel:pCylinder8.dsm"
		 -na;
connectAttr "polySurfaceShape16.iog.og[0]" "barrel:pCylinder8.dsm" -na;
connectAttr "barrel:groupId2.msg" "barrel:group16.gn" -na;
connectAttr "groupId14.msg" "barrel:group16.gn" -na;
connectAttr "groupId18.msg" "barrel:group16.gn" -na;
connectAttr "groupId22.msg" "barrel:group16.gn" -na;
connectAttr "groupId68.msg" "barrel:group16.gn" -na;
connectAttr "groupId72.msg" "barrel:group16.gn" -na;
connectAttr "groupId76.msg" "barrel:group16.gn" -na;
connectAttr "groupId80.msg" "barrel:group16.gn" -na;
connectAttr "groupId84.msg" "barrel:group16.gn" -na;
connectAttr "barrel:polySurfaceShape1.iog.og[1]" "barrel:group16.dsm" -na;
connectAttr "|group13|polySurface1|polySurfaceShape1.iog.og[1]" "barrel:group16.dsm"
		 -na;
connectAttr "|group13|polySurface7|polySurfaceShape7.iog.og[1]" "barrel:group16.dsm"
		 -na;
connectAttr "|group13|polySurface8|polySurfaceShape8.iog.og[1]" "barrel:group16.dsm"
		 -na;
connectAttr "|group14|polySurface7|polySurfaceShape7.iog.og[1]" "barrel:group16.dsm"
		 -na;
connectAttr "|group14|polySurface1|polySurfaceShape1.iog.og[1]" "barrel:group16.dsm"
		 -na;
connectAttr "|group14|polySurface8|polySurfaceShape8.iog.og[1]" "barrel:group16.dsm"
		 -na;
connectAttr "|group14|polySurface9|polySurfaceShape9.iog.og[1]" "barrel:group16.dsm"
		 -na;
connectAttr "polySurfaceShape16.iog.og[1]" "barrel:group16.dsm" -na;
connectAttr "barrel:groupId3.msg" "barrel:default1.gn" -na;
connectAttr "groupId15.msg" "barrel:default1.gn" -na;
connectAttr "groupId19.msg" "barrel:default1.gn" -na;
connectAttr "groupId23.msg" "barrel:default1.gn" -na;
connectAttr "groupId69.msg" "barrel:default1.gn" -na;
connectAttr "groupId73.msg" "barrel:default1.gn" -na;
connectAttr "groupId77.msg" "barrel:default1.gn" -na;
connectAttr "groupId81.msg" "barrel:default1.gn" -na;
connectAttr "groupId85.msg" "barrel:default1.gn" -na;
connectAttr "barrel:polySurfaceShape1.iog.og[2]" "barrel:default1.dsm" -na;
connectAttr "|group13|polySurface1|polySurfaceShape1.iog.og[2]" "barrel:default1.dsm"
		 -na;
connectAttr "|group13|polySurface7|polySurfaceShape7.iog.og[2]" "barrel:default1.dsm"
		 -na;
connectAttr "|group13|polySurface8|polySurfaceShape8.iog.og[2]" "barrel:default1.dsm"
		 -na;
connectAttr "|group14|polySurface7|polySurfaceShape7.iog.og[2]" "barrel:default1.dsm"
		 -na;
connectAttr "|group14|polySurface1|polySurfaceShape1.iog.og[2]" "barrel:default1.dsm"
		 -na;
connectAttr "|group14|polySurface8|polySurfaceShape8.iog.og[2]" "barrel:default1.dsm"
		 -na;
connectAttr "|group14|polySurface9|polySurfaceShape9.iog.og[2]" "barrel:default1.dsm"
		 -na;
connectAttr "polySurfaceShape16.iog.og[2]" "barrel:default1.dsm" -na;
connectAttr "barrel:lambert4SG1.oc" "barrel:lambert4SG.ss";
connectAttr "barrel:groupId4.msg" "barrel:lambert4SG.gn" -na;
connectAttr "groupId16.msg" "barrel:lambert4SG.gn" -na;
connectAttr "groupId20.msg" "barrel:lambert4SG.gn" -na;
connectAttr "groupId24.msg" "barrel:lambert4SG.gn" -na;
connectAttr "groupId70.msg" "barrel:lambert4SG.gn" -na;
connectAttr "groupId74.msg" "barrel:lambert4SG.gn" -na;
connectAttr "groupId78.msg" "barrel:lambert4SG.gn" -na;
connectAttr "groupId82.msg" "barrel:lambert4SG.gn" -na;
connectAttr "groupId86.msg" "barrel:lambert4SG.gn" -na;
connectAttr "barrel:polySurfaceShape1.iog.og[3]" "barrel:lambert4SG.dsm" -na;
connectAttr "|group13|polySurface1|polySurfaceShape1.iog.og[3]" "barrel:lambert4SG.dsm"
		 -na;
connectAttr "|group13|polySurface7|polySurfaceShape7.iog.og[3]" "barrel:lambert4SG.dsm"
		 -na;
connectAttr "|group13|polySurface8|polySurfaceShape8.iog.og[3]" "barrel:lambert4SG.dsm"
		 -na;
connectAttr "|group14|polySurface7|polySurfaceShape7.iog.og[3]" "barrel:lambert4SG.dsm"
		 -na;
connectAttr "|group14|polySurface1|polySurfaceShape1.iog.og[3]" "barrel:lambert4SG.dsm"
		 -na;
connectAttr "|group14|polySurface8|polySurfaceShape8.iog.og[3]" "barrel:lambert4SG.dsm"
		 -na;
connectAttr "|group14|polySurface9|polySurfaceShape9.iog.og[3]" "barrel:lambert4SG.dsm"
		 -na;
connectAttr "polySurfaceShape16.iog.og[3]" "barrel:lambert4SG.dsm" -na;
connectAttr "pCubeShape3.iog" "barrel:lambert4SG.dsm" -na;
connectAttr "barrel:lambert4SG.msg" "barrel:materialInfo1.sg";
connectAttr "barrel:lambert4SG1.msg" "barrel:materialInfo1.m";
connectAttr "barrel:lambert4SG1F.msg" "barrel:materialInfo1.t" -na;
connectAttr "barrel:lambert4SG1F.oc" "barrel:lambert4SG1.c";
connectAttr "barrel:lambert4SG1P2D.c" "barrel:lambert4SG1F.c";
connectAttr "barrel:lambert4SG1P2D.tf" "barrel:lambert4SG1F.tf";
connectAttr "barrel:lambert4SG1P2D.rf" "barrel:lambert4SG1F.rf";
connectAttr "barrel:lambert4SG1P2D.s" "barrel:lambert4SG1F.s";
connectAttr "barrel:lambert4SG1P2D.wu" "barrel:lambert4SG1F.wu";
connectAttr "barrel:lambert4SG1P2D.wv" "barrel:lambert4SG1F.wv";
connectAttr "barrel:lambert4SG1P2D.re" "barrel:lambert4SG1F.re";
connectAttr "barrel:lambert4SG1P2D.of" "barrel:lambert4SG1F.of";
connectAttr "barrel:lambert4SG1P2D.r" "barrel:lambert4SG1F.ro";
connectAttr "barrel:lambert4SG1P2D.o" "barrel:lambert4SG1F.uv";
connectAttr "barrel:lambert4SG1P2D.ofs" "barrel:lambert4SG1F.fs";
connectAttr "box:groupId1.msg" "box:polySurface14.gn" -na;
connectAttr "groupId25.msg" "box:polySurface14.gn" -na;
connectAttr "groupId31.msg" "box:polySurface14.gn" -na;
connectAttr "groupId37.msg" "box:polySurface14.gn" -na;
connectAttr "groupId43.msg" "box:polySurface14.gn" -na;
connectAttr "groupId49.msg" "box:polySurface14.gn" -na;
connectAttr "groupId55.msg" "box:polySurface14.gn" -na;
connectAttr "groupId61.msg" "box:polySurface14.gn" -na;
connectAttr "groupId87.msg" "box:polySurface14.gn" -na;
connectAttr "groupId93.msg" "box:polySurface14.gn" -na;
connectAttr "box:polySurfaceShape1.iog.og[0]" "box:polySurface14.dsm" -na;
connectAttr "|polySurface9|polySurfaceShape9.iog.og[0]" "box:polySurface14.dsm" 
		-na;
connectAttr "|polySurface10|polySurfaceShape10.iog.og[0]" "box:polySurface14.dsm"
		 -na;
connectAttr "polySurfaceShape11.iog.og[0]" "box:polySurface14.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" "box:polySurface14.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" "box:polySurface14.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" "box:polySurface14.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" "box:polySurface14.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" "box:polySurface14.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" "box:polySurface14.dsm" -na;
connectAttr "box:groupId2.msg" "box:group17.gn" -na;
connectAttr "groupId26.msg" "box:group17.gn" -na;
connectAttr "groupId32.msg" "box:group17.gn" -na;
connectAttr "groupId38.msg" "box:group17.gn" -na;
connectAttr "groupId44.msg" "box:group17.gn" -na;
connectAttr "groupId50.msg" "box:group17.gn" -na;
connectAttr "groupId56.msg" "box:group17.gn" -na;
connectAttr "groupId62.msg" "box:group17.gn" -na;
connectAttr "groupId88.msg" "box:group17.gn" -na;
connectAttr "groupId94.msg" "box:group17.gn" -na;
connectAttr "box:polySurfaceShape1.iog.og[1]" "box:group17.dsm" -na;
connectAttr "|polySurface9|polySurfaceShape9.iog.og[1]" "box:group17.dsm" -na;
connectAttr "|polySurface10|polySurfaceShape10.iog.og[1]" "box:group17.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[1]" "box:group17.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[1]" "box:group17.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[1]" "box:group17.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[1]" "box:group17.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[1]" "box:group17.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[1]" "box:group17.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[1]" "box:group17.dsm" -na;
connectAttr "box:groupId3.msg" "box:group16.gn" -na;
connectAttr "groupId27.msg" "box:group16.gn" -na;
connectAttr "groupId33.msg" "box:group16.gn" -na;
connectAttr "groupId39.msg" "box:group16.gn" -na;
connectAttr "groupId45.msg" "box:group16.gn" -na;
connectAttr "groupId51.msg" "box:group16.gn" -na;
connectAttr "groupId57.msg" "box:group16.gn" -na;
connectAttr "groupId63.msg" "box:group16.gn" -na;
connectAttr "groupId89.msg" "box:group16.gn" -na;
connectAttr "groupId95.msg" "box:group16.gn" -na;
connectAttr "box:polySurfaceShape1.iog.og[2]" "box:group16.dsm" -na;
connectAttr "|polySurface9|polySurfaceShape9.iog.og[2]" "box:group16.dsm" -na;
connectAttr "|polySurface10|polySurfaceShape10.iog.og[2]" "box:group16.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[2]" "box:group16.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[2]" "box:group16.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[2]" "box:group16.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[2]" "box:group16.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[2]" "box:group16.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[2]" "box:group16.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[2]" "box:group16.dsm" -na;
connectAttr "box:groupId4.msg" "box:polySurface15.gn" -na;
connectAttr "groupId28.msg" "box:polySurface15.gn" -na;
connectAttr "groupId34.msg" "box:polySurface15.gn" -na;
connectAttr "groupId40.msg" "box:polySurface15.gn" -na;
connectAttr "groupId46.msg" "box:polySurface15.gn" -na;
connectAttr "groupId52.msg" "box:polySurface15.gn" -na;
connectAttr "groupId58.msg" "box:polySurface15.gn" -na;
connectAttr "groupId64.msg" "box:polySurface15.gn" -na;
connectAttr "groupId90.msg" "box:polySurface15.gn" -na;
connectAttr "groupId96.msg" "box:polySurface15.gn" -na;
connectAttr "box:polySurfaceShape1.iog.og[3]" "box:polySurface15.dsm" -na;
connectAttr "|polySurface9|polySurfaceShape9.iog.og[3]" "box:polySurface15.dsm" 
		-na;
connectAttr "|polySurface10|polySurfaceShape10.iog.og[3]" "box:polySurface15.dsm"
		 -na;
connectAttr "polySurfaceShape11.iog.og[3]" "box:polySurface15.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[3]" "box:polySurface15.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[3]" "box:polySurface15.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[3]" "box:polySurface15.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[3]" "box:polySurface15.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[3]" "box:polySurface15.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[3]" "box:polySurface15.dsm" -na;
connectAttr "box:groupId5.msg" "box:default1.gn" -na;
connectAttr "groupId29.msg" "box:default1.gn" -na;
connectAttr "groupId35.msg" "box:default1.gn" -na;
connectAttr "groupId41.msg" "box:default1.gn" -na;
connectAttr "groupId47.msg" "box:default1.gn" -na;
connectAttr "groupId53.msg" "box:default1.gn" -na;
connectAttr "groupId59.msg" "box:default1.gn" -na;
connectAttr "groupId65.msg" "box:default1.gn" -na;
connectAttr "groupId91.msg" "box:default1.gn" -na;
connectAttr "groupId97.msg" "box:default1.gn" -na;
connectAttr "box:polySurfaceShape1.iog.og[4]" "box:default1.dsm" -na;
connectAttr "|polySurface9|polySurfaceShape9.iog.og[4]" "box:default1.dsm" -na;
connectAttr "|polySurface10|polySurfaceShape10.iog.og[4]" "box:default1.dsm" -na
		;
connectAttr "polySurfaceShape11.iog.og[4]" "box:default1.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[4]" "box:default1.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[4]" "box:default1.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[4]" "box:default1.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[4]" "box:default1.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[4]" "box:default1.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[4]" "box:default1.dsm" -na;
connectAttr "box:blinn3SG1.oc" "box:blinn3SG.ss";
connectAttr "box:groupId6.msg" "box:blinn3SG.gn" -na;
connectAttr "groupId30.msg" "box:blinn3SG.gn" -na;
connectAttr "groupId36.msg" "box:blinn3SG.gn" -na;
connectAttr "groupId42.msg" "box:blinn3SG.gn" -na;
connectAttr "groupId48.msg" "box:blinn3SG.gn" -na;
connectAttr "groupId54.msg" "box:blinn3SG.gn" -na;
connectAttr "groupId60.msg" "box:blinn3SG.gn" -na;
connectAttr "groupId66.msg" "box:blinn3SG.gn" -na;
connectAttr "groupId92.msg" "box:blinn3SG.gn" -na;
connectAttr "groupId98.msg" "box:blinn3SG.gn" -na;
connectAttr "box:polySurfaceShape1.iog.og[5]" "box:blinn3SG.dsm" -na;
connectAttr "|polySurface9|polySurfaceShape9.iog.og[5]" "box:blinn3SG.dsm" -na;
connectAttr "|polySurface10|polySurfaceShape10.iog.og[5]" "box:blinn3SG.dsm" -na
		;
connectAttr "polySurfaceShape11.iog.og[5]" "box:blinn3SG.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[5]" "box:blinn3SG.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[5]" "box:blinn3SG.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[5]" "box:blinn3SG.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[5]" "box:blinn3SG.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[5]" "box:blinn3SG.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[5]" "box:blinn3SG.dsm" -na;
connectAttr "box:blinn3SG.msg" "box:materialInfo1.sg";
connectAttr "box:blinn3SG1.msg" "box:materialInfo1.m";
connectAttr "box:blinn3SG1F.msg" "box:materialInfo1.t" -na;
connectAttr "box:blinn3SG1F.oc" "box:blinn3SG1.c";
connectAttr "box:blinn3SG1P2D.c" "box:blinn3SG1F.c";
connectAttr "box:blinn3SG1P2D.tf" "box:blinn3SG1F.tf";
connectAttr "box:blinn3SG1P2D.rf" "box:blinn3SG1F.rf";
connectAttr "box:blinn3SG1P2D.s" "box:blinn3SG1F.s";
connectAttr "box:blinn3SG1P2D.wu" "box:blinn3SG1F.wu";
connectAttr "box:blinn3SG1P2D.wv" "box:blinn3SG1F.wv";
connectAttr "box:blinn3SG1P2D.re" "box:blinn3SG1F.re";
connectAttr "box:blinn3SG1P2D.of" "box:blinn3SG1F.of";
connectAttr "box:blinn3SG1P2D.r" "box:blinn3SG1F.ro";
connectAttr "box:blinn3SG1P2D.o" "box:blinn3SG1F.uv";
connectAttr "box:blinn3SG1P2D.ofs" "box:blinn3SG1F.fs";
connectAttr "polyTweak19.out" "polyAutoProj14.ip";
connectAttr "pCubeShape3.wm" "polyAutoProj14.mp";
connectAttr "polyCube3.out" "polyTweak19.ip";
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn4SG.pa" ":renderPartition.st" -na;
connectAttr "barrel:lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "box:blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn4.msg" ":defaultShaderList1.s" -na;
connectAttr "barrel:lambert4SG1.msg" ":defaultShaderList1.s" -na;
connectAttr "box:blinn3SG1.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "barrel:lambert4SG1P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "box:blinn3SG1P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "barrel:lambert4SG1F.msg" ":defaultTextureList1.tx" -na;
connectAttr "box:blinn3SG1F.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/RustMixed0078_1_S.jpg\" 2969370075 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/RustMixed0078_1_S.jpg\" \"sourceImages\"\n1\n\"file2\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/white-spatter.jpg\" 151827891 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/white-spatter.jpg\" \"sourceImages\"\n2\n\"file3\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/metal-316803_1280.jpg\" 1482661929 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/metal-316803_1280.jpg\" \"sourceImages\"\n3\n\"file4\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/ConcreteBare0210_M.jpg\" 3942781958 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/ConcreteBare0210_M.jpg\" \"sourceImages\"\n4\n\"file5\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/Rubber0044_1_M.jpg\" 4213662566 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/Rubber0044_1_M.jpg\" \"sourceImages\"\n5\n\"file6\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/BronzeCopper0016_3_M.jpg\" 774528691 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/BronzeCopper0016_3_M.jpg\" \"sourceImages\"\n6\n\"barrel:lambert4SG1F\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/MayaAssets/RustPaint0016_M.jpg\" 4000259226 \"G:/New folder (2)/Escape Menu/Assets/MayaAssets/RustPaint0016_M.jpg\" \"sourceImages\"\n7\n\"box:blinn3SG1F\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/MayaAssets/metal-plate-rivets.jpg\" 2427746660 \"G:/New folder (2)/Escape Menu/Assets/MayaAssets/metal-plate-rivets.jpg\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of MagnetosphereMachine.ma
