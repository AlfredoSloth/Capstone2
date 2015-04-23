//Maya ASCII 2015 scene
//Name: Warehouse.ma
//Last modified: Sun, Apr 19, 2015 02:59:19 PM
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
	setAttr ".t" -type "double3" 2.2336474064688785 7.4213843071256971 -16.088287955440595 ;
	setAttr ".r" -type "double3" -24.938352734366894 -5952.2000000027383 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 19.626146681680005;
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
	setAttr ".t" -type "double3" 0.031218587809454357 0.53334349319571817 -100.1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.9872566879416353;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0.66362269520254402 -0.081862718037535753 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 2.6101138865663027;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0 1.0165072305815757 0 ;
	setAttr ".s" -type "double3" 10.643455895724815 2.0183383814810396 3.9022504996203957 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54015335440635681 0.48548462986946106 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group1";
createNode transform -n "group2";
	setAttr ".t" -type "double3" 2.6202908905609889e-016 2.1396298854374489 0 ;
	setAttr ".s" -type "double3" -1 -1 -1 ;
createNode transform -n "pCube2" -p "group2";
	setAttr ".t" -type "double3" 0 1.0695343351736357 2.1546146153923829 ;
	setAttr ".s" -type "double3" 4.6630391049388766 1.8023482839603806 0.71090092392324045 ;
createNode mesh -n "pCubeShape2" -p "|group2|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "|group2|pCube2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.15625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0.375 0 0.4375 0
		 0.4375 0.0625 0.5 0 0.5625 0 0.5 0.0625 0.5625 0.0625 0.4375 0.125 0.5 0.125 0.4375
		 0.1875 0.5625 0.125 0.5 0.1875 0.5625 0.1875 0.4375 0.25 0.375 0.3125 0.5 0.25 0.4375
		 0.3125 0.375 0.375 0.5625 0.25 0.625 0.25 0.625 0.3125 0.5 0.3125 0.5625 0.3125 0.4375
		 0.375 0.5 0.375 0.5625 0.375 0.625 0.375 0.375 0.875 0.4375 0.875 0.375 0.9375 0.5
		 0.875 0.4375 1 0.4375 0.9375 0.375 1 0.5625 0.875 0.625 0.875 0.625 0.9375 0.625
		 1 0.5625 1 0.5 0.9375 0.5625 0.9375 0.5 1 0.625 0 0.6875 0 0.75 0 0.75 0.0625 0.625
		 0.0625 0.6875 0.0625 0.75 0.25 0.625 0.125 0.6875 0.125 0.75 0.125 0.75 0.1875 0.6875
		 0.25 0.625 0.1875 0.6875 0.1875 0.25 0 0.3125 0 0.375 0.0625 0.375 0.125 0.25 0.0625
		 0.3125 0.0625 0.25 0.125 0.3125 0.125 0.375 0.1875 0.375 0.25 0.3125 0.25 0.25 0.1875
		 0.3125 0.1875 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 57 ".vt[0:56]"  -0.3888889 -0.3888889 0.38888893 0 -0.4375 0.4375
		 0.3888889 -0.3888889 0.38888893 -0.4375 0 0.4375 0 0 0.5 0.4375 0 0.4375 -0.3888889 0.3888889 0.38888893
		 0 0.4375 0.4375 0.3888889 0.3888889 0.38888893 -0.4375 0.4375 0 0 0.5 0 0.4375 0.4375 0
		 -0.4375 -0.4375 0 0 -0.5 0 0.4375 -0.4375 0 0.5 0 0 -0.5 0 0 0 -0.25 0.5 -0.25 0 0.5
		 0.25 -0.4375 0.4375 0.4375 -0.25 0.4375 0.25 0 0.5 -0.4375 0.25 0.4375 0 0.25 0.5
		 -0.25 0.4375 0.4375 0.4375 0.25 0.4375 0.25 0.4375 0.4375 -0.4375 0.4375 0.25 0 0.5 0.25
		 -0.25 0.5 0 0.4375 0.4375 0.25 0.25 0.5 0 -0.25 -0.5 0 0.25 -0.5 0 -0.4375 -0.4375 0.25
		 0 -0.5 0.25 0.4375 -0.4375 0.25 0.5 -0.25 0 0.5 0 0.25 0.5 0.25 0 -0.5 -0.25 0 -0.5 0 0.25
		 -0.5 0.25 0 -0.25 -0.4375 0.4375 -0.4375 -0.25 0.4375 -0.25 -0.25 0.5 0.25 -0.25 0.5
		 -0.25 0.25 0.5 0.25 0.25 0.5 -0.25 0.5 0.25 0.25 0.5 0.25 -0.25 -0.5 0.25 0.25 -0.5 0.25
		 0.5 -0.25 0.25 0.5 0.25 0.25 -0.5 -0.25 0.25 -0.5 0.25 0.25;
	setAttr -s 104 ".ed[0:103]"  0 43 1 43 1 1 1 19 1 19 2 1 3 18 1 18 4 1
		 4 21 1 21 5 1 6 24 1 24 7 1 7 26 1 26 8 1 9 29 0 29 10 0 10 31 0 31 11 0 12 32 0
		 32 13 0 13 33 0 33 14 0 0 44 1 44 3 1 1 17 1 17 4 1 2 20 1 20 5 1 3 22 1 22 6 1 4 23 1
		 23 7 1 5 25 1 25 8 1 6 27 1 27 9 1 7 28 1 28 10 1 8 30 1 30 11 1 12 34 1 34 0 1 13 35 1
		 35 1 1 14 36 1 36 2 1 15 38 1 38 5 1 14 37 0 37 15 0 15 39 0 39 11 0 16 41 1 41 3 1
		 12 40 0 40 16 0 16 42 0 42 9 0 43 45 1 45 44 1 17 45 1 18 45 1 19 46 1 46 17 1 20 46 1
		 21 46 1 18 47 1 47 22 1 23 47 1 24 47 1 21 48 1 48 23 1 25 48 1 26 48 1 24 49 1 49 27 1
		 28 49 1 29 49 1 26 50 1 50 28 1 30 50 1 31 50 1 32 51 1 51 34 1 35 51 1 43 51 1 33 52 1
		 52 35 1 36 52 1 19 52 1 36 53 1 53 20 1 37 53 1 38 53 1 38 54 1 54 25 1 39 54 1 30 54 1
		 34 55 1 55 40 1 44 55 1 41 55 1 41 56 1 56 42 1 22 56 1 27 56 1;
	setAttr -s 48 -ch 192 ".fc[0:47]" -type "polyFaces" 
		f 4 0 56 57 -21
		mu 0 4 0 1 2 58
		f 4 1 22 58 -57
		mu 0 4 1 3 5 2
		f 4 -59 23 -6 59
		mu 0 4 2 5 8 7
		f 4 -58 -60 -5 -22
		mu 0 4 58 2 7 59
		f 4 2 60 61 -23
		mu 0 4 3 4 6 5
		f 4 3 24 62 -61
		mu 0 4 4 42 46 6
		f 4 -63 25 -8 63
		mu 0 4 6 46 49 10
		f 4 -62 -64 -7 -24
		mu 0 4 5 6 10 8
		f 4 4 64 65 -27
		mu 0 4 59 7 9 64
		f 4 5 28 66 -65
		mu 0 4 7 8 11 9
		f 4 -67 29 -10 67
		mu 0 4 9 11 15 13
		f 4 -66 -68 -9 -28
		mu 0 4 64 9 13 65
		f 4 6 68 69 -29
		mu 0 4 8 10 12 11
		f 4 7 30 70 -69
		mu 0 4 10 49 54 12
		f 4 -71 31 -12 71
		mu 0 4 12 54 19 18
		f 4 -70 -72 -11 -30
		mu 0 4 11 12 18 15
		f 4 8 72 73 -33
		mu 0 4 65 13 16 14
		f 4 9 34 74 -73
		mu 0 4 13 15 21 16
		f 4 -75 35 -14 75
		mu 0 4 16 21 24 23
		f 4 -74 -76 -13 -34
		mu 0 4 14 16 23 17
		f 4 10 76 77 -35
		mu 0 4 15 18 22 21
		f 4 11 36 78 -77
		mu 0 4 18 19 20 22
		f 4 -79 37 -16 79
		mu 0 4 22 20 26 25
		f 4 -78 -80 -15 -36
		mu 0 4 21 22 25 24
		f 4 16 80 81 -39
		mu 0 4 27 28 32 29
		f 4 17 40 82 -81
		mu 0 4 28 30 39 32
		f 4 -83 41 -2 83
		mu 0 4 32 39 41 31
		f 4 -82 -84 -1 -40
		mu 0 4 29 32 31 33
		f 4 18 84 85 -41
		mu 0 4 30 34 40 39
		f 4 19 42 86 -85
		mu 0 4 34 35 36 40
		f 4 -87 43 -4 87
		mu 0 4 40 36 37 38
		f 4 -86 -88 -3 -42
		mu 0 4 39 40 38 41
		f 4 -44 88 89 -25
		mu 0 4 42 43 47 46
		f 4 -43 46 90 -89
		mu 0 4 43 44 45 47
		f 4 -91 47 44 91
		mu 0 4 47 45 51 50
		f 4 -90 -92 45 -26
		mu 0 4 46 47 50 49
		f 4 -46 92 93 -31
		mu 0 4 49 50 55 54
		f 4 -45 48 94 -93
		mu 0 4 50 51 52 55
		f 4 -95 49 -38 95
		mu 0 4 55 52 48 53
		f 4 -94 -96 -37 -32
		mu 0 4 54 55 53 19
		f 4 38 96 97 -53
		mu 0 4 56 57 61 60
		f 4 39 20 98 -97
		mu 0 4 57 0 58 61
		f 4 -99 21 -52 99
		mu 0 4 61 58 59 63
		f 4 -98 -100 -51 -54
		mu 0 4 60 61 63 62
		f 4 50 100 101 -55
		mu 0 4 62 63 68 67
		f 4 51 26 102 -101
		mu 0 4 63 59 64 68
		f 4 -103 27 32 103
		mu 0 4 68 64 65 66
		f 4 -102 -104 33 -56
		mu 0 4 67 68 66 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere1SmoothProxyGroup";
	setAttr ".rp" -type "double3" 3.344804158089687e-007 2.5523732278642961 0 ;
	setAttr ".sp" -type "double3" 3.344804158089687e-007 2.5523732278642961 0 ;
createNode transform -n "pSphere2";
	setAttr ".t" -type "double3" 0 1.8884804434214715 0 ;
	setAttr ".s" -type "double3" 9.2513503509526807 1 3.5901742622127073 ;
createNode mesh -n "pSphereShape1" -p "pSphere2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.0000318288803101 0.50000011920928955 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group3";
createNode transform -n "group4";
	setAttr ".t" -type "double3" 0 0.075136534551454637 0.086341888163873268 ;
createNode transform -n "group5";
createNode transform -n "pCube3" -p "group5";
	setAttr ".t" -type "double3" 0 0.027180008444772304 -3.1555484767855466 ;
	setAttr ".s" -type "double3" 1.5058280560629878 0.038642467384297975 1 ;
createNode mesh -n "pCubeShape3" -p "|group5|pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube4" -p "group5";
	setAttr ".t" -type "double3" 0 0.065628288525712772 -3.1425853731630742 ;
	setAttr ".s" -type "double3" 1.5058280560629878 0.038642467384297975 0.94074911688361829 ;
createNode mesh -n "pCubeShape4" -p "|group5|pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "group5";
	setAttr ".t" -type "double3" 0 0.10231654299622694 -3.0692065886216735 ;
	setAttr ".s" -type "double3" 1.5058280560629878 0.038642467384297975 1 ;
createNode mesh -n "pCubeShape5" -p "|group5|pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "group5";
	setAttr ".t" -type "double3" 0 0.14076482307716742 -3.0582821466399364 ;
	setAttr ".s" -type "double3" 1.5058280560629878 0.038642467384297975 0.94074911688361829 ;
createNode mesh -n "pCubeShape6" -p "|group5|pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group6";
	setAttr ".t" -type "double3" 0 0.15288381894400466 0.18723395792070999 ;
createNode transform -n "pCube3" -p "group6";
	setAttr ".t" -type "double3" 0 0.027180008444772304 -3.1726353639726934 ;
	setAttr ".s" -type "double3" 1.5058280560629878 0.038642467384297975 1 ;
createNode mesh -n "pCubeShape3" -p "|group6|pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4" -p "group6";
	setAttr ".t" -type "double3" 0 0.065628288525712772 -3.1569094273963394 ;
	setAttr ".s" -type "double3" 1.5058280560629878 0.038642467384297975 0.94074911688361829 ;
createNode mesh -n "pCubeShape4" -p "|group6|pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "group6";
	setAttr ".t" -type "double3" 0 0.10231654299622694 -3.0860221409929647 ;
	setAttr ".s" -type "double3" 1.5058280560629878 0.038642467384297975 1 ;
createNode mesh -n "pCubeShape5" -p "|group6|pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "group6";
	setAttr ".t" -type "double3" 0 0.14076482307716742 -3.0701086873067065 ;
	setAttr ".s" -type "double3" 1.5058280560629878 0.038642467384297975 0.94074911688361829 ;
createNode mesh -n "pCubeShape6" -p "|group6|pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "nurbsCube1";
	setAttr ".t" -type "double3" 0 0.56058072816790294 -2.4813009489239377 ;
	setAttr ".s" -type "double3" 1 0.51843239374891958 0.082508824645376871 ;
createNode transform -n "topnurbsCube1" -p "nurbsCube1";
createNode nurbsSurface -n "topnurbsCubeShape1" -p "topnurbsCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "bottomnurbsCube1" -p "nurbsCube1";
createNode nurbsSurface -n "bottomnurbsCubeShape1" -p "bottomnurbsCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "leftnurbsCube1" -p "nurbsCube1";
createNode nurbsSurface -n "leftnurbsCubeShape1" -p "leftnurbsCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "rightnurbsCube1" -p "nurbsCube1";
createNode nurbsSurface -n "rightnurbsCubeShape1" -p "rightnurbsCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "frontnurbsCube1" -p "nurbsCube1";
createNode nurbsSurface -n "frontnurbsCubeShape1" -p "frontnurbsCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "backnurbsCube1" -p "nurbsCube1";
createNode nurbsSurface -n "backnurbsCubeShape1" -p "backnurbsCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" 5.5302129009009855 0.97820336358036264 0 ;
	setAttr ".s" -type "double3" 0.034883332816358914 1.6188405214909136 1.5256514663002316 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group7";
createNode transform -n "pCube8" -p "group7";
	setAttr ".t" -type "double3" -0.4214914628662636 0.53370384178274144 -2.5237909052407863 ;
	setAttr ".s" -type "double3" 0.039493047228751868 0.079736744013977248 0.0038325095998845964 ;
createNode mesh -n "pCubeShape8" -p "|group7|pCube8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[4:11]" -type "float3"  0 0 -1.5767525 0 0 -1.5767525 
		0 0 -1.5767525 0 0 -1.5767525 1.937151e-007 -1.937151e-007 0 -1.937151e-007 -1.937151e-007 
		0 1.937151e-007 1.937151e-007 0 -1.937151e-007 1.937151e-007 0;
createNode transform -n "pCube9" -p "group7";
	setAttr ".t" -type "double3" -0.4214914628662636 0.53370384178274144 -2.5307893553610534 ;
	setAttr ".s" -type "double3" 0.019355580908101442 0.039079055894869368 0.0018783166872886081 ;
createNode mesh -n "pCubeShape9" -p "|group7|pCube9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[4:11]" -type "float3"  0 0 -1.5767525 0 0 -1.5767525 
		0 0 -1.5767525 0 0 -1.5767525 1.937151e-007 -1.937151e-007 0 -1.937151e-007 -1.937151e-007 
		0 1.937151e-007 1.937151e-007 0 -1.937151e-007 1.937151e-007 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group8";
	setAttr ".t" -type "double3" 0.85 0 0 ;
createNode transform -n "pCube8" -p "group8";
	setAttr ".t" -type "double3" -0.4214914628662636 0.53370384178274144 -2.5237909052407863 ;
	setAttr ".s" -type "double3" 0.039493047228751868 0.079736744013977248 0.0038325095998845964 ;
createNode mesh -n "pCubeShape8" -p "|group8|pCube8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[4:11]" -type "float3"  0 0 -1.5767525 0 0 -1.5767525 
		0 0 -1.5767525 0 0 -1.5767525 1.937151e-007 -1.937151e-007 0 -1.937151e-007 -1.937151e-007 
		0 1.937151e-007 1.937151e-007 0 -1.937151e-007 1.937151e-007 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "group8";
	setAttr ".t" -type "double3" -0.4214914628662636 0.53370384178274144 -2.5307893553610534 ;
	setAttr ".s" -type "double3" 0.019355580908101442 0.039079055894869368 0.0018783166872886081 ;
createNode mesh -n "pCubeShape9" -p "|group8|pCube9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[4:11]" -type "float3"  0 0 -1.5767525 0 0 -1.5767525 
		0 0 -1.5767525 0 0 -1.5767525 1.937151e-007 -1.937151e-007 0 -1.937151e-007 -1.937151e-007 
		0 1.937151e-007 1.937151e-007 0 -1.937151e-007 1.937151e-007 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group9";
createNode transform -n "group10";
	setAttr ".t" -type "double3" 0 0 -0.76022734560183591 ;
createNode transform -n "group11";
createNode transform -n "pCube10" -p "group11";
	setAttr ".t" -type "double3" 5.567077346553317 0.97820336358036264 0.38056196270196513 ;
	setAttr ".s" -type "double3" 0.034883332816358914 1.6188405214909136 0.757 ;
createNode mesh -n "pCubeShape10" -p "|group11|pCube10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.46602881385479122 0.50000004947651178 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "|group11|pCube10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "group11";
	setAttr ".t" -type "double3" 5.567077346553317 0.97820336358036264 -0.37966538289987078 ;
	setAttr ".s" -type "double3" 0.034883332816358914 1.6188405214909136 0.757 ;
createNode mesh -n "pCubeShape11" -p "|group11|pCube11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.46602872444782406 0.5000000789295882 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "|group11|pCube11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape4" -p "|group11|pCube11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875 0 0.875
		 0.25 0.625 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[8]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[9]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[10]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[11]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[12]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[13]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[14]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[15]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[24]" -type "float3" -0.82081729 0.022757964 0.022757962 ;
	setAttr ".pt[25]" -type "float3" -0.82081729 0.022757964 -0.022757962 ;
	setAttr ".pt[26]" -type "float3" -0.82081729 -0.022757964 0.022757962 ;
	setAttr ".pt[27]" -type "float3" -0.82081729 -0.022757964 -0.022757962 ;
	setAttr -s 28 ".vt[0:27]"  -0.5 -0.5 0.49999994 0.5 -0.5 0.49999994
		 -0.5 0.50000018 0.49999994 0.5 0.50000018 0.49999994 -0.5 0.50000018 -0.5000003 0.5 0.50000018 -0.5000003
		 -0.5 -0.5 -0.5000003 0.5 -0.5 -0.5000003 0.5 -0.48681685 -0.48681724 0.5 -0.48681685 0.48681682
		 0.5 0.48681706 -0.48681724 0.5 0.48681706 0.48681682 0.5 -0.46408173 -0.46408212
		 0.5 -0.46408173 0.4640817 0.5 0.46408218 -0.46408212 0.5 0.46408218 0.4640817 0.5 -0.37873924 -0.3787396
		 0.5 -0.37873924 0.37873918 0.5 0.37873954 -0.3787396 0.5 0.37873954 0.37873918 0.5 -0.36925673 -0.36925715
		 0.5 -0.36925673 0.36925662 0.5 0.36925709 -0.36925715 0.5 0.36925709 0.36925662 0.5 -0.36925673 -0.36925715
		 0.5 -0.36925673 0.36925662 0.5 0.36925709 -0.36925715 0.5 0.36925709 0.36925662;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 14 12 0 11 15 0 15 14 0 13 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 18 16 0 15 19 0 19 18 0 17 19 0 16 20 0 17 21 0 20 21 0 18 22 0 22 20 0 19 23 0
		 23 22 0 21 23 0 20 24 0 21 25 0 24 25 0 22 26 0 26 24 0 23 27 0 27 26 0 25 27 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -47 -49 -51 -52
		mu 0 4 30 31 32 33
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -12 12 14 -14
		mu 0 4 1 10 15 14
		f 4 -10 15 16 -13
		mu 0 4 10 11 16 15
		f 4 -8 17 18 -16
		mu 0 4 11 3 17 16
		f 4 -6 13 19 -18
		mu 0 4 3 1 14 17
		f 4 -15 20 22 -22
		mu 0 4 14 15 19 18
		f 4 -17 23 24 -21
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 21 27 -26
		mu 0 4 17 14 18 21
		f 4 -23 28 30 -30
		mu 0 4 18 19 23 22
		f 4 -25 31 32 -29
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -28 29 35 -34
		mu 0 4 21 18 22 25
		f 4 -31 36 38 -38
		mu 0 4 22 23 27 26
		f 4 -33 39 40 -37
		mu 0 4 23 24 28 27
		f 4 -35 41 42 -40
		mu 0 4 24 25 29 28
		f 4 -36 37 43 -42
		mu 0 4 25 22 26 29
		f 4 -39 44 46 -46
		mu 0 4 26 27 31 30
		f 4 -41 47 48 -45
		mu 0 4 27 28 32 31
		f 4 -43 49 50 -48
		mu 0 4 28 29 33 32
		f 4 -44 45 51 -50
		mu 0 4 29 26 30 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group12";
	setAttr ".t" -type "double3" 16.866658485328415 0 2.0655699326368987e-015 ;
	setAttr ".s" -type "double3" -4 1 1 ;
createNode transform -n "pCube10" -p "group12";
	setAttr ".t" -type "double3" 5.6016411713425605 0.97820336358036264 0.38056196270196507 ;
	setAttr ".s" -type "double3" 0.013059713683861966 1.6188405214909136 0.757 ;
createNode mesh -n "pCubeShape10" -p "|group12|pCube10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "|group12|pCube10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "|group12|pCube10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875 0 0.875
		 0.25 0.625 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[8]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[9]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[10]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[11]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[12]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[13]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[14]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[15]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[24]" -type "float3" -0.82081729 0.022757964 0.022757962 ;
	setAttr ".pt[25]" -type "float3" -0.82081729 0.022757964 -0.022757962 ;
	setAttr ".pt[26]" -type "float3" -0.82081729 -0.022757964 0.022757962 ;
	setAttr ".pt[27]" -type "float3" -0.82081729 -0.022757964 -0.022757962 ;
	setAttr -s 28 ".vt[0:27]"  -0.5 -0.5 0.49999994 0.5 -0.5 0.49999994
		 -0.5 0.50000018 0.49999994 0.5 0.50000018 0.49999994 -0.5 0.50000018 -0.5000003 0.5 0.50000018 -0.5000003
		 -0.5 -0.5 -0.5000003 0.5 -0.5 -0.5000003 0.5 -0.48681685 -0.48681724 0.5 -0.48681685 0.48681682
		 0.5 0.48681706 -0.48681724 0.5 0.48681706 0.48681682 0.5 -0.46408173 -0.46408212
		 0.5 -0.46408173 0.4640817 0.5 0.46408218 -0.46408212 0.5 0.46408218 0.4640817 0.5 -0.37873924 -0.3787396
		 0.5 -0.37873924 0.37873918 0.5 0.37873954 -0.3787396 0.5 0.37873954 0.37873918 0.5 -0.36925673 -0.36925715
		 0.5 -0.36925673 0.36925662 0.5 0.36925709 -0.36925715 0.5 0.36925709 0.36925662 0.5 -0.36925673 -0.36925715
		 0.5 -0.36925673 0.36925662 0.5 0.36925709 -0.36925715 0.5 0.36925709 0.36925662;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 14 12 0 11 15 0 15 14 0 13 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 18 16 0 15 19 0 19 18 0 17 19 0 16 20 0 17 21 0 20 21 0 18 22 0 22 20 0 19 23 0
		 23 22 0 21 23 0 20 24 0 21 25 0 24 25 0 22 26 0 26 24 0 23 27 0 27 26 0 25 27 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -47 -49 -51 -52
		mu 0 4 30 31 32 33
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -12 12 14 -14
		mu 0 4 1 10 15 14
		f 4 -10 15 16 -13
		mu 0 4 10 11 16 15
		f 4 -8 17 18 -16
		mu 0 4 11 3 17 16
		f 4 -6 13 19 -18
		mu 0 4 3 1 14 17
		f 4 -15 20 22 -22
		mu 0 4 14 15 19 18
		f 4 -17 23 24 -21
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 21 27 -26
		mu 0 4 17 14 18 21
		f 4 -23 28 30 -30
		mu 0 4 18 19 23 22
		f 4 -25 31 32 -29
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -28 29 35 -34
		mu 0 4 21 18 22 25
		f 4 -31 36 38 -38
		mu 0 4 22 23 27 26
		f 4 -33 39 40 -37
		mu 0 4 23 24 28 27
		f 4 -35 41 42 -40
		mu 0 4 24 25 29 28
		f 4 -36 37 43 -42
		mu 0 4 25 22 26 29
		f 4 -39 44 46 -46
		mu 0 4 26 27 31 30
		f 4 -41 47 48 -45
		mu 0 4 27 28 32 31
		f 4 -43 49 50 -48
		mu 0 4 28 29 33 32
		f 4 -44 45 51 -50
		mu 0 4 29 26 30 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "group12";
	setAttr ".t" -type "double3" 5.5998843987320432 0.97820336358036264 -0.37966538289987084 ;
	setAttr ".s" -type "double3" 0.0099167417732921662 1.6188405214909136 0.757 ;
createNode mesh -n "pCubeShape11" -p "|group12|pCube11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "|group12|pCube11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "|group12|pCube11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875 0 0.875
		 0.25 0.625 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[8]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[9]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[10]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[11]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[12]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[13]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[14]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[15]" -type "float3" 1.1578043 0 0 ;
	setAttr ".pt[24]" -type "float3" -0.82081729 0.022757964 0.022757962 ;
	setAttr ".pt[25]" -type "float3" -0.82081729 0.022757964 -0.022757962 ;
	setAttr ".pt[26]" -type "float3" -0.82081729 -0.022757964 0.022757962 ;
	setAttr ".pt[27]" -type "float3" -0.82081729 -0.022757964 -0.022757962 ;
	setAttr -s 28 ".vt[0:27]"  -0.5 -0.5 0.49999994 0.5 -0.5 0.49999994
		 -0.5 0.50000018 0.49999994 0.5 0.50000018 0.49999994 -0.5 0.50000018 -0.5000003 0.5 0.50000018 -0.5000003
		 -0.5 -0.5 -0.5000003 0.5 -0.5 -0.5000003 0.5 -0.48681685 -0.48681724 0.5 -0.48681685 0.48681682
		 0.5 0.48681706 -0.48681724 0.5 0.48681706 0.48681682 0.5 -0.46408173 -0.46408212
		 0.5 -0.46408173 0.4640817 0.5 0.46408218 -0.46408212 0.5 0.46408218 0.4640817 0.5 -0.37873924 -0.3787396
		 0.5 -0.37873924 0.37873918 0.5 0.37873954 -0.3787396 0.5 0.37873954 0.37873918 0.5 -0.36925673 -0.36925715
		 0.5 -0.36925673 0.36925662 0.5 0.36925709 -0.36925715 0.5 0.36925709 0.36925662 0.5 -0.36925673 -0.36925715
		 0.5 -0.36925673 0.36925662 0.5 0.36925709 -0.36925715 0.5 0.36925709 0.36925662;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 14 12 0 11 15 0 15 14 0 13 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 18 16 0 15 19 0 19 18 0 17 19 0 16 20 0 17 21 0 20 21 0 18 22 0 22 20 0 19 23 0
		 23 22 0 21 23 0 20 24 0 21 25 0 24 25 0 22 26 0 26 24 0 23 27 0 27 26 0 25 27 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -47 -49 -51 -52
		mu 0 4 30 31 32 33
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -12 12 14 -14
		mu 0 4 1 10 15 14
		f 4 -10 15 16 -13
		mu 0 4 10 11 16 15
		f 4 -8 17 18 -16
		mu 0 4 11 3 17 16
		f 4 -6 13 19 -18
		mu 0 4 3 1 14 17
		f 4 -15 20 22 -22
		mu 0 4 14 15 19 18
		f 4 -17 23 24 -21
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 21 27 -26
		mu 0 4 17 14 18 21
		f 4 -23 28 30 -30
		mu 0 4 18 19 23 22
		f 4 -25 31 32 -29
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -28 29 35 -34
		mu 0 4 21 18 22 25
		f 4 -31 36 38 -38
		mu 0 4 22 23 27 26
		f 4 -33 39 40 -37
		mu 0 4 23 24 28 27
		f 4 -35 41 42 -40
		mu 0 4 24 25 29 28
		f 4 -36 37 43 -42
		mu 0 4 25 22 26 29
		f 4 -39 44 46 -46
		mu 0 4 26 27 31 30
		f 4 -41 47 48 -45
		mu 0 4 27 28 32 31
		f 4 -43 49 50 -48
		mu 0 4 28 29 33 32
		f 4 -44 45 51 -50
		mu 0 4 29 26 30 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group13";
	setAttr ".t" -type "double3" 2.6202908905609889e-016 2.1396298854374489 0 ;
	setAttr ".s" -type "double3" 1 -1 1 ;
createNode transform -n "pCube2" -p "group13";
	setAttr ".t" -type "double3" 0 1.0695343351736357 2.1546146153923829 ;
	setAttr ".s" -type "double3" 4.6630391049388766 1.8023482839603806 0.71090092392324045 ;
createNode mesh -n "pCubeShape2" -p "|group13|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "|group13|pCube2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.15625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0.375 0 0.4375 0
		 0.4375 0.0625 0.5 0 0.5625 0 0.5 0.0625 0.5625 0.0625 0.4375 0.125 0.5 0.125 0.4375
		 0.1875 0.5625 0.125 0.5 0.1875 0.5625 0.1875 0.4375 0.25 0.375 0.3125 0.5 0.25 0.4375
		 0.3125 0.375 0.375 0.5625 0.25 0.625 0.25 0.625 0.3125 0.5 0.3125 0.5625 0.3125 0.4375
		 0.375 0.5 0.375 0.5625 0.375 0.625 0.375 0.375 0.875 0.4375 0.875 0.375 0.9375 0.5
		 0.875 0.4375 1 0.4375 0.9375 0.375 1 0.5625 0.875 0.625 0.875 0.625 0.9375 0.625
		 1 0.5625 1 0.5 0.9375 0.5625 0.9375 0.5 1 0.625 0 0.6875 0 0.75 0 0.75 0.0625 0.625
		 0.0625 0.6875 0.0625 0.75 0.25 0.625 0.125 0.6875 0.125 0.75 0.125 0.75 0.1875 0.6875
		 0.25 0.625 0.1875 0.6875 0.1875 0.25 0 0.3125 0 0.375 0.0625 0.375 0.125 0.25 0.0625
		 0.3125 0.0625 0.25 0.125 0.3125 0.125 0.375 0.1875 0.375 0.25 0.3125 0.25 0.25 0.1875
		 0.3125 0.1875 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 57 ".vt[0:56]"  -0.3888889 -0.3888889 0.38888893 0 -0.4375 0.4375
		 0.3888889 -0.3888889 0.38888893 -0.4375 0 0.4375 0 0 0.5 0.4375 0 0.4375 -0.3888889 0.3888889 0.38888893
		 0 0.4375 0.4375 0.3888889 0.3888889 0.38888893 -0.4375 0.4375 0 0 0.5 0 0.4375 0.4375 0
		 -0.4375 -0.4375 0 0 -0.5 0 0.4375 -0.4375 0 0.5 0 0 -0.5 0 0 0 -0.25 0.5 -0.25 0 0.5
		 0.25 -0.4375 0.4375 0.4375 -0.25 0.4375 0.25 0 0.5 -0.4375 0.25 0.4375 0 0.25 0.5
		 -0.25 0.4375 0.4375 0.4375 0.25 0.4375 0.25 0.4375 0.4375 -0.4375 0.4375 0.25 0 0.5 0.25
		 -0.25 0.5 0 0.4375 0.4375 0.25 0.25 0.5 0 -0.25 -0.5 0 0.25 -0.5 0 -0.4375 -0.4375 0.25
		 0 -0.5 0.25 0.4375 -0.4375 0.25 0.5 -0.25 0 0.5 0 0.25 0.5 0.25 0 -0.5 -0.25 0 -0.5 0 0.25
		 -0.5 0.25 0 -0.25 -0.4375 0.4375 -0.4375 -0.25 0.4375 -0.25 -0.25 0.5 0.25 -0.25 0.5
		 -0.25 0.25 0.5 0.25 0.25 0.5 -0.25 0.5 0.25 0.25 0.5 0.25 -0.25 -0.5 0.25 0.25 -0.5 0.25
		 0.5 -0.25 0.25 0.5 0.25 0.25 -0.5 -0.25 0.25 -0.5 0.25 0.25;
	setAttr -s 104 ".ed[0:103]"  0 43 1 43 1 1 1 19 1 19 2 1 3 18 1 18 4 1
		 4 21 1 21 5 1 6 24 1 24 7 1 7 26 1 26 8 1 9 29 0 29 10 0 10 31 0 31 11 0 12 32 0
		 32 13 0 13 33 0 33 14 0 0 44 1 44 3 1 1 17 1 17 4 1 2 20 1 20 5 1 3 22 1 22 6 1 4 23 1
		 23 7 1 5 25 1 25 8 1 6 27 1 27 9 1 7 28 1 28 10 1 8 30 1 30 11 1 12 34 1 34 0 1 13 35 1
		 35 1 1 14 36 1 36 2 1 15 38 1 38 5 1 14 37 0 37 15 0 15 39 0 39 11 0 16 41 1 41 3 1
		 12 40 0 40 16 0 16 42 0 42 9 0 43 45 1 45 44 1 17 45 1 18 45 1 19 46 1 46 17 1 20 46 1
		 21 46 1 18 47 1 47 22 1 23 47 1 24 47 1 21 48 1 48 23 1 25 48 1 26 48 1 24 49 1 49 27 1
		 28 49 1 29 49 1 26 50 1 50 28 1 30 50 1 31 50 1 32 51 1 51 34 1 35 51 1 43 51 1 33 52 1
		 52 35 1 36 52 1 19 52 1 36 53 1 53 20 1 37 53 1 38 53 1 38 54 1 54 25 1 39 54 1 30 54 1
		 34 55 1 55 40 1 44 55 1 41 55 1 41 56 1 56 42 1 22 56 1 27 56 1;
	setAttr -s 48 -ch 192 ".fc[0:47]" -type "polyFaces" 
		f 4 0 56 57 -21
		mu 0 4 0 1 2 58
		f 4 1 22 58 -57
		mu 0 4 1 3 5 2
		f 4 -59 23 -6 59
		mu 0 4 2 5 8 7
		f 4 -58 -60 -5 -22
		mu 0 4 58 2 7 59
		f 4 2 60 61 -23
		mu 0 4 3 4 6 5
		f 4 3 24 62 -61
		mu 0 4 4 42 46 6
		f 4 -63 25 -8 63
		mu 0 4 6 46 49 10
		f 4 -62 -64 -7 -24
		mu 0 4 5 6 10 8
		f 4 4 64 65 -27
		mu 0 4 59 7 9 64
		f 4 5 28 66 -65
		mu 0 4 7 8 11 9
		f 4 -67 29 -10 67
		mu 0 4 9 11 15 13
		f 4 -66 -68 -9 -28
		mu 0 4 64 9 13 65
		f 4 6 68 69 -29
		mu 0 4 8 10 12 11
		f 4 7 30 70 -69
		mu 0 4 10 49 54 12
		f 4 -71 31 -12 71
		mu 0 4 12 54 19 18
		f 4 -70 -72 -11 -30
		mu 0 4 11 12 18 15
		f 4 8 72 73 -33
		mu 0 4 65 13 16 14
		f 4 9 34 74 -73
		mu 0 4 13 15 21 16
		f 4 -75 35 -14 75
		mu 0 4 16 21 24 23
		f 4 -74 -76 -13 -34
		mu 0 4 14 16 23 17
		f 4 10 76 77 -35
		mu 0 4 15 18 22 21
		f 4 11 36 78 -77
		mu 0 4 18 19 20 22
		f 4 -79 37 -16 79
		mu 0 4 22 20 26 25
		f 4 -78 -80 -15 -36
		mu 0 4 21 22 25 24
		f 4 16 80 81 -39
		mu 0 4 27 28 32 29
		f 4 17 40 82 -81
		mu 0 4 28 30 39 32
		f 4 -83 41 -2 83
		mu 0 4 32 39 41 31
		f 4 -82 -84 -1 -40
		mu 0 4 29 32 31 33
		f 4 18 84 85 -41
		mu 0 4 30 34 40 39
		f 4 19 42 86 -85
		mu 0 4 34 35 36 40
		f 4 -87 43 -4 87
		mu 0 4 40 36 37 38
		f 4 -86 -88 -3 -42
		mu 0 4 39 40 38 41
		f 4 -44 88 89 -25
		mu 0 4 42 43 47 46
		f 4 -43 46 90 -89
		mu 0 4 43 44 45 47
		f 4 -91 47 44 91
		mu 0 4 47 45 51 50
		f 4 -90 -92 45 -26
		mu 0 4 46 47 50 49
		f 4 -46 92 93 -31
		mu 0 4 49 50 55 54
		f 4 -45 48 94 -93
		mu 0 4 50 51 52 55
		f 4 -95 49 -38 95
		mu 0 4 55 52 48 53
		f 4 -94 -96 -37 -32
		mu 0 4 54 55 53 19
		f 4 38 96 97 -53
		mu 0 4 56 57 61 60
		f 4 39 20 98 -97
		mu 0 4 57 0 58 61
		f 4 -99 21 -52 99
		mu 0 4 61 58 59 63
		f 4 -98 -100 -51 -54
		mu 0 4 60 61 63 62
		f 4 50 100 101 -55
		mu 0 4 62 63 68 67
		f 4 51 26 102 -101
		mu 0 4 63 59 64 68
		f 4 -103 27 32 103
		mu 0 4 68 64 65 66
		f 4 -102 -104 33 -56
		mu 0 4 67 68 66 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape7" -p "|group13|pCube2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 123 ".uvst[0].uvsp[0:122]" -type "float2" 0.375 0 0.4375 0
		 0.4375 0.0625 0.5 0 0.5625 0 0.5 0.0625 0.5625 0.0625 0.4375 0.125 0.5 0.125 0.4375
		 0.1875 0.5625 0.125 0.5 0.1875 0.5625 0.1875 0.4375 0.25 0.375 0.3125 0.5 0.25 0.4375
		 0.3125 0.375 0.375 0.5625 0.25 0.625 0.25 0.625 0.3125 0.5 0.3125 0.5625 0.3125 0.4375
		 0.375 0.5 0.375 0.5625 0.375 0.625 0.375 0.375 0.875 0.4375 0.875 0.375 0.9375 0.5
		 0.875 0.4375 1 0.4375 0.9375 0.375 1 0.5625 0.875 0.625 0.875 0.625 0.9375 0.625
		 1 0.5625 1 0.5 0.9375 0.5625 0.9375 0.5 1 0.625 0 0.6875 0 0.75 0 0.75 0.0625 0.625
		 0.0625 0.6875 0.0625 0.75 0.25 0.625 0.125 0.6875 0.125 0.75 0.125 0.75 0.1875 0.6875
		 0.25 0.625 0.1875 0.6875 0.1875 0.25 0 0.3125 0 0.375 0.0625 0.375 0.125 0.25 0.0625
		 0.3125 0.0625 0.25 0.125 0.3125 0.125 0.375 0.1875 0.375 0.25 0.3125 0.25 0.25 0.1875
		 0.3125 0.1875 0.25 0.25 0.375 0.25 0.4375 0.25 0.4375 0.3125 0.375 0.3125 0.5 0.25
		 0.5 0.3125 0.5625 0.25 0.5625 0.3125 0.625 0.25 0.625 0.3125 0.625 0 0.6875 0 0.6875
		 0.0625 0.625 0.0625 0.6875 0.125 0.625 0.125 0.6875 0.1875 0.625 0.1875 0.6875 0.25
		 0.3125 0 0.375 0 0.375 0.0625 0.3125 0.0625 0.375 0.125 0.3125 0.125 0.375 0.1875
		 0.3125 0.1875 0.3125 0.25 0.375 0 0.4375 0 0.375 0.0625 0.5 0 0.5 0.0625 0.4375 0.0625
		 0.4375 0.125 0.375 0.125 0.5625 0 0.5625 0.0625 0.625 0 0.625 0.0625 0.625 0.125
		 0.5625 0.125 0.4375 0.1875 0.375 0.1875 0.4375 0.25 0.375 0.25 0.625 0.1875 0.5625
		 0.1875 0.625 0.25 0.5625 0.25 0.4375 0.0625 0.4375 0.0625 0.4375 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[83:104]" -type "float3"  0.023030868 0.023030842 0.28330591 
		0.014805514 0.025909657 0.28042707 0.014805514 0.014805513 0.27672568 0.025909662 
		0.014805513 0.28042707 -1.5771022e-008 0.025909679 0.28042707 -2.453271e-008 0.014805531 
		0.27672568 0.014805514 4.2840838e-008 0.27672568 0.025909662 4.2840838e-008 0.28042707 
		-0.014805545 0.025909701 0.28042707 -0.014805494 0.01480552 0.27672568 -0.023030816 
		0.023030808 0.28330591 -0.025909722 0.014805539 0.28042704 -0.025909662 -9.3132257e-009 
		0.28042707 -0.014805514 -9.3132257e-009 0.27672568 0.014805553 -0.014805527 0.27672568 
		0.025909705 -0.014805527 0.28042707 0.014805553 -0.025909657 0.28042707 0.023030847 
		-0.023030799 0.28330591 -0.025909722 -0.014805539 0.28042704 -0.014805514 -0.014805509 
		0.27672568 -0.023030831 -0.023030832 0.28330591 -0.01480553 -0.02590969 0.28042707;
	setAttr -s 105 ".vt[0:104]"  -0.38888893 -0.3888889 0.38888884 0 -0.4375 0.4375
		 0.38888893 -0.3888889 0.38888884 -0.4375 -1.1920929e-007 0.4375 0 -1.1920929e-007 0.5
		 0.4375 -1.1920929e-007 0.4375 -0.38888893 0.3888889 0.38888884 0 0.4375 0.4375 0.38888893 0.3888889 0.38888884
		 -0.4375 0.4375 0 0 0.49999994 0 0.4375 0.4375 0 -0.4375 -0.4375 0 0 -0.5 0 0.4375 -0.4375 0
		 0.5 -1.1920929e-007 0 -0.5 -1.1920929e-007 0 0 -0.25 0.5 -0.25 -1.1920929e-007 0.5
		 0.25 -0.4375 0.4375 0.4375 -0.25 0.4375 0.25 -1.1920929e-007 0.5 -0.4375 0.24999997 0.4375
		 0 0.24999997 0.5 -0.25 0.4375 0.4375 0.4375 0.24999997 0.4375 0.25 0.4375 0.4375
		 -0.4375 0.4375 0.25000024 0 0.49999994 0.25000024 -0.25 0.49999994 0 0.4375 0.4375 0.25000024
		 0.25 0.49999994 0 -0.25 -0.5 0 0.25 -0.5 0 -0.4375 -0.4375 0.25000024 0 -0.5 0.25000024
		 0.4375 -0.4375 0.25000024 0.5 -0.25 0 0.5 -1.1920929e-007 0.25000024 0.5 0.24999997 0
		 -0.5 -0.25 0 -0.5 -1.1920929e-007 0.25000024 -0.5 0.24999997 0 -0.25 -0.4375 0.4375
		 -0.4375 -0.25 0.4375 -0.25 -0.25 0.5 0.25 -0.25 0.5 -0.25 0.24999997 0.5 0.25 0.24999997 0.5
		 -0.25 0.49999994 0.25000024 0.25 0.49999994 0.25000024 -0.25 -0.5 0.25000024 0.25 -0.5 0.25000024
		 0.5 -0.25 0.25000024 0.5 0.24999997 0.25000024 -0.5 -0.25 0.25000024 -0.5 0.24999997 0.25000024
		 -0.39313778 0.41512951 0.48930955 -0.25128245 0.48038316 0.53857756 -0.25105748 0.53911853 0.34139824
		 -0.44283658 0.4698154 0.37494993 1.19045e-016 0.4803451 0.52929974 1.19045e-016 0.54284507 0.34179974
		 0.25128245 0.48038319 0.53857756 0.25105748 0.53911853 0.34139824 0.39313778 0.41512951 0.48931026
		 0.44283664 0.4698154 0.37494993 0.44560832 -0.45920956 0.38954401 0.39527163 -0.40597826 0.49873495
		 0.50770038 -0.25854474 0.36959124 0.44606322 -0.26085484 0.57193995 0.50901812 -1.1920929e-007 0.3793354
		 0.44651809 -1.1920929e-007 0.56683564 0.50770044 0.25854459 0.36959052 0.44606322 0.26085469 0.57193995
		 -0.44560832 -0.45920956 0.38954401 -0.39527163 -0.40597826 0.49873495 -0.44606322 -0.2608549 0.57193995
		 -0.50770038 -0.25854474 0.36959124 -0.44651809 -1.1920929e-007 0.56683564 -0.50901812 -1.1920929e-007 0.3793354
		 -0.44606322 0.26085469 0.57193971 -0.5077005 0.25854462 0.36959052 -0.38888893 -0.3888889 0.38888884
		 -0.25 -0.4375 0.4375 -0.25 -0.25 0.5 -0.4375 -0.25 0.4375 0 -0.4375 0.4375 0 -0.25 0.5
		 -0.25 -1.1920929e-007 0.5 -0.4375 -1.1920929e-007 0.4375 0.25 -0.4375 0.4375 0.25 -0.25 0.5
		 0.38888893 -0.3888889 0.38888884 0.4375 -0.25 0.4375 0.4375 -1.1920929e-007 0.4375
		 0.25 -1.1920929e-007 0.5 -0.25 0.24999997 0.5 -0.4375 0.24999997 0.4375 -0.25 0.4375 0.4375
		 -0.38888893 0.3888889 0.38888884 0.4375 0.24999997 0.4375 0.25 0.24999997 0.5 0.38888893 0.3888889 0.38888884
		 0.25 0.4375 0.4375;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 43 0 43 1 0 1 19 0 19 2 0 18 4 1 4 21 1 6 24 0 24 7 0
		 7 26 0 26 8 0 9 29 0 29 10 0 10 31 0 31 11 0 12 32 0 32 13 0 13 33 0 33 14 0 0 44 0
		 44 3 0 17 4 1 2 20 0 20 5 0 3 22 0 22 6 0 4 23 1 23 7 1 5 25 0 25 8 0 27 9 1 28 10 1
		 30 11 1 12 34 1 34 0 0 13 35 1 35 1 1 14 36 1 36 2 0 15 38 1 14 37 0 37 15 0 15 39 0
		 39 11 0 16 41 1 12 40 0 40 16 0 16 42 0 42 9 0 17 45 0 18 45 0 46 17 0 21 46 0 18 47 0
		 23 47 1 24 47 0 21 48 0 48 23 1 26 48 0 49 27 0 28 49 0 29 49 1 50 28 0 30 50 0 31 50 1
		 32 51 1 51 34 1 35 51 1 43 51 1 33 52 1 52 35 1 36 52 1 19 52 1 36 53 1 37 53 1 38 53 1
		 38 54 1 39 54 1 30 54 1 34 55 1 55 40 1 41 55 1 41 56 1 56 42 1 27 56 1 6 57 0 24 58 1
		 57 58 0 49 59 1 58 59 1 27 60 0 59 60 0 57 60 1 7 61 1 58 61 0 28 62 1 61 62 1 62 59 0
		 26 63 1 61 63 0 50 64 1 63 64 1 64 62 0 8 65 0 63 65 0 30 66 0 65 66 1 66 64 0 36 67 0
		 2 68 0 67 68 0 53 69 0 67 69 0 20 70 0 69 70 1 68 70 0 38 71 1 71 69 0 5 72 1 71 72 1
		 70 72 0 54 73 0 71 73 0 25 74 0 73 74 1 72 74 0 66 73 0 74 65 0 34 75 0 0 76 0 75 76 0
		 44 77 0 76 77 0 55 78 0 77 78 1 75 78 0 3 79 1 77 79 0 41 80 1 80 79 1 80 78 0 22 81 0
		 79 81 0 56 82 0 81 82 1 80 82 0 81 57 0 60 82 0 0 83 0 43 84 0 83 84 0 45 85 0 84 85 1
		 44 86 0 85 86 1 83 86 0 1 87 0 84 87 0 17 88 0 87 88 1 88 85 0 18 89 0 89 85 0 3 90 0
		 90 89 1 86 90 0 19 91 0;
	setAttr ".ed[166:199]" 87 91 0 46 92 0 91 92 1 92 88 0 2 93 0 91 93 0 20 94 0
		 93 94 0 94 92 1 5 95 0 94 95 0 21 96 0 96 95 1 96 92 0 47 97 0 89 97 0 22 98 0 97 98 1
		 90 98 0 24 99 0 99 97 0 6 100 0 100 99 0 98 100 0 25 101 0 95 101 0 48 102 0 101 102 1
		 96 102 0 8 103 0 101 103 0 26 104 0 104 103 0 104 102 0;
	setAttr -s 96 -ch 384 ".fc[0:95]" -type "polyFaces" 
		f 4 149 151 153 -155
		mu 0 4 98 99 2 100
		f 4 156 158 159 -152
		mu 0 4 99 101 102 103
		f 4 -49 20 -5 49
		mu 0 4 120 5 8 7
		f 4 -154 -162 -164 -165
		mu 0 4 100 103 104 105
		f 4 166 168 169 -159
		mu 0 4 101 106 107 102
		f 4 171 173 174 -169
		mu 0 4 106 108 109 107
		f 4 -175 176 -179 179
		mu 0 4 107 109 110 111
		f 4 -51 -52 -6 -21
		mu 0 4 5 6 10 8
		f 4 163 181 183 -185
		mu 0 4 105 104 112 113
		f 4 4 25 53 -53
		mu 0 4 7 8 11 9
		f 4 -54 26 -8 54
		mu 0 4 9 11 15 13
		f 4 -184 -187 -189 -190
		mu 0 4 113 112 114 115
		f 4 5 55 56 -26
		mu 0 4 8 10 12 11
		f 4 178 191 193 -195
		mu 0 4 111 110 116 117
		f 4 -194 196 -199 199
		mu 0 4 117 116 118 119
		f 4 -57 -58 -9 -27
		mu 0 4 11 12 18 15
		f 4 86 88 90 -92
		mu 0 4 70 71 72 73
		f 4 93 95 96 -89
		mu 0 4 71 74 75 72
		f 4 -60 30 -12 60
		mu 0 4 16 21 24 23
		f 4 -59 -61 -11 -30
		mu 0 4 14 16 23 17
		f 4 98 100 101 -96
		mu 0 4 74 76 77 75
		f 4 103 105 106 -101
		mu 0 4 76 78 79 77
		f 4 -63 31 -14 63
		mu 0 4 22 20 26 25
		f 4 -62 -64 -13 -31
		mu 0 4 21 22 25 24
		f 4 14 64 65 -33
		mu 0 4 27 28 32 29
		f 4 15 34 66 -65
		mu 0 4 28 30 39 32
		f 4 -67 35 -2 67
		mu 0 4 32 39 41 31
		f 4 -66 -68 -1 -34
		mu 0 4 29 32 31 33
		f 4 16 68 69 -35
		mu 0 4 30 34 40 39
		f 4 17 36 70 -69
		mu 0 4 34 35 36 40
		f 4 -71 37 -4 71
		mu 0 4 40 36 37 38
		f 4 -70 -72 -3 -36
		mu 0 4 39 40 38 41
		f 4 -110 111 113 -115
		mu 0 4 80 81 82 83
		f 4 -37 39 73 -73
		mu 0 4 43 44 45 47
		f 4 -74 40 38 74
		mu 0 4 47 45 51 50
		f 4 -114 -117 118 -120
		mu 0 4 83 82 84 85
		f 4 -119 121 123 -125
		mu 0 4 85 84 86 87
		f 4 -39 41 76 -76
		mu 0 4 50 51 52 55
		f 4 -77 42 -32 77
		mu 0 4 55 52 48 53
		f 4 -124 -126 -106 -127
		mu 0 4 87 86 88 78
		f 4 32 78 79 -45
		mu 0 4 56 57 61 60
		f 4 129 131 133 -135
		mu 0 4 89 90 91 92
		f 4 -134 136 -139 139
		mu 0 4 92 91 93 94
		f 4 -80 -81 -44 -46
		mu 0 4 60 61 63 62
		f 4 43 81 82 -47
		mu 0 4 62 63 68 67
		f 4 138 141 143 -145
		mu 0 4 94 93 95 96
		f 4 -144 145 91 146
		mu 0 4 96 95 70 97
		f 4 -83 -84 29 -48
		mu 0 4 67 68 66 69
		f 4 6 85 -87 -85
		mu 0 4 65 13 71 70
		f 4 58 89 -91 -88
		mu 0 4 16 14 73 72
		f 4 7 92 -94 -86
		mu 0 4 13 15 74 71
		f 4 59 87 -97 -95
		mu 0 4 21 16 72 75
		f 4 8 97 -99 -93
		mu 0 4 15 18 76 74
		f 4 61 94 -102 -100
		mu 0 4 22 21 75 77
		f 4 9 102 -104 -98
		mu 0 4 18 19 78 76
		f 4 62 99 -107 -105
		mu 0 4 20 22 77 79
		f 4 -38 107 109 -109
		mu 0 4 42 43 81 80
		f 4 72 110 -112 -108
		mu 0 4 43 47 82 81
		f 4 -22 108 114 -113
		mu 0 4 46 42 80 83
		f 4 -75 115 116 -111
		mu 0 4 47 50 84 82
		f 4 -23 112 119 -118
		mu 0 4 49 46 83 85
		f 4 75 120 -122 -116
		mu 0 4 50 55 86 84
		f 4 -28 117 124 -123
		mu 0 4 54 49 85 87
		f 4 -78 104 125 -121
		mu 0 4 55 53 88 86
		f 4 -29 122 126 -103
		mu 0 4 19 54 87 78
		f 4 33 128 -130 -128
		mu 0 4 57 0 90 89
		f 4 18 130 -132 -129
		mu 0 4 0 58 91 90
		f 4 -79 127 134 -133
		mu 0 4 61 57 89 92
		f 4 19 135 -137 -131
		mu 0 4 58 59 93 91
		f 4 80 132 -140 -138
		mu 0 4 63 61 92 94
		f 4 23 140 -142 -136
		mu 0 4 59 64 95 93
		f 4 -82 137 144 -143
		mu 0 4 68 63 94 96
		f 4 24 84 -146 -141
		mu 0 4 64 65 70 95
		f 4 83 142 -147 -90
		mu 0 4 66 68 96 97
		f 4 0 148 -150 -148
		mu 0 4 0 1 99 98
		f 4 -19 147 154 -153
		mu 0 4 58 0 98 100
		f 4 1 155 -157 -149
		mu 0 4 1 3 101 99
		f 4 48 150 -160 -158
		mu 0 4 5 121 103 102
		f 4 -50 160 161 -151
		mu 0 4 122 7 104 103
		f 4 -20 152 164 -163
		mu 0 4 59 58 100 105
		f 4 2 165 -167 -156
		mu 0 4 3 4 106 101
		f 4 50 157 -170 -168
		mu 0 4 6 5 102 107
		f 4 3 170 -172 -166
		mu 0 4 4 42 108 106
		f 4 21 172 -174 -171
		mu 0 4 42 46 109 108
		f 4 22 175 -177 -173
		mu 0 4 46 49 110 109
		f 4 51 167 -180 -178
		mu 0 4 10 6 107 111
		f 4 52 180 -182 -161
		mu 0 4 7 9 112 104
		f 4 -24 162 184 -183
		mu 0 4 64 59 105 113
		f 4 -55 185 186 -181
		mu 0 4 9 13 114 112
		f 4 -7 187 188 -186
		mu 0 4 13 65 115 114
		f 4 -25 182 189 -188
		mu 0 4 65 64 113 115
		f 4 27 190 -192 -176
		mu 0 4 49 54 116 110
		f 4 -56 177 194 -193
		mu 0 4 12 10 111 117
		f 4 28 195 -197 -191
		mu 0 4 54 19 118 116
		f 4 -10 197 198 -196
		mu 0 4 19 18 119 118
		f 4 57 192 -200 -198
		mu 0 4 18 12 117 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13";
	setAttr ".t" -type "double3" 0.00289827795818276 0.52855444868719781 -2.4986564621316516 ;
	setAttr ".s" -type "double3" 0.7129310108456266 0.43703729631557064 0.055889903897363036 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.5 0 0.625
		 0 0.375 0.125 0.5 0.125 0.625 0.125 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5
		 0.375 0.625 0.375 0.375 0.5 0.5 0.5 0.625 0.5 0.375 0.625 0.5 0.625 0.625 0.625 0.375
		 0.75 0.5 0.75 0.625 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1
		 0.875 0 0.75 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.125 0 0.25 0 0.125 0.125
		 0.25 0.125 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".vt[0:25]"  -0.5 -0.5 0.5 0 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5
		 0 0 0.5 0.5 0 0.5 -0.5 0.5 0.5 0 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 0 0 0.5 0 0.5 0.5 0
		 -0.5 0.5 -0.5 0 0.5 -0.5 0.5 0.5 -0.5 -0.5 0 -0.5 0 0 -0.5 0.5 0 -0.5 -0.5 -0.5 -0.5
		 0 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.5 0 0 -0.5 0 0.5 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 7 8 0 9 10 1
		 10 11 1 12 13 0 13 14 0 15 16 1 16 17 1 18 19 0 19 20 0 21 22 1 22 23 1 0 3 0 1 4 1
		 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 12 0 10 13 1 11 14 0 12 15 0 13 16 1
		 14 17 0 15 18 0 16 19 1 17 20 0 18 21 0 19 22 1 20 23 0 21 0 0 22 1 1 23 2 0 17 24 1
		 24 5 1 23 24 1 24 11 1 15 25 1 25 3 1 21 25 1 25 9 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -3 -17
		mu 0 4 0 1 4 3
		f 4 1 18 -4 -18
		mu 0 4 1 2 5 4
		f 4 2 20 -5 -20
		mu 0 4 3 4 7 6
		f 4 3 21 -6 -21
		mu 0 4 4 5 8 7
		f 4 4 23 -7 -23
		mu 0 4 6 7 10 9
		f 4 5 24 -8 -24
		mu 0 4 7 8 11 10
		f 4 6 26 -9 -26
		mu 0 4 9 10 13 12
		f 4 7 27 -10 -27
		mu 0 4 10 11 14 13
		f 4 8 29 -11 -29
		mu 0 4 12 13 16 15
		f 4 9 30 -12 -30
		mu 0 4 13 14 17 16
		f 4 10 32 -13 -32
		mu 0 4 15 16 19 18
		f 4 11 33 -14 -33
		mu 0 4 16 17 20 19
		f 4 12 35 -15 -35
		mu 0 4 18 19 22 21
		f 4 13 36 -16 -36
		mu 0 4 19 20 23 22
		f 4 14 38 -1 -38
		mu 0 4 21 22 25 24
		f 4 15 39 -2 -39
		mu 0 4 22 23 26 25
		f 4 -37 -34 40 -43
		mu 0 4 28 27 29 30
		f 4 -40 42 41 -19
		mu 0 4 2 28 30 5
		f 4 -41 -31 -28 -44
		mu 0 4 30 29 31 32
		f 4 -42 43 -25 -22
		mu 0 4 5 30 32 8
		f 4 34 46 -45 31
		mu 0 4 33 34 36 35
		f 4 37 16 -46 -47
		mu 0 4 34 0 3 36
		f 4 44 47 25 28
		mu 0 4 35 36 38 37
		f 4 45 19 22 -48
		mu 0 4 36 3 6 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".sw" 4;
	setAttr ".sh" 4;
	setAttr ".sd" 4;
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n"
		+ "                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n"
		+ "            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n"
		+ "            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n"
		+ "                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"bottom3\\\" -ps 1 100 55 -ps 2 50 45 -ps 3 50 45 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Hypershade\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"hyperShadePanel\\\" -l (localizedPanelLabel(\\\"Hypershade\\\")) -mbv $menusOkayInPanels `\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Hypershade\\\")) -mbv $menusOkayInPanels  $panelName\"\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Render View\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"renderWindowPanel\\\" -l (localizedPanelLabel(\\\"Render View\\\")) -mbv $menusOkayInPanels `\"\n\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Render View\\\")) -mbv $menusOkayInPanels  $panelName\"\n\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 8 "f[65:66]" "f[69:70]" "f[73:74]" "f[77:78]" "f[81:82]" "f[85:86]" "f[89:90]" "f[93:94]";
	setAttr ".ix" -type "matrix" 10.643455895724815 0 0 0 0 2.0183383814810396 0 0 0 0 3.9022504996203957 0
		 0 1.0165072305815757 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.0165073 0 ;
	setAttr ".rs" 59626;
	setAttr ".lt" -type "double3" -6.7474063591938058e-017 2.4018242352415347e-017 0.19612383235017461 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.3217279478624073 0.0073380398410558545 -0.97556262490509893 ;
	setAttr ".cbx" -type "double3" 5.3217279478624073 2.0256764213220952 0.97556262490509893 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[0]" -type "float3" 0.11764938 -1.5646219e-007 4.4703484e-008 ;
	setAttr ".tk[4]" -type "float3" -0.11764938 -1.5646219e-007 4.4703484e-008 ;
	setAttr ".tk[5]" -type "float3" 0.11764938 -7.8231096e-008 4.4703484e-008 ;
	setAttr ".tk[9]" -type "float3" -0.11764938 -7.8231096e-008 4.4703484e-008 ;
	setAttr ".tk[10]" -type "float3" 0.11764938 -1.7370793e-023 4.4703484e-008 ;
	setAttr ".tk[14]" -type "float3" -0.11764938 -1.7370793e-023 4.4703484e-008 ;
	setAttr ".tk[15]" -type "float3" 0.11764938 7.8231096e-008 4.4703484e-008 ;
	setAttr ".tk[19]" -type "float3" -0.11764938 7.8231096e-008 4.4703484e-008 ;
	setAttr ".tk[20]" -type "float3" 0.11764938 1.5646219e-007 4.4703484e-008 ;
	setAttr ".tk[24]" -type "float3" -0.11764938 1.5646219e-007 4.4703484e-008 ;
	setAttr ".tk[40]" -type "float3" 0.11764938 1.5646219e-007 -4.4703484e-008 ;
	setAttr ".tk[44]" -type "float3" -0.11764938 1.5646219e-007 -4.4703484e-008 ;
	setAttr ".tk[45]" -type "float3" 0.11764938 7.8231096e-008 -4.4703484e-008 ;
	setAttr ".tk[49]" -type "float3" -0.11764938 7.8231096e-008 -4.4703484e-008 ;
	setAttr ".tk[50]" -type "float3" 0.11764938 -1.7370793e-023 -4.4703484e-008 ;
	setAttr ".tk[54]" -type "float3" -0.11764938 -1.7370793e-023 -4.4703484e-008 ;
	setAttr ".tk[55]" -type "float3" 0.11764938 -7.8231096e-008 -4.4703484e-008 ;
	setAttr ".tk[59]" -type "float3" -0.11764938 -7.8231096e-008 -4.4703484e-008 ;
	setAttr ".tk[60]" -type "float3" 0.11764938 -1.5646219e-007 -4.4703484e-008 ;
	setAttr ".tk[64]" -type "float3" -0.11764938 -1.5646219e-007 -4.4703484e-008 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 8 "f[1:2]" "f[5:6]" "f[9:10]" "f[13:14]" "f[33:34]" "f[37:38]" "f[41:42]" "f[45:46]";
	setAttr ".ix" -type "matrix" 10.643455895724815 0 0 0 0 2.0183383814810396 0 0 0 0 3.9022504996203957 0
		 0 1.0165072305815757 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.0165071 0 ;
	setAttr ".rs" 62145;
	setAttr ".lt" -type "double3" 0.060028041990157988 0 0.21639028454360232 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6608638153313517 0.0073380398410558545 -1.9511252498101979 ;
	setAttr ".cbx" -type "double3" 2.6608638153313517 2.0256763010197529 1.9511252498101979 ;
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySphere -n "polySphere1";
	setAttr ".sa" 4;
	setAttr ".sh" 8;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 2 "f[0:11]" "f[24:27]";
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
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 49 ".tk";
	setAttr ".tk[1]" -type "float3" 0.074671939 0 0 ;
	setAttr ".tk[3]" -type "float3" -0.074671939 0 0 ;
	setAttr ".tk[5]" -type "float3" 0.067675009 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.067675024 0 0 ;
	setAttr ".tk[9]" -type "float3" 0.051796205 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.051796205 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.028428789 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.028428789 0 0 ;
	setAttr ".tk[16]" -type "float3" -4.6362422e-010 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.0718299 0 0 ;
	setAttr ".tk[19]" -type "float3" -0.056573231 -0.012387785 -0.056573231 ;
	setAttr ".tk[20]" -type "float3" -0.062422287 -0.059254553 0.062422287 ;
	setAttr ".tk[22]" -type "float3" -0.056573238 -0.012387785 0.056573231 ;
	setAttr ".tk[23]" -type "float3" 0.062422287 -0.059254553 0.062422287 ;
	setAttr ".tk[24]" -type "float3" -0.0718299 0 0 ;
	setAttr ".tk[25]" -type "float3" 0.056573231 -0.012387785 0.056573238 ;
	setAttr ".tk[26]" -type "float3" 0.062422287 -0.059254553 -0.062422287 ;
	setAttr ".tk[27]" -type "float3" 0.056573231 -0.012387785 -0.056573231 ;
	setAttr ".tk[29]" -type "float3" 0.060894445 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.043299247 0.027343947 -0.04329925 ;
	setAttr ".tk[32]" -type "float3" -0.043299258 0.027343947 0.04329925 ;
	setAttr ".tk[33]" -type "float3" -0.060894445 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.04329925 0.027343947 0.043299258 ;
	setAttr ".tk[35]" -type "float3" 0.04329925 0.027343947 -0.04329925 ;
	setAttr ".tk[37]" -type "float3" 0.040688355 0 0 ;
	setAttr ".tk[38]" -type "float3" -0.024666663 0.052355882 -0.024666661 ;
	setAttr ".tk[40]" -type "float3" -0.024666661 0.052355882 0.024666661 ;
	setAttr ".tk[41]" -type "float3" -0.040688355 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.024666656 0.052355882 0.024666661 ;
	setAttr ".tk[43]" -type "float3" 0.024666663 0.052355882 -0.024666658 ;
	setAttr ".tk[45]" -type "float3" 0.013081323 0 0 ;
	setAttr ".tk[47]" -type "float3" -0.013081323 0 0 ;
	setAttr ".tk[48]" -type "float3" -0.062422287 -0.059254553 -0.062422287 ;
	setAttr ".tk[49]" -type "float3" -0.060046483 -0.03536658 -0.060046487 ;
	setAttr ".tk[50]" -type "float3" -0.060046487 -0.03536658 0.060046483 ;
	setAttr ".tk[51]" -type "float3" 0.060046479 -0.03536658 0.060046487 ;
	setAttr ".tk[52]" -type "float3" 0.060046487 -0.03536658 -0.060046483 ;
	setAttr ".tk[53]" -type "float3" -0.050904941 0.0087726563 -0.050904952 ;
	setAttr ".tk[54]" -type "float3" -0.050904959 0.0087726563 0.050904937 ;
	setAttr ".tk[55]" -type "float3" 0.050904937 0.0087726563 0.050904952 ;
	setAttr ".tk[56]" -type "float3" 0.050904956 0.0087726563 -0.050904937 ;
	setAttr ".tk[57]" -type "float3" -0.034013595 0.042555347 -0.034013603 ;
	setAttr ".tk[58]" -type "float3" -0.034013614 0.042555347 0.034013603 ;
	setAttr ".tk[59]" -type "float3" 0.034013599 0.042555347 0.034013603 ;
	setAttr ".tk[60]" -type "float3" 0.034013595 0.042555347 -0.034013599 ;
	setAttr ".tk[61]" -type "float3" -0.015925322 0.059254553 -0.01592532 ;
	setAttr ".tk[62]" -type "float3" -0.01592532 0.059254553 0.015925322 ;
	setAttr ".tk[63]" -type "float3" 0.01592532 0.059254553 0.015925322 ;
	setAttr ".tk[64]" -type "float3" 0.01592532 0.059254553 -0.01592532 ;
createNode polyCube -n "polyCube3";
	setAttr ".cuv" 4;
createNode makeNurbCube -n "makeNurbCube1";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode polyCube -n "polyCube4";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube5";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.034883332816358914 0 0 0 0 1.6188405214909136 0 0
		 0 0 0.75700000000000001 0 5.567077346553317 0.97820336358036264 0.38056196270196513 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.5845189 0.97820336 0.38056195 ;
	setAttr ".rs" 55825;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.5845190129614961 0.16878310283490583 0.0020619627019651254 ;
	setAttr ".cbx" -type "double3" 5.5845190129614961 1.7876236243258194 0.75906196270196513 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.034883332816358914 0 0 0 0 1.6188405214909136 0 0
		 0 0 0.75700000000000001 0 5.567077346553317 0.97820336358036264 0.38056196270196513 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.5845189 0.97820342 0.38056192 ;
	setAttr ".rs" 37257;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.5845190129614961 0.19012441844775918 0.012041491963554196 ;
	setAttr ".cbx" -type "double3" 5.5845190129614961 1.7662824052033803 0.74908234319894396 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0.013183073 0.013183072
		 0 0.013183073 -0.013183072 0 -0.013183073 0.013183072 0 -0.013183073 -0.013183072;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.034883332816358914 0 0 0 0 1.6188405214909136 0 0
		 0 0 0.75700000000000001 0 5.567077346553317 0.97820336358036264 0.38056196270196513 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.5845189 0.97820354 0.38056186 ;
	setAttr ".rs" 35367;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.5845190171199137 0.22692904661931301 0.029251931824374966 ;
	setAttr ".cbx" -type "double3" 5.5845190171199137 1.7294779700126548 0.73187181309669092 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  1.1920929e-007 0.022735136
		 0.022735134 1.1920929e-007 0.022735136 -0.022735134 1.1920929e-007 -0.022735136 0.022735134
		 1.1920929e-007 -0.022735136 -0.022735134;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.034883332816358914 0 0 0 0 1.6188405214909136 0 0
		 0 0 0.75700000000000001 0 5.567077346553317 0.97820336358036264 0.38056196270196513 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.5845189 0.97820354 0.38056186 ;
	setAttr ".rs" 55403;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.5845190129614961 0.36508493837487277 0.09385615665524083 ;
	setAttr ".cbx" -type "double3" 5.5845190129614961 1.5913220782570954 0.66726754314510894 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0 0.085342497 0.085342497
		 0 0.085342497 -0.085342497 0 -0.085342512 0.085342497 0 -0.085342512 -0.085342497;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.034883332816358914 0 0 0 0 1.6188405214909136 0 0
		 0 0 0.75700000000000001 0 5.567077346553317 0.97820336358036264 0.38056196270196513 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.5845189 0.97820354 0.38056183 ;
	setAttr ".rs" 34896;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.5845190129614961 0.38043555012975083 0.10103434369771558 ;
	setAttr ".cbx" -type "double3" 5.5845190129614961 1.5759715629926314 0.66008928842156012 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0 0.0094824862 0.0094824862
		 0 0.0094824862 -0.0094824862 0 -0.0094824862 0.0094824862 0 -0.0094824862 -0.0094824862;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 7 "f[16:17]" "f[20:21]" "f[32]" "f[35:36]" "f[39]" "f[41:42]" "f[45:46]";
	setAttr ".ix" -type "matrix" -4.6630391049388766 0 0 0 0 -1.8023482839603806 0 0
		 0 0 -0.71090092392324045 0 2.6202908905609889e-016 1.0700955502638132 -2.1546146153923829 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.4408921e-016 1.0137721 -2.3989868 ;
	setAttr ".rs" 62762;
	setAttr ".lt" -type "double3" -5.5402731014009277e-016 -8.6736173798840355e-016 
		-0.10110433050295486 ;
	setAttr ".ls" -type "double3" 1 1 2.23621351440634 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3315195524694379 0.1689214082836229 -2.4656337696088007 ;
	setAttr ".cbx" -type "double3" 2.3315195524694388 1.8586229244964798 -2.332339846373193 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 5 "f[0:1]" "f[3:6]" "f[8]" "f[11]" "f[13:14]";
	setAttr ".ix" -type "matrix" -4.6630391049388766 0 0 0 0 -1.8023482839603806 0 0
		 0 0 -0.71090092392324045 0 2.6202908905609889e-016 1.0700955502638132 -2.1546146153923829 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.4408921e-016 1.0700955 -2.4705706 ;
	setAttr ".rs" 61931;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.0400796084107582 0.2815681760311467 -2.5100650773540032 ;
	setAttr ".cbx" -type "double3" 2.0400796084107591 1.8586229244964798 -2.4310760481420903 ;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
lockNode -l 1 ;
createNode blinn -n "blinn1";
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/MetalRollup0070_2_S.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode blinn -n "blinn2";
createNode shadingEngine -n "blinn2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/BronzeCopper0039_L.jpg";
createNode place2dTexture -n "place2dTexture2";
createNode polyAutoProj -n "polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:239]";
	setAttr ".ix" -type "matrix" 9.2513503509526807 0 0 0 0 1 0 0 0 0 3.5901742622127073 0
		 0 1.8884804434214715 0 1;
	setAttr ".s" -type "double3" 11.973127981607943 11.973127981607943 11.973127981607943 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 85 ".tk";
	setAttr ".tk[8]" -type "float3" 6.7751897e-009 -0.00076509494 -0.055168483 ;
	setAttr ".tk[9]" -type "float3" -0.050774179 -0.00076510187 -2.9641443e-009 ;
	setAttr ".tk[10]" -type "float3" -3.17587e-009 -0.00076510187 0.055168483 ;
	setAttr ".tk[11]" -type "float3" 0.050774179 -0.00076510187 1.9055213e-009 ;
	setAttr ".tk[19]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[20]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[22]" -type "float3" 1.4901161e-008 -5.9604645e-008 0 ;
	setAttr ".tk[23]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[25]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[26]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[27]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[30]" -type "float3" -0.039721046 0.00076504226 -0.04045343 ;
	setAttr ".tk[32]" -type "float3" -0.039721046 0.00076504226 0.04045343 ;
	setAttr ".tk[34]" -type "float3" 0.039721046 0.00076500914 0.040453434 ;
	setAttr ".tk[35]" -type "float3" 0.039721046 0.00076504226 -0.040453438 ;
	setAttr ".tk[38]" -type "float3" 7.4505806e-009 -8.9406967e-008 0 ;
	setAttr ".tk[40]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[42]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[43]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[48]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[49]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[50]" -type "float3" -1.4901161e-008 -5.9604645e-008 0 ;
	setAttr ".tk[51]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[52]" -type "float3" 1.4901161e-008 -5.9604645e-008 0 ;
	setAttr ".tk[53]" -type "float3" 1.4901161e-008 -5.9604645e-008 0 ;
	setAttr ".tk[54]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[55]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[56]" -type "float3" -1.4901161e-008 -5.9604645e-008 0 ;
	setAttr ".tk[57]" -type "float3" -7.4505806e-009 -8.9406967e-008 0 ;
	setAttr ".tk[58]" -type "float3" -7.4505806e-009 -8.9406967e-008 0 ;
	setAttr ".tk[59]" -type "float3" -7.4505806e-009 -8.9406967e-008 0 ;
	setAttr ".tk[60]" -type "float3" 7.4505806e-009 -8.9406967e-008 0 ;
	setAttr ".tk[61]" -type "float3" -3.7252903e-009 -8.9406967e-008 0 ;
	setAttr ".tk[62]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[63]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[64]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[67]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[73]" -type "float3" 2.9802322e-008 -8.9406967e-008 0 ;
	setAttr ".tk[78]" -type "float3" -1.4901161e-008 -5.9604645e-008 0 ;
	setAttr ".tk[83]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[88]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[93]" -type "float3" -1.4901161e-008 -8.9406967e-008 0 ;
	setAttr ".tk[97]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[100]" -type "float3" 4.6929207e-009 3.1628213e-005 -0.042362493 ;
	setAttr ".tk[101]" -type "float3" -0.030500822 -3.171762e-005 -0.031063182 ;
	setAttr ".tk[103]" -type "float3" -0.038988229 3.1628213e-005 -4.1714845e-009 ;
	setAttr ".tk[105]" -type "float3" -1.4901161e-008 -8.9406967e-008 0 ;
	setAttr ".tk[107]" -type "float3" -0.04855945 0 -0.022064967 ;
	setAttr ".tk[109]" -type "float3" -0.022064954 0 -0.051488981 ;
	setAttr ".tk[110]" -type "float3" -0.030500809 -3.171762e-005 0.03106318 ;
	setAttr ".tk[112]" -type "float3" -1.5643069e-009 3.1628213e-005 0.042362493 ;
	setAttr ".tk[114]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[116]" -type "float3" -0.022064967 0 0.051488981 ;
	setAttr ".tk[117]" -type "float3" -0.048559457 0 0.022064956 ;
	setAttr ".tk[118]" -type "float3" 0.030500807 -3.171762e-005 0.031063182 ;
	setAttr ".tk[120]" -type "float3" 0.038988229 3.1628213e-005 2.6071778e-010 ;
	setAttr ".tk[122]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[124]" -type "float3" 0.04855945 0 0.022064967 ;
	setAttr ".tk[125]" -type "float3" 0.022064956 0 0.051488981 ;
	setAttr ".tk[126]" -type "float3" 0.030500809 -3.171762e-005 -0.031063182 ;
	setAttr ".tk[129]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[130]" -type "float3" 0.022064969 6.4272037e-009 -0.051488981 ;
	setAttr ".tk[131]" -type "float3" 0.048559457 0 -0.022064967 ;
	setAttr ".tk[133]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[137]" -type "float3" -7.4505806e-009 -8.9406967e-008 0 ;
	setAttr ".tk[142]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[146]" -type "float3" -7.4505806e-009 -5.9604645e-008 0 ;
	setAttr ".tk[150]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[154]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[158]" -type "float3" 0 -8.9406967e-008 0 ;
	setAttr ".tk[161]" -type "float3" 7.4505806e-009 -5.9604645e-008 0 ;
	setAttr ".tk[165]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[171]" -type "float3" -3.7252903e-009 -5.9604645e-008 0 ;
	setAttr ".tk[176]" -type "float3" 3.7252903e-009 -8.9406967e-008 0 ;
	setAttr ".tk[181]" -type "float3" -3.7252903e-009 -5.9604645e-008 0 ;
	setAttr ".tk[186]" -type "float3" 1.4901161e-008 -8.9406967e-008 0 ;
	setAttr ".tk[205]" -type "float3" -0.016943123 4.0372359e-009 -0.039537083 ;
	setAttr ".tk[206]" -type "float3" -0.037287574 4.0372359e-009 -0.016943129 ;
	setAttr ".tk[209]" -type "float3" -0.037287574 4.0372359e-009 0.016943123 ;
	setAttr ".tk[210]" -type "float3" -0.016943127 4.0372359e-009 0.039537068 ;
	setAttr ".tk[213]" -type "float3" 0.016943125 4.0372359e-009 0.039537083 ;
	setAttr ".tk[214]" -type "float3" 0.037287574 4.0372359e-009 0.016943127 ;
	setAttr ".tk[217]" -type "float3" 0.037287574 4.0372359e-009 -0.016943125 ;
	setAttr ".tk[218]" -type "float3" 0.016943129 4.0372359e-009 -0.039537083 ;
	setAttr ".tk[233]" -type "float3" -1.4901161e-008 -2.9802322e-008 0 ;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/white-spatter.jpg";
createNode place2dTexture -n "place2dTexture3";
createNode polyAutoProj -n "polyAutoProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:575]";
	setAttr ".ix" -type "matrix" 10.643455895724815 0 0 0 0 2.0183383814810396 0 0 0 0 3.9022504996203957 0
		 0 1.0165072305815757 0 1;
	setAttr ".s" -type "double3" 11.035705049596748 11.035705049596748 11.035705049596748 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode blinn -n "blinn3";
createNode shadingEngine -n "blinn3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode file -n "file4";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/BronzeCopper0039_L.jpg";
createNode place2dTexture -n "place2dTexture4";
createNode polyAutoProj -n "polyAutoProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 0.034883332816358914 0 0 0 0 1.6188405214909136 0 0
		 0 0 0.75700000000000001 0 5.567077346553317 0.97820336358036264 -0.37966538289987078 1;
	setAttr ".s" -type "double3" 11.257876934548875 11.257876934548875 11.257876934548875 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 0.034883332816358914 0 0 0 0 1.6188405214909136 0 0
		 0 0 0.75700000000000001 0 5.567077346553317 0.97820336358036264 0.38056196270196513 1;
	setAttr ".s" -type "double3" 11.257876934548875 11.257876934548875 11.257876934548875 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[8]" -type "float3" 1.1578043 0 0 ;
	setAttr ".tk[9]" -type "float3" 1.1578043 0 0 ;
	setAttr ".tk[10]" -type "float3" 1.1578043 0 0 ;
	setAttr ".tk[11]" -type "float3" 1.1578043 0 0 ;
	setAttr ".tk[12]" -type "float3" 1.1578043 0 0 ;
	setAttr ".tk[13]" -type "float3" 1.1578043 0 0 ;
	setAttr ".tk[14]" -type "float3" 1.1578043 0 0 ;
	setAttr ".tk[15]" -type "float3" 1.1578043 0 0 ;
	setAttr ".tk[24]" -type "float3" -0.82081729 0.022757964 0.022757962 ;
	setAttr ".tk[25]" -type "float3" -0.82081729 0.022757964 -0.022757962 ;
	setAttr ".tk[26]" -type "float3" -0.82081729 -0.022757964 0.022757962 ;
	setAttr ".tk[27]" -type "float3" -0.82081729 -0.022757964 -0.022757962 ;
createNode polyAutoProj -n "polyAutoProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" -0.13953333126543566 0 0 0 0 1.6188405214909136 0 0
		 0 0 0.75700000000000001 0 -5.401650900884853 0.97820336358036264 0.38056196270196718 1;
	setAttr ".s" -type "double3" 11.257876934548875 11.257876934548875 11.257876934548875 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" -0.13953333126543566 0 0 0 0 1.6188405214909136 0 0
		 0 0 0.75700000000000001 0 -5.401650900884853 0.97820336358036264 -0.37966538289986873 1;
	setAttr ".s" -type "double3" 11.257876934548875 11.257876934548875 11.257876934548875 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:239]";
	setAttr ".ix" -type "matrix" 9.2513503509526807 0 0 0 0 1 0 0 0 0 3.5901742622127073 0
		 0 1.8884804434214715 0 1;
	setAttr ".s" -type "double3" 11.973127981607943 11.973127981607943 11.973127981607943 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 78 ".uvtk";
	setAttr ".uvtk[65]" -type "float2" 0.99727815 -0.040554106 ;
	setAttr ".uvtk[66]" -type "float2" 0.98439234 0.12896876 ;
	setAttr ".uvtk[67]" -type "float2" 0.90497941 0.13199566 ;
	setAttr ".uvtk[68]" -type "float2" 0.91550809 -0.034323275 ;
	setAttr ".uvtk[69]" -type "float2" 0.97124344 0.33240968 ;
	setAttr ".uvtk[70]" -type "float2" 0.8941924 0.33158809 ;
	setAttr ".uvtk[71]" -type "float2" 0.82631809 0.13547814 ;
	setAttr ".uvtk[72]" -type "float2" 0.83450919 -0.027264759 ;
	setAttr ".uvtk[73]" -type "float2" 0.9812327 0.53609741 ;
	setAttr ".uvtk[74]" -type "float2" 0.90187997 0.5313763 ;
	setAttr ".uvtk[75]" -type "float2" 0.81787449 0.33077416 ;
	setAttr ".uvtk[76]" -type "float2" 0.74916095 0.13987237 ;
	setAttr ".uvtk[77]" -type "float2" 0.75505263 -0.018548027 ;
	setAttr ".uvtk[78]" -type "float2" 0.99148542 0.70586705 ;
	setAttr ".uvtk[79]" -type "float2" 0.90982562 0.69789338 ;
	setAttr ".uvtk[80]" -type "float2" 0.82328576 0.52621698 ;
	setAttr ".uvtk[81]" -type "float2" 0.7430228 0.32997593 ;
	setAttr ".uvtk[82]" -type "float2" 0.67425901 0.14563191 ;
	setAttr ".uvtk[83]" -type "float2" 0.67790943 -0.0073462389 ;
	setAttr ".uvtk[84]" -type "float2" 0.97912604 0.80755389 ;
	setAttr ".uvtk[85]" -type "float2" 0.89981323 0.79766762 ;
	setAttr ".uvtk[86]" -type "float2" 0.82894951 0.6891076 ;
	setAttr ".uvtk[87]" -type "float2" 0.74620944 0.52017891 ;
	setAttr ".uvtk[88]" -type "float2" 0.67037123 0.32920119 ;
	setAttr ".uvtk[89]" -type "float2" 0.60245985 0.14094904 ;
	setAttr ".uvtk[90]" -type "float2" 0.60405058 -0.015316337 ;
	setAttr ".uvtk[91]" -type "float2" 0.82126385 0.78674537 ;
	setAttr ".uvtk[92]" -type "float2" 0.74964136 0.67869824 ;
	setAttr ".uvtk[93]" -type "float2" 0.67140931 0.51282239 ;
	setAttr ".uvtk[94]" -type "float2" 0.60062736 0.32845742 ;
	setAttr ".uvtk[95]" -type "float2" 0.53411925 0.16251859 ;
	setAttr ".uvtk[96]" -type "float2" 0.53353786 0.024813861 ;
	setAttr ".uvtk[97]" -type "float2" 0.74424154 0.77375156 ;
	setAttr ".uvtk[98]" -type "float2" 0.67268497 0.66585314 ;
	setAttr ".uvtk[99]" -type "float2" 0.59954941 0.51597393 ;
	setAttr ".uvtk[100]" -type "float2" 0.53448606 0.32775208 ;
	setAttr ".uvtk[101]" -type "float2" 0.47016308 0.1734488 ;
	setAttr ".uvtk[102]" -type "float2" 0.46763065 0.045401081 ;
	setAttr ".uvtk[103]" -type "float2" 0.66950935 0.75764978 ;
	setAttr ".uvtk[104]" -type "float2" 0.59871453 0.67224681 ;
	setAttr ".uvtk[105]" -type "float2" 0.5315547 0.49294984 ;
	setAttr ".uvtk[106]" -type "float2" 0.47249678 0.32709104 ;
	setAttr ".uvtk[107]" -type "float2" 0.41126159 0.16993469 ;
	setAttr ".uvtk[108]" -type "float2" 0.40641984 0.03945674 ;
	setAttr ".uvtk[109]" -type "float2" 0.59760886 0.76602501 ;
	setAttr ".uvtk[110]" -type "float2" 0.52883625 0.63061929 ;
	setAttr ".uvtk[111]" -type "float2" 0.46777889 0.48065704 ;
	setAttr ".uvtk[112]" -type "float2" 0.41590175 0.32648751 ;
	setAttr ".uvtk[113]" -type "float2" 0.3576847 0.19979361 ;
	setAttr ".uvtk[114]" -type "float2" 0.3516762 0.094663545 ;
	setAttr ".uvtk[115]" -type "float2" 0.46325961 0.60862952 ;
	setAttr ".uvtk[116]" -type "float2" 0.4088327 0.48291498 ;
	setAttr ".uvtk[117]" -type "float2" 0.36353031 0.32592902 ;
	setAttr ".uvtk[118]" -type "float2" 0.31098989 0.21446338 ;
	setAttr ".uvtk[119]" -type "float2" 0.30379108 0.12208273 ;
	setAttr ".uvtk[120]" -type "float2" 0.40196654 0.61326844 ;
	setAttr ".uvtk[121]" -type "float2" 0.35572812 0.45191771 ;
	setAttr ".uvtk[122]" -type "float2" 0.31804439 0.32544401 ;
	setAttr ".uvtk[123]" -type "float2" 0.27223817 0.22926641 ;
	setAttr ".uvtk[124]" -type "float2" 0.26463434 0.14993083 ;
	setAttr ".uvtk[125]" -type "float2" 0.46618924 0.68549061 ;
	setAttr ".uvtk[126]" -type "float2" 0.40721324 0.69159722 ;
	setAttr ".uvtk[127]" -type "float2" 0.34808883 0.55690229 ;
	setAttr ".uvtk[128]" -type "float2" 0.30926856 0.43625551 ;
	setAttr ".uvtk[129]" -type "float2" 0.27971551 0.32503521 ;
	setAttr ".uvtk[130]" -type "float2" 0.24088109 0.24392718 ;
	setAttr ".uvtk[131]" -type "float2" 0.23282823 0.17800626 ;
	setAttr ".uvtk[132]" -type "float2" 0.30063733 0.52846748 ;
	setAttr ".uvtk[133]" -type "float2" 0.27075318 0.42062759 ;
	setAttr ".uvtk[134]" -type "float2" 0.24881831 0.32470575 ;
	setAttr ".uvtk[135]" -type "float2" 0.21636733 0.25816697 ;
	setAttr ".uvtk[136]" -type "float2" 0.20699546 0.2061069 ;
	setAttr ".uvtk[137]" -type "float2" 0.26191923 0.4997884 ;
	setAttr ".uvtk[138]" -type "float2" 0.2396287 0.40530109 ;
	setAttr ".uvtk[139]" -type "float2" 0.2305541 0.47103941 ;
	setAttr ".uvtk[140]" -type "float2" 0.20516169 0.44239289 ;
	setAttr ".uvtk[141]" -type "float2" 0.21533999 0.39054084 ;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:239]";
	setAttr ".ix" -type "matrix" 9.2513503509526807 0 0 0 0 1 0 0 0 0 3.5901742622127073 0
		 0 1.8884804434214715 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 2.3521432876586914 0 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 5.0485429763793945 1.0162076950073242 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polySphProj -n "polySphProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:239]";
	setAttr ".ix" -type "matrix" 9.2513503509526807 0 0 0 0 1 0 0 0 0 3.5901742622127073 0
		 0 1.8884804434214715 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 2.3521433472633362 0 ;
	setAttr ".r" 11.973129272460938;
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 269 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.49996829 -0.38074338 0.37072816 -0.20812547
		 0.37072822 -0.21639818 0.5017032 -0.20418268 0.31433254 -0.22038528 0.31433254 -0.22636622
		 0.31433254 -0.23249498 0.37072822 -0.22490016 0.5017032 -0.21556473 0.28266898 -0.2253772
		 0.28266898 -0.23042262 0.25528812 -0.22691163 0.25528812 -0.23167095 0.25528812 -0.23654224
		 0.28266898 -0.23558818 0.28266898 -0.2408336 0.31433254 -0.23872316 0.25528812 -0.24148838
		 0.25528812 -0.24651724 0.28266898 -0.24616762 0.31433254 -0.24505921 0.37072822 -0.23355985
		 0.5017032 -0.22720253 0.37072822 -0.24238385 0.5017032 -0.23909281 0.22790752 -0.2253772
		 0.22790752 -0.23042262 0.19624405 -0.22038528 0.19624405 -0.22636622 0.19624396 -0.23249498
		 0.22790752 -0.23558818 0.13984837 -0.20812547 0.13984837 -0.21639818 0.0088732727
		 -0.19316137 0.0088732727 -0.20418268 0.0088732727 -0.21556473 0.13984837 -0.22490016
		 0.13984837 -0.23355979 0.19624396 -0.23872316 0.0088732727 -0.22720253 0.0088732727
		 -0.23909281 0.13984816 -0.24238385 0.19624396 -0.24505924 0.22790752 -0.2408336 0.22790752
		 -0.24616762 -0.12210167 -0.20812547 -0.12210167 -0.21639818 -0.17849724 -0.22038528
		 -0.17849724 -0.22636622 -0.17849724 -0.23249498 -0.12210167 -0.22490016 -0.21016096
		 -0.2253772 -0.21016096 -0.23042262 -0.2375416 -0.22691163 -0.2375416 -0.23167095
		 -0.2375416 -0.23654224 -0.21016096 -0.23558818 -0.21016096 -0.2408336 -0.17849724
		 -0.23872316 -0.2375416 -0.24148838 -0.2375416 -0.24651724 -0.21016096 -0.24616762
		 -0.17849724 -0.24505924 -0.12210161 -0.23355979 -0.12210167 -0.24238385 -0.26492232
		 -0.22537732 -0.26492232 -0.23042265 -0.29658598 -0.22038531 -0.29658598 -0.22636622
		 -0.29658598 -0.23249498 -0.26492232 -0.23558818 -0.35007346 -0.21639818 -0.35007346
		 -0.22490025 -0.35007346 -0.23355979 -0.29658598 -0.23872316 -0.35007346 -0.24238385
		 -0.29658598 -0.24505924 -0.26492232 -0.2408336 -0.26492232 -0.24616762 0.37072822
		 -0.25150576 0.50170326 -0.25140363 0.31433249 -0.25160298 0.31433254 -0.25845668
		 0.37072822 -0.26105872 0.50170326 -0.26429465 0.28266898 -0.25167567 0.25528812 -0.25171065
		 0.25528812 -0.2571485 0.28266898 -0.25744379 0.28266898 -0.26370373 0.31433254 -0.26589176
		 0.25528812 -0.26305115 0.25528812 -0.26777744 0.28266898 -0.26877224 0.31433249 -0.27197218
		 0.37072822 -0.27141374 0.5017032 -0.27824807 0.37072822 -0.27977878 0.5017032 -0.28936103
		 0.22790752 -0.25167567 0.19624396 -0.25160298 0.19624396 -0.25845668 0.22790752 -0.25744379
		 0.13984816 -0.25150576 0.0088732727 -0.25140363 0.0088733323 -0.26429465 0.13984816
		 -0.26105872 0.13984837 -0.27141374 0.19624396 -0.26589176 0.0088733323 -0.27824801
		 0.0088733323 -0.28936106 0.13984837 -0.27977872 0.19624396 -0.27197218 0.22790752
		 -0.26370373 0.22790752 -0.26877224 -0.12210167 -0.25150576 -0.17849724 -0.25160298
		 -0.17849724 -0.25845668 -0.12210161 -0.26105872 -0.21016096 -0.25167567 -0.2375416
		 -0.25171065 -0.2375416 -0.2571485 -0.21016096 -0.25744379 -0.21016096 -0.26370373
		 -0.17849724 -0.26589176 -0.2375416 -0.26305115 -0.2375416 -0.26777744 -0.21016096
		 -0.26877224 -0.17849724 -0.27197218 -0.12210161 -0.27141374 -0.12210167 -0.27977872
		 -0.26492232 -0.25167567 -0.29658598 -0.25160298 -0.29658598 -0.25845668 -0.26492232
		 -0.25744379 -0.35007352 -0.25150576 -0.35007352 -0.26105872 -0.35007352 -0.27141374
		 -0.29658598 -0.26589176 -0.35007352 -0.27977872 -0.29658598 -0.27197212 -0.26492232
		 -0.26370373 -0.26492232 -0.26877224 0.37072822 -0.29615444 0.50170326 -0.31135446
		 0.31433254 -0.28372943 0.3143298 -0.29493493 0.37058029 -0.31164336 0.5017032 -0.33201873
		 0.28266898 -0.27874294 0.25528812 -0.27723819 0.25528812 -0.28631526 0.28271753 -0.28829181
		 0.28289565 -0.29988432 0.31432003 -0.30820423 0.25528812 -0.29753965 0.25528812 -0.31273341
		 0.2834599 -0.31513327 0.3142896 -0.32488251 0.37004024 -0.329997 0.5017032 -0.35680124
		 0.36835283 -0.35287935 0.5017032 -0.38871649 0.22790752 -0.27874294 0.19624396 -0.28372943
		 0.19624655 -0.29493493 0.22785889 -0.28829181 0.13984837 -0.29615438 0.0088733323
		 -0.31135446 0.0088733323 -0.33201873 0.13999622 -0.31164339 0.14053626 -0.32999712
		 0.19625638 -0.30820417 0.0088733323 -0.35680124 0.0088733323 -0.38871658 0.14222352
		 -0.35287935 0.19628681 -0.32488251 0.22768076 -0.29988432 0.22711654 -0.31513327
		 -0.12210161 -0.29615438 -0.17849724 -0.28372943 -0.1785001 -0.29493493 -0.12224958
		 -0.31164336 -0.21016096 -0.27874294 -0.2375416 -0.27723819 -0.2375416 -0.28631526
		 -0.21011232 -0.28829181 -0.2099341 -0.29988432 -0.17850976 -0.30820423 -0.2375416
		 -0.29753965 -0.2375416 -0.31273341 -0.20936991 -0.31513327 -0.17854021 -0.32488251
		 -0.12278957 -0.32999712 -0.12447686 -0.35287935 -0.26492232 -0.27874294 -0.29658598
		 -0.28372943 -0.29658324 -0.29493493 -0.26497096 -0.28829181 -0.35007352 -0.29615438
		 -0.34990335 -0.31164339 -0.34928191 -0.32999712 -0.29657346 -0.30820423 -0.3473404
		 -0.35287935 -0.29654294 -0.32488251 -0.26514906 -0.29988432 -0.26571327 -0.31513327
		 0.36400729 -0.38316277 0.50170326 -0.43418777 0.31421223 -0.34734085 0.31462583 -0.374724
		 0.35074767 -0.42104062 0.5017032 -0.50210601 0.25528812 -0.33642811 0.28497007 -0.33759794
		 0.25528812 -0.37920743 0.29073814 -0.37570339 0.5017032 -0.60382986 0.31598574 -0.4584395
		 0.25528812 -0.47628656 0.22560643 -0.33759794 0.19636427 -0.34734085 0.19595061 -0.374724
		 0.21983846 -0.37570351 0.0088733323 -0.43418789 0.14656918 -0.3831628 0.0088732727
		 -0.50210619 0.15982874 -0.42104062 0.19459085 -0.4584395 0.075872876 -0.60426152
		 -0.12882257 -0.38316277 -0.1786177 -0.34734085 -0.17820404 -0.374724 -0.1420822 -0.42104062
		 -0.2375416 -0.33642811 -0.20785989 -0.33759794 -0.2375416 -0.37920743 -0.20209186
		 -0.37570351 -0.15381496 -0.43070719 -0.26722336 -0.33759794 -0.29646552 -0.34734085
		 -0.29687917 -0.374724 -0.27299142 -0.37570351 -0.34233999 -0.38316265 -0.32708263
		 -0.42104056 -0.35007352 -0.20812544 -0.50078195 -0.19316137 -0.50078195 -0.20418268
		 -0.50078195 -0.21556473 -0.50078195 -0.22720253;
	setAttr ".uvtk[250:268]" -0.50078195 -0.23909281 -0.50078195 -0.25140363 -0.50078195
		 -0.26429465 -0.50078195 -0.27824807 -0.50078195 -0.28936103 -0.50078195 -0.31135446
		 -0.50078195 -0.33201873 -0.50078195 -0.35680124 -0.885607 -0.30828276 -1.031411648
		 -0.34792137 -1.12474573 -0.29481757 -1.61325252 -0.48127115 -0.50078195 -0.43418777
		 -0.50078195 -0.38871649 -0.50078195 -0.50210601 -0.41769189 -0.90908659 -0.22888301
		 -0.45201129 -0.69697791 -0.66975576 -0.28708327 -0.45843953;
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[217]" -type "float2" -0.0017349124 -0.61020041 ;
	setAttr ".uvtk[246]" -type "float2" 0.00075024366 -0.18758202 ;
	setAttr ".uvtk[258]" -type "float2" 0.008736372 0.38926375 ;
	setAttr ".uvtk[260]" -type "float2" 0.0015529394 0.37579864 ;
	setAttr ".uvtk[261]" -type "float2" -0.88677943 0.26724088 ;
	setAttr -s 954 ".nuv";
	setAttr ".nuv[0:124]"  0 184 1 0 0 189 1 1 0 185
		 0 1 1 184 0 0 1 48 1 0 1 186 1 1 1 189 0 1 2 
		189 0 0 2 186 1 0 2 49 1 1 2 187 0 1 3 185 0 0 
		3 189 1 0 3 187 1 1 3 17 0 1 4 48 0 0 4 188
		 1 0 4 190 1 1 4 186 0 1 5 188 0 0 5 1 1 0 5 
		65 1 1 5 190 0 1 6 190 0 0 6 65 1 0 6 18 1 1 
		6 66 0 1 7 186 0 0 7 190 1 0 7 66 1 1 7 49
		 0 1 8 49 0 0 8 66 1 0 8 191 1 1 8 67 0 1 9 
		66 0 0 9 18 1 0 9 68 1 1 9 191 0 1 10 191 0 0 
		10 68 1 0 10 5 1 1 10 69 0 1 11 67 0 0 11 191
		 1 0 11 69 1 1 11 19 0 1 12 17 0 0 12 187 1 0 12 
		192 1 1 12 70 0 1 13 187 0 0 13 49 1 0 13 67 1 1 
		13 192 0 1 14 192 0 0 14 67 1 0 14 19 1 1 14 71
		 0 1 15 70 0 0 15 192 1 0 15 71 1 1 15 4 0 1 16 
		1 0 0 16 72 1 0 16 193 1 1 16 65 0 1 17 72 0 0 
		17 20 1 0 17 73 1 1 17 193 0 1 18 193 0 0 18 73
		 1 0 18 50 1 1 18 74 0 1 19 65 0 0 19 193 1 0 19 
		74 1 1 19 18 0 1 20 20 0 0 20 75 1 0 20 194 1 1 
		20 73 0 1 21 75 0 0 21 2 1 0 21 76 1 1 21 194
		 0 1 22 194 0 0 22 76 1 0 22 21 1 1 22 77 0 1 23 
		73 0 0 23 194 1 0 23 77 1 1 23 50 0 1 24 50 0 0 
		24 77 1 0 24 195 1 1 24 78 0 1 25 77 0 0 25 21
		 1 0 25 79 1 1 25 195 0 1 26 195 0 0 26 79 1 0 26 
		6 1 1 26 80 0 1 27 78 0 0 27 195 1 0 27 80 1 1 
		27 22 0 1 28 18 0 0 28 74 1 0 28 196 1 1 28 68
		 0 1 29 74 0 0 29 50 1 0 29 78 1 1 29 196 0 1 30 
		196 0 0 30 78 1 0 30 22 1 1 30 81 0 1 31 68 0 0 
		31 196 1 0;
	setAttr ".nuv[125:249]" 31 81 1 1 31 5 0 1 32 2 0
		 0 32 82 1 0 32 197 1 1 32 76 0 1 33 82 0 0 33 
		23 1 0 33 83 1 1 33 197 0 1 34 197 0 0 34 83 1 0 
		34 51 1 1 34 84 0 1 35 76 0 0 35 197 1 0 35 84
		 1 1 35 21 0 1 36 23 0 0 36 85 1 0 36 198 1 1 36 
		83 0 1 37 85 0 0 37 3 1 0 37 86 1 1 37 198 0 1 
		38 198 0 0 38 86 1 0 38 24 1 1 38 87 0 1 39 83
		 0 0 39 198 1 0 39 87 1 1 39 51 0 1 40 51 0 0 40 
		87 1 0 40 199 1 1 40 88 0 1 41 87 0 0 41 24 1 0 
		41 89 1 1 41 199 0 1 42 199 0 0 42 89 1 0 42 7
		 1 1 42 90 0 1 43 88 0 0 43 199 1 0 43 90 1 1 43 
		25 0 1 44 21 0 0 44 84 1 0 44 200 1 1 44 79 0 1 
		45 84 0 0 45 51 1 0 45 88 1 1 45 200 0 1 46 200
		 0 0 46 88 1 0 46 25 1 1 46 91 0 1 47 79 0 0 47 
		200 1 0 47 91 1 1 47 6 0 1 48 3 0 0 48 92 1 0 
		48 201 1 1 48 86 0 1 49 92 0 0 49 26 1 0 49 93
		 1 1 49 201 0 1 50 201 0 0 50 93 1 0 50 52 1 1 50 
		94 0 1 51 86 0 0 51 201 1 0 51 94 1 1 51 24 0 1 
		52 26 0 0 52 95 1 0 52 202 1 1 52 93 0 1 53 95
		 0 0 53 185 1 1 53 202 0 1 54 202 0 0 54 185 1 0 54 
		17 1 1 54 96 0 1 55 93 0 0 55 202 1 0 55 96 1 1 
		55 52 0 1 56 52 0 0 56 96 1 0 56 203 1 1 56 97
		 0 1 57 96 0 0 57 17 1 0 57 70 1 1 57 203 0 1 58 
		203 0 0 58 70 1 0 58 4 1 1 58 98 0 1 59 97 0 0 
		59 203 1 0 59 98 1 1 59 27 0 1 60 24 0 0 60 94
		 1 0 60 204 1 1 60 89 0 1 61 94 0 0 61 52 1 0 61 
		97 1 1 61 204 0 1 62 204 0 0 62 97 1 0 62 27 1 1 
		62 99 0 1;
	setAttr ".nuv[250:374]" 63 89 0 0 63 204 1 0 63 99 1
		 1 63 7 0 1 64 4 0 0 64 71 1 0 64 205 1 1 64 
		100 0 1 65 71 0 0 65 19 1 0 65 101 1 1 65 205 0 1 
		66 205 0 0 66 101 1 0 66 53 1 1 66 102 0 1 67 100
		 0 0 67 205 1 0 67 102 1 1 67 28 0 1 68 19 0 0 68 
		69 1 0 68 206 1 1 68 101 0 1 69 69 0 0 69 5 1 0 
		69 103 1 1 69 206 0 1 70 206 0 0 70 103 1 0 70 29
		 1 1 70 104 0 1 71 101 0 0 71 206 1 0 71 104 1 1 71 
		53 0 1 72 53 0 0 72 104 1 0 72 207 1 1 72 105 0 1 
		73 104 0 0 73 29 1 0 73 106 1 1 73 207 0 1 74 207
		 0 0 74 106 1 0 74 9 1 1 74 107 0 1 75 105 0 0 75 
		207 1 0 75 107 1 1 75 30 0 1 76 28 0 0 76 102 1 0 
		76 208 1 1 76 108 0 1 77 102 0 0 77 53 1 0 77 105
		 1 1 77 208 0 1 78 208 0 0 78 105 1 0 78 30 1 1 78 
		109 0 1 79 108 0 0 79 208 1 0 79 109 1 1 79 8 0 1 
		80 5 0 0 80 81 1 0 80 209 1 1 80 103 0 1 81 81
		 0 0 81 22 1 0 81 110 1 1 81 209 0 1 82 209 0 0 82 
		110 1 0 82 54 1 1 82 111 0 1 83 103 0 0 83 209 1 0 
		83 111 1 1 83 29 0 1 84 22 0 0 84 80 1 0 84 210
		 1 1 84 110 0 1 85 80 0 0 85 6 1 0 85 112 1 1 85 
		210 0 1 86 210 0 0 86 112 1 0 86 31 1 1 86 113 0 1 
		87 110 0 0 87 210 1 0 87 113 1 1 87 54 0 1 88 54
		 0 0 88 113 1 0 88 211 1 1 88 114 0 1 89 113 0 0 89 
		31 1 0 89 115 1 1 89 211 0 1 90 211 0 0 90 115 1 0 
		90 10 1 1 90 116 0 1 91 114 0 0 91 211 1 0 91 116
		 1 1 91 32 0 1 92 29 0 0 92 111 1 0 92 212 1 1 92 
		106 0 1 93 111 0 0 93 54 1 0 93 114 1 1 93 212 0 1 
		94 212 0 0;
	setAttr ".nuv[375:499]" 94 114 1 0 94 32 1 1 94 117 0
		 1 95 106 0 0 95 212 1 0 95 117 1 1 95 9 0 1 96 
		6 0 0 96 91 1 0 96 213 1 1 96 112 0 1 97 91 0 0 
		97 25 1 0 97 118 1 1 97 213 0 1 98 213 0 0 98 118
		 1 0 98 55 1 1 98 119 0 1 99 112 0 0 99 213 1 0 99 
		119 1 1 99 31 0 1 100 25 0 0 100 90 1 0 100 214 1 1 
		100 118 0 1 101 90 0 0 101 7 1 0 101 120 1 1 101 214
		 0 1 102 214 0 0 102 120 1 0 102 33 1 1 102 121 0 1 103 
		118 0 0 103 214 1 0 103 121 1 1 103 55 0 1 104 55 0 0 
		104 121 1 0 104 215 1 1 104 122 0 1 105 121 0 0 105 33
		 1 0 105 123 1 1 105 215 0 1 106 215 0 0 106 123 1 0 106 
		11 1 1 106 124 0 1 107 122 0 0 107 215 1 0 107 124 1 1 
		107 34 0 1 108 31 0 0 108 119 1 0 108 216 1 1 108 115
		 0 1 109 119 0 0 109 55 1 0 109 122 1 1 109 216 0 1 110 
		216 0 0 110 122 1 0 110 34 1 1 110 125 0 1 111 115 0 0 
		111 216 1 0 111 125 1 1 111 10 0 1 112 7 0 0 112 99
		 1 0 112 217 1 1 112 120 0 1 113 99 0 0 113 27 1 0 113 
		126 1 1 113 217 0 1 114 217 0 0 114 126 1 0 114 56 1 1 
		114 127 0 1 115 120 0 0 115 217 1 0 115 127 1 1 115 33
		 0 1 116 27 0 0 116 98 1 0 116 218 1 1 116 126 0 1 117 
		98 0 0 117 4 1 0 117 100 1 1 117 218 0 1 118 218 0 0 
		118 100 1 0 118 28 1 1 118 128 0 1 119 126 0 0 119 218
		 1 0 119 128 1 1 119 56 0 1 120 56 0 0 120 128 1 0 120 
		219 1 1 120 129 0 1 121 128 0 0 121 28 1 0 121 108 1 1 
		121 219 0 1 122 219 0 0 122 108 1 0 122 8 1 1 122 130
		 0 1 123 129 0 0 123 219 1 0 123 130 1 1 123 35 0 1 124 
		33 0 0 124 127 1 0 124 220 1 1 124 123 0 1 125 127 0 0 
		125 56 1 0;
	setAttr ".nuv[500:624]" 125 129 1 1 125 220 0 1 126 220 0
		 0 126 129 1 0 126 35 1 1 126 131 0 1 127 123 0 0 127 
		220 1 0 127 131 1 1 127 11 0 1 128 8 0 0 128 109 1 0 
		128 221 1 1 128 132 0 1 129 109 0 0 129 30 1 0 129 133
		 1 1 129 221 0 1 130 221 0 0 130 133 1 0 130 57 1 1 130 
		134 0 1 131 132 0 0 131 221 1 0 131 134 1 1 131 36 0 1 
		132 30 0 0 132 107 1 0 132 222 1 1 132 133 0 1 133 107
		 0 0 133 9 1 0 133 135 1 1 133 222 0 1 134 222 0 0 134 
		135 1 0 134 37 1 1 134 136 0 1 135 133 0 0 135 222 1 0 
		135 136 1 1 135 57 0 1 136 57 0 0 136 136 1 0 136 223
		 1 1 136 137 0 1 137 136 0 0 137 37 1 0 137 138 1 1 137 
		223 0 1 138 223 0 0 138 138 1 0 138 13 1 1 138 139 0 1 
		139 137 0 0 139 223 1 0 139 139 1 1 139 38 0 1 140 36
		 0 0 140 134 1 0 140 224 1 1 140 140 0 1 141 134 0 0 141 
		57 1 0 141 137 1 1 141 224 0 1 142 224 0 0 142 137 1 0 
		142 38 1 1 142 141 0 1 143 140 0 0 143 224 1 0 143 141
		 1 1 143 12 0 1 144 9 0 0 144 117 1 0 144 225 1 1 144 
		135 0 1 145 117 0 0 145 32 1 0 145 142 1 1 145 225 0 1 
		146 225 0 0 146 142 1 0 146 58 1 1 146 143 0 1 147 135
		 0 0 147 225 1 0 147 143 1 1 147 37 0 1 148 32 0 0 148 
		116 1 0 148 226 1 1 148 142 0 1 149 116 0 0 149 10 1 0 
		149 144 1 1 149 226 0 1 150 226 0 0 150 144 1 0 150 39
		 1 1 150 145 0 1 151 142 0 0 151 226 1 0 151 145 1 1 151 
		58 0 1 152 58 0 0 152 145 1 0 152 227 1 1 152 146 0 1 
		153 145 0 0 153 39 1 0 153 147 1 1 153 227 0 1 154 227
		 0 0 154 147 1 0 154 14 1 1 154 148 0 1 155 146 0 0 155 
		227 1 0 155 148 1 1 155 40 0 1 156 37 0 0 156 143 1 0 
		156 228 1 1;
	setAttr ".nuv[625:749]" 156 138 0 1 157 143 0 0 157 58 1
		 0 157 146 1 1 157 228 0 1 158 228 0 0 158 146 1 0 158 
		40 1 1 158 149 0 1 159 138 0 0 159 228 1 0 159 149 1 1 
		159 13 0 1 160 10 0 0 160 125 1 0 160 229 1 1 160 144
		 0 1 161 125 0 0 161 34 1 0 161 150 1 1 161 229 0 1 162 
		229 0 0 162 150 1 0 162 59 1 1 162 151 0 1 163 144 0 0 
		163 229 1 0 163 151 1 1 163 39 0 1 164 34 0 0 164 124
		 1 0 164 230 1 1 164 150 0 1 165 124 0 0 165 11 1 0 165 
		152 1 1 165 230 0 1 166 230 0 0 166 152 1 0 166 41 1 1 
		166 153 0 1 167 150 0 0 167 230 1 0 167 153 1 1 167 59
		 0 1 168 59 0 0 168 153 1 0 168 231 1 1 168 154 0 1 169 
		153 0 0 169 41 1 0 169 155 1 1 169 231 0 1 170 231 0 0 
		170 155 1 0 170 15 1 1 170 156 0 1 171 154 0 0 171 231
		 1 0 171 156 1 1 171 42 0 1 172 39 0 0 172 151 1 0 172 
		232 1 1 172 147 0 1 173 151 0 0 173 59 1 0 173 154 1 1 
		173 232 0 1 174 232 0 0 174 154 1 0 174 42 1 1 174 157
		 0 1 175 147 0 0 175 232 1 0 175 157 1 1 175 14 0 1 176 
		11 0 0 176 131 1 0 176 233 1 1 176 152 0 1 177 131 0 0 
		177 35 1 0 177 158 1 1 177 233 0 1 178 233 0 0 178 158
		 1 0 178 60 1 1 178 159 0 1 179 152 0 0 179 233 1 0 179 
		159 1 1 179 41 0 1 180 35 0 0 180 130 1 0 180 234 1 1 
		180 158 0 1 181 130 0 0 181 8 1 0 181 132 1 1 181 234
		 0 1 182 234 0 0 182 132 1 0 182 36 1 1 182 160 0 1 183 
		158 0 0 183 234 1 0 183 160 1 1 183 60 0 1 184 60 0 0 
		184 160 1 0 184 235 1 1 184 161 0 1 185 160 0 0 185 36
		 1 0 185 140 1 1 185 235 0 1 186 235 0 0 186 140 1 0 186 
		12 1 1 186 162 0 1 187 161 0 0 187 235 1 0 187 162 1 1 
		187 43 0 1;
	setAttr ".nuv[750:874]" 188 41 0 0 188 159 1 0 188 236 1
		 1 188 155 0 1 189 159 0 0 189 60 1 0 189 161 1 1 189 
		236 0 1 190 236 0 0 190 161 1 0 190 43 1 1 190 163 0 1 
		191 155 0 0 191 236 1 0 191 163 1 1 191 15 0 1 192 12
		 0 0 192 141 1 0 192 237 1 1 192 164 0 1 193 141 0 0 193 
		38 1 0 193 165 1 1 193 237 0 1 194 237 0 0 194 165 1 0 
		194 61 1 1 194 166 0 1 195 164 0 0 195 237 1 0 195 166
		 1 1 195 44 0 1 196 13 0 0 196 167 1 0 196 238 1 1 196 
		139 0 1 197 167 0 0 197 45 1 0 197 168 1 1 197 238 0 1 
		198 238 0 0 198 168 1 0 198 61 1 1 198 165 0 1 199 139
		 0 0 199 238 1 0 199 165 1 1 199 38 0 1 200 16 0 0 200 
		169 1 0 200 170 0 1 201 44 1 0 201 166 1 1 201 239 0 1 
		202 239 0 0 202 166 1 0 202 61 1 1 202 168 0 1 203 170
		 0 0 203 239 1 0 203 168 1 1 203 45 0 1 204 13 0 0 204 
		149 1 0 204 240 1 1 204 167 0 1 205 149 0 0 205 40 1 0 
		205 171 1 1 205 240 0 1 206 240 0 0 206 171 1 0 206 62
		 1 1 206 172 0 1 207 167 0 0 207 240 1 0 207 172 1 1 207 
		45 0 1 208 14 0 0 208 173 1 0 208 241 1 1 208 148 0 1 
		209 173 0 0 209 46 1 0 209 174 1 1 209 241 0 1 210 241
		 0 0 210 174 1 0 210 62 1 1 210 171 0 1 211 148 0 0 211 
		241 1 0 211 171 1 1 211 40 0 1 212 16 0 0 212 170 1 0 
		213 170 0 0 213 45 1 0 213 172 1 1 213 242 0 1 214 242
		 0 0 214 172 1 0 214 62 1 1 214 174 0 1 215 175 0 0 215 
		242 1 0 215 174 1 1 215 46 0 1 216 14 0 0 216 157 1 0 
		216 243 1 1 216 173 0 1 217 157 0 0 217 42 1 0 217 176
		 1 1 217 243 0 1 218 243 0 0 218 176 1 0 218 63 1 1 218 
		177 0 1 219 173 0 0 219 243 1 0 219 177 1 1 219 46 0 1 
		220 15 0 0;
	setAttr ".nuv[875:953]" 220 178 1 0 220 244 1 1 220 156 0
		 1 221 178 0 0 221 47 1 0 221 179 1 1 221 244 0 1 222 
		244 0 0 222 179 1 0 222 63 1 1 222 176 0 1 223 156 0 0 
		223 244 1 0 223 176 1 1 223 42 0 1 224 16 0 0 224 175
		 1 0 224 245 1 1 224 180 0 1 225 175 0 0 225 46 1 0 225 
		177 1 1 225 245 0 1 226 245 0 0 226 177 1 0 226 63 1 1 
		226 179 0 1 227 180 0 0 227 245 1 0 227 179 1 1 227 47
		 0 1 228 15 0 0 228 163 1 0 228 246 1 1 228 178 0 1 229 
		163 0 0 229 43 1 0 229 181 1 1 229 246 0 1 230 246 0 0 
		230 181 1 0 230 64 1 1 230 182 0 1 231 178 0 0 231 246
		 1 0 231 182 1 1 231 47 0 1 232 12 0 0 232 164 1 0 232 
		247 1 1 232 162 0 1 233 164 0 0 233 44 1 0 233 183 1 1 
		233 247 0 1 234 247 0 0 234 183 1 0 234 64 1 1 234 181
		 0 1 235 162 0 0 235 247 1 0 235 181 1 1 235 43 0 1 236 
		16 0 0 236 180 1 0 236 248 1 1 236 169 0 1 237 180 0 0 
		237 47 1 0 237 182 1 1 237 248 0 1 238 248 0 0 238 182
		 1 0 238 64 1 1 238 183 0 1 239 169 0 0 239 248 1 0 239 
		183 1 1 239 44 0 1;
createNode polyCylProj -n "polyCylProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:239]";
	setAttr ".ix" -type "matrix" 9.2513503509526807 0 0 0 0 1 0 0 0 0 3.5901742622127073 0
		 0 1.8884804434214715 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 2.352143406867981 0 ;
	setAttr ".ps" -type "double2" 180 1.0162074565887451 ;
	setAttr ".is" -type "double2" 0.49275939868461227 1 ;
	setAttr ".r" 11.973129272460938;
createNode polyAutoProj -n "polyAutoProj8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:239]";
	setAttr ".ix" -type "matrix" 9.2513503509526807 0 0 0 0 1 0 0 0 0 3.5901742622127073 0
		 0 1.8884804434214715 0 1;
	setAttr ".s" -type "double3" 11.973129084454845 11.973129084454845 11.973129084454845 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode lambert -n "lambert3";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode file -n "file5";
	setAttr ".co" -type "float3" 0.18033113 0.18033113 0.18033113 ;
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/steel.JPG";
createNode place2dTexture -n "place2dTexture5";
createNode polyAutoProj -n "polyAutoProj9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:95]";
	setAttr ".ix" -type "matrix" -4.6630391049388766 -0 -0 0 -0 -1.8023482839603806 -0 0
		 -0 -0 -0.71090092392324045 0 2.6202908905609889e-016 1.0700955502638132 -2.1546146153923829 1;
	setAttr ".s" -type "double3" 4.7471428267408902 4.7471428267408902 4.7471428267408902 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk[83:104]" -type "float3"  0.023030868 0.023030842 0.28330591
		 0.014805514 0.025909657 0.28042707 0.014805514 0.014805513 0.27672568 0.025909662
		 0.014805513 0.28042707 -1.5771022e-008 0.025909679 0.28042707 -2.453271e-008 0.014805531
		 0.27672568 0.014805514 4.2840838e-008 0.27672568 0.025909662 4.2840838e-008 0.28042707
		 -0.014805545 0.025909701 0.28042707 -0.014805494 0.01480552 0.27672568 -0.023030816
		 0.023030808 0.28330591 -0.025909722 0.014805539 0.28042704 -0.025909662 -9.3132257e-009
		 0.28042707 -0.014805514 -9.3132257e-009 0.27672568 0.014805553 -0.014805527 0.27672568
		 0.025909705 -0.014805527 0.28042707 0.014805553 -0.025909657 0.28042707 0.023030847
		 -0.023030799 0.28330591 -0.025909722 -0.014805539 0.28042704 -0.014805514 -0.014805509
		 0.27672568 -0.023030831 -0.023030832 0.28330591 -0.01480553 -0.02590969 0.28042707;
createNode polyAutoProj -n "polyAutoProj10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 0.034883332816358914 0 0 0 0 1.6188405214909136 0 0
		 0 0 0.75700000000000001 0 5.567077346553317 0.97820336358036264 -0.37966538289987078 1;
	setAttr ".s" -type "double3" 1.6188408109621562 1.6188408109621562 1.6188408109621562 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 0.034883332816358914 0 0 0 0 1.6188405214909136 0 0
		 0 0 0.75700000000000001 0 5.567077346553317 0.97820336358036264 0.38056196270196513 1;
	setAttr ".s" -type "double3" 1.6188408109621562 1.6188408109621562 1.6188408109621562 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:95]";
	setAttr ".ix" -type "matrix" 4.6630391049388766 0 0 0 0 -1.8023482839603806 0 0 0 0 0.71090092392324045 0
		 2.6202908905609889e-016 1.0700955502638132 2.1546146153923829 1;
	setAttr ".s" -type "double3" 5.4135791949880492 5.4135791949880492 5.4135791949880492 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:95]";
	setAttr ".ix" -type "matrix" -4.6630391049388766 -0 -0 0 -0 -1.8023482839603806 -0 0
		 -0 -0 -0.71090092392324045 0 2.6202908905609889e-016 1.0700955502638132 -2.1546146153923829 1;
	setAttr ".s" -type "double3" 5.4135791949880492 5.4135791949880492 5.4135791949880492 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 5 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
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
connectAttr "polyAutoProj2.out" "pCubeShape1.i";
connectAttr "polyAutoProj13.out" "|group2|pCube2|pCubeShape2.i";
connectAttr "polyAutoProj8.out" "pSphereShape1.i";
connectAttr "polyTweakUV3.uvtk[0]" "pSphereShape1.uvst[0].uvtw";
connectAttr "polyCube3.out" "|group5|pCube3|pCubeShape3.i";
connectAttr "makeNurbCube1.os" "topnurbsCubeShape1.cr";
connectAttr "makeNurbCube1.os1" "bottomnurbsCubeShape1.cr";
connectAttr "makeNurbCube1.os2" "leftnurbsCubeShape1.cr";
connectAttr "makeNurbCube1.os3" "rightnurbsCubeShape1.cr";
connectAttr "makeNurbCube1.os4" "frontnurbsCubeShape1.cr";
connectAttr "makeNurbCube1.os5" "backnurbsCubeShape1.cr";
connectAttr "polyCube4.out" "pCubeShape7.i";
connectAttr "polyCube5.out" "|group7|pCube8|pCubeShape8.i";
connectAttr "polyAutoProj11.out" "|group11|pCube10|pCubeShape10.i";
connectAttr "polyAutoProj10.out" "|group11|pCube11|pCubeShape11.i";
connectAttr "polyAutoProj5.out" "|group12|pCube10|pCubeShape10.i";
connectAttr "polyAutoProj6.out" "|group12|pCube11|pCubeShape11.i";
connectAttr "polyAutoProj12.out" "|group13|pCube2|pCubeShape2.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak2.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube1.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polySmoothFace1.ip";
connectAttr "polySphere1.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polySmoothFace3.ip";
connectAttr "polyTweak3.out" "polySmoothFace4.ip";
connectAttr "polySmoothFace3.out" "polyTweak3.ip";
connectAttr "|group11|pCube10|polySurfaceShape2.o" "polyExtrudeFace3.ip";
connectAttr "|group11|pCube10|pCubeShape10.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "|group11|pCube10|pCubeShape10.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace5.ip";
connectAttr "|group11|pCube10|pCubeShape10.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace6.ip";
connectAttr "|group11|pCube10|pCubeShape10.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace7.ip";
connectAttr "|group11|pCube10|pCubeShape10.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak7.ip";
connectAttr "|group2|pCube2|polySurfaceShape3.o" "polyExtrudeFace8.ip";
connectAttr "|group2|pCube2|pCubeShape2.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "|group2|pCube2|pCubeShape2.wm" "polyExtrudeFace9.mp";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "file1.oc" "blinn1.c";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "pCubeShape13.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
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
connectAttr "file2.oc" "blinn2.c";
connectAttr "blinn2.oc" "blinn2SG.ss";
connectAttr "pSphereShape1.iog" "blinn2SG.dsm" -na;
connectAttr "blinn2SG.msg" "materialInfo2.sg";
connectAttr "blinn2.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
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
connectAttr "polyTweak8.out" "polyAutoProj1.ip";
connectAttr "pSphereShape1.wm" "polyAutoProj1.mp";
connectAttr "polySmoothFace4.out" "polyTweak8.ip";
connectAttr "file3.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "|group6|pCube6|pCubeShape6.iog" "lambert2SG.dsm" -na;
connectAttr "|group6|pCube5|pCubeShape5.iog" "lambert2SG.dsm" -na;
connectAttr "|group6|pCube4|pCubeShape4.iog" "lambert2SG.dsm" -na;
connectAttr "|group6|pCube3|pCubeShape3.iog" "lambert2SG.dsm" -na;
connectAttr "|group5|pCube6|pCubeShape6.iog" "lambert2SG.dsm" -na;
connectAttr "|group5|pCube5|pCubeShape5.iog" "lambert2SG.dsm" -na;
connectAttr "|group5|pCube4|pCubeShape4.iog" "lambert2SG.dsm" -na;
connectAttr "|group5|pCube3|pCubeShape3.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "file3.msg" "materialInfo3.t" -na;
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
connectAttr "polySmoothFace1.out" "polyAutoProj2.ip";
connectAttr "pCubeShape1.wm" "polyAutoProj2.mp";
connectAttr "file4.oc" "blinn3.c";
connectAttr "blinn3.oc" "blinn3SG.ss";
connectAttr "blinn3SG.msg" "materialInfo4.sg";
connectAttr "blinn3.msg" "materialInfo4.m";
connectAttr "file4.msg" "materialInfo4.t" -na;
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
connectAttr "polySurfaceShape4.o" "polyAutoProj3.ip";
connectAttr "|group11|pCube11|pCubeShape11.wm" "polyAutoProj3.mp";
connectAttr "polyTweak9.out" "polyAutoProj4.ip";
connectAttr "|group11|pCube10|pCubeShape10.wm" "polyAutoProj4.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak9.ip";
connectAttr "polySurfaceShape5.o" "polyAutoProj5.ip";
connectAttr "|group12|pCube10|pCubeShape10.wm" "polyAutoProj5.mp";
connectAttr "polySurfaceShape6.o" "polyAutoProj6.ip";
connectAttr "|group12|pCube11|pCubeShape11.wm" "polyAutoProj6.mp";
connectAttr "polyAutoProj1.out" "polyAutoProj7.ip";
connectAttr "pSphereShape1.wm" "polyAutoProj7.mp";
connectAttr "polyAutoProj7.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyPlanarProj1.ip";
connectAttr "pSphereShape1.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polySphProj1.ip";
connectAttr "pSphereShape1.wm" "polySphProj1.mp";
connectAttr "polySphProj1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyCylProj1.ip";
connectAttr "pSphereShape1.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyAutoProj8.ip";
connectAttr "pSphereShape1.wm" "polyAutoProj8.mp";
connectAttr "file5.oc" "lambert3.c";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "|group2|pCube2|pCubeShape2.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape1.iog" "lambert3SG.dsm" -na;
connectAttr "|group12|pCube10|pCubeShape10.iog" "lambert3SG.dsm" -na;
connectAttr "|group11|pCube10|pCubeShape10.iog" "lambert3SG.dsm" -na;
connectAttr "|group11|pCube11|pCubeShape11.iog" "lambert3SG.dsm" -na;
connectAttr "|group13|pCube2|pCubeShape2.iog" "lambert3SG.dsm" -na;
connectAttr "|group12|pCube11|pCubeShape11.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo5.sg";
connectAttr "lambert3.msg" "materialInfo5.m";
connectAttr "file5.msg" "materialInfo5.t" -na;
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
connectAttr "polyTweak10.out" "polyAutoProj9.ip";
connectAttr "|group2|pCube2|pCubeShape2.wm" "polyAutoProj9.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak10.ip";
connectAttr "polyAutoProj3.out" "polyAutoProj10.ip";
connectAttr "|group11|pCube11|pCubeShape11.wm" "polyAutoProj10.mp";
connectAttr "polyAutoProj4.out" "polyAutoProj11.ip";
connectAttr "|group11|pCube10|pCubeShape10.wm" "polyAutoProj11.mp";
connectAttr "polySurfaceShape7.o" "polyAutoProj12.ip";
connectAttr "|group13|pCube2|pCubeShape2.wm" "polyAutoProj12.mp";
connectAttr "polyAutoProj9.out" "polyAutoProj13.ip";
connectAttr "|group2|pCube2|pCubeShape2.wm" "polyAutoProj13.mp";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "topnurbsCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "bottomnurbsCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leftnurbsCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rightnurbsCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "frontnurbsCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "backnurbsCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube8|pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group7|pCube9|pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group8|pCube8|pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group8|pCube9|pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/MetalRollup0070_2_S.jpg\" 1001974211 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/MetalRollup0070_2_S.jpg\" \"sourceImages\"\n1\n\"file2\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/BronzeCopper0039_L.jpg\" 698564713 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/BronzeCopper0039_L.jpg\" \"sourceImages\"\n2\n\"file3\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/white-spatter.jpg\" 151827891 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/white-spatter.jpg\" \"sourceImages\"\n3\n\"file4\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/BronzeCopper0039_L.jpg\" 698564713 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/BronzeCopper0039_L.jpg\" \"sourceImages\"\n4\n\"file5\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/steel.JPG\" 848279693 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/steel.JPG\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Warehouse.ma
