//Maya ASCII 2015 scene
//Name: Farm.ma
//Last modified: Mon, Apr 20, 2015 10:54:34 AM
//Codeset: 1252
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.18 ";
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
	setAttr ".t" -type "double3" -7.1007008305675914 10.872381267334781 -25.246411083563295 ;
	setAttr ".r" -type "double3" 341.06164724243416 -1963.8000000004606 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 26.174887817774533;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.6688533660081077 100.1 -4.4539207393492015 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 15.071070800016424;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.8461862069239539 6.3040095332765009 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 6.8998403763552085;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 2.6015395050870618 -3.9822035184978395 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 14.43437214152536;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pSphere1";
	setAttr ".t" -type "double3" -5.7941659937620251 2.4492418391596962 -4.7111967877071779 ;
	setAttr ".r" -type "double3" 0 45 0 ;
	setAttr ".s" -type "double3" 4.6858846620399239 4.6858846620399239 4.6858846620399239 ;
createNode transform -n "polySurface4" -p "pSphere1";
createNode transform -n "transform3" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform2" -p "pSphere1";
	setAttr ".v" no;
createNode mesh -n "pSphereShape1" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group1";
	setAttr ".t" -type "double3" -0.37324866073137813 1.0234807167723432 5.6391442587336167 ;
	setAttr ".s" -type "double3" 1.6032628727596687 0.34317211380231577 2.677446104765663 ;
createNode transform -n "group2";
	setAttr ".t" -type "double3" 0.3699298933826225 0 -1.7912146779868698 ;
	setAttr ".s" -type "double3" 1.3518069217996764 0.083073562972558052 2.031218848064904 ;
	setAttr ".rp" -type "double3" 1.6027203556346237 0.60195122559652248 0.14994696001773733 ;
	setAttr ".sp" -type "double3" 1.6027203556346237 0.60195122559652248 0.14994696001773733 ;
createNode transform -n "pCylinder1SmoothProxyGroup";
	setAttr ".rp" -type "double3" -3.1002551277891301 2.5385145376170186 9.5946548011543715 ;
	setAttr ".sp" -type "double3" -3.1002551277891301 2.5385145376170186 9.5946548011543715 ;
createNode transform -n "group3";
	setAttr ".t" -type "double3" 3.2793462251991041 0 14.309749032603827 ;
	setAttr ".r" -type "double3" 0 -108.25370835881475 0 ;
createNode transform -n "group4" -p "group3";
createNode transform -n "group3_group4_pSphere2SmoothProxyGroup" -p "group4";
	setAttr ".rp" -type "double3" -1.4292902417243483 1.7090666326795347 8.9683073429184432 ;
	setAttr ".sp" -type "double3" -1.4292902417243483 1.7090666326795347 8.9683073429184432 ;
createNode transform -n "group5";
	setAttr ".t" -type "double3" 5.3324859977484822 0 0 ;
createNode transform -n "pCylinder2" -p "group5";
	setAttr ".t" -type "double3" 1.3869469800860843 0.43664061582563934 -2.2783116708392894 ;
	setAttr ".s" -type "double3" 6.1532776193947374 0.38601240163124706 10.663718178648866 ;
createNode transform -n "transform1" -p "pCylinder2";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.84375002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group6";
	setAttr ".r" -type "double3" 0 180 0 ;
createNode transform -n "polySurface3" -p "group6";
	setAttr ".t" -type "double3" -5.7941659937620251 2.4492418391596962 -4.7111967877071779 ;
	setAttr ".r" -type "double3" 0 45.000000000000007 0 ;
	setAttr ".s" -type "double3" 4.6858846620399239 4.6858846620399239 4.6858846620399239 ;
createNode mesh -n "polySurfaceShape6" -p "polySurface3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.34375002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface5" -p "group6";
	setAttr ".t" -type "double3" -5.7941659937620251 2.4492418391596962 -4.7111967877071779 ;
	setAttr ".r" -type "double3" 0 45.000000000000007 0 ;
	setAttr ".s" -type "double3" 4.6858846620399239 4.6858846620399239 4.6858846620399239 ;
createNode mesh -n "polySurfaceShape8" -p "polySurface5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface6" -p "group6";
	setAttr ".t" -type "double3" -5.7941659937620251 2.4492418391596962 -4.7111967877071779 ;
	setAttr ".r" -type "double3" 0 45.000000000000007 0 ;
	setAttr ".s" -type "double3" 4.6858846620399239 4.6858846620399239 4.6858846620399239 ;
createNode mesh -n "polySurfaceShape9" -p "polySurface6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.36448600888252258 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder1" -p "group6";
	setAttr ".t" -type "double3" -4.8614164927252652 2.2641567419016866 8.3602137318096155 ;
	setAttr ".r" -type "double3" 0 251.74629164118525 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere2" -p "group6";
	setAttr ".t" -type "double3" -4.7964677524149479 1.6997972643982815 10.098438873486057 ;
	setAttr ".r" -type "double3" -53.752995809682645 -75.734293966814661 54.420646885648495 ;
	setAttr ".s" -type "double3" 0.092497230730581151 1.0517475841179948 0.83533236670530098 ;
createNode mesh -n "pSphereShape2" -p "pSphere2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 137 ".pt[0:136]" -type "float3"  -7.1054274e-015 0 -0.013590318 
		-7.1105748e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1105748e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1105748e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1105748e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1105748e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1105748e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1105748e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1105748e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1105748e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1105748e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1105748e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1105748e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1105748e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 -7.1054274e-015 0 -0.013590318 
		-7.1054274e-015 0 -0.013590318;
createNode transform -n "pCube4" -p "group6";
	setAttr ".t" -type "double3" 10.178146395796523 2.1272372017356056 -2.3945926388088092 ;
	setAttr ".s" -type "double3" 0.27837019623226267 2.5678449067545484 14.885816234960563 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.484375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt";
	setAttr ".pt[33]" -type "float3" 0 0 0.085839935 ;
	setAttr ".pt[34]" -type "float3" 0 0 0.085839935 ;
	setAttr ".pt[35]" -type "float3" 0 0 0.068198025 ;
	setAttr ".pt[36]" -type "float3" 0 0 0.037268408 ;
	setAttr ".pt[37]" -type "float3" 0 0 0.068198025 ;
	setAttr ".pt[38]" -type "float3" 0 0 0.037268408 ;
	setAttr ".pt[43]" -type "float3" 0 0 -0.037268415 ;
	setAttr ".pt[44]" -type "float3" 0 0 -1.5851903e-009 ;
	setAttr ".pt[45]" -type "float3" 0 0 -1.5851903e-009 ;
	setAttr ".pt[46]" -type "float3" 0 0 -0.037268415 ;
	setAttr ".pt[51]" -type "float3" 0 0 -0.06819804 ;
	setAttr ".pt[52]" -type "float3" 0 0 -0.085839942 ;
	setAttr ".pt[53]" -type "float3" 0 0 -0.085839935 ;
	setAttr ".pt[54]" -type "float3" 0 0 -0.06819804 ;
	setAttr ".pt[62]" -type "float3" 0 0 0.088229962 ;
	setAttr ".pt[63]" -type "float3" 0 0 0.078669883 ;
	setAttr ".pt[64]" -type "float3" 0 0 0.055902619 ;
	setAttr ".pt[65]" -type "float3" 0 0 0.078669883 ;
	setAttr ".pt[66]" -type "float3" 0 0 0.05590263 ;
	setAttr ".pt[68]" -type "float3" 0 0 -0.018634208 ;
	setAttr ".pt[69]" -type "float3" 0 0 -0.018634208 ;
	setAttr ".pt[71]" -type "float3" 0 0 0.018634204 ;
	setAttr ".pt[72]" -type "float3" 0 0 0.018634204 ;
	setAttr ".pt[74]" -type "float3" 0 0 -0.055902638 ;
	setAttr ".pt[75]" -type "float3" 0 0 -0.078669883 ;
	setAttr ".pt[76]" -type "float3" 0 0 -0.088229962 ;
	setAttr ".pt[77]" -type "float3" 0 0 -0.078669883 ;
	setAttr ".pt[78]" -type "float3" 0 0 -0.055902638 ;
createNode mesh -n "polySurfaceShape2" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.125 0.625 0.125 0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.625 0.625 0.625
		 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875 0.125 0.875 0.25 0.125 0 0.125
		 0.125 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 0.052921504 0 0 0.052921504 
		-4.2188475e-015 -0.14157759 -0.066901416 -4.1078252e-015 -0.14157759 -0.066901416 
		-8.437695e-015 -0.4471094 -0.23243493 -8.2156504e-015 -0.4471094 -0.23243493 -8.437695e-015 
		-0.4471094 0.23243493 -8.2156504e-015 -0.4471094 0.23243493 -4.2188475e-015 -0.14157759 
		0.066901386 -4.1078252e-015 -0.14157759 0.066901386 0 0 -0.052921504 0 0 -0.052921504;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5 0.5 0 0.5
		 -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 0 -0.5 0.5 0 -0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 1 4 5 0 6 7 0 8 9 1 10 11 0 0 2 0
		 1 3 0 2 4 0 3 5 0 4 6 0 5 7 0 6 8 0 7 9 0 8 10 0 9 11 0 10 0 0 11 1 0 9 3 1 8 2 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 3 2
		f 4 1 9 -3 -9
		mu 0 4 2 3 5 4
		f 4 2 11 -4 -11
		mu 0 4 4 5 7 6
		f 4 3 13 -5 -13
		mu 0 4 6 7 9 8
		f 4 4 15 -6 -15
		mu 0 4 8 9 11 10
		f 4 5 17 -1 -17
		mu 0 4 10 11 13 12
		f 4 -18 -16 18 -8
		mu 0 4 1 14 15 3
		f 4 -19 -14 -12 -10
		mu 0 4 3 15 16 5
		f 4 16 6 -20 14
		mu 0 4 17 0 2 18
		f 4 19 8 10 12
		mu 0 4 18 2 4 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "group6";
	setAttr ".t" -type "double3" 8.1298583302210687 1.8722950826679088 -2.3945926388088092 ;
	setAttr ".s" -type "double3" 0.27837019623226267 2.5678449067545484 18.002 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.484375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.125 0.625 0.125 0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.625 0.625 0.625
		 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875 0.125 0.875 0.25 0.125 0 0.125
		 0.125 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0.092428349 -0.010617021 
		0 0.092428349 -0.010617021 -2.1094237e-015 0.032611195 -0.10440421 -2.0539126e-015 
		0.032611195 -0.10440421 0 -0.056668486 -0.28173482 0 -0.056668486 -0.28173482 0 -0.056668501 
		0.28173482 0 -0.056668501 0.28173482 -2.1094237e-015 0.032611195 0.1044042 -2.0539126e-015 
		0.032611195 0.1044042 0 0.092428349 0.010617021 0 0.092428349 0.010617021;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5 0.5 0 0.5
		 -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 0 -0.5 0.5 0 -0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 1 4 5 0 6 7 0 8 9 1 10 11 0 0 2 0
		 1 3 0 2 4 0 3 5 0 4 6 0 5 7 0 6 8 0 7 9 0 8 10 0 9 11 0 10 0 0 11 1 0 9 3 1 8 2 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 3 2
		f 4 1 9 -3 -9
		mu 0 4 2 3 5 4
		f 4 2 11 -4 -11
		mu 0 4 4 5 7 6
		f 4 3 13 -5 -13
		mu 0 4 6 7 9 8
		f 4 4 15 -6 -15
		mu 0 4 8 9 11 10
		f 4 5 17 -1 -17
		mu 0 4 10 11 13 12
		f 4 -18 -16 18 -8
		mu 0 4 1 14 15 3
		f 4 -19 -14 -12 -10
		mu 0 4 3 15 16 5
		f 4 16 6 -20 14
		mu 0 4 17 0 2 18
		f 4 19 8 10 12
		mu 0 4 18 2 4 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "group6";
	setAttr ".t" -type "double3" 5.3324859977484822 1.8722950826679057 -2.3945926388088106 ;
	setAttr ".s" -type "double3" 0.27837019623226267 2.5678449067545484 18.002 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.484375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface1" -p "group6";
	setAttr ".t" -type "double3" 6.7194329778345665 0.43664061582563934 -2.2783116708392894 ;
	setAttr ".s" -type "double3" 6.1532776193947374 0.38601240163124706 10.663718178648866 ;
createNode mesh -n "polySurfaceShape4" -p "polySurface1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.50000003725290298 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2" -p "group6";
	setAttr ".t" -type "double3" 6.7194329778345665 0.43664061582563934 -2.2783116708392894 ;
	setAttr ".s" -type "double3" 6.1532776193947374 0.38601240163124706 10.663718178648866 ;
createNode mesh -n "polySurfaceShape5" -p "polySurface2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 2.4309149384498596 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube5" -p "group6";
	setAttr ".t" -type "double3" 3.3963665987388589 2.1272372017356016 -2.3945926388088101 ;
	setAttr ".s" -type "double3" 0.27837019623226267 2.5678449067545484 14.885816234960563 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.640625 0.0625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.125 0.625 0.125 0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.625 0.625 0.625
		 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875 0.125 0.875 0.25 0.125 0 0.125
		 0.125 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 0.052921504 0 0 0.052921504 
		-4.2188475e-015 -0.14157756 -0.066901416 -4.1078252e-015 -0.14157756 -0.066901416 
		-8.437695e-015 -0.44710934 -0.23243493 -8.2156504e-015 -0.4471094 -0.23243493 -8.437695e-015 
		-0.44710934 0.23243493 -8.2156504e-015 -0.4471094 0.23243493 -4.2188475e-015 -0.14157756 
		0.066901401 -4.1078252e-015 -0.14157756 0.066901401 0 0 -0.052921504 0 0 -0.052921504;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5 0.5 0 0.5
		 -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 0 -0.5 0.5 0 -0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 1 4 5 0 6 7 0 8 9 1 10 11 0 0 2 0
		 1 3 0 2 4 0 3 5 0 4 6 0 5 7 0 6 8 0 7 9 0 8 10 0 9 11 0 10 0 0 11 1 0 9 3 1 8 2 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 3 2
		f 4 1 9 -3 -9
		mu 0 4 2 3 5 4
		f 4 2 11 -4 -11
		mu 0 4 4 5 7 6
		f 4 3 13 -5 -13
		mu 0 4 6 7 9 8
		f 4 4 15 -6 -15
		mu 0 4 8 9 11 10
		f 4 5 17 -1 -17
		mu 0 4 10 11 13 12
		f 4 -18 -16 18 -8
		mu 0 4 1 14 15 3
		f 4 -19 -14 -12 -10
		mu 0 4 3 15 16 5
		f 4 16 6 -20 14
		mu 0 4 17 0 2 18
		f 4 19 8 10 12
		mu 0 4 18 2 4 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "group6";
	setAttr ".t" -type "double3" 6.7709458091749486 1.412841905640813 -2.4007093025911561 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 13.533438675850993 1.7886909948666914 8.0895222975768384 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.296875 0.171875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 168 ".pt";
	setAttr ".pt[15]" -type "float3" -0.012446403 0.011224275 3.5846488e-018 ;
	setAttr ".pt[16]" -type "float3" 0.01244641 0.011224272 3.5846488e-018 ;
	setAttr ".pt[32]" -type "float3" -0.016684137 -0.020203769 3.5846488e-018 ;
	setAttr ".pt[33]" -type "float3" 1.7741427e-009 -0.021465005 3.5846488e-018 ;
	setAttr ".pt[34]" -type "float3" 0.016684145 -0.020203769 -6.014042e-011 ;
	setAttr ".pt[35]" -type "float3" 0.018710352 -0.013393096 3.5846488e-018 ;
	setAttr ".pt[36]" -type "float3" 0.017228486 -0.0053211823 3.5846488e-018 ;
	setAttr ".pt[37]" -type "float3" 0.015308037 0.0027507283 -1.5035103e-011 ;
	setAttr ".pt[38]" -type "float3" -0.018710347 -0.013393096 3.5846488e-018 ;
	setAttr ".pt[39]" -type "float3" -0.017228484 -0.0053211823 3.5846488e-018 ;
	setAttr ".pt[40]" -type "float3" -0.015308037 0.0027507283 3.5846488e-018 ;
	setAttr ".pt[43]" -type "float3" 2.6612137e-009 0.021465002 -1.5035103e-011 ;
	setAttr ".pt[44]" -type "float3" -0.0075509278 0.019802134 -3.007021e-011 ;
	setAttr ".pt[46]" -type "float3" 0.0075509334 0.019802136 -3.007021e-011 ;
	setAttr ".pt[73]" -type "float3" -0.0039885012 0.02129872 -3.007021e-011 ;
	setAttr ".pt[76]" -type "float3" 0.0039885067 0.02129872 3.5846488e-018 ;
	setAttr ".pt[106]" -type "float3" -0.0096721612 -0.021338882 3.5846488e-018 ;
	setAttr ".pt[108]" -type "float3" 0.0096721649 -0.021338882 3.5846488e-018 ;
	setAttr ".pt[112]" -type "float3" 0.019038105 -0.017302928 -3.007021e-011 ;
	setAttr ".pt[115]" -type "float3" 0.018005943 -0.0093571385 6.0140427e-011 ;
	setAttr ".pt[118]" -type "float3" 0.016345359 -0.0012852275 -3.007021e-011 ;
	setAttr ".pt[121]" -type "float3" 0.014053376 0.0068268483 -1.5035103e-011 ;
	setAttr ".pt[124]" -type "float3" -0.019038109 -0.017302928 -6.014042e-011 ;
	setAttr ".pt[127]" -type "float3" -0.018005937 -0.0093571385 3.5846488e-018 ;
	setAttr ".pt[130]" -type "float3" -0.016345359 -0.0012852275 3.5846488e-018 ;
	setAttr ".pt[133]" -type "float3" -0.014053373 0.0068268483 3.5846488e-018 ;
	setAttr ".pt[138]" -type "float3" -0.010336511 0.016017698 -4.5105312e-011 ;
	setAttr ".pt[140]" -type "float3" 0.010336517 0.016017698 3.0070221e-011 ;
	setAttr ".pt[275]" -type "float3" -0.0039885012 0.021298721 0.0020391429 ;
	setAttr ".pt[276]" -type "float3" 2.6461786e-009 0.021465003 0.0020208815 ;
	setAttr ".pt[277]" -type "float3" -0.0020208796 0.021465003 3.5846488e-018 ;
	setAttr ".pt[278]" -type "float3" -0.0075509278 0.019802138 0.0022034945 ;
	setAttr ".pt[279]" -type "float3" -0.005849604 0.020799858 3.5846488e-018 ;
	setAttr ".pt[286]" -type "float3" 0.0039885067 0.02129872 0.0020391429 ;
	setAttr ".pt[287]" -type "float3" 0.0075509325 0.019802136 0.0022034945 ;
	setAttr ".pt[288]" -type "float3" 0.0058496092 0.020799858 3.5846488e-018 ;
	setAttr ".pt[289]" -type "float3" 0.0020208843 0.021465003 3.5846488e-018 ;
	setAttr ".pt[290]" -type "float3" -0.0075509278 0.019802136 -0.0022034945 ;
	setAttr ".pt[291]" -type "float3" -0.0039885012 0.02129872 -0.0020391429 ;
	setAttr ".pt[293]" -type "float3" 2.6461786e-009 0.021465003 -0.0020208815 ;
	setAttr ".pt[300]" -type "float3" 0.0039885067 0.021298721 -0.0020391429 ;
	setAttr ".pt[302]" -type "float3" 0.0075509325 0.019802138 -0.0022034945 ;
	setAttr ".pt[389]" -type "float3" -0.0096721612 -0.021338882 -0.0049973731 ;
	setAttr ".pt[390]" -type "float3" 1.8042129e-009 -0.021465005 -0.0050023422 ;
	setAttr ".pt[391]" -type "float3" -0.0050023403 -0.021465005 3.5846488e-018 ;
	setAttr ".pt[392]" -type "float3" -0.016684143 -0.020203769 -0.004952651 ;
	setAttr ".pt[393]" -type "float3" -0.013676934 -0.02096051 3.5846488e-018 ;
	setAttr ".pt[398]" -type "float3" 0.009672164 -0.021338882 -0.0049973731 ;
	setAttr ".pt[399]" -type "float3" 0.016684143 -0.020203769 -0.004952651 ;
	setAttr ".pt[400]" -type "float3" 0.013676936 -0.020960512 3.5846488e-018 ;
	setAttr ".pt[401]" -type "float3" 0.005002344 -0.021465005 3.5846488e-018 ;
	setAttr ".pt[402]" -type "float3" -0.016684143 -0.020203769 0.004952651 ;
	setAttr ".pt[403]" -type "float3" -0.0096721612 -0.021338882 0.0049973731 ;
	setAttr ".pt[405]" -type "float3" 1.8042129e-009 -0.021465005 0.0050023422 ;
	setAttr ".pt[410]" -type "float3" 0.009672164 -0.021338882 0.0049973731 ;
	setAttr ".pt[412]" -type "float3" 0.016684143 -0.020203769 0.004952651 ;
	setAttr ".pt[416]" -type "float3" 0.018361257 -0.018942533 3.5846488e-018 ;
	setAttr ".pt[418]" -type "float3" 0.019038109 -0.017302925 -0.0048376881 ;
	setAttr ".pt[422]" -type "float3" 0.019044532 -0.015411072 3.5846488e-018 ;
	setAttr ".pt[423]" -type "float3" 0.018710352 -0.013393096 -0.0046775881 ;
	setAttr ".pt[426]" -type "float3" 0.019038109 -0.017302925 0.0048376881 ;
	setAttr ".pt[428]" -type "float3" 0.018710352 -0.013393096 0.0046775881 ;
	setAttr ".pt[430]" -type "float3" 0.018365405 -0.011375115 3.5846488e-018 ;
	setAttr ".pt[432]" -type "float3" 0.018005943 -0.0093571385 -0.0045014848 ;
	setAttr ".pt[436]" -type "float3" 0.017628217 -0.0073391604 3.5846488e-018 ;
	setAttr ".pt[437]" -type "float3" 0.017228486 -0.0053211823 -0.004307121 ;
	setAttr ".pt[440]" -type "float3" 0.018005943 -0.0093571385 0.0045014848 ;
	setAttr ".pt[442]" -type "float3" 0.017228486 -0.0053211823 0.004307121 ;
	setAttr ".pt[444]" -type "float3" 0.016802998 -0.003303204 3.5846488e-018 ;
	setAttr ".pt[446]" -type "float3" 0.016345365 -0.0012852265 -0.0040863398 ;
	setAttr ".pt[450]" -type "float3" 0.015849175 0.00073275092 3.5846488e-018 ;
	setAttr ".pt[451]" -type "float3" 0.015308044 0.0027507294 -0.0038270094 ;
	setAttr ".pt[454]" -type "float3" 0.016345365 -0.0012852265 0.0040863398 ;
	setAttr ".pt[456]" -type "float3" 0.015308044 0.0027507294 0.0038270094 ;
	setAttr ".pt[458]" -type "float3" 0.014715565 0.0047687069 3.5846488e-018 ;
	setAttr ".pt[460]" -type "float3" 0.014053376 0.0068268487 -0.0035133436 ;
	setAttr ".pt[464]" -type "float3" 0.013303114 0.0089653153 3.5846488e-018 ;
	setAttr ".pt[465]" -type "float3" 0.01244641 0.011224275 -0.0031116009 ;
	setAttr ".pt[468]" -type "float3" 0.014053376 0.0068268487 0.0035133436 ;
	setAttr ".pt[470]" -type "float3" 0.01244641 0.011224275 0.0031116009 ;
	setAttr ".pt[474]" -type "float3" -0.018361254 -0.018942533 3.5846488e-018 ;
	setAttr ".pt[475]" -type "float3" -0.019038105 -0.017302925 -0.0048376881 ;
	setAttr ".pt[477]" -type "float3" -0.019044532 -0.015411072 3.5846488e-018 ;
	setAttr ".pt[478]" -type "float3" -0.018710347 -0.013393096 -0.0046775881 ;
	setAttr ".pt[481]" -type "float3" -0.019038105 -0.017302925 0.0048376881 ;
	setAttr ".pt[485]" -type "float3" -0.018710347 -0.013393096 0.0046775881 ;
	setAttr ".pt[488]" -type "float3" -0.0183654 -0.011375115 3.5846488e-018 ;
	setAttr ".pt[489]" -type "float3" -0.018005937 -0.0093571385 -0.0045014848 ;
	setAttr ".pt[491]" -type "float3" -0.017628213 -0.0073391604 3.5846488e-018 ;
	setAttr ".pt[492]" -type "float3" -0.017228484 -0.0053211823 -0.004307121 ;
	setAttr ".pt[495]" -type "float3" -0.018005937 -0.0093571385 0.0045014848 ;
	setAttr ".pt[499]" -type "float3" -0.017228484 -0.0053211823 0.004307121 ;
	setAttr ".pt[502]" -type "float3" -0.016802996 -0.003303204 3.5846488e-018 ;
	setAttr ".pt[503]" -type "float3" -0.016345359 -0.0012852265 -0.0040863398 ;
	setAttr ".pt[505]" -type "float3" -0.015849171 0.00073275092 3.5846488e-018 ;
	setAttr ".pt[506]" -type "float3" -0.015308039 0.0027507294 -0.0038270094 ;
	setAttr ".pt[509]" -type "float3" -0.016345359 -0.0012852265 0.0040863398 ;
	setAttr ".pt[513]" -type "float3" -0.015308039 0.0027507294 0.0038270094 ;
	setAttr ".pt[516]" -type "float3" -0.014715559 0.0047687069 3.5846488e-018 ;
	setAttr ".pt[517]" -type "float3" -0.014053373 0.0068268487 -0.0035133436 ;
	setAttr ".pt[519]" -type "float3" -0.013303109 0.0089653153 3.5846488e-018 ;
	setAttr ".pt[520]" -type "float3" -0.012446403 0.011224275 -0.0031116009 ;
	setAttr ".pt[523]" -type "float3" -0.014053373 0.0068268487 0.0035133436 ;
	setAttr ".pt[527]" -type "float3" -0.012446403 0.011224275 0.0031116009 ;
	setAttr ".pt[536]" -type "float3" -0.01146489 0.013643884 3.5846488e-018 ;
	setAttr ".pt[538]" -type "float3" -0.010336512 0.016017703 0.0026157047 ;
	setAttr ".pt[541]" -type "float3" -0.0090392092 0.018139265 3.5846488e-018 ;
	setAttr ".pt[550]" -type "float3" 0.011464894 0.013643884 3.5846488e-018 ;
	setAttr ".pt[551]" -type "float3" 0.010336517 0.0160177 0.0026157047 ;
	setAttr ".pt[553]" -type "float3" 0.0090392157 0.018139267 3.5846488e-018 ;
	setAttr ".pt[564]" -type "float3" -0.010336512 0.0160177 -0.0026157047 ;
	setAttr ".pt[567]" -type "float3" 0.010336517 0.016017703 -0.0026157047 ;
	setAttr ".pt[612]" -type "float3" -0.0020208796 0.021465003 0.0020208815 ;
	setAttr ".pt[613]" -type "float3" -0.005849604 0.020799858 0.002093927 ;
	setAttr ".pt[616]" -type "float3" 0.0058496092 0.020799858 0.002093927 ;
	setAttr ".pt[617]" -type "float3" 0.0020208843 0.021465005 0.0020208815 ;
	setAttr ".pt[618]" -type "float3" -0.005849604 0.020799858 -0.002093927 ;
	setAttr ".pt[619]" -type "float3" -0.0020208796 0.021465003 -0.0020208815 ;
	setAttr ".pt[622]" -type "float3" 0.0020208843 0.021465003 -0.0020208815 ;
	setAttr ".pt[623]" -type "float3" 0.0058496092 0.020799858 -0.002093927 ;
	setAttr ".pt[660]" -type "float3" -0.0050023403 -0.021465005 -0.0050023422 ;
	setAttr ".pt[661]" -type "float3" -0.013676934 -0.020960512 -0.0049824663 ;
	setAttr ".pt[664]" -type "float3" 0.013676936 -0.020960512 -0.0049824663 ;
	setAttr ".pt[665]" -type "float3" 0.005002344 -0.021465005 -0.0050023422 ;
	setAttr ".pt[666]" -type "float3" -0.013676934 -0.02096051 0.0049824663 ;
	setAttr ".pt[667]" -type "float3" -0.0050023403 -0.021465005 0.0050023422 ;
	setAttr ".pt[670]" -type "float3" 0.005002344 -0.021465005 0.0050023422 ;
	setAttr ".pt[671]" -type "float3" 0.013676936 -0.020960512 0.0049824663 ;
	setAttr ".pt[674]" -type "float3" 0.018361257 -0.018942533 -0.0049029593 ;
	setAttr ".pt[677]" -type "float3" 0.019044532 -0.015411072 -0.0047611324 ;
	setAttr ".pt[679]" -type "float3" 0.018361257 -0.018942533 0.0049029593 ;
	setAttr ".pt[680]" -type "float3" 0.019044532 -0.015411072 0.0047611324 ;
	setAttr ".pt[682]" -type "float3" 0.018365404 -0.011375115 -0.0045913509 ;
	setAttr ".pt[685]" -type "float3" 0.017628217 -0.0073391604 -0.0044070538 ;
	setAttr ".pt[687]" -type "float3" 0.018365404 -0.011375115 0.0045913509 ;
	setAttr ".pt[688]" -type "float3" 0.017628217 -0.0073391604 0.0044070538 ;
	setAttr ".pt[690]" -type "float3" 0.016802998 -0.003303204 -0.0042007496 ;
	setAttr ".pt[693]" -type "float3" 0.015849175 0.00073275139 -0.0039622933 ;
	setAttr ".pt[695]" -type "float3" 0.016802998 -0.003303204 0.0042007496 ;
	setAttr ".pt[696]" -type "float3" 0.015849175 0.00073275092 0.0039622933 ;
	setAttr ".pt[698]" -type "float3" 0.014715565 0.0047687069 -0.0036788904 ;
	setAttr ".pt[701]" -type "float3" 0.013303114 0.0089653153 -0.0033257774 ;
	setAttr ".pt[703]" -type "float3" 0.014715565 0.0047687069 0.0036788904 ;
	setAttr ".pt[704]" -type "float3" 0.013303114 0.0089653172 0.0033257774 ;
	setAttr ".pt[707]" -type "float3" -0.018361254 -0.018942533 -0.0049029593 ;
	setAttr ".pt[708]" -type "float3" -0.019044532 -0.015411072 -0.0047611324 ;
	setAttr ".pt[710]" -type "float3" -0.018361254 -0.018942533 0.0049029593 ;
	setAttr ".pt[713]" -type "float3" -0.01904453 -0.015411072 0.0047611324 ;
	setAttr ".pt[715]" -type "float3" -0.0183654 -0.011375115 -0.0045913509 ;
	setAttr ".pt[716]" -type "float3" -0.017628213 -0.0073391604 -0.0044070538 ;
	setAttr ".pt[718]" -type "float3" -0.0183654 -0.011375115 0.0045913509 ;
	setAttr ".pt[721]" -type "float3" -0.017628213 -0.0073391604 0.0044070538 ;
	setAttr ".pt[723]" -type "float3" -0.016802996 -0.003303204 -0.0042007496 ;
	setAttr ".pt[724]" -type "float3" -0.015849171 0.00073275092 -0.0039622933 ;
	setAttr ".pt[726]" -type "float3" -0.016802996 -0.003303204 0.0042007496 ;
	setAttr ".pt[729]" -type "float3" -0.015849171 0.00073275139 0.0039622933 ;
	setAttr ".pt[731]" -type "float3" -0.014715559 0.0047687069 -0.0036788904 ;
	setAttr ".pt[732]" -type "float3" -0.013303109 0.0089653172 -0.0033257774 ;
	setAttr ".pt[734]" -type "float3" -0.014715559 0.0047687069 0.0036788904 ;
	setAttr ".pt[737]" -type "float3" -0.013303109 0.0089653153 0.0033257774 ;
	setAttr ".pt[742]" -type "float3" -0.01146489 0.013643889 0.002866223 ;
	setAttr ".pt[745]" -type "float3" -0.0090392092 0.018139267 0.002386108 ;
	setAttr ".pt[751]" -type "float3" 0.011464894 0.013643889 0.002866223 ;
	setAttr ".pt[752]" -type "float3" 0.0090392157 0.018139265 0.002386108 ;
	setAttr ".pt[759]" -type "float3" -0.01146489 0.013643889 -0.002866223 ;
	setAttr ".pt[760]" -type "float3" -0.0090392092 0.018139265 -0.002386108 ;
	setAttr ".pt[762]" -type "float3" 0.011464894 0.013643889 -0.002866223 ;
	setAttr ".pt[765]" -type "float3" 0.0090392157 0.018139267 -0.002386108 ;
createNode transform -n "pSphere4" -p "group6";
	setAttr ".t" -type "double3" -4.7348632903211403 1.197735782718186 -0.18997861661111098 ;
	setAttr ".r" -type "double3" -201.50097356431783 -100.10993643208765 203.07571751613762 ;
	setAttr ".s" -type "double3" 0.095365919801750548 0.87549568602175443 0.5016177302029633 ;
createNode mesh -n "pSphereShape4" -p "pSphere4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.15625 0.53125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape3Orig4" -p "pSphere4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 166 ".uvst[0].uvsp[0:165]" -type "float2" 0 0.0625 0.0625 0.0625
		 0.125 0.0625 0.1875 0.0625 0.6875 0.0625 0.75 0.0625 0.8125 0.0625 0.875 0.0625 0.9375
		 0.0625 1 0.0625 0 0.125 0.0625 0.125 0.125 0.125 0.1875 0.125 0.6875 0.125 0.75 0.125
		 0.8125 0.125 0.875 0.125 0.9375 0.125 1 0.125 0 0.1875 0.0625 0.1875 0.125 0.1875
		 0.1875 0.1875 0.6875 0.1875 0.75 0.1875 0.8125 0.1875 0.875 0.1875 0.9375 0.1875
		 1 0.1875 0 0.25 0.0625 0.25 0.125 0.25 0.1875 0.25 0.6875 0.25 0.75 0.25 0.8125 0.25
		 0.875 0.25 0.9375 0.25 1 0.25 0 0.3125 0.0625 0.3125 0.125 0.3125 0.1875 0.3125 0.6875
		 0.3125 0.75 0.3125 0.8125 0.3125 0.875 0.3125 0.9375 0.3125 1 0.3125 0 0.375 0.0625
		 0.375 0.125 0.375 0.1875 0.375 0.6875 0.375 0.75 0.375 0.8125 0.375 0.875 0.375 0.9375
		 0.375 1 0.375 0 0.4375 0.0625 0.4375 0.125 0.4375 0.1875 0.4375 0.6875 0.4375 0.75
		 0.4375 0.8125 0.4375 0.875 0.4375 0.9375 0.4375 1 0.4375 0 0.5 0.0625 0.5 0.125 0.5
		 0.1875 0.5 0.6875 0.5 0.75 0.5 0.8125 0.5 0.875 0.5 0.9375 0.5 1 0.5 0 0.5625 0.0625
		 0.5625 0.125 0.5625 0.1875 0.5625 0.6875 0.5625 0.75 0.5625 0.8125 0.5625 0.875 0.5625
		 0.9375 0.5625 1 0.5625 0 0.625 0.0625 0.625 0.125 0.625 0.1875 0.625 0.6875 0.625
		 0.75 0.625 0.8125 0.625 0.875 0.625 0.9375 0.625 1 0.625 0 0.6875 0.0625 0.6875 0.125
		 0.6875 0.1875 0.6875 0.6875 0.6875 0.75 0.6875 0.8125 0.6875 0.875 0.6875 0.9375
		 0.6875 1 0.6875 0 0.75 0.0625 0.75 0.125 0.75 0.1875 0.75 0.6875 0.75 0.75 0.75 0.8125
		 0.75 0.875 0.75 0.9375 0.75 1 0.75 0 0.8125 0.0625 0.8125 0.125 0.8125 0.1875 0.8125
		 0.6875 0.8125 0.75 0.8125 0.8125 0.8125 0.875 0.8125 0.9375 0.8125 1 0.8125 0 0.875
		 0.0625 0.875 0.125 0.875 0.1875 0.875 0.6875 0.875 0.75 0.875 0.8125 0.875 0.875
		 0.875 0.9375 0.875 1 0.875 0 0.9375 0.0625 0.9375 0.125 0.9375 0.1875 0.9375 0.6875
		 0.9375 0.75 0.9375 0.8125 0.9375 0.875 0.9375 0.9375 0.9375 1 0.9375 0.03125 0 0.09375
		 0 0.15625 0 0.71875 0 0.78125 0 0.84375 0 0.90625 0 0.96875 0 0.03125 1 0.09375 1
		 0.15625 1 0.71875 1 0.78125 1 0.84375 1 0.90625 1 0.96875 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 137 ".vt[0:136]"  0.18024001 -0.98078525 -0.074657731 0.13794976 -0.98078525 -0.1379496
		 0.074657924 -0.98078525 -0.1802399 9.8840459e-008 -0.98078525 -0.19509031 -2.9070723e-008 -0.98078525 0.19509032
		 0.074657813 -0.98078525 0.18023996 0.13794968 -0.98078525 0.13794971 0.18023995 -0.98078525 0.074657843
		 0.19509032 -0.98078525 0 0.3535535 -0.9238795 -0.14644641 0.2705982 -0.9238795 -0.2705979
		 0.14644679 -0.9238795 -0.35355332 1.9388254e-007 -0.9238795 -0.38268343 -5.702428e-008 -0.9238795 0.38268346
		 0.14644657 -0.9238795 0.35355341 0.27059805 -0.9238795 0.27059808 0.35355341 -0.9238795 0.14644663
		 0.38268346 -0.9238795 0 0.51328009 -0.8314696 -0.21260722 0.39284769 -0.8314696 -0.39284724
		 0.21260779 -0.8314696 -0.51327986 2.8147383e-007 -0.8314696 -0.55557019 -8.2786414e-008 -0.8314696 0.55557024
		 0.21260746 -0.8314696 0.51327997 0.39284745 -0.8314696 0.39284751 0.51327997 -0.8314696 0.21260755
		 0.55557024 -0.8314696 0 0.65328163 -0.70710677 -0.27059767 0.50000024 -0.70710677 -0.4999997
		 0.27059838 -0.70710677 -0.65328127 3.582482e-007 -0.70710677 -0.70710671 -1.0536712e-007 -0.70710677 0.70710677
		 0.27059796 -0.70710677 0.65328151 0.49999994 -0.70710677 0.5 0.65328145 -0.70710677 0.27059805
		 0.70710677 -0.70710677 0 0.76817799 -0.55557019 -0.3181892 0.58793813 -0.55557019 -0.58793747
		 0.31819004 -0.55557019 -0.76817757 4.2125535e-007 -0.55557019 -0.8314696 -1.2389863e-007 -0.55557019 0.83146966
		 0.31818956 -0.55557019 0.76817781 0.58793777 -0.55557019 0.58793789 0.76817775 -0.55557019 0.31818968
		 0.83146966 -0.55557019 0 0.85355353 -0.38268343 -0.35355288 0.65328181 -0.38268343 -0.65328109
		 0.3535538 -0.38268343 -0.85355312 4.6807384e-007 -0.38268343 -0.92387944 -1.3766878e-007 -0.38268343 0.9238795
		 0.35355327 -0.38268343 0.85355341 0.65328139 -0.38268343 0.65328151 0.85355335 -0.38268343 0.35355341
		 0.9238795 -0.38268343 0 0.90612763 -0.19509035 -0.37532973 0.69352025 -0.19509035 -0.69351947
		 0.37533072 -0.19509035 -0.90612715 4.9690453e-007 -0.19509035 -0.98078519 -1.4614839e-007 -0.19509035 0.98078525
		 0.37533015 -0.19509035 0.90612745 0.69351983 -0.19509035 0.69351995 0.90612739 -0.19509035 0.3753303
		 0.98078525 -0.19509035 0 0.92387974 0 -0.38268289 0.70710713 0 -0.70710635 0.3826839 0 -0.92387927
		 5.0663948e-007 0 -0.99999994 -1.4901161e-007 0 1 0.38268331 0 0.92387956 0.70710671 0 0.70710683
		 0.9238795 0 0.38268346 1 0 0 0.90612763 0.19509035 -0.37532973 0.69352025 0.19509035 -0.69351947
		 0.37533072 0.19509035 -0.90612715 4.9690453e-007 0.19509035 -0.98078519 -1.4614839e-007 0.19509035 0.98078525
		 0.37533015 0.19509035 0.90612745 0.69351983 0.19509035 0.69351995 0.90612739 0.19509035 0.3753303
		 0.98078525 0.19509035 0 0.85355353 0.38268343 -0.35355288 0.65328181 0.38268343 -0.65328109
		 0.3535538 0.38268343 -0.85355312 4.6807384e-007 0.38268343 -0.92387944 -1.3766878e-007 0.38268343 0.9238795
		 0.35355327 0.38268343 0.85355341 0.65328139 0.38268343 0.65328151 0.85355335 0.38268343 0.35355341
		 0.9238795 0.38268343 0 0.76817799 0.55557019 -0.3181892 0.58793813 0.55557019 -0.58793747
		 0.31819004 0.55557019 -0.76817757 4.2125535e-007 0.55557019 -0.8314696 -1.2389863e-007 0.55557019 0.83146966
		 0.31818956 0.55557019 0.76817781 0.58793777 0.55557019 0.58793789 0.76817775 0.55557019 0.31818968
		 0.83146966 0.55557019 0 0.65328163 0.70710677 -0.27059767 0.50000024 0.70710677 -0.4999997
		 0.27059838 0.70710677 -0.65328127 3.582482e-007 0.70710677 -0.70710671 -1.0536712e-007 0.70710677 0.70710677
		 0.27059796 0.70710677 0.65328151 0.49999994 0.70710677 0.5 0.65328145 0.70710677 0.27059805
		 0.70710677 0.70710677 0 0.51328009 0.8314696 -0.21260722 0.39284769 0.8314696 -0.39284724
		 0.21260779 0.8314696 -0.51327986 2.8147383e-007 0.8314696 -0.55557019 -8.2786414e-008 0.8314696 0.55557024
		 0.21260746 0.8314696 0.51327997 0.39284745 0.8314696 0.39284751 0.51327997 0.8314696 0.21260755
		 0.55557024 0.8314696 0 0.3535535 0.9238795 -0.14644641 0.2705982 0.9238795 -0.2705979
		 0.14644679 0.9238795 -0.35355332 1.9388254e-007 0.9238795 -0.38268343 -5.702428e-008 0.9238795 0.38268346
		 0.14644657 0.9238795 0.35355341 0.27059805 0.9238795 0.27059808 0.35355341 0.9238795 0.14644663
		 0.38268346 0.9238795 0 0.18024001 0.98078525 -0.074657731 0.13794976 0.98078525 -0.1379496
		 0.074657924 0.98078525 -0.1802399 9.8840459e-008 0.98078525 -0.19509031 -2.9070723e-008 0.98078525 0.19509032
		 0.074657813 0.98078525 0.18023996 0.13794968 0.98078525 0.13794971 0.18023995 0.98078525 0.074657843
		 0.19509032 0.98078525 0 0 -1 0 0 1 0;
	setAttr -s 264 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 4 5 1 5 6 1 6 7 1 7 8 1 8 0 1 9 10 1
		 10 11 1 11 12 1 13 14 1 14 15 1 15 16 1 16 17 1 17 9 1 18 19 1 19 20 1 20 21 1 22 23 1
		 23 24 1 24 25 1 25 26 1 26 18 1 27 28 1 28 29 1 29 30 1 31 32 1 32 33 1 33 34 1 34 35 1
		 35 27 1 36 37 1 37 38 1 38 39 1 40 41 1 41 42 1 42 43 1 43 44 1 44 36 1 45 46 1 46 47 1
		 47 48 1 49 50 1 50 51 1 51 52 1 52 53 1 53 45 1 54 55 1 55 56 1 56 57 1 58 59 1 59 60 1
		 60 61 1 61 62 1 62 54 1 63 64 1 64 65 1 65 66 1 67 68 1 68 69 1 69 70 1 70 71 1 71 63 1
		 72 73 1 73 74 1 74 75 1 76 77 1 77 78 1 78 79 1 79 80 1 80 72 1 81 82 1 82 83 1 83 84 1
		 85 86 1 86 87 1 87 88 1 88 89 1 89 81 1 90 91 1 91 92 1 92 93 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 90 1 99 100 1 100 101 1 101 102 1 103 104 1 104 105 1 105 106 1 106 107 1
		 107 99 1 108 109 1 109 110 1 110 111 1 112 113 1 113 114 1 114 115 1 115 116 1 116 108 1
		 117 118 1 118 119 1 119 120 1 121 122 1 122 123 1 123 124 1 124 125 1 125 117 1 126 127 1
		 127 128 1 128 129 1 130 131 1 131 132 1 132 133 1 133 134 1 134 126 1 0 9 1 1 10 1
		 2 11 1 3 12 1 4 13 1 5 14 1 6 15 1 7 16 1 8 17 1 9 18 1 10 19 1 11 20 1 12 21 1 13 22 1
		 14 23 1 15 24 1 16 25 1 17 26 1 18 27 1 19 28 1 20 29 1 21 30 1 22 31 1 23 32 1 24 33 1
		 25 34 1 26 35 1 27 36 1 28 37 1 29 38 1 30 39 1 31 40 1 32 41 1 33 42 1 34 43 1 35 44 1
		 36 45 1 37 46 1 38 47 1 39 48 1 40 49 1 41 50 1 42 51 1 43 52 1 44 53 1 45 54 1;
	setAttr ".ed[166:263]" 46 55 1 47 56 1 48 57 1 49 58 1 50 59 1 51 60 1 52 61 1
		 53 62 1 54 63 1 55 64 1 56 65 1 57 66 1 58 67 1 59 68 1 60 69 1 61 70 1 62 71 1 63 72 1
		 64 73 1 65 74 1 66 75 1 67 76 1 68 77 1 69 78 1 70 79 1 71 80 1 72 81 1 73 82 1 74 83 1
		 75 84 1 76 85 1 77 86 1 78 87 1 79 88 1 80 89 1 81 90 1 82 91 1 83 92 1 84 93 1 85 94 1
		 86 95 1 87 96 1 88 97 1 89 98 1 90 99 1 91 100 1 92 101 1 93 102 1 94 103 1 95 104 1
		 96 105 1 97 106 1 98 107 1 99 108 1 100 109 1 101 110 1 102 111 1 103 112 1 104 113 1
		 105 114 1 106 115 1 107 116 1 108 117 1 109 118 1 110 119 1 111 120 1 112 121 1 113 122 1
		 114 123 1 115 124 1 116 125 1 117 126 1 118 127 1 119 128 1 120 129 1 121 130 1 122 131 1
		 123 132 1 124 133 1 125 134 1 135 0 1 135 1 1 135 2 1 135 3 1 135 4 1 135 5 1 135 6 1
		 135 7 1 135 8 1 126 136 1 127 136 1 128 136 1 129 136 1 130 136 1 131 136 1 132 136 1
		 133 136 1 134 136 1;
	setAttr -s 128 -ch 496 ".fc[0:127]" -type "polyFaces" 
		f 4 0 121 -9 -121
		mu 0 4 0 1 11 10
		f 4 1 122 -10 -122
		mu 0 4 1 2 12 11
		f 4 2 123 -11 -123
		mu 0 4 2 3 13 12
		f 4 3 125 -12 -125
		mu 0 4 4 5 15 14
		f 4 4 126 -13 -126
		mu 0 4 5 6 16 15
		f 4 5 127 -14 -127
		mu 0 4 6 7 17 16
		f 4 6 128 -15 -128
		mu 0 4 7 8 18 17
		f 4 7 120 -16 -129
		mu 0 4 8 9 19 18
		f 4 8 130 -17 -130
		mu 0 4 10 11 21 20
		f 4 9 131 -18 -131
		mu 0 4 11 12 22 21
		f 4 10 132 -19 -132
		mu 0 4 12 13 23 22
		f 4 11 134 -20 -134
		mu 0 4 14 15 25 24
		f 4 12 135 -21 -135
		mu 0 4 15 16 26 25
		f 4 13 136 -22 -136
		mu 0 4 16 17 27 26
		f 4 14 137 -23 -137
		mu 0 4 17 18 28 27
		f 4 15 129 -24 -138
		mu 0 4 18 19 29 28
		f 4 16 139 -25 -139
		mu 0 4 20 21 31 30
		f 4 17 140 -26 -140
		mu 0 4 21 22 32 31
		f 4 18 141 -27 -141
		mu 0 4 22 23 33 32
		f 4 19 143 -28 -143
		mu 0 4 24 25 35 34
		f 4 20 144 -29 -144
		mu 0 4 25 26 36 35
		f 4 21 145 -30 -145
		mu 0 4 26 27 37 36
		f 4 22 146 -31 -146
		mu 0 4 27 28 38 37
		f 4 23 138 -32 -147
		mu 0 4 28 29 39 38
		f 4 24 148 -33 -148
		mu 0 4 30 31 41 40
		f 4 25 149 -34 -149
		mu 0 4 31 32 42 41
		f 4 26 150 -35 -150
		mu 0 4 32 33 43 42
		f 4 27 152 -36 -152
		mu 0 4 34 35 45 44
		f 4 28 153 -37 -153
		mu 0 4 35 36 46 45
		f 4 29 154 -38 -154
		mu 0 4 36 37 47 46
		f 4 30 155 -39 -155
		mu 0 4 37 38 48 47
		f 4 31 147 -40 -156
		mu 0 4 38 39 49 48
		f 4 32 157 -41 -157
		mu 0 4 40 41 51 50
		f 4 33 158 -42 -158
		mu 0 4 41 42 52 51
		f 4 34 159 -43 -159
		mu 0 4 42 43 53 52
		f 4 35 161 -44 -161
		mu 0 4 44 45 55 54
		f 4 36 162 -45 -162
		mu 0 4 45 46 56 55
		f 4 37 163 -46 -163
		mu 0 4 46 47 57 56
		f 4 38 164 -47 -164
		mu 0 4 47 48 58 57
		f 4 39 156 -48 -165
		mu 0 4 48 49 59 58
		f 4 40 166 -49 -166
		mu 0 4 50 51 61 60
		f 4 41 167 -50 -167
		mu 0 4 51 52 62 61
		f 4 42 168 -51 -168
		mu 0 4 52 53 63 62
		f 4 43 170 -52 -170
		mu 0 4 54 55 65 64
		f 4 44 171 -53 -171
		mu 0 4 55 56 66 65
		f 4 45 172 -54 -172
		mu 0 4 56 57 67 66
		f 4 46 173 -55 -173
		mu 0 4 57 58 68 67
		f 4 47 165 -56 -174
		mu 0 4 58 59 69 68
		f 4 48 175 -57 -175
		mu 0 4 60 61 71 70
		f 4 49 176 -58 -176
		mu 0 4 61 62 72 71
		f 4 50 177 -59 -177
		mu 0 4 62 63 73 72
		f 4 51 179 -60 -179
		mu 0 4 64 65 75 74
		f 4 52 180 -61 -180
		mu 0 4 65 66 76 75
		f 4 53 181 -62 -181
		mu 0 4 66 67 77 76
		f 4 54 182 -63 -182
		mu 0 4 67 68 78 77
		f 4 55 174 -64 -183
		mu 0 4 68 69 79 78
		f 4 56 184 -65 -184
		mu 0 4 70 71 81 80
		f 4 57 185 -66 -185
		mu 0 4 71 72 82 81
		f 4 58 186 -67 -186
		mu 0 4 72 73 83 82
		f 4 59 188 -68 -188
		mu 0 4 74 75 85 84
		f 4 60 189 -69 -189
		mu 0 4 75 76 86 85
		f 4 61 190 -70 -190
		mu 0 4 76 77 87 86
		f 4 62 191 -71 -191
		mu 0 4 77 78 88 87
		f 4 63 183 -72 -192
		mu 0 4 78 79 89 88
		f 4 64 193 -73 -193
		mu 0 4 80 81 91 90
		f 4 65 194 -74 -194
		mu 0 4 81 82 92 91
		f 4 66 195 -75 -195
		mu 0 4 82 83 93 92
		f 4 67 197 -76 -197
		mu 0 4 84 85 95 94
		f 4 68 198 -77 -198
		mu 0 4 85 86 96 95
		f 4 69 199 -78 -199
		mu 0 4 86 87 97 96
		f 4 70 200 -79 -200
		mu 0 4 87 88 98 97
		f 4 71 192 -80 -201
		mu 0 4 88 89 99 98
		f 4 72 202 -81 -202
		mu 0 4 90 91 101 100
		f 4 73 203 -82 -203
		mu 0 4 91 92 102 101
		f 4 74 204 -83 -204
		mu 0 4 92 93 103 102
		f 4 75 206 -84 -206
		mu 0 4 94 95 105 104
		f 4 76 207 -85 -207
		mu 0 4 95 96 106 105
		f 4 77 208 -86 -208
		mu 0 4 96 97 107 106
		f 4 78 209 -87 -209
		mu 0 4 97 98 108 107
		f 4 79 201 -88 -210
		mu 0 4 98 99 109 108
		f 4 80 211 -89 -211
		mu 0 4 100 101 111 110
		f 4 81 212 -90 -212
		mu 0 4 101 102 112 111
		f 4 82 213 -91 -213
		mu 0 4 102 103 113 112
		f 4 83 215 -92 -215
		mu 0 4 104 105 115 114
		f 4 84 216 -93 -216
		mu 0 4 105 106 116 115
		f 4 85 217 -94 -217
		mu 0 4 106 107 117 116
		f 4 86 218 -95 -218
		mu 0 4 107 108 118 117
		f 4 87 210 -96 -219
		mu 0 4 108 109 119 118
		f 4 88 220 -97 -220
		mu 0 4 110 111 121 120
		f 4 89 221 -98 -221
		mu 0 4 111 112 122 121
		f 4 90 222 -99 -222
		mu 0 4 112 113 123 122
		f 4 91 224 -100 -224
		mu 0 4 114 115 125 124
		f 4 92 225 -101 -225
		mu 0 4 115 116 126 125
		f 4 93 226 -102 -226
		mu 0 4 116 117 127 126
		f 4 94 227 -103 -227
		mu 0 4 117 118 128 127
		f 4 95 219 -104 -228
		mu 0 4 118 119 129 128
		f 4 96 229 -105 -229
		mu 0 4 120 121 131 130
		f 4 97 230 -106 -230
		mu 0 4 121 122 132 131
		f 4 98 231 -107 -231
		mu 0 4 122 123 133 132
		f 4 99 233 -108 -233
		mu 0 4 124 125 135 134
		f 4 100 234 -109 -234
		mu 0 4 125 126 136 135
		f 4 101 235 -110 -235
		mu 0 4 126 127 137 136
		f 4 102 236 -111 -236
		mu 0 4 127 128 138 137
		f 4 103 228 -112 -237
		mu 0 4 128 129 139 138
		f 4 104 238 -113 -238
		mu 0 4 130 131 141 140
		f 4 105 239 -114 -239
		mu 0 4 131 132 142 141
		f 4 106 240 -115 -240
		mu 0 4 132 133 143 142
		f 4 107 242 -116 -242
		mu 0 4 134 135 145 144
		f 4 108 243 -117 -243
		mu 0 4 135 136 146 145
		f 4 109 244 -118 -244
		mu 0 4 136 137 147 146
		f 4 110 245 -119 -245
		mu 0 4 137 138 148 147
		f 4 111 237 -120 -246
		mu 0 4 138 139 149 148
		f 3 -1 -247 247
		mu 0 3 1 0 150
		f 3 -2 -248 248
		mu 0 3 2 1 151
		f 3 -3 -249 249
		mu 0 3 3 2 152
		f 3 -4 -251 251
		mu 0 3 5 4 153
		f 3 -5 -252 252
		mu 0 3 6 5 154
		f 3 -6 -253 253
		mu 0 3 7 6 155
		f 3 -7 -254 254
		mu 0 3 8 7 156
		f 3 -8 -255 246
		mu 0 3 9 8 157
		f 3 112 256 -256
		mu 0 3 140 141 158
		f 3 113 257 -257
		mu 0 3 141 142 159
		f 3 114 258 -258
		mu 0 3 142 143 160
		f 3 115 260 -260
		mu 0 3 144 145 161
		f 3 116 261 -261
		mu 0 3 145 146 162
		f 3 117 262 -262
		mu 0 3 146 147 163
		f 3 118 263 -263
		mu 0 3 147 148 164
		f 3 119 255 -264
		mu 0 3 148 149 165;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pSphereShape4Orig" -p "pSphere4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 166 ".uvst[0].uvsp[0:165]" -type "float2" 0 0.0625 0.0625 0.0625
		 0.125 0.0625 0.1875 0.0625 0.6875 0.0625 0.75 0.0625 0.8125 0.0625 0.875 0.0625 0.9375
		 0.0625 1 0.0625 0 0.125 0.0625 0.125 0.125 0.125 0.1875 0.125 0.6875 0.125 0.75 0.125
		 0.8125 0.125 0.875 0.125 0.9375 0.125 1 0.125 0 0.1875 0.0625 0.1875 0.125 0.1875
		 0.1875 0.1875 0.6875 0.1875 0.75 0.1875 0.8125 0.1875 0.875 0.1875 0.9375 0.1875
		 1 0.1875 0 0.25 0.0625 0.25 0.125 0.25 0.1875 0.25 0.6875 0.25 0.75 0.25 0.8125 0.25
		 0.875 0.25 0.9375 0.25 1 0.25 0 0.3125 0.0625 0.3125 0.125 0.3125 0.1875 0.3125 0.6875
		 0.3125 0.75 0.3125 0.8125 0.3125 0.875 0.3125 0.9375 0.3125 1 0.3125 0 0.375 0.0625
		 0.375 0.125 0.375 0.1875 0.375 0.6875 0.375 0.75 0.375 0.8125 0.375 0.875 0.375 0.9375
		 0.375 1 0.375 0 0.4375 0.0625 0.4375 0.125 0.4375 0.1875 0.4375 0.6875 0.4375 0.75
		 0.4375 0.8125 0.4375 0.875 0.4375 0.9375 0.4375 1 0.4375 0 0.5 0.0625 0.5 0.125 0.5
		 0.1875 0.5 0.6875 0.5 0.75 0.5 0.8125 0.5 0.875 0.5 0.9375 0.5 1 0.5 0 0.5625 0.0625
		 0.5625 0.125 0.5625 0.1875 0.5625 0.6875 0.5625 0.75 0.5625 0.8125 0.5625 0.875 0.5625
		 0.9375 0.5625 1 0.5625 0 0.625 0.0625 0.625 0.125 0.625 0.1875 0.625 0.6875 0.625
		 0.75 0.625 0.8125 0.625 0.875 0.625 0.9375 0.625 1 0.625 0 0.6875 0.0625 0.6875 0.125
		 0.6875 0.1875 0.6875 0.6875 0.6875 0.75 0.6875 0.8125 0.6875 0.875 0.6875 0.9375
		 0.6875 1 0.6875 0 0.75 0.0625 0.75 0.125 0.75 0.1875 0.75 0.6875 0.75 0.75 0.75 0.8125
		 0.75 0.875 0.75 0.9375 0.75 1 0.75 0 0.8125 0.0625 0.8125 0.125 0.8125 0.1875 0.8125
		 0.6875 0.8125 0.75 0.8125 0.8125 0.8125 0.875 0.8125 0.9375 0.8125 1 0.8125 0 0.875
		 0.0625 0.875 0.125 0.875 0.1875 0.875 0.6875 0.875 0.75 0.875 0.8125 0.875 0.875
		 0.875 0.9375 0.875 1 0.875 0 0.9375 0.0625 0.9375 0.125 0.9375 0.1875 0.9375 0.6875
		 0.9375 0.75 0.9375 0.8125 0.9375 0.875 0.9375 0.9375 0.9375 1 0.9375 0.03125 0 0.09375
		 0 0.15625 0 0.71875 0 0.78125 0 0.84375 0 0.90625 0 0.96875 0 0.03125 1 0.09375 1
		 0.15625 1 0.71875 1 0.78125 1 0.84375 1 0.90625 1 0.96875 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 137 ".vt[0:136]"  -1.31489527 -0.95485663 -0.074657731 -1.35480285 -0.95333195 -0.1379496
		 -1.41452229 -0.95104831 -0.1802399 -1.48495603 -0.94835174 -0.19509031 -1.48495615 -0.94835174 0.19509032
		 -1.41452241 -0.95104831 0.18023996 -1.35480297 -0.95333195 0.13794971 -1.31489527 -0.95485663 0.074657843
		 -1.30088079 -0.95539176 1.1758171e-017 -0.98129761 -0.9066745 -0.14644641 -1.060122132 -0.90385741 -0.2705979
		 -1.17806756 -0.8996343 -0.35355332 -1.31715679 -0.89464188 -0.38268343 -1.31715703 -0.89464188 0.38268346
		 -1.1780678 -0.8996343 0.35355341 -1.060122371 -0.90385741 0.27059808 -0.98129773 -0.9066745 0.14644663
		 -0.95361519 -0.90766287 -3.8737163e-017 -0.5734123 -0.82260603 -0.21260722 -0.68900537 -0.81892204 -0.39284724
		 -0.86195683 -0.81339347 -0.51327986 -1.065896034 -0.80684888 -0.55557019 -1.065896392 -0.80684888 0.55557024
		 -0.86195713 -0.81339347 0.51327997 -0.68900561 -0.81892204 0.39284751 -0.57341242 -0.82260603 0.21260755
		 -0.53281564 -0.82389778 -1.0896281e-016 -0.13530688 -0.70483112 -0.27059767 -0.28415319 -0.70083928 -0.4999997
		 -0.50685281 -0.69484031 -0.65328127 -0.76944488 -0.68772596 -0.70710671 -0.76944536 -0.68772596 0.70710677
		 -0.50685322 -0.69484031 0.65328151 -0.28415349 -0.70083928 0.5 -0.13530704 -0.70483112 0.27059805
		 -0.083030917 -0.70622975 -1.8786162e-016 0.28107285 -0.55721974 -0.3181892 0.10403071 -0.55353111 -0.58793747
		 -0.16085874 -0.54797608 -0.76817757 -0.4732042 -0.54137009 -0.8314696 -0.47320473 -0.54137009 0.83146966
		 -0.1608592 -0.54797608 0.76817781 0.10403036 -0.55353111 0.58793789 0.28107265 -0.55721974 0.31818968
		 0.3432509 -0.5585106 -2.6298727e-016 0.62348354 -0.38543785 -0.35355288 0.42487481 -0.3826226 -0.65328109
		 0.12770227 -0.37836605 -0.85355312 -0.22273339 -0.37327847 -0.92387944 -0.22273399 -0.37327847 0.9238795
		 0.12770173 -0.37836605 0.85355341 0.4248744 -0.3826226 0.65328151 0.62348336 -0.38543785 0.35355341
		 0.69323391 -0.38642094 -3.22697e-016 0.84752649 -0.19681837 -0.37532973 0.63535821 -0.19531545 -0.69351947
		 0.31787187 -0.19301702 -0.90612715 -0.05655713 -0.19023006 -0.98078519 -0.056557771 -0.19023006 0.98078525
		 0.3178713 -0.19301701 0.90612745 0.6353578 -0.19531545 0.69351995 0.84752625 -0.19681837 0.3753303
		 0.92203569 -0.19733988 -3.5821338e-016 0.92385966 4.5559103e-005 -0.38268289 0.70708299 6.7029418e-008 -0.70710635
		 0.38266996 -1.6675895e-005 -0.92387927 2.4635854e-005 4.2696112e-005 -0.99999994
		 2.3980294e-005 4.2696287e-005 1 0.38266936 -1.6675867e-005 0.92387956 0.70708257 6.6968312e-008 0.70710683
		 0.92385942 4.5559038e-005 0.38268346 0.99998337 6.8053378e-005 -3.651193e-016 0.84302229 0.1959475 -0.37532973
		 0.63091683 0.19435951 -0.69351947 0.31346381 0.19203231 -0.90612715 -0.061019372 0.1893633 -0.98078519
		 -0.061020013 0.1893633 0.98078525 0.31346324 0.19203231 0.90612745 0.63091642 0.19435951 0.69351995
		 0.84302205 0.1959475 0.3753303 0.91750175 0.1965114 -3.4397026e-016 0.61684752 0.38184044 -0.35355288
		 0.41834149 0.37895656 -0.65328109 0.1212172 0.37468418 -0.85355312 -0.22932392 0.36971182 -0.92387944
		 -0.22932452 0.36971182 0.9238795 0.12121667 0.37468415 0.85355341 0.41834107 0.37895656 0.65328151
		 0.61684734 0.38184044 0.35355341 0.68654853 0.38285866 -2.9992404e-016 0.27619663 0.54957819 -0.3181892
		 0.099260367 0.54584426 -0.58793747 -0.16559409 0.54029107 -0.76817757 -0.47808865 0.53379476 -0.8314696
		 -0.47808918 0.53379476 0.83146966 -0.16559456 0.54029107 0.76817781 0.099260017 0.54584426 0.58793789
		 0.27619639 0.54957819 0.31818968 0.33832181 0.55089384 -2.4153123e-016 -0.13441488 0.69247705 -0.27059767
		 -0.28318733 0.688465 -0.4999997 -0.50588965 0.6824857 -0.65328127 -0.76865947 0.67547131 -0.70710671
		 -0.76865989 0.67547131 0.70710677 -0.50589001 0.68248564 0.65328151 -0.28318763 0.688465 0.5
		 -0.13441506 0.69247705 0.27059805 -0.082179248 0.69388908 -1.7902392e-016 -0.56408483 0.80560666 -0.21260722
		 -0.67965513 0.80192393 -0.39284724 -0.85265434 0.79642761 -0.51327986 -1.056776047 0.78996801 -0.55557019
		 -1.056776404 0.78996801 0.55557024 -0.85265464 0.79642761 0.51327997 -0.67965537 0.80192387 0.39284751
		 -0.56408495 0.80560666 0.21260755 -0.52350658 0.80690181 -1.2251503e-016 -0.96322227 0.88580036 -0.14644641
		 -1.042068601 0.88299727 -0.2705979 -1.16008973 0.87880933 -0.35355332 -1.29933465 0.87388051 -0.38268343
		 -1.29933488 0.87388051 0.38268346 -1.16008997 0.87880933 0.35355341 -1.042068839 0.88299727 0.27059808
		 -0.96322232 0.88580036 0.14644663 -0.93553758 0.88678563 -8.0468104e-017 -1.29034686 0.93144894 -0.074657731
		 -1.33028924 0.92993855 -0.1379496 -1.39007258 0.92767996 -0.1802399 -1.46060002 0.92501861 -0.19509031
		 -1.46060014 0.92501861 0.19509032 -1.3900727 0.9276799 0.18023996 -1.33028936 0.92993855 0.13794971
		 -1.29034698 0.93144894 0.074657843 -1.27632165 0.93197954 -5.865496e-017 -1.54385734 -0.96642178 3.4742463e-017
		 -1.51708126 0.94218957 -5.9652798e-017;
	setAttr -s 264 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 4 5 1 5 6 1 6 7 1 7 8 1 8 0 1 9 10 1
		 10 11 1 11 12 1 13 14 1 14 15 1 15 16 1 16 17 1 17 9 1 18 19 1 19 20 1 20 21 1 22 23 1
		 23 24 1 24 25 1 25 26 1 26 18 1 27 28 1 28 29 1 29 30 1 31 32 1 32 33 1 33 34 1 34 35 1
		 35 27 1 36 37 1 37 38 1 38 39 1 40 41 1 41 42 1 42 43 1 43 44 1 44 36 1 45 46 1 46 47 1
		 47 48 1 49 50 1 50 51 1 51 52 1 52 53 1 53 45 1 54 55 1 55 56 1 56 57 1 58 59 1 59 60 1
		 60 61 1 61 62 1 62 54 1 63 64 1 64 65 1 65 66 1 67 68 1 68 69 1 69 70 1 70 71 1 71 63 1
		 72 73 1 73 74 1 74 75 1 76 77 1 77 78 1 78 79 1 79 80 1 80 72 1 81 82 1 82 83 1 83 84 1
		 85 86 1 86 87 1 87 88 1 88 89 1 89 81 1 90 91 1 91 92 1 92 93 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 90 1 99 100 1 100 101 1 101 102 1 103 104 1 104 105 1 105 106 1 106 107 1
		 107 99 1 108 109 1 109 110 1 110 111 1 112 113 1 113 114 1 114 115 1 115 116 1 116 108 1
		 117 118 1 118 119 1 119 120 1 121 122 1 122 123 1 123 124 1 124 125 1 125 117 1 126 127 1
		 127 128 1 128 129 1 130 131 1 131 132 1 132 133 1 133 134 1 134 126 1 0 9 1 1 10 1
		 2 11 1 3 12 0 4 13 0 5 14 1 6 15 1 7 16 1 8 17 1 9 18 1 10 19 1 11 20 1 12 21 0 13 22 0
		 14 23 1 15 24 1 16 25 1 17 26 1 18 27 1 19 28 1 20 29 1 21 30 0 22 31 0 23 32 1 24 33 1
		 25 34 1 26 35 1 27 36 1 28 37 1 29 38 1 30 39 0 31 40 0 32 41 1 33 42 1 34 43 1 35 44 1
		 36 45 1 37 46 1 38 47 1 39 48 0 40 49 0 41 50 1 42 51 1 43 52 1 44 53 1 45 54 1;
	setAttr ".ed[166:263]" 46 55 1 47 56 1 48 57 0 49 58 0 50 59 1 51 60 1 52 61 1
		 53 62 1 54 63 1 55 64 1 56 65 1 57 66 0 58 67 0 59 68 1 60 69 1 61 70 1 62 71 1 63 72 1
		 64 73 1 65 74 1 66 75 0 67 76 0 68 77 1 69 78 1 70 79 1 71 80 1 72 81 1 73 82 1 74 83 1
		 75 84 0 76 85 0 77 86 1 78 87 1 79 88 1 80 89 1 81 90 1 82 91 1 83 92 1 84 93 0 85 94 0
		 86 95 1 87 96 1 88 97 1 89 98 1 90 99 1 91 100 1 92 101 1 93 102 0 94 103 0 95 104 1
		 96 105 1 97 106 1 98 107 1 99 108 1 100 109 1 101 110 1 102 111 0 103 112 0 104 113 1
		 105 114 1 106 115 1 107 116 1 108 117 1 109 118 1 110 119 1 111 120 0 112 121 0 113 122 1
		 114 123 1 115 124 1 116 125 1 117 126 1 118 127 1 119 128 1 120 129 0 121 130 0 122 131 1
		 123 132 1 124 133 1 125 134 1 135 0 1 135 1 1 135 2 1 135 3 0 135 4 0 135 5 1 135 6 1
		 135 7 1 135 8 1 126 136 1 127 136 1 128 136 1 129 136 0 130 136 0 131 136 1 132 136 1
		 133 136 1 134 136 1;
	setAttr -s 128 -ch 496 ".fc[0:127]" -type "polyFaces" 
		f 4 0 121 -9 -121
		mu 0 4 0 1 11 10
		f 4 1 122 -10 -122
		mu 0 4 1 2 12 11
		f 4 2 123 -11 -123
		mu 0 4 2 3 13 12
		f 4 3 125 -12 -125
		mu 0 4 4 5 15 14
		f 4 4 126 -13 -126
		mu 0 4 5 6 16 15
		f 4 5 127 -14 -127
		mu 0 4 6 7 17 16
		f 4 6 128 -15 -128
		mu 0 4 7 8 18 17
		f 4 7 120 -16 -129
		mu 0 4 8 9 19 18
		f 4 8 130 -17 -130
		mu 0 4 10 11 21 20
		f 4 9 131 -18 -131
		mu 0 4 11 12 22 21
		f 4 10 132 -19 -132
		mu 0 4 12 13 23 22
		f 4 11 134 -20 -134
		mu 0 4 14 15 25 24
		f 4 12 135 -21 -135
		mu 0 4 15 16 26 25
		f 4 13 136 -22 -136
		mu 0 4 16 17 27 26
		f 4 14 137 -23 -137
		mu 0 4 17 18 28 27
		f 4 15 129 -24 -138
		mu 0 4 18 19 29 28
		f 4 16 139 -25 -139
		mu 0 4 20 21 31 30
		f 4 17 140 -26 -140
		mu 0 4 21 22 32 31
		f 4 18 141 -27 -141
		mu 0 4 22 23 33 32
		f 4 19 143 -28 -143
		mu 0 4 24 25 35 34
		f 4 20 144 -29 -144
		mu 0 4 25 26 36 35
		f 4 21 145 -30 -145
		mu 0 4 26 27 37 36
		f 4 22 146 -31 -146
		mu 0 4 27 28 38 37
		f 4 23 138 -32 -147
		mu 0 4 28 29 39 38
		f 4 24 148 -33 -148
		mu 0 4 30 31 41 40
		f 4 25 149 -34 -149
		mu 0 4 31 32 42 41
		f 4 26 150 -35 -150
		mu 0 4 32 33 43 42
		f 4 27 152 -36 -152
		mu 0 4 34 35 45 44
		f 4 28 153 -37 -153
		mu 0 4 35 36 46 45
		f 4 29 154 -38 -154
		mu 0 4 36 37 47 46
		f 4 30 155 -39 -155
		mu 0 4 37 38 48 47
		f 4 31 147 -40 -156
		mu 0 4 38 39 49 48
		f 4 32 157 -41 -157
		mu 0 4 40 41 51 50
		f 4 33 158 -42 -158
		mu 0 4 41 42 52 51
		f 4 34 159 -43 -159
		mu 0 4 42 43 53 52
		f 4 35 161 -44 -161
		mu 0 4 44 45 55 54
		f 4 36 162 -45 -162
		mu 0 4 45 46 56 55
		f 4 37 163 -46 -163
		mu 0 4 46 47 57 56
		f 4 38 164 -47 -164
		mu 0 4 47 48 58 57
		f 4 39 156 -48 -165
		mu 0 4 48 49 59 58
		f 4 40 166 -49 -166
		mu 0 4 50 51 61 60
		f 4 41 167 -50 -167
		mu 0 4 51 52 62 61
		f 4 42 168 -51 -168
		mu 0 4 52 53 63 62
		f 4 43 170 -52 -170
		mu 0 4 54 55 65 64
		f 4 44 171 -53 -171
		mu 0 4 55 56 66 65
		f 4 45 172 -54 -172
		mu 0 4 56 57 67 66
		f 4 46 173 -55 -173
		mu 0 4 57 58 68 67
		f 4 47 165 -56 -174
		mu 0 4 58 59 69 68
		f 4 48 175 -57 -175
		mu 0 4 60 61 71 70
		f 4 49 176 -58 -176
		mu 0 4 61 62 72 71
		f 4 50 177 -59 -177
		mu 0 4 62 63 73 72
		f 4 51 179 -60 -179
		mu 0 4 64 65 75 74
		f 4 52 180 -61 -180
		mu 0 4 65 66 76 75
		f 4 53 181 -62 -181
		mu 0 4 66 67 77 76
		f 4 54 182 -63 -182
		mu 0 4 67 68 78 77
		f 4 55 174 -64 -183
		mu 0 4 68 69 79 78
		f 4 56 184 -65 -184
		mu 0 4 70 71 81 80
		f 4 57 185 -66 -185
		mu 0 4 71 72 82 81
		f 4 58 186 -67 -186
		mu 0 4 72 73 83 82
		f 4 59 188 -68 -188
		mu 0 4 74 75 85 84
		f 4 60 189 -69 -189
		mu 0 4 75 76 86 85
		f 4 61 190 -70 -190
		mu 0 4 76 77 87 86
		f 4 62 191 -71 -191
		mu 0 4 77 78 88 87
		f 4 63 183 -72 -192
		mu 0 4 78 79 89 88
		f 4 64 193 -73 -193
		mu 0 4 80 81 91 90
		f 4 65 194 -74 -194
		mu 0 4 81 82 92 91
		f 4 66 195 -75 -195
		mu 0 4 82 83 93 92
		f 4 67 197 -76 -197
		mu 0 4 84 85 95 94
		f 4 68 198 -77 -198
		mu 0 4 85 86 96 95
		f 4 69 199 -78 -199
		mu 0 4 86 87 97 96
		f 4 70 200 -79 -200
		mu 0 4 87 88 98 97
		f 4 71 192 -80 -201
		mu 0 4 88 89 99 98
		f 4 72 202 -81 -202
		mu 0 4 90 91 101 100
		f 4 73 203 -82 -203
		mu 0 4 91 92 102 101
		f 4 74 204 -83 -204
		mu 0 4 92 93 103 102
		f 4 75 206 -84 -206
		mu 0 4 94 95 105 104
		f 4 76 207 -85 -207
		mu 0 4 95 96 106 105
		f 4 77 208 -86 -208
		mu 0 4 96 97 107 106
		f 4 78 209 -87 -209
		mu 0 4 97 98 108 107
		f 4 79 201 -88 -210
		mu 0 4 98 99 109 108
		f 4 80 211 -89 -211
		mu 0 4 100 101 111 110
		f 4 81 212 -90 -212
		mu 0 4 101 102 112 111
		f 4 82 213 -91 -213
		mu 0 4 102 103 113 112
		f 4 83 215 -92 -215
		mu 0 4 104 105 115 114
		f 4 84 216 -93 -216
		mu 0 4 105 106 116 115
		f 4 85 217 -94 -217
		mu 0 4 106 107 117 116
		f 4 86 218 -95 -218
		mu 0 4 107 108 118 117
		f 4 87 210 -96 -219
		mu 0 4 108 109 119 118
		f 4 88 220 -97 -220
		mu 0 4 110 111 121 120
		f 4 89 221 -98 -221
		mu 0 4 111 112 122 121
		f 4 90 222 -99 -222
		mu 0 4 112 113 123 122
		f 4 91 224 -100 -224
		mu 0 4 114 115 125 124
		f 4 92 225 -101 -225
		mu 0 4 115 116 126 125
		f 4 93 226 -102 -226
		mu 0 4 116 117 127 126
		f 4 94 227 -103 -227
		mu 0 4 117 118 128 127
		f 4 95 219 -104 -228
		mu 0 4 118 119 129 128
		f 4 96 229 -105 -229
		mu 0 4 120 121 131 130
		f 4 97 230 -106 -230
		mu 0 4 121 122 132 131
		f 4 98 231 -107 -231
		mu 0 4 122 123 133 132
		f 4 99 233 -108 -233
		mu 0 4 124 125 135 134
		f 4 100 234 -109 -234
		mu 0 4 125 126 136 135
		f 4 101 235 -110 -235
		mu 0 4 126 127 137 136
		f 4 102 236 -111 -236
		mu 0 4 127 128 138 137
		f 4 103 228 -112 -237
		mu 0 4 128 129 139 138
		f 4 104 238 -113 -238
		mu 0 4 130 131 141 140
		f 4 105 239 -114 -239
		mu 0 4 131 132 142 141
		f 4 106 240 -115 -240
		mu 0 4 132 133 143 142
		f 4 107 242 -116 -242
		mu 0 4 134 135 145 144
		f 4 108 243 -117 -243
		mu 0 4 135 136 146 145
		f 4 109 244 -118 -244
		mu 0 4 136 137 147 146
		f 4 110 245 -119 -245
		mu 0 4 137 138 148 147
		f 4 111 237 -120 -246
		mu 0 4 138 139 149 148
		f 3 -1 -247 247
		mu 0 3 1 0 150
		f 3 -2 -248 248
		mu 0 3 2 1 151
		f 3 -3 -249 249
		mu 0 3 3 2 152
		f 3 -4 -251 251
		mu 0 3 5 4 153
		f 3 -5 -252 252
		mu 0 3 6 5 154
		f 3 -6 -253 253
		mu 0 3 7 6 155
		f 3 -7 -254 254
		mu 0 3 8 7 156
		f 3 -8 -255 246
		mu 0 3 9 8 157
		f 3 112 256 -256
		mu 0 3 140 141 158
		f 3 113 257 -257
		mu 0 3 141 142 159
		f 3 114 258 -258
		mu 0 3 142 143 160
		f 3 115 260 -260
		mu 0 3 144 145 161
		f 3 116 261 -261
		mu 0 3 145 146 162
		f 3 117 262 -262
		mu 0 3 146 147 163
		f 3 118 263 -263
		mu 0 3 147 148 164
		f 3 119 255 -264
		mu 0 3 148 149 165;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "bend2Handle" -p "group6";
	setAttr ".t" -type "double3" -4.9494489732473124 1.1790145221359212 -0.20621033315715623 ;
	setAttr ".r" -type "double3" -18.816808567257151 -78.494079633616082 20.343300001954702 ;
	setAttr ".s" -type "double3" 0.85176820791629937 0.85176820791629926 0.85176820791629926 ;
	setAttr ".smd" 7;
createNode deformBend -n "bend2HandleShape" -p "bend2Handle";
	setAttr -k off ".v";
	setAttr ".dd" -type "doubleArray" 3 -1 1 -0.25598140628041993 ;
	setAttr ".hw" 0.59676500848677783;
createNode transform -n "pTorus1" -p "group6";
	setAttr ".t" -type "double3" -5.8255066044252093 4.1159086642153051 -4.7115386384517386 ;
	setAttr ".s" -type "double3" 3.0251319081221983 0.83244100401717191 3.0251319081221983 ;
createNode mesh -n "pTorusShape1" -p "pTorus1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pTorus2" -p "group6";
	setAttr ".t" -type "double3" -5.8255066044252093 2.7201344452548111 -4.7115386384517386 ;
	setAttr ".s" -type "double3" 3.2016158429414774 0.88100499010300704 3.2016158429414774 ;
createNode mesh -n "pTorusShape2" -p "pTorus2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 441 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 1 0.050000001 1 0.1 1 0.15000001
		 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006 1 0.55000007
		 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014 1 0.90000015
		 1 0.95000017 1 1.000000119209 1 0 0.94999999 0.050000001 0.94999999 0.1 0.94999999
		 0.15000001 0.94999999 0.2 0.94999999 0.25 0.94999999 0.30000001 0.94999999 0.35000002
		 0.94999999 0.40000004 0.94999999 0.45000005 0.94999999 0.50000006 0.94999999 0.55000007
		 0.94999999 0.60000008 0.94999999 0.6500001 0.94999999 0.70000011 0.94999999 0.75000012
		 0.94999999 0.80000013 0.94999999 0.85000014 0.94999999 0.90000015 0.94999999 0.95000017
		 0.94999999 1.000000119209 0.94999999 0 0.89999998 0.050000001 0.89999998 0.1 0.89999998
		 0.15000001 0.89999998 0.2 0.89999998 0.25 0.89999998 0.30000001 0.89999998 0.35000002
		 0.89999998 0.40000004 0.89999998 0.45000005 0.89999998 0.50000006 0.89999998 0.55000007
		 0.89999998 0.60000008 0.89999998 0.6500001 0.89999998 0.70000011 0.89999998 0.75000012
		 0.89999998 0.80000013 0.89999998 0.85000014 0.89999998 0.90000015 0.89999998 0.95000017
		 0.89999998 1.000000119209 0.89999998 0 0.84999996 0.050000001 0.84999996 0.1 0.84999996
		 0.15000001 0.84999996 0.2 0.84999996 0.25 0.84999996 0.30000001 0.84999996 0.35000002
		 0.84999996 0.40000004 0.84999996 0.45000005 0.84999996 0.50000006 0.84999996 0.55000007
		 0.84999996 0.60000008 0.84999996 0.6500001 0.84999996 0.70000011 0.84999996 0.75000012
		 0.84999996 0.80000013 0.84999996 0.85000014 0.84999996 0.90000015 0.84999996 0.95000017
		 0.84999996 1.000000119209 0.84999996 0 0.79999995 0.050000001 0.79999995 0.1 0.79999995
		 0.15000001 0.79999995 0.2 0.79999995 0.25 0.79999995 0.30000001 0.79999995 0.35000002
		 0.79999995 0.40000004 0.79999995 0.45000005 0.79999995 0.50000006 0.79999995 0.55000007
		 0.79999995 0.60000008 0.79999995 0.6500001 0.79999995 0.70000011 0.79999995 0.75000012
		 0.79999995 0.80000013 0.79999995 0.85000014 0.79999995 0.90000015 0.79999995 0.95000017
		 0.79999995 1.000000119209 0.79999995 0 0.74999994 0.050000001 0.74999994 0.1 0.74999994
		 0.15000001 0.74999994 0.2 0.74999994 0.25 0.74999994 0.30000001 0.74999994 0.35000002
		 0.74999994 0.40000004 0.74999994 0.45000005 0.74999994 0.50000006 0.74999994 0.55000007
		 0.74999994 0.60000008 0.74999994 0.6500001 0.74999994 0.70000011 0.74999994 0.75000012
		 0.74999994 0.80000013 0.74999994 0.85000014 0.74999994 0.90000015 0.74999994 0.95000017
		 0.74999994 1.000000119209 0.74999994 0 0.69999993 0.050000001 0.69999993 0.1 0.69999993
		 0.15000001 0.69999993 0.2 0.69999993 0.25 0.69999993 0.30000001 0.69999993 0.35000002
		 0.69999993 0.40000004 0.69999993 0.45000005 0.69999993 0.50000006 0.69999993 0.55000007
		 0.69999993 0.60000008 0.69999993 0.6500001 0.69999993 0.70000011 0.69999993 0.75000012
		 0.69999993 0.80000013 0.69999993 0.85000014 0.69999993 0.90000015 0.69999993 0.95000017
		 0.69999993 1.000000119209 0.69999993 0 0.64999992 0.050000001 0.64999992 0.1 0.64999992
		 0.15000001 0.64999992 0.2 0.64999992 0.25 0.64999992 0.30000001 0.64999992 0.35000002
		 0.64999992 0.40000004 0.64999992 0.45000005 0.64999992 0.50000006 0.64999992 0.55000007
		 0.64999992 0.60000008 0.64999992 0.6500001 0.64999992 0.70000011 0.64999992 0.75000012
		 0.64999992 0.80000013 0.64999992 0.85000014 0.64999992 0.90000015 0.64999992 0.95000017
		 0.64999992 1.000000119209 0.64999992 0 0.5999999 0.050000001 0.5999999 0.1 0.5999999
		 0.15000001 0.5999999 0.2 0.5999999 0.25 0.5999999 0.30000001 0.5999999 0.35000002
		 0.5999999 0.40000004 0.5999999 0.45000005 0.5999999 0.50000006 0.5999999 0.55000007
		 0.5999999 0.60000008 0.5999999 0.6500001 0.5999999 0.70000011 0.5999999 0.75000012
		 0.5999999 0.80000013 0.5999999 0.85000014 0.5999999 0.90000015 0.5999999 0.95000017
		 0.5999999 1.000000119209 0.5999999 0 0.54999989 0.050000001 0.54999989 0.1 0.54999989
		 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989 0.30000001 0.54999989 0.35000002
		 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989 0.50000006 0.54999989 0.55000007
		 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989 0.70000011 0.54999989 0.75000012
		 0.54999989 0.80000013 0.54999989 0.85000014 0.54999989 0.90000015 0.54999989 0.95000017
		 0.54999989 1.000000119209 0.54999989 0 0.49999988 0.050000001 0.49999988 0.1 0.49999988
		 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988 0.30000001 0.49999988 0.35000002
		 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988 0.50000006 0.49999988 0.55000007
		 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988 0.70000011 0.49999988 0.75000012
		 0.49999988 0.80000013 0.49999988 0.85000014 0.49999988 0.90000015 0.49999988 0.95000017
		 0.49999988 1.000000119209 0.49999988 0 0.44999987 0.050000001 0.44999987 0.1 0.44999987
		 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987 0.30000001 0.44999987 0.35000002
		 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987 0.50000006 0.44999987 0.55000007
		 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987 0.70000011 0.44999987 0.75000012
		 0.44999987 0.80000013 0.44999987 0.85000014 0.44999987 0.90000015 0.44999987;
	setAttr ".uvst[0].uvsp[250:440]" 0.95000017 0.44999987 1.000000119209 0.44999987
		 0 0.39999986 0.050000001 0.39999986 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986
		 0.25 0.39999986 0.30000001 0.39999986 0.35000002 0.39999986 0.40000004 0.39999986
		 0.45000005 0.39999986 0.50000006 0.39999986 0.55000007 0.39999986 0.60000008 0.39999986
		 0.6500001 0.39999986 0.70000011 0.39999986 0.75000012 0.39999986 0.80000013 0.39999986
		 0.85000014 0.39999986 0.90000015 0.39999986 0.95000017 0.39999986 1.000000119209
		 0.39999986 0 0.34999985 0.050000001 0.34999985 0.1 0.34999985 0.15000001 0.34999985
		 0.2 0.34999985 0.25 0.34999985 0.30000001 0.34999985 0.35000002 0.34999985 0.40000004
		 0.34999985 0.45000005 0.34999985 0.50000006 0.34999985 0.55000007 0.34999985 0.60000008
		 0.34999985 0.6500001 0.34999985 0.70000011 0.34999985 0.75000012 0.34999985 0.80000013
		 0.34999985 0.85000014 0.34999985 0.90000015 0.34999985 0.95000017 0.34999985 1.000000119209
		 0.34999985 0 0.29999983 0.050000001 0.29999983 0.1 0.29999983 0.15000001 0.29999983
		 0.2 0.29999983 0.25 0.29999983 0.30000001 0.29999983 0.35000002 0.29999983 0.40000004
		 0.29999983 0.45000005 0.29999983 0.50000006 0.29999983 0.55000007 0.29999983 0.60000008
		 0.29999983 0.6500001 0.29999983 0.70000011 0.29999983 0.75000012 0.29999983 0.80000013
		 0.29999983 0.85000014 0.29999983 0.90000015 0.29999983 0.95000017 0.29999983 1.000000119209
		 0.29999983 0 0.24999984 0.050000001 0.24999984 0.1 0.24999984 0.15000001 0.24999984
		 0.2 0.24999984 0.25 0.24999984 0.30000001 0.24999984 0.35000002 0.24999984 0.40000004
		 0.24999984 0.45000005 0.24999984 0.50000006 0.24999984 0.55000007 0.24999984 0.60000008
		 0.24999984 0.6500001 0.24999984 0.70000011 0.24999984 0.75000012 0.24999984 0.80000013
		 0.24999984 0.85000014 0.24999984 0.90000015 0.24999984 0.95000017 0.24999984 1.000000119209
		 0.24999984 0 0.19999984 0.050000001 0.19999984 0.1 0.19999984 0.15000001 0.19999984
		 0.2 0.19999984 0.25 0.19999984 0.30000001 0.19999984 0.35000002 0.19999984 0.40000004
		 0.19999984 0.45000005 0.19999984 0.50000006 0.19999984 0.55000007 0.19999984 0.60000008
		 0.19999984 0.6500001 0.19999984 0.70000011 0.19999984 0.75000012 0.19999984 0.80000013
		 0.19999984 0.85000014 0.19999984 0.90000015 0.19999984 0.95000017 0.19999984 1.000000119209
		 0.19999984 0 0.14999984 0.050000001 0.14999984 0.1 0.14999984 0.15000001 0.14999984
		 0.2 0.14999984 0.25 0.14999984 0.30000001 0.14999984 0.35000002 0.14999984 0.40000004
		 0.14999984 0.45000005 0.14999984 0.50000006 0.14999984 0.55000007 0.14999984 0.60000008
		 0.14999984 0.6500001 0.14999984 0.70000011 0.14999984 0.75000012 0.14999984 0.80000013
		 0.14999984 0.85000014 0.14999984 0.90000015 0.14999984 0.95000017 0.14999984 1.000000119209
		 0.14999984 0 0.099999845 0.050000001 0.099999845 0.1 0.099999845 0.15000001 0.099999845
		 0.2 0.099999845 0.25 0.099999845 0.30000001 0.099999845 0.35000002 0.099999845 0.40000004
		 0.099999845 0.45000005 0.099999845 0.50000006 0.099999845 0.55000007 0.099999845
		 0.60000008 0.099999845 0.6500001 0.099999845 0.70000011 0.099999845 0.75000012 0.099999845
		 0.80000013 0.099999845 0.85000014 0.099999845 0.90000015 0.099999845 0.95000017 0.099999845
		 1.000000119209 0.099999845 0 0.049999844 0.050000001 0.049999844 0.1 0.049999844
		 0.15000001 0.049999844 0.2 0.049999844 0.25 0.049999844 0.30000001 0.049999844 0.35000002
		 0.049999844 0.40000004 0.049999844 0.45000005 0.049999844 0.50000006 0.049999844
		 0.55000007 0.049999844 0.60000008 0.049999844 0.6500001 0.049999844 0.70000011 0.049999844
		 0.75000012 0.049999844 0.80000013 0.049999844 0.85000014 0.049999844 0.90000015 0.049999844
		 0.95000017 0.049999844 1.000000119209 0.049999844 0 -1.5646219e-007 0.050000001 -1.5646219e-007
		 0.1 -1.5646219e-007 0.15000001 -1.5646219e-007 0.2 -1.5646219e-007 0.25 -1.5646219e-007
		 0.30000001 -1.5646219e-007 0.35000002 -1.5646219e-007 0.40000004 -1.5646219e-007
		 0.45000005 -1.5646219e-007 0.50000006 -1.5646219e-007 0.55000007 -1.5646219e-007
		 0.60000008 -1.5646219e-007 0.6500001 -1.5646219e-007 0.70000011 -1.5646219e-007 0.75000012
		 -1.5646219e-007 0.80000013 -1.5646219e-007 0.85000014 -1.5646219e-007 0.90000015
		 -1.5646219e-007 0.95000017 -1.5646219e-007 1.000000119209 -1.5646219e-007;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 400 ".vt";
	setAttr ".vt[0:165]"  0.47552857 0 -0.15450859 0.40450877 0 -0.2938928 0.2938928 0 -0.40450874
		 0.15450858 0 -0.47552851 0 0 -0.50000024 -0.15450858 0 -0.47552848 -0.29389274 0 -0.40450865
		 -0.40450862 0 -0.29389271 -0.47552839 0 -0.15450853 -0.50000012 0 0 -0.47552839 0 0.15450853
		 -0.40450859 0 0.29389268 -0.29389268 0 0.40450856 -0.15450853 0 0.47552833 -1.4901161e-008 0 0.50000006
		 0.15450849 0 0.4755283 0.29389262 0 0.40450853 0.4045085 0 0.29389265 0.47552827 0 0.1545085
		 0.5 0 0 0.4988026 0.1545085 -0.16207078 0.42430684 0.1545085 -0.30827695 0.30827695 0.1545085 -0.42430681
		 0.16207077 0.1545085 -0.49880254 0 0.1545085 -0.524472 -0.16207077 0.1545085 -0.49880251
		 -0.30827689 0.1545085 -0.42430672 -0.42430669 0.1545085 -0.30827686 -0.49880242 0.1545085 -0.16207072
		 -0.52447188 0.1545085 0 -0.49880242 0.1545085 0.16207072 -0.42430666 0.1545085 0.30827683
		 -0.30827683 0.1545085 0.42430663 -0.16207072 0.1545085 0.49880236 -1.5630476e-008 0.1545085 0.52447182
		 0.16207068 0.1545085 0.49880233 0.30827677 0.1545085 0.4243066 0.42430657 0.1545085 0.3082768
		 0.4988023 0.1545085 0.16207069 0.52447176 0.1545085 0 0.56634647 0.29389265 -0.18401711
		 0.48176309 0.29389265 -0.35002133 0.35002133 0.29389265 -0.48176306 0.18401709 0.29389265 -0.56634641
		 0 0.29389265 -0.59549183 -0.18401709 0.29389265 -0.56634635 -0.35002127 0.29389265 -0.48176295
		 -0.48176292 0.29389265 -0.35002124 -0.56634623 0.29389265 -0.18401705 -0.59549165 0.29389265 0
		 -0.56634623 0.29389265 0.18401705 -0.48176289 0.29389265 0.35002121 -0.35002121 0.29389265 0.48176286
		 -0.18401705 0.29389265 0.56634617 -1.7747031e-008 0.29389265 0.59549159 0.18401699 0.29389265 0.56634617
		 0.35002112 0.29389265 0.4817628 0.48176277 0.29389265 0.35002118 0.56634611 0.29389265 0.184017
		 0.59549153 0.29389265 0 0.67154849 0.40450853 -0.21819931 0.57125324 0.40450853 -0.41503975
		 0.41503975 0.40450853 -0.57125324 0.2181993 0.40450853 -0.67154837 0 0.40450853 -0.70610774
		 -0.2181993 0.40450853 -0.67154831 -0.41503966 0.40450853 -0.57125306 -0.57125306 0.40450853 -0.41503963
		 -0.67154819 0.40450853 -0.21819922 -0.70610756 0.40450853 0 -0.67154819 0.40450853 0.21819922
		 -0.571253 0.40450853 0.41503957 -0.41503957 0.40450853 0.57125294 -0.21819922 0.40450853 0.67154813
		 -2.104364e-008 0.40450853 0.70610744 0.21819916 0.40450853 0.67154807 0.41503951 0.40450853 0.57125294
		 0.57125288 0.40450853 0.41503954 0.67154807 0.40450853 0.21819918 0.70610738 0.40450853 0
		 0.80411077 0.4755283 -0.26127142 0.68401748 0.4755283 -0.49696773 0.49696773 0.4755283 -0.68401742
		 0.26127139 0.4755283 -0.80411065 0 0.4755283 -0.84549195 -0.26127139 0.4755283 -0.80411059
		 -0.49696764 0.4755283 -0.6840173 -0.68401724 0.4755283 -0.49696758 -0.80411047 0.4755283 -0.2612713
		 -0.84549171 0.4755283 0 -0.80411047 0.4755283 0.2612713 -0.68401718 0.4755283 0.49696755
		 -0.49696755 0.4755283 0.68401712 -0.2612713 0.4755283 0.80411035 -2.5197611e-008 0.4755283 0.84549165
		 0.26127124 0.4755283 0.80411029 0.49696743 0.4755283 0.68401706 0.684017 0.4755283 0.49696749
		 0.80411023 0.4755283 0.26127127 0.84549153 0.4755283 0 0.95105714 0.50000006 -0.30901718
		 0.80901754 0.50000006 -0.5877856 0.5877856 0.50000006 -0.80901748 0.30901715 0.50000006 -0.95105702
		 0 0.50000006 -1.000000476837 -0.30901715 0.50000006 -0.95105696 -0.58778548 0.50000006 -0.8090173
		 -0.80901724 0.50000006 -0.58778542 -0.95105678 0.50000006 -0.30901706 -1.000000238419 0.50000006 0
		 -0.95105678 0.50000006 0.30901706 -0.80901718 0.50000006 0.58778536 -0.58778536 0.50000006 0.80901712
		 -0.30901706 0.50000006 0.95105666 -2.9802322e-008 0.50000006 1.000000119209 0.30901697 0.50000006 0.9510566
		 0.58778524 0.50000006 0.80901706 0.809017 0.50000006 0.5877853 0.95105654 0.50000006 0.309017
		 1 0.50000006 0 1.098003626 0.47552833 -0.35676301 0.93401772 0.47552833 -0.67860353
		 0.67860353 0.47552833 -0.93401766 0.35676295 0.47552833 -1.098003507 0 0.47552833 -1.15450919
		 -0.35676295 0.47552833 -1.098003387 -0.67860341 0.47552833 -0.93401742 -0.93401736 0.47552833 -0.67860329
		 -1.098003268 0.47552833 -0.35676286 -1.15450883 0.47552833 0 -1.098003268 0.47552833 0.35676286
		 -0.9340173 0.47552833 0.67860323 -0.67860323 0.47552833 0.93401724 -0.35676286 0.47552833 1.09800303
		 -3.4407037e-008 0.47552833 1.15450871 0.35676274 0.47552833 1.09800303 0.67860311 0.47552833 0.93401712
		 0.93401706 0.47552833 0.67860317 1.098002911 0.47552833 0.3567628 1.15450859 0.47552833 0
		 1.23056579 0.40450856 -0.39983505 1.046781778 0.40450856 -0.76053143 0.76053143 0.40450856 -1.046781778
		 0.39983502 0.40450856 -1.23056567 0 0.40450856 -1.29389322 -0.39983502 0.40450856 -1.23056555
		 -0.76053131 0.40450856 -1.04678154 -1.046781421 0.40450856 -0.76053125 -1.23056531 0.40450856 -0.3998349
		 -1.29389298 0.40450856 0 -1.23056531 0.40450856 0.3998349 -1.046781421 0.40450856 0.76053113
		 -0.76053113 0.40450856 1.046781301 -0.3998349 0.40450856 1.23056519 -3.8561005e-008 0.40450856 1.29389274
		 0.39983478 0.40450856 1.23056507 0.76053101 0.40450856 1.046781182 1.046781182 0.40450856 0.76053107
		 1.23056507 0.40450856 0.39983481 1.29389262 0.40450856 0 1.33576787 0.29389268 -0.4340173
		 1.13627207 0.29389268 -0.8255499 0.8255499 0.29389268 -1.13627195 0.43401724 0.29389268 -1.33576775
		 0 0.29389268 -1.40450931 -0.43401724 0.29389268 -1.33576763;
	setAttr ".vt[166:331]" -0.82554978 0.29389268 -1.13627172 -1.13627172 0.29389268 -0.82554966
		 -1.33576739 0.29389268 -0.43401712 -1.40450895 0.29389268 0 -1.33576739 0.29389268 0.43401712
		 -1.1362716 0.29389268 0.8255496 -0.8255496 0.29389268 1.13627148 -0.43401712 0.29389268 1.33576727
		 -4.1857618e-008 0.29389268 1.40450871 0.434017 0.29389268 1.33576715 0.82554942 0.29389268 1.13627136
		 1.13627136 0.29389268 0.82554948 1.33576703 0.29389268 0.43401703 1.40450859 0.29389268 0
		 1.40331173 0.15450853 -0.45596361 1.19372833 0.15450853 -0.86729431 0.86729431 0.15450853 -1.19372821
		 0.45596358 0.15450853 -1.40331161 0 0.15450853 -1.47552907 -0.45596358 0.15450853 -1.40331149
		 -0.86729413 0.15450853 -1.19372797 -1.19372785 0.15450853 -0.86729407 -1.40331125 0.15450853 -0.45596343
		 -1.47552872 0.15450853 0 -1.40331125 0.15450853 0.45596343 -1.19372785 0.15450853 0.86729395
		 -0.86729395 0.15450853 1.19372773 -0.45596343 0.15450853 1.40331101 -4.3974172e-008 0.15450853 1.47552848
		 0.45596331 0.15450853 1.40331101 0.86729378 0.15450853 1.19372761 1.19372749 0.15450853 0.86729389
		 1.40331089 0.15450853 0.45596334 1.47552836 0.15450853 0 1.42658579 0 -0.4635258
		 1.21352637 0 -0.88167846 0.88167846 0 -1.21352637 0.46352577 0 -1.42658567 0 0 -1.50000083
		 -0.46352577 0 -1.42658556 -0.88167828 0 -1.21352601 -1.21352601 0 -0.88167822 -1.42658532 0 -0.46352562
		 -1.50000048 0 0 -1.42658532 0 0.46352562 -1.21352589 0 0.8816781 -0.8816781 0 1.21352577
		 -0.46352562 0 1.42658508 -4.4703487e-008 0 1.50000036 0.4635255 0 1.42658496 0.88167793 0 1.21352565
		 1.21352565 0 0.88167804 1.42658496 0 0.46352553 1.50000012 0 0 1.40331173 -0.15450853 -0.45596361
		 1.19372833 -0.15450853 -0.86729431 0.86729431 -0.15450853 -1.19372821 0.45596358 -0.15450853 -1.40331161
		 0 -0.15450853 -1.47552907 -0.45596358 -0.15450853 -1.40331149 -0.86729413 -0.15450853 -1.19372797
		 -1.19372785 -0.15450853 -0.86729407 -1.40331125 -0.15450853 -0.45596343 -1.47552872 -0.15450853 0
		 -1.40331125 -0.15450853 0.45596343 -1.19372785 -0.15450853 0.86729395 -0.86729395 -0.15450853 1.19372773
		 -0.45596343 -0.15450853 1.40331101 -4.3974172e-008 -0.15450853 1.47552848 0.45596331 -0.15450853 1.40331101
		 0.86729378 -0.15450853 1.19372761 1.19372749 -0.15450853 0.86729389 1.40331089 -0.15450853 0.45596334
		 1.47552836 -0.15450853 0 1.33576787 -0.29389271 -0.4340173 1.13627207 -0.29389271 -0.8255499
		 0.8255499 -0.29389271 -1.13627195 0.43401724 -0.29389271 -1.33576775 0 -0.29389271 -1.40450931
		 -0.43401724 -0.29389271 -1.33576763 -0.82554978 -0.29389271 -1.13627172 -1.13627172 -0.29389271 -0.82554966
		 -1.33576739 -0.29389271 -0.43401712 -1.40450895 -0.29389271 0 -1.33576739 -0.29389271 0.43401712
		 -1.1362716 -0.29389271 0.8255496 -0.8255496 -0.29389271 1.13627148 -0.43401712 -0.29389271 1.33576727
		 -4.1857618e-008 -0.29389271 1.40450871 0.434017 -0.29389271 1.33576715 0.82554942 -0.29389271 1.13627136
		 1.13627136 -0.29389271 0.82554948 1.33576703 -0.29389271 0.43401703 1.40450859 -0.29389271 0
		 1.23056591 -0.40450865 -0.39983508 1.046781898 -0.40450865 -0.76053154 0.76053154 -0.40450865 -1.046781898
		 0.39983505 -0.40450865 -1.23056579 0 -0.40450865 -1.29389334 -0.39983505 -0.40450865 -1.23056567
		 -0.76053137 -0.40450865 -1.046781659 -1.04678154 -0.40450865 -0.76053131 -1.23056543 -0.40450865 -0.39983493
		 -1.2938931 -0.40450865 0 -1.23056543 -0.40450865 0.39983493 -1.046781421 -0.40450865 0.76053119
		 -0.76053119 -0.40450865 1.046781421 -0.39983493 -0.40450865 1.23056531 -3.8561009e-008 -0.40450865 1.29389286
		 0.39983481 -0.40450865 1.23056519 0.76053107 -0.40450865 1.046781301 1.046781182 -0.40450865 0.76053113
		 1.23056519 -0.40450865 0.39983487 1.29389274 -0.40450865 0 1.098003626 -0.47552848 -0.35676301
		 0.93401772 -0.47552848 -0.67860353 0.67860353 -0.47552848 -0.93401766 0.35676295 -0.47552848 -1.098003507
		 0 -0.47552848 -1.15450919 -0.35676295 -0.47552848 -1.098003387 -0.67860341 -0.47552848 -0.93401742
		 -0.93401736 -0.47552848 -0.67860329 -1.098003268 -0.47552848 -0.35676286 -1.15450883 -0.47552848 0
		 -1.098003268 -0.47552848 0.35676286 -0.9340173 -0.47552848 0.67860323 -0.67860323 -0.47552848 0.93401724
		 -0.35676286 -0.47552848 1.09800303 -3.4407037e-008 -0.47552848 1.15450871 0.35676274 -0.47552848 1.09800303
		 0.67860311 -0.47552848 0.93401712 0.93401706 -0.47552848 0.67860317 1.098002911 -0.47552848 0.3567628
		 1.15450859 -0.47552848 0 0.95105714 -0.50000024 -0.30901718 0.80901754 -0.50000024 -0.5877856
		 0.5877856 -0.50000024 -0.80901748 0.30901715 -0.50000024 -0.95105702 0 -0.50000024 -1.000000476837
		 -0.30901715 -0.50000024 -0.95105696 -0.58778548 -0.50000024 -0.8090173 -0.80901724 -0.50000024 -0.58778542
		 -0.95105678 -0.50000024 -0.30901706 -1.000000238419 -0.50000024 0 -0.95105678 -0.50000024 0.30901706
		 -0.80901718 -0.50000024 0.58778536 -0.58778536 -0.50000024 0.80901712 -0.30901706 -0.50000024 0.95105666
		 -2.9802322e-008 -0.50000024 1.000000119209 0.30901697 -0.50000024 0.9510566 0.58778524 -0.50000024 0.80901706
		 0.809017 -0.50000024 0.5877853 0.95105654 -0.50000024 0.309017 1 -0.50000024 0 0.80411065 -0.47552851 -0.26127136
		 0.68401736 -0.47552851 -0.49696767 0.49696767 -0.47552851 -0.6840173 0.26127136 -0.47552851 -0.80411053
		 0 -0.47552851 -0.84549183 -0.26127136 -0.47552851 -0.80411047 -0.49696758 -0.47552851 -0.68401718
		 -0.68401712 -0.47552851 -0.49696752 -0.80411035 -0.47552851 -0.26127127 -0.84549159 -0.47552851 0
		 -0.80411035 -0.47552851 0.26127127 -0.68401706 -0.47552851 0.49696746;
	setAttr ".vt[332:399]" -0.49696746 -0.47552851 0.684017 -0.26127127 -0.47552851 0.80411023
		 -2.5197608e-008 -0.47552851 0.84549153 0.26127121 -0.47552851 0.80411017 0.49696738 -0.47552851 0.684017
		 0.68401694 -0.47552851 0.49696743 0.80411011 -0.47552851 0.26127121 0.84549141 -0.47552851 0
		 0.67154831 -0.40450874 -0.21819925 0.57125312 -0.40450874 -0.41503966 0.41503966 -0.40450874 -0.57125306
		 0.21819924 -0.40450874 -0.67154819 0 -0.40450874 -0.70610756 -0.21819924 -0.40450874 -0.67154819
		 -0.41503957 -0.40450874 -0.57125294 -0.57125288 -0.40450874 -0.41503951 -0.67154801 -0.40450874 -0.21819918
		 -0.70610738 -0.40450874 0 -0.67154801 -0.40450874 0.21819918 -0.57125288 -0.40450874 0.41503948
		 -0.41503948 -0.40450874 0.57125282 -0.21819918 -0.40450874 0.67154795 -2.1043634e-008 -0.40450874 0.70610726
		 0.2181991 -0.40450874 0.67154789 0.41503939 -0.40450874 0.57125276 0.5712527 -0.40450874 0.41503942
		 0.67154789 -0.40450874 0.21819913 0.7061072 -0.40450874 0 0.56634617 -0.2938928 -0.18401702
		 0.48176286 -0.2938928 -0.35002118 0.35002118 -0.2938928 -0.48176283 0.184017 -0.2938928 -0.56634611
		 0 -0.2938928 -0.59549153 -0.184017 -0.2938928 -0.56634605 -0.35002109 -0.2938928 -0.48176271
		 -0.48176268 -0.2938928 -0.35002106 -0.56634599 -0.2938928 -0.18401696 -0.59549135 -0.2938928 0
		 -0.56634599 -0.2938928 0.18401696 -0.48176265 -0.2938928 0.35002103 -0.35002103 -0.2938928 0.48176259
		 -0.18401696 -0.2938928 0.56634587 -1.7747022e-008 -0.2938928 0.59549129 0.1840169 -0.2938928 0.56634587
		 0.35002095 -0.2938928 0.48176256 0.48176253 -0.2938928 0.350021 0.56634581 -0.2938928 0.18401691
		 0.59549123 -0.2938928 0 0.49880227 -0.15450859 -0.16207068 0.42430657 -0.15450859 -0.30827674
		 0.30827674 -0.15450859 -0.42430654 0.16207066 -0.15450859 -0.49880221 0 -0.15450859 -0.52447164
		 -0.16207066 -0.15450859 -0.49880219 -0.30827668 -0.15450859 -0.42430645 -0.42430639 -0.15450859 -0.30827665
		 -0.4988021 -0.15450859 -0.16207062 -0.52447152 -0.15450859 0 -0.4988021 -0.15450859 0.16207062
		 -0.42430636 -0.15450859 0.30827662 -0.30827662 -0.15450859 0.42430633 -0.16207062 -0.15450859 0.49880201
		 -1.5630466e-008 -0.15450859 0.52447146 0.16207057 -0.15450859 0.49880198 0.30827656 -0.15450859 0.4243063
		 0.42430627 -0.15450859 0.30827659 0.49880195 -0.15450859 0.16207059 0.5244714 -0.15450859 0;
	setAttr -s 800 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 380 381 1 381 382 1 382 383 1
		 383 384 1 384 385 1 385 386 1 386 387 1 387 388 1 388 389 1 389 390 1 390 391 1 391 392 1
		 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1 397 398 1 398 399 1 399 380 1 0 20 1
		 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1
		 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1
		 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1
		 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1
		 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1
		 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1
		 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1
		 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1;
	setAttr ".ed[498:663]" 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1
		 104 124 1 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1
		 113 133 1 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1
		 122 142 1 123 143 1 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1
		 131 151 1 132 152 1 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1
		 140 160 1 141 161 1 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1
		 149 169 1 150 170 1 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1
		 158 178 1 159 179 1 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1
		 167 187 1 168 188 1 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1
		 176 196 1 177 197 1 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1
		 185 205 1 186 206 1 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1
		 194 214 1 195 215 1 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1
		 203 223 1 204 224 1 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1
		 212 232 1 213 233 1 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1
		 221 241 1 222 242 1 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1
		 230 250 1 231 251 1 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1
		 239 259 1 240 260 1 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1
		 248 268 1 249 269 1 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1
		 257 277 1 258 278 1 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1;
	setAttr ".ed[664:799]" 264 284 1 265 285 1 266 286 1 267 287 1 268 288 1 269 289 1
		 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1 277 297 1 278 298 1
		 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1 284 304 1 285 305 1 286 306 1 287 307 1
		 288 308 1 289 309 1 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1
		 297 317 1 298 318 1 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1
		 306 326 1 307 327 1 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1
		 315 335 1 316 336 1 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1
		 324 344 1 325 345 1 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1
		 333 353 1 334 354 1 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1
		 342 362 1 343 363 1 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1
		 351 371 1 352 372 1 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1
		 360 380 1 361 381 1 362 382 1 363 383 1 364 384 1 365 385 1 366 386 1 367 387 1 368 388 1
		 369 389 1 370 390 1 371 391 1 372 392 1 373 393 1 374 394 1 375 395 1 376 396 1 377 397 1
		 378 398 1 379 399 1 380 0 1 381 1 1 382 2 1 383 3 1 384 4 1 385 5 1 386 6 1 387 7 1
		 388 8 1 389 9 1 390 10 1 391 11 1 392 12 1 393 13 1 394 14 1 395 15 1 396 16 1 397 17 1
		 398 18 1 399 19 1;
	setAttr -s 400 -ch 1600 ".fc[0:399]" -type "polyFaces" 
		f 4 -1 400 20 -402
		mu 0 4 1 0 21 22
		f 4 -2 401 21 -403
		mu 0 4 2 1 22 23
		f 4 -3 402 22 -404
		mu 0 4 3 2 23 24
		f 4 -4 403 23 -405
		mu 0 4 4 3 24 25
		f 4 -5 404 24 -406
		mu 0 4 5 4 25 26
		f 4 -6 405 25 -407
		mu 0 4 6 5 26 27
		f 4 -7 406 26 -408
		mu 0 4 7 6 27 28
		f 4 -8 407 27 -409
		mu 0 4 8 7 28 29
		f 4 -9 408 28 -410
		mu 0 4 9 8 29 30
		f 4 -10 409 29 -411
		mu 0 4 10 9 30 31
		f 4 -11 410 30 -412
		mu 0 4 11 10 31 32
		f 4 -12 411 31 -413
		mu 0 4 12 11 32 33
		f 4 -13 412 32 -414
		mu 0 4 13 12 33 34
		f 4 -14 413 33 -415
		mu 0 4 14 13 34 35
		f 4 -15 414 34 -416
		mu 0 4 15 14 35 36
		f 4 -16 415 35 -417
		mu 0 4 16 15 36 37
		f 4 -17 416 36 -418
		mu 0 4 17 16 37 38
		f 4 -18 417 37 -419
		mu 0 4 18 17 38 39
		f 4 -19 418 38 -420
		mu 0 4 19 18 39 40
		f 4 -20 419 39 -401
		mu 0 4 20 19 40 41
		f 4 -21 420 40 -422
		mu 0 4 22 21 42 43
		f 4 -22 421 41 -423
		mu 0 4 23 22 43 44
		f 4 -23 422 42 -424
		mu 0 4 24 23 44 45
		f 4 -24 423 43 -425
		mu 0 4 25 24 45 46
		f 4 -25 424 44 -426
		mu 0 4 26 25 46 47
		f 4 -26 425 45 -427
		mu 0 4 27 26 47 48
		f 4 -27 426 46 -428
		mu 0 4 28 27 48 49
		f 4 -28 427 47 -429
		mu 0 4 29 28 49 50
		f 4 -29 428 48 -430
		mu 0 4 30 29 50 51
		f 4 -30 429 49 -431
		mu 0 4 31 30 51 52
		f 4 -31 430 50 -432
		mu 0 4 32 31 52 53
		f 4 -32 431 51 -433
		mu 0 4 33 32 53 54
		f 4 -33 432 52 -434
		mu 0 4 34 33 54 55
		f 4 -34 433 53 -435
		mu 0 4 35 34 55 56
		f 4 -35 434 54 -436
		mu 0 4 36 35 56 57
		f 4 -36 435 55 -437
		mu 0 4 37 36 57 58
		f 4 -37 436 56 -438
		mu 0 4 38 37 58 59
		f 4 -38 437 57 -439
		mu 0 4 39 38 59 60
		f 4 -39 438 58 -440
		mu 0 4 40 39 60 61
		f 4 -40 439 59 -421
		mu 0 4 41 40 61 62
		f 4 -41 440 60 -442
		mu 0 4 43 42 63 64
		f 4 -42 441 61 -443
		mu 0 4 44 43 64 65
		f 4 -43 442 62 -444
		mu 0 4 45 44 65 66
		f 4 -44 443 63 -445
		mu 0 4 46 45 66 67
		f 4 -45 444 64 -446
		mu 0 4 47 46 67 68
		f 4 -46 445 65 -447
		mu 0 4 48 47 68 69
		f 4 -47 446 66 -448
		mu 0 4 49 48 69 70
		f 4 -48 447 67 -449
		mu 0 4 50 49 70 71
		f 4 -49 448 68 -450
		mu 0 4 51 50 71 72
		f 4 -50 449 69 -451
		mu 0 4 52 51 72 73
		f 4 -51 450 70 -452
		mu 0 4 53 52 73 74
		f 4 -52 451 71 -453
		mu 0 4 54 53 74 75
		f 4 -53 452 72 -454
		mu 0 4 55 54 75 76
		f 4 -54 453 73 -455
		mu 0 4 56 55 76 77
		f 4 -55 454 74 -456
		mu 0 4 57 56 77 78
		f 4 -56 455 75 -457
		mu 0 4 58 57 78 79
		f 4 -57 456 76 -458
		mu 0 4 59 58 79 80
		f 4 -58 457 77 -459
		mu 0 4 60 59 80 81
		f 4 -59 458 78 -460
		mu 0 4 61 60 81 82
		f 4 -60 459 79 -441
		mu 0 4 62 61 82 83
		f 4 -61 460 80 -462
		mu 0 4 64 63 84 85
		f 4 -62 461 81 -463
		mu 0 4 65 64 85 86
		f 4 -63 462 82 -464
		mu 0 4 66 65 86 87
		f 4 -64 463 83 -465
		mu 0 4 67 66 87 88
		f 4 -65 464 84 -466
		mu 0 4 68 67 88 89
		f 4 -66 465 85 -467
		mu 0 4 69 68 89 90
		f 4 -67 466 86 -468
		mu 0 4 70 69 90 91
		f 4 -68 467 87 -469
		mu 0 4 71 70 91 92
		f 4 -69 468 88 -470
		mu 0 4 72 71 92 93
		f 4 -70 469 89 -471
		mu 0 4 73 72 93 94
		f 4 -71 470 90 -472
		mu 0 4 74 73 94 95
		f 4 -72 471 91 -473
		mu 0 4 75 74 95 96
		f 4 -73 472 92 -474
		mu 0 4 76 75 96 97
		f 4 -74 473 93 -475
		mu 0 4 77 76 97 98
		f 4 -75 474 94 -476
		mu 0 4 78 77 98 99
		f 4 -76 475 95 -477
		mu 0 4 79 78 99 100
		f 4 -77 476 96 -478
		mu 0 4 80 79 100 101
		f 4 -78 477 97 -479
		mu 0 4 81 80 101 102
		f 4 -79 478 98 -480
		mu 0 4 82 81 102 103
		f 4 -80 479 99 -461
		mu 0 4 83 82 103 104
		f 4 -81 480 100 -482
		mu 0 4 85 84 105 106
		f 4 -82 481 101 -483
		mu 0 4 86 85 106 107
		f 4 -83 482 102 -484
		mu 0 4 87 86 107 108
		f 4 -84 483 103 -485
		mu 0 4 88 87 108 109
		f 4 -85 484 104 -486
		mu 0 4 89 88 109 110
		f 4 -86 485 105 -487
		mu 0 4 90 89 110 111
		f 4 -87 486 106 -488
		mu 0 4 91 90 111 112
		f 4 -88 487 107 -489
		mu 0 4 92 91 112 113
		f 4 -89 488 108 -490
		mu 0 4 93 92 113 114
		f 4 -90 489 109 -491
		mu 0 4 94 93 114 115
		f 4 -91 490 110 -492
		mu 0 4 95 94 115 116
		f 4 -92 491 111 -493
		mu 0 4 96 95 116 117
		f 4 -93 492 112 -494
		mu 0 4 97 96 117 118
		f 4 -94 493 113 -495
		mu 0 4 98 97 118 119
		f 4 -95 494 114 -496
		mu 0 4 99 98 119 120
		f 4 -96 495 115 -497
		mu 0 4 100 99 120 121
		f 4 -97 496 116 -498
		mu 0 4 101 100 121 122
		f 4 -98 497 117 -499
		mu 0 4 102 101 122 123
		f 4 -99 498 118 -500
		mu 0 4 103 102 123 124
		f 4 -100 499 119 -481
		mu 0 4 104 103 124 125
		f 4 -101 500 120 -502
		mu 0 4 106 105 126 127
		f 4 -102 501 121 -503
		mu 0 4 107 106 127 128
		f 4 -103 502 122 -504
		mu 0 4 108 107 128 129
		f 4 -104 503 123 -505
		mu 0 4 109 108 129 130
		f 4 -105 504 124 -506
		mu 0 4 110 109 130 131
		f 4 -106 505 125 -507
		mu 0 4 111 110 131 132
		f 4 -107 506 126 -508
		mu 0 4 112 111 132 133
		f 4 -108 507 127 -509
		mu 0 4 113 112 133 134
		f 4 -109 508 128 -510
		mu 0 4 114 113 134 135
		f 4 -110 509 129 -511
		mu 0 4 115 114 135 136
		f 4 -111 510 130 -512
		mu 0 4 116 115 136 137
		f 4 -112 511 131 -513
		mu 0 4 117 116 137 138
		f 4 -113 512 132 -514
		mu 0 4 118 117 138 139
		f 4 -114 513 133 -515
		mu 0 4 119 118 139 140
		f 4 -115 514 134 -516
		mu 0 4 120 119 140 141
		f 4 -116 515 135 -517
		mu 0 4 121 120 141 142
		f 4 -117 516 136 -518
		mu 0 4 122 121 142 143
		f 4 -118 517 137 -519
		mu 0 4 123 122 143 144
		f 4 -119 518 138 -520
		mu 0 4 124 123 144 145
		f 4 -120 519 139 -501
		mu 0 4 125 124 145 146
		f 4 -121 520 140 -522
		mu 0 4 127 126 147 148
		f 4 -122 521 141 -523
		mu 0 4 128 127 148 149
		f 4 -123 522 142 -524
		mu 0 4 129 128 149 150
		f 4 -124 523 143 -525
		mu 0 4 130 129 150 151
		f 4 -125 524 144 -526
		mu 0 4 131 130 151 152
		f 4 -126 525 145 -527
		mu 0 4 132 131 152 153
		f 4 -127 526 146 -528
		mu 0 4 133 132 153 154
		f 4 -128 527 147 -529
		mu 0 4 134 133 154 155
		f 4 -129 528 148 -530
		mu 0 4 135 134 155 156
		f 4 -130 529 149 -531
		mu 0 4 136 135 156 157
		f 4 -131 530 150 -532
		mu 0 4 137 136 157 158
		f 4 -132 531 151 -533
		mu 0 4 138 137 158 159
		f 4 -133 532 152 -534
		mu 0 4 139 138 159 160
		f 4 -134 533 153 -535
		mu 0 4 140 139 160 161
		f 4 -135 534 154 -536
		mu 0 4 141 140 161 162
		f 4 -136 535 155 -537
		mu 0 4 142 141 162 163
		f 4 -137 536 156 -538
		mu 0 4 143 142 163 164
		f 4 -138 537 157 -539
		mu 0 4 144 143 164 165
		f 4 -139 538 158 -540
		mu 0 4 145 144 165 166
		f 4 -140 539 159 -521
		mu 0 4 146 145 166 167
		f 4 -141 540 160 -542
		mu 0 4 148 147 168 169
		f 4 -142 541 161 -543
		mu 0 4 149 148 169 170
		f 4 -143 542 162 -544
		mu 0 4 150 149 170 171
		f 4 -144 543 163 -545
		mu 0 4 151 150 171 172
		f 4 -145 544 164 -546
		mu 0 4 152 151 172 173
		f 4 -146 545 165 -547
		mu 0 4 153 152 173 174
		f 4 -147 546 166 -548
		mu 0 4 154 153 174 175
		f 4 -148 547 167 -549
		mu 0 4 155 154 175 176
		f 4 -149 548 168 -550
		mu 0 4 156 155 176 177
		f 4 -150 549 169 -551
		mu 0 4 157 156 177 178
		f 4 -151 550 170 -552
		mu 0 4 158 157 178 179
		f 4 -152 551 171 -553
		mu 0 4 159 158 179 180
		f 4 -153 552 172 -554
		mu 0 4 160 159 180 181
		f 4 -154 553 173 -555
		mu 0 4 161 160 181 182
		f 4 -155 554 174 -556
		mu 0 4 162 161 182 183
		f 4 -156 555 175 -557
		mu 0 4 163 162 183 184
		f 4 -157 556 176 -558
		mu 0 4 164 163 184 185
		f 4 -158 557 177 -559
		mu 0 4 165 164 185 186
		f 4 -159 558 178 -560
		mu 0 4 166 165 186 187
		f 4 -160 559 179 -541
		mu 0 4 167 166 187 188
		f 4 -161 560 180 -562
		mu 0 4 169 168 189 190
		f 4 -162 561 181 -563
		mu 0 4 170 169 190 191
		f 4 -163 562 182 -564
		mu 0 4 171 170 191 192
		f 4 -164 563 183 -565
		mu 0 4 172 171 192 193
		f 4 -165 564 184 -566
		mu 0 4 173 172 193 194
		f 4 -166 565 185 -567
		mu 0 4 174 173 194 195
		f 4 -167 566 186 -568
		mu 0 4 175 174 195 196
		f 4 -168 567 187 -569
		mu 0 4 176 175 196 197
		f 4 -169 568 188 -570
		mu 0 4 177 176 197 198
		f 4 -170 569 189 -571
		mu 0 4 178 177 198 199
		f 4 -171 570 190 -572
		mu 0 4 179 178 199 200
		f 4 -172 571 191 -573
		mu 0 4 180 179 200 201
		f 4 -173 572 192 -574
		mu 0 4 181 180 201 202
		f 4 -174 573 193 -575
		mu 0 4 182 181 202 203
		f 4 -175 574 194 -576
		mu 0 4 183 182 203 204
		f 4 -176 575 195 -577
		mu 0 4 184 183 204 205
		f 4 -177 576 196 -578
		mu 0 4 185 184 205 206
		f 4 -178 577 197 -579
		mu 0 4 186 185 206 207
		f 4 -179 578 198 -580
		mu 0 4 187 186 207 208
		f 4 -180 579 199 -561
		mu 0 4 188 187 208 209
		f 4 -181 580 200 -582
		mu 0 4 190 189 210 211
		f 4 -182 581 201 -583
		mu 0 4 191 190 211 212
		f 4 -183 582 202 -584
		mu 0 4 192 191 212 213
		f 4 -184 583 203 -585
		mu 0 4 193 192 213 214
		f 4 -185 584 204 -586
		mu 0 4 194 193 214 215
		f 4 -186 585 205 -587
		mu 0 4 195 194 215 216
		f 4 -187 586 206 -588
		mu 0 4 196 195 216 217
		f 4 -188 587 207 -589
		mu 0 4 197 196 217 218
		f 4 -189 588 208 -590
		mu 0 4 198 197 218 219
		f 4 -190 589 209 -591
		mu 0 4 199 198 219 220
		f 4 -191 590 210 -592
		mu 0 4 200 199 220 221
		f 4 -192 591 211 -593
		mu 0 4 201 200 221 222
		f 4 -193 592 212 -594
		mu 0 4 202 201 222 223
		f 4 -194 593 213 -595
		mu 0 4 203 202 223 224
		f 4 -195 594 214 -596
		mu 0 4 204 203 224 225
		f 4 -196 595 215 -597
		mu 0 4 205 204 225 226
		f 4 -197 596 216 -598
		mu 0 4 206 205 226 227
		f 4 -198 597 217 -599
		mu 0 4 207 206 227 228
		f 4 -199 598 218 -600
		mu 0 4 208 207 228 229
		f 4 -200 599 219 -581
		mu 0 4 209 208 229 230
		f 4 -201 600 220 -602
		mu 0 4 211 210 231 232
		f 4 -202 601 221 -603
		mu 0 4 212 211 232 233
		f 4 -203 602 222 -604
		mu 0 4 213 212 233 234
		f 4 -204 603 223 -605
		mu 0 4 214 213 234 235
		f 4 -205 604 224 -606
		mu 0 4 215 214 235 236
		f 4 -206 605 225 -607
		mu 0 4 216 215 236 237
		f 4 -207 606 226 -608
		mu 0 4 217 216 237 238
		f 4 -208 607 227 -609
		mu 0 4 218 217 238 239
		f 4 -209 608 228 -610
		mu 0 4 219 218 239 240
		f 4 -210 609 229 -611
		mu 0 4 220 219 240 241
		f 4 -211 610 230 -612
		mu 0 4 221 220 241 242
		f 4 -212 611 231 -613
		mu 0 4 222 221 242 243
		f 4 -213 612 232 -614
		mu 0 4 223 222 243 244
		f 4 -214 613 233 -615
		mu 0 4 224 223 244 245
		f 4 -215 614 234 -616
		mu 0 4 225 224 245 246
		f 4 -216 615 235 -617
		mu 0 4 226 225 246 247
		f 4 -217 616 236 -618
		mu 0 4 227 226 247 248
		f 4 -218 617 237 -619
		mu 0 4 228 227 248 249
		f 4 -219 618 238 -620
		mu 0 4 229 228 249 250
		f 4 -220 619 239 -601
		mu 0 4 230 229 250 251
		f 4 -221 620 240 -622
		mu 0 4 232 231 252 253
		f 4 -222 621 241 -623
		mu 0 4 233 232 253 254
		f 4 -223 622 242 -624
		mu 0 4 234 233 254 255
		f 4 -224 623 243 -625
		mu 0 4 235 234 255 256
		f 4 -225 624 244 -626
		mu 0 4 236 235 256 257
		f 4 -226 625 245 -627
		mu 0 4 237 236 257 258
		f 4 -227 626 246 -628
		mu 0 4 238 237 258 259
		f 4 -228 627 247 -629
		mu 0 4 239 238 259 260
		f 4 -229 628 248 -630
		mu 0 4 240 239 260 261
		f 4 -230 629 249 -631
		mu 0 4 241 240 261 262
		f 4 -231 630 250 -632
		mu 0 4 242 241 262 263
		f 4 -232 631 251 -633
		mu 0 4 243 242 263 264
		f 4 -233 632 252 -634
		mu 0 4 244 243 264 265
		f 4 -234 633 253 -635
		mu 0 4 245 244 265 266
		f 4 -235 634 254 -636
		mu 0 4 246 245 266 267
		f 4 -236 635 255 -637
		mu 0 4 247 246 267 268
		f 4 -237 636 256 -638
		mu 0 4 248 247 268 269
		f 4 -238 637 257 -639
		mu 0 4 249 248 269 270
		f 4 -239 638 258 -640
		mu 0 4 250 249 270 271
		f 4 -240 639 259 -621
		mu 0 4 251 250 271 272
		f 4 -241 640 260 -642
		mu 0 4 253 252 273 274
		f 4 -242 641 261 -643
		mu 0 4 254 253 274 275
		f 4 -243 642 262 -644
		mu 0 4 255 254 275 276
		f 4 -244 643 263 -645
		mu 0 4 256 255 276 277
		f 4 -245 644 264 -646
		mu 0 4 257 256 277 278
		f 4 -246 645 265 -647
		mu 0 4 258 257 278 279
		f 4 -247 646 266 -648
		mu 0 4 259 258 279 280
		f 4 -248 647 267 -649
		mu 0 4 260 259 280 281
		f 4 -249 648 268 -650
		mu 0 4 261 260 281 282
		f 4 -250 649 269 -651
		mu 0 4 262 261 282 283
		f 4 -251 650 270 -652
		mu 0 4 263 262 283 284
		f 4 -252 651 271 -653
		mu 0 4 264 263 284 285
		f 4 -253 652 272 -654
		mu 0 4 265 264 285 286
		f 4 -254 653 273 -655
		mu 0 4 266 265 286 287
		f 4 -255 654 274 -656
		mu 0 4 267 266 287 288
		f 4 -256 655 275 -657
		mu 0 4 268 267 288 289
		f 4 -257 656 276 -658
		mu 0 4 269 268 289 290
		f 4 -258 657 277 -659
		mu 0 4 270 269 290 291
		f 4 -259 658 278 -660
		mu 0 4 271 270 291 292
		f 4 -260 659 279 -641
		mu 0 4 272 271 292 293
		f 4 -261 660 280 -662
		mu 0 4 274 273 294 295
		f 4 -262 661 281 -663
		mu 0 4 275 274 295 296
		f 4 -263 662 282 -664
		mu 0 4 276 275 296 297
		f 4 -264 663 283 -665
		mu 0 4 277 276 297 298
		f 4 -265 664 284 -666
		mu 0 4 278 277 298 299
		f 4 -266 665 285 -667
		mu 0 4 279 278 299 300
		f 4 -267 666 286 -668
		mu 0 4 280 279 300 301
		f 4 -268 667 287 -669
		mu 0 4 281 280 301 302
		f 4 -269 668 288 -670
		mu 0 4 282 281 302 303
		f 4 -270 669 289 -671
		mu 0 4 283 282 303 304
		f 4 -271 670 290 -672
		mu 0 4 284 283 304 305
		f 4 -272 671 291 -673
		mu 0 4 285 284 305 306
		f 4 -273 672 292 -674
		mu 0 4 286 285 306 307
		f 4 -274 673 293 -675
		mu 0 4 287 286 307 308
		f 4 -275 674 294 -676
		mu 0 4 288 287 308 309
		f 4 -276 675 295 -677
		mu 0 4 289 288 309 310
		f 4 -277 676 296 -678
		mu 0 4 290 289 310 311
		f 4 -278 677 297 -679
		mu 0 4 291 290 311 312
		f 4 -279 678 298 -680
		mu 0 4 292 291 312 313
		f 4 -280 679 299 -661
		mu 0 4 293 292 313 314
		f 4 -281 680 300 -682
		mu 0 4 295 294 315 316
		f 4 -282 681 301 -683
		mu 0 4 296 295 316 317
		f 4 -283 682 302 -684
		mu 0 4 297 296 317 318
		f 4 -284 683 303 -685
		mu 0 4 298 297 318 319
		f 4 -285 684 304 -686
		mu 0 4 299 298 319 320
		f 4 -286 685 305 -687
		mu 0 4 300 299 320 321
		f 4 -287 686 306 -688
		mu 0 4 301 300 321 322
		f 4 -288 687 307 -689
		mu 0 4 302 301 322 323
		f 4 -289 688 308 -690
		mu 0 4 303 302 323 324
		f 4 -290 689 309 -691
		mu 0 4 304 303 324 325
		f 4 -291 690 310 -692
		mu 0 4 305 304 325 326
		f 4 -292 691 311 -693
		mu 0 4 306 305 326 327
		f 4 -293 692 312 -694
		mu 0 4 307 306 327 328
		f 4 -294 693 313 -695
		mu 0 4 308 307 328 329
		f 4 -295 694 314 -696
		mu 0 4 309 308 329 330
		f 4 -296 695 315 -697
		mu 0 4 310 309 330 331
		f 4 -297 696 316 -698
		mu 0 4 311 310 331 332
		f 4 -298 697 317 -699
		mu 0 4 312 311 332 333
		f 4 -299 698 318 -700
		mu 0 4 313 312 333 334
		f 4 -300 699 319 -681
		mu 0 4 314 313 334 335
		f 4 -301 700 320 -702
		mu 0 4 316 315 336 337
		f 4 -302 701 321 -703
		mu 0 4 317 316 337 338
		f 4 -303 702 322 -704
		mu 0 4 318 317 338 339
		f 4 -304 703 323 -705
		mu 0 4 319 318 339 340
		f 4 -305 704 324 -706
		mu 0 4 320 319 340 341
		f 4 -306 705 325 -707
		mu 0 4 321 320 341 342
		f 4 -307 706 326 -708
		mu 0 4 322 321 342 343
		f 4 -308 707 327 -709
		mu 0 4 323 322 343 344
		f 4 -309 708 328 -710
		mu 0 4 324 323 344 345
		f 4 -310 709 329 -711
		mu 0 4 325 324 345 346
		f 4 -311 710 330 -712
		mu 0 4 326 325 346 347
		f 4 -312 711 331 -713
		mu 0 4 327 326 347 348
		f 4 -313 712 332 -714
		mu 0 4 328 327 348 349
		f 4 -314 713 333 -715
		mu 0 4 329 328 349 350
		f 4 -315 714 334 -716
		mu 0 4 330 329 350 351
		f 4 -316 715 335 -717
		mu 0 4 331 330 351 352
		f 4 -317 716 336 -718
		mu 0 4 332 331 352 353
		f 4 -318 717 337 -719
		mu 0 4 333 332 353 354
		f 4 -319 718 338 -720
		mu 0 4 334 333 354 355
		f 4 -320 719 339 -701
		mu 0 4 335 334 355 356
		f 4 -321 720 340 -722
		mu 0 4 337 336 357 358
		f 4 -322 721 341 -723
		mu 0 4 338 337 358 359
		f 4 -323 722 342 -724
		mu 0 4 339 338 359 360
		f 4 -324 723 343 -725
		mu 0 4 340 339 360 361
		f 4 -325 724 344 -726
		mu 0 4 341 340 361 362
		f 4 -326 725 345 -727
		mu 0 4 342 341 362 363
		f 4 -327 726 346 -728
		mu 0 4 343 342 363 364
		f 4 -328 727 347 -729
		mu 0 4 344 343 364 365
		f 4 -329 728 348 -730
		mu 0 4 345 344 365 366
		f 4 -330 729 349 -731
		mu 0 4 346 345 366 367
		f 4 -331 730 350 -732
		mu 0 4 347 346 367 368
		f 4 -332 731 351 -733
		mu 0 4 348 347 368 369
		f 4 -333 732 352 -734
		mu 0 4 349 348 369 370
		f 4 -334 733 353 -735
		mu 0 4 350 349 370 371
		f 4 -335 734 354 -736
		mu 0 4 351 350 371 372
		f 4 -336 735 355 -737
		mu 0 4 352 351 372 373
		f 4 -337 736 356 -738
		mu 0 4 353 352 373 374
		f 4 -338 737 357 -739
		mu 0 4 354 353 374 375
		f 4 -339 738 358 -740
		mu 0 4 355 354 375 376
		f 4 -340 739 359 -721
		mu 0 4 356 355 376 377
		f 4 -341 740 360 -742
		mu 0 4 358 357 378 379
		f 4 -342 741 361 -743
		mu 0 4 359 358 379 380
		f 4 -343 742 362 -744
		mu 0 4 360 359 380 381
		f 4 -344 743 363 -745
		mu 0 4 361 360 381 382
		f 4 -345 744 364 -746
		mu 0 4 362 361 382 383
		f 4 -346 745 365 -747
		mu 0 4 363 362 383 384
		f 4 -347 746 366 -748
		mu 0 4 364 363 384 385
		f 4 -348 747 367 -749
		mu 0 4 365 364 385 386
		f 4 -349 748 368 -750
		mu 0 4 366 365 386 387
		f 4 -350 749 369 -751
		mu 0 4 367 366 387 388
		f 4 -351 750 370 -752
		mu 0 4 368 367 388 389
		f 4 -352 751 371 -753
		mu 0 4 369 368 389 390
		f 4 -353 752 372 -754
		mu 0 4 370 369 390 391
		f 4 -354 753 373 -755
		mu 0 4 371 370 391 392
		f 4 -355 754 374 -756
		mu 0 4 372 371 392 393
		f 4 -356 755 375 -757
		mu 0 4 373 372 393 394
		f 4 -357 756 376 -758
		mu 0 4 374 373 394 395
		f 4 -358 757 377 -759
		mu 0 4 375 374 395 396
		f 4 -359 758 378 -760
		mu 0 4 376 375 396 397
		f 4 -360 759 379 -741
		mu 0 4 377 376 397 398
		f 4 -361 760 380 -762
		mu 0 4 379 378 399 400
		f 4 -362 761 381 -763
		mu 0 4 380 379 400 401
		f 4 -363 762 382 -764
		mu 0 4 381 380 401 402
		f 4 -364 763 383 -765
		mu 0 4 382 381 402 403
		f 4 -365 764 384 -766
		mu 0 4 383 382 403 404
		f 4 -366 765 385 -767
		mu 0 4 384 383 404 405
		f 4 -367 766 386 -768
		mu 0 4 385 384 405 406
		f 4 -368 767 387 -769
		mu 0 4 386 385 406 407
		f 4 -369 768 388 -770
		mu 0 4 387 386 407 408
		f 4 -370 769 389 -771
		mu 0 4 388 387 408 409
		f 4 -371 770 390 -772
		mu 0 4 389 388 409 410
		f 4 -372 771 391 -773
		mu 0 4 390 389 410 411
		f 4 -373 772 392 -774
		mu 0 4 391 390 411 412
		f 4 -374 773 393 -775
		mu 0 4 392 391 412 413
		f 4 -375 774 394 -776
		mu 0 4 393 392 413 414
		f 4 -376 775 395 -777
		mu 0 4 394 393 414 415
		f 4 -377 776 396 -778
		mu 0 4 395 394 415 416
		f 4 -378 777 397 -779
		mu 0 4 396 395 416 417
		f 4 -379 778 398 -780
		mu 0 4 397 396 417 418
		f 4 -380 779 399 -761
		mu 0 4 398 397 418 419
		f 4 -381 780 0 -782
		mu 0 4 400 399 420 421
		f 4 -382 781 1 -783
		mu 0 4 401 400 421 422
		f 4 -383 782 2 -784
		mu 0 4 402 401 422 423
		f 4 -384 783 3 -785
		mu 0 4 403 402 423 424
		f 4 -385 784 4 -786
		mu 0 4 404 403 424 425
		f 4 -386 785 5 -787
		mu 0 4 405 404 425 426
		f 4 -387 786 6 -788
		mu 0 4 406 405 426 427
		f 4 -388 787 7 -789
		mu 0 4 407 406 427 428
		f 4 -389 788 8 -790
		mu 0 4 408 407 428 429
		f 4 -390 789 9 -791
		mu 0 4 409 408 429 430
		f 4 -391 790 10 -792
		mu 0 4 410 409 430 431
		f 4 -392 791 11 -793
		mu 0 4 411 410 431 432
		f 4 -393 792 12 -794
		mu 0 4 412 411 432 433
		f 4 -394 793 13 -795
		mu 0 4 413 412 433 434
		f 4 -395 794 14 -796
		mu 0 4 414 413 434 435
		f 4 -396 795 15 -797
		mu 0 4 415 414 435 436
		f 4 -397 796 16 -798
		mu 0 4 416 415 436 437
		f 4 -398 797 17 -799
		mu 0 4 417 416 437 438
		f 4 -399 798 18 -800
		mu 0 4 418 417 438 439
		f 4 -400 799 19 -781
		mu 0 4 419 418 439 440;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pTorus3" -p "group6";
	setAttr ".t" -type "double3" -5.8255066044252093 7.1183274726755119 -4.7115386384517386 ;
	setAttr ".s" -type "double3" 1.2477510341629621 0.34335002743296011 1.2477510341629621 ;
createNode mesh -n "pTorusShape3" -p "pTorus3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 441 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 1 0.050000001 1 0.1 1 0.15000001
		 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006 1 0.55000007
		 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014 1 0.90000015
		 1 0.95000017 1 1.000000119209 1 0 0.94999999 0.050000001 0.94999999 0.1 0.94999999
		 0.15000001 0.94999999 0.2 0.94999999 0.25 0.94999999 0.30000001 0.94999999 0.35000002
		 0.94999999 0.40000004 0.94999999 0.45000005 0.94999999 0.50000006 0.94999999 0.55000007
		 0.94999999 0.60000008 0.94999999 0.6500001 0.94999999 0.70000011 0.94999999 0.75000012
		 0.94999999 0.80000013 0.94999999 0.85000014 0.94999999 0.90000015 0.94999999 0.95000017
		 0.94999999 1.000000119209 0.94999999 0 0.89999998 0.050000001 0.89999998 0.1 0.89999998
		 0.15000001 0.89999998 0.2 0.89999998 0.25 0.89999998 0.30000001 0.89999998 0.35000002
		 0.89999998 0.40000004 0.89999998 0.45000005 0.89999998 0.50000006 0.89999998 0.55000007
		 0.89999998 0.60000008 0.89999998 0.6500001 0.89999998 0.70000011 0.89999998 0.75000012
		 0.89999998 0.80000013 0.89999998 0.85000014 0.89999998 0.90000015 0.89999998 0.95000017
		 0.89999998 1.000000119209 0.89999998 0 0.84999996 0.050000001 0.84999996 0.1 0.84999996
		 0.15000001 0.84999996 0.2 0.84999996 0.25 0.84999996 0.30000001 0.84999996 0.35000002
		 0.84999996 0.40000004 0.84999996 0.45000005 0.84999996 0.50000006 0.84999996 0.55000007
		 0.84999996 0.60000008 0.84999996 0.6500001 0.84999996 0.70000011 0.84999996 0.75000012
		 0.84999996 0.80000013 0.84999996 0.85000014 0.84999996 0.90000015 0.84999996 0.95000017
		 0.84999996 1.000000119209 0.84999996 0 0.79999995 0.050000001 0.79999995 0.1 0.79999995
		 0.15000001 0.79999995 0.2 0.79999995 0.25 0.79999995 0.30000001 0.79999995 0.35000002
		 0.79999995 0.40000004 0.79999995 0.45000005 0.79999995 0.50000006 0.79999995 0.55000007
		 0.79999995 0.60000008 0.79999995 0.6500001 0.79999995 0.70000011 0.79999995 0.75000012
		 0.79999995 0.80000013 0.79999995 0.85000014 0.79999995 0.90000015 0.79999995 0.95000017
		 0.79999995 1.000000119209 0.79999995 0 0.74999994 0.050000001 0.74999994 0.1 0.74999994
		 0.15000001 0.74999994 0.2 0.74999994 0.25 0.74999994 0.30000001 0.74999994 0.35000002
		 0.74999994 0.40000004 0.74999994 0.45000005 0.74999994 0.50000006 0.74999994 0.55000007
		 0.74999994 0.60000008 0.74999994 0.6500001 0.74999994 0.70000011 0.74999994 0.75000012
		 0.74999994 0.80000013 0.74999994 0.85000014 0.74999994 0.90000015 0.74999994 0.95000017
		 0.74999994 1.000000119209 0.74999994 0 0.69999993 0.050000001 0.69999993 0.1 0.69999993
		 0.15000001 0.69999993 0.2 0.69999993 0.25 0.69999993 0.30000001 0.69999993 0.35000002
		 0.69999993 0.40000004 0.69999993 0.45000005 0.69999993 0.50000006 0.69999993 0.55000007
		 0.69999993 0.60000008 0.69999993 0.6500001 0.69999993 0.70000011 0.69999993 0.75000012
		 0.69999993 0.80000013 0.69999993 0.85000014 0.69999993 0.90000015 0.69999993 0.95000017
		 0.69999993 1.000000119209 0.69999993 0 0.64999992 0.050000001 0.64999992 0.1 0.64999992
		 0.15000001 0.64999992 0.2 0.64999992 0.25 0.64999992 0.30000001 0.64999992 0.35000002
		 0.64999992 0.40000004 0.64999992 0.45000005 0.64999992 0.50000006 0.64999992 0.55000007
		 0.64999992 0.60000008 0.64999992 0.6500001 0.64999992 0.70000011 0.64999992 0.75000012
		 0.64999992 0.80000013 0.64999992 0.85000014 0.64999992 0.90000015 0.64999992 0.95000017
		 0.64999992 1.000000119209 0.64999992 0 0.5999999 0.050000001 0.5999999 0.1 0.5999999
		 0.15000001 0.5999999 0.2 0.5999999 0.25 0.5999999 0.30000001 0.5999999 0.35000002
		 0.5999999 0.40000004 0.5999999 0.45000005 0.5999999 0.50000006 0.5999999 0.55000007
		 0.5999999 0.60000008 0.5999999 0.6500001 0.5999999 0.70000011 0.5999999 0.75000012
		 0.5999999 0.80000013 0.5999999 0.85000014 0.5999999 0.90000015 0.5999999 0.95000017
		 0.5999999 1.000000119209 0.5999999 0 0.54999989 0.050000001 0.54999989 0.1 0.54999989
		 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989 0.30000001 0.54999989 0.35000002
		 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989 0.50000006 0.54999989 0.55000007
		 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989 0.70000011 0.54999989 0.75000012
		 0.54999989 0.80000013 0.54999989 0.85000014 0.54999989 0.90000015 0.54999989 0.95000017
		 0.54999989 1.000000119209 0.54999989 0 0.49999988 0.050000001 0.49999988 0.1 0.49999988
		 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988 0.30000001 0.49999988 0.35000002
		 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988 0.50000006 0.49999988 0.55000007
		 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988 0.70000011 0.49999988 0.75000012
		 0.49999988 0.80000013 0.49999988 0.85000014 0.49999988 0.90000015 0.49999988 0.95000017
		 0.49999988 1.000000119209 0.49999988 0 0.44999987 0.050000001 0.44999987 0.1 0.44999987
		 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987 0.30000001 0.44999987 0.35000002
		 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987 0.50000006 0.44999987 0.55000007
		 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987 0.70000011 0.44999987 0.75000012
		 0.44999987 0.80000013 0.44999987 0.85000014 0.44999987 0.90000015 0.44999987;
	setAttr ".uvst[0].uvsp[250:440]" 0.95000017 0.44999987 1.000000119209 0.44999987
		 0 0.39999986 0.050000001 0.39999986 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986
		 0.25 0.39999986 0.30000001 0.39999986 0.35000002 0.39999986 0.40000004 0.39999986
		 0.45000005 0.39999986 0.50000006 0.39999986 0.55000007 0.39999986 0.60000008 0.39999986
		 0.6500001 0.39999986 0.70000011 0.39999986 0.75000012 0.39999986 0.80000013 0.39999986
		 0.85000014 0.39999986 0.90000015 0.39999986 0.95000017 0.39999986 1.000000119209
		 0.39999986 0 0.34999985 0.050000001 0.34999985 0.1 0.34999985 0.15000001 0.34999985
		 0.2 0.34999985 0.25 0.34999985 0.30000001 0.34999985 0.35000002 0.34999985 0.40000004
		 0.34999985 0.45000005 0.34999985 0.50000006 0.34999985 0.55000007 0.34999985 0.60000008
		 0.34999985 0.6500001 0.34999985 0.70000011 0.34999985 0.75000012 0.34999985 0.80000013
		 0.34999985 0.85000014 0.34999985 0.90000015 0.34999985 0.95000017 0.34999985 1.000000119209
		 0.34999985 0 0.29999983 0.050000001 0.29999983 0.1 0.29999983 0.15000001 0.29999983
		 0.2 0.29999983 0.25 0.29999983 0.30000001 0.29999983 0.35000002 0.29999983 0.40000004
		 0.29999983 0.45000005 0.29999983 0.50000006 0.29999983 0.55000007 0.29999983 0.60000008
		 0.29999983 0.6500001 0.29999983 0.70000011 0.29999983 0.75000012 0.29999983 0.80000013
		 0.29999983 0.85000014 0.29999983 0.90000015 0.29999983 0.95000017 0.29999983 1.000000119209
		 0.29999983 0 0.24999984 0.050000001 0.24999984 0.1 0.24999984 0.15000001 0.24999984
		 0.2 0.24999984 0.25 0.24999984 0.30000001 0.24999984 0.35000002 0.24999984 0.40000004
		 0.24999984 0.45000005 0.24999984 0.50000006 0.24999984 0.55000007 0.24999984 0.60000008
		 0.24999984 0.6500001 0.24999984 0.70000011 0.24999984 0.75000012 0.24999984 0.80000013
		 0.24999984 0.85000014 0.24999984 0.90000015 0.24999984 0.95000017 0.24999984 1.000000119209
		 0.24999984 0 0.19999984 0.050000001 0.19999984 0.1 0.19999984 0.15000001 0.19999984
		 0.2 0.19999984 0.25 0.19999984 0.30000001 0.19999984 0.35000002 0.19999984 0.40000004
		 0.19999984 0.45000005 0.19999984 0.50000006 0.19999984 0.55000007 0.19999984 0.60000008
		 0.19999984 0.6500001 0.19999984 0.70000011 0.19999984 0.75000012 0.19999984 0.80000013
		 0.19999984 0.85000014 0.19999984 0.90000015 0.19999984 0.95000017 0.19999984 1.000000119209
		 0.19999984 0 0.14999984 0.050000001 0.14999984 0.1 0.14999984 0.15000001 0.14999984
		 0.2 0.14999984 0.25 0.14999984 0.30000001 0.14999984 0.35000002 0.14999984 0.40000004
		 0.14999984 0.45000005 0.14999984 0.50000006 0.14999984 0.55000007 0.14999984 0.60000008
		 0.14999984 0.6500001 0.14999984 0.70000011 0.14999984 0.75000012 0.14999984 0.80000013
		 0.14999984 0.85000014 0.14999984 0.90000015 0.14999984 0.95000017 0.14999984 1.000000119209
		 0.14999984 0 0.099999845 0.050000001 0.099999845 0.1 0.099999845 0.15000001 0.099999845
		 0.2 0.099999845 0.25 0.099999845 0.30000001 0.099999845 0.35000002 0.099999845 0.40000004
		 0.099999845 0.45000005 0.099999845 0.50000006 0.099999845 0.55000007 0.099999845
		 0.60000008 0.099999845 0.6500001 0.099999845 0.70000011 0.099999845 0.75000012 0.099999845
		 0.80000013 0.099999845 0.85000014 0.099999845 0.90000015 0.099999845 0.95000017 0.099999845
		 1.000000119209 0.099999845 0 0.049999844 0.050000001 0.049999844 0.1 0.049999844
		 0.15000001 0.049999844 0.2 0.049999844 0.25 0.049999844 0.30000001 0.049999844 0.35000002
		 0.049999844 0.40000004 0.049999844 0.45000005 0.049999844 0.50000006 0.049999844
		 0.55000007 0.049999844 0.60000008 0.049999844 0.6500001 0.049999844 0.70000011 0.049999844
		 0.75000012 0.049999844 0.80000013 0.049999844 0.85000014 0.049999844 0.90000015 0.049999844
		 0.95000017 0.049999844 1.000000119209 0.049999844 0 -1.5646219e-007 0.050000001 -1.5646219e-007
		 0.1 -1.5646219e-007 0.15000001 -1.5646219e-007 0.2 -1.5646219e-007 0.25 -1.5646219e-007
		 0.30000001 -1.5646219e-007 0.35000002 -1.5646219e-007 0.40000004 -1.5646219e-007
		 0.45000005 -1.5646219e-007 0.50000006 -1.5646219e-007 0.55000007 -1.5646219e-007
		 0.60000008 -1.5646219e-007 0.6500001 -1.5646219e-007 0.70000011 -1.5646219e-007 0.75000012
		 -1.5646219e-007 0.80000013 -1.5646219e-007 0.85000014 -1.5646219e-007 0.90000015
		 -1.5646219e-007 0.95000017 -1.5646219e-007 1.000000119209 -1.5646219e-007;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 400 ".vt";
	setAttr ".vt[0:165]"  0.47552857 0 -0.15450859 0.40450877 0 -0.2938928 0.2938928 0 -0.40450874
		 0.15450858 0 -0.47552851 0 0 -0.50000024 -0.15450858 0 -0.47552848 -0.29389274 0 -0.40450865
		 -0.40450862 0 -0.29389271 -0.47552839 0 -0.15450853 -0.50000012 0 0 -0.47552839 0 0.15450853
		 -0.40450859 0 0.29389268 -0.29389268 0 0.40450856 -0.15450853 0 0.47552833 -1.4901161e-008 0 0.50000006
		 0.15450849 0 0.4755283 0.29389262 0 0.40450853 0.4045085 0 0.29389265 0.47552827 0 0.1545085
		 0.5 0 0 0.4988026 0.1545085 -0.16207078 0.42430684 0.1545085 -0.30827695 0.30827695 0.1545085 -0.42430681
		 0.16207077 0.1545085 -0.49880254 0 0.1545085 -0.524472 -0.16207077 0.1545085 -0.49880251
		 -0.30827689 0.1545085 -0.42430672 -0.42430669 0.1545085 -0.30827686 -0.49880242 0.1545085 -0.16207072
		 -0.52447188 0.1545085 0 -0.49880242 0.1545085 0.16207072 -0.42430666 0.1545085 0.30827683
		 -0.30827683 0.1545085 0.42430663 -0.16207072 0.1545085 0.49880236 -1.5630476e-008 0.1545085 0.52447182
		 0.16207068 0.1545085 0.49880233 0.30827677 0.1545085 0.4243066 0.42430657 0.1545085 0.3082768
		 0.4988023 0.1545085 0.16207069 0.52447176 0.1545085 0 0.56634647 0.29389265 -0.18401711
		 0.48176309 0.29389265 -0.35002133 0.35002133 0.29389265 -0.48176306 0.18401709 0.29389265 -0.56634641
		 0 0.29389265 -0.59549183 -0.18401709 0.29389265 -0.56634635 -0.35002127 0.29389265 -0.48176295
		 -0.48176292 0.29389265 -0.35002124 -0.56634623 0.29389265 -0.18401705 -0.59549165 0.29389265 0
		 -0.56634623 0.29389265 0.18401705 -0.48176289 0.29389265 0.35002121 -0.35002121 0.29389265 0.48176286
		 -0.18401705 0.29389265 0.56634617 -1.7747031e-008 0.29389265 0.59549159 0.18401699 0.29389265 0.56634617
		 0.35002112 0.29389265 0.4817628 0.48176277 0.29389265 0.35002118 0.56634611 0.29389265 0.184017
		 0.59549153 0.29389265 0 0.67154849 0.40450853 -0.21819931 0.57125324 0.40450853 -0.41503975
		 0.41503975 0.40450853 -0.57125324 0.2181993 0.40450853 -0.67154837 0 0.40450853 -0.70610774
		 -0.2181993 0.40450853 -0.67154831 -0.41503966 0.40450853 -0.57125306 -0.57125306 0.40450853 -0.41503963
		 -0.67154819 0.40450853 -0.21819922 -0.70610756 0.40450853 0 -0.67154819 0.40450853 0.21819922
		 -0.571253 0.40450853 0.41503957 -0.41503957 0.40450853 0.57125294 -0.21819922 0.40450853 0.67154813
		 -2.104364e-008 0.40450853 0.70610744 0.21819916 0.40450853 0.67154807 0.41503951 0.40450853 0.57125294
		 0.57125288 0.40450853 0.41503954 0.67154807 0.40450853 0.21819918 0.70610738 0.40450853 0
		 0.80411077 0.4755283 -0.26127142 0.68401748 0.4755283 -0.49696773 0.49696773 0.4755283 -0.68401742
		 0.26127139 0.4755283 -0.80411065 0 0.4755283 -0.84549195 -0.26127139 0.4755283 -0.80411059
		 -0.49696764 0.4755283 -0.6840173 -0.68401724 0.4755283 -0.49696758 -0.80411047 0.4755283 -0.2612713
		 -0.84549171 0.4755283 0 -0.80411047 0.4755283 0.2612713 -0.68401718 0.4755283 0.49696755
		 -0.49696755 0.4755283 0.68401712 -0.2612713 0.4755283 0.80411035 -2.5197611e-008 0.4755283 0.84549165
		 0.26127124 0.4755283 0.80411029 0.49696743 0.4755283 0.68401706 0.684017 0.4755283 0.49696749
		 0.80411023 0.4755283 0.26127127 0.84549153 0.4755283 0 0.95105714 0.50000006 -0.30901718
		 0.80901754 0.50000006 -0.5877856 0.5877856 0.50000006 -0.80901748 0.30901715 0.50000006 -0.95105702
		 0 0.50000006 -1.000000476837 -0.30901715 0.50000006 -0.95105696 -0.58778548 0.50000006 -0.8090173
		 -0.80901724 0.50000006 -0.58778542 -0.95105678 0.50000006 -0.30901706 -1.000000238419 0.50000006 0
		 -0.95105678 0.50000006 0.30901706 -0.80901718 0.50000006 0.58778536 -0.58778536 0.50000006 0.80901712
		 -0.30901706 0.50000006 0.95105666 -2.9802322e-008 0.50000006 1.000000119209 0.30901697 0.50000006 0.9510566
		 0.58778524 0.50000006 0.80901706 0.809017 0.50000006 0.5877853 0.95105654 0.50000006 0.309017
		 1 0.50000006 0 1.098003626 0.47552833 -0.35676301 0.93401772 0.47552833 -0.67860353
		 0.67860353 0.47552833 -0.93401766 0.35676295 0.47552833 -1.098003507 0 0.47552833 -1.15450919
		 -0.35676295 0.47552833 -1.098003387 -0.67860341 0.47552833 -0.93401742 -0.93401736 0.47552833 -0.67860329
		 -1.098003268 0.47552833 -0.35676286 -1.15450883 0.47552833 0 -1.098003268 0.47552833 0.35676286
		 -0.9340173 0.47552833 0.67860323 -0.67860323 0.47552833 0.93401724 -0.35676286 0.47552833 1.09800303
		 -3.4407037e-008 0.47552833 1.15450871 0.35676274 0.47552833 1.09800303 0.67860311 0.47552833 0.93401712
		 0.93401706 0.47552833 0.67860317 1.098002911 0.47552833 0.3567628 1.15450859 0.47552833 0
		 1.23056579 0.40450856 -0.39983505 1.046781778 0.40450856 -0.76053143 0.76053143 0.40450856 -1.046781778
		 0.39983502 0.40450856 -1.23056567 0 0.40450856 -1.29389322 -0.39983502 0.40450856 -1.23056555
		 -0.76053131 0.40450856 -1.04678154 -1.046781421 0.40450856 -0.76053125 -1.23056531 0.40450856 -0.3998349
		 -1.29389298 0.40450856 0 -1.23056531 0.40450856 0.3998349 -1.046781421 0.40450856 0.76053113
		 -0.76053113 0.40450856 1.046781301 -0.3998349 0.40450856 1.23056519 -3.8561005e-008 0.40450856 1.29389274
		 0.39983478 0.40450856 1.23056507 0.76053101 0.40450856 1.046781182 1.046781182 0.40450856 0.76053107
		 1.23056507 0.40450856 0.39983481 1.29389262 0.40450856 0 1.33576787 0.29389268 -0.4340173
		 1.13627207 0.29389268 -0.8255499 0.8255499 0.29389268 -1.13627195 0.43401724 0.29389268 -1.33576775
		 0 0.29389268 -1.40450931 -0.43401724 0.29389268 -1.33576763;
	setAttr ".vt[166:331]" -0.82554978 0.29389268 -1.13627172 -1.13627172 0.29389268 -0.82554966
		 -1.33576739 0.29389268 -0.43401712 -1.40450895 0.29389268 0 -1.33576739 0.29389268 0.43401712
		 -1.1362716 0.29389268 0.8255496 -0.8255496 0.29389268 1.13627148 -0.43401712 0.29389268 1.33576727
		 -4.1857618e-008 0.29389268 1.40450871 0.434017 0.29389268 1.33576715 0.82554942 0.29389268 1.13627136
		 1.13627136 0.29389268 0.82554948 1.33576703 0.29389268 0.43401703 1.40450859 0.29389268 0
		 1.40331173 0.15450853 -0.45596361 1.19372833 0.15450853 -0.86729431 0.86729431 0.15450853 -1.19372821
		 0.45596358 0.15450853 -1.40331161 0 0.15450853 -1.47552907 -0.45596358 0.15450853 -1.40331149
		 -0.86729413 0.15450853 -1.19372797 -1.19372785 0.15450853 -0.86729407 -1.40331125 0.15450853 -0.45596343
		 -1.47552872 0.15450853 0 -1.40331125 0.15450853 0.45596343 -1.19372785 0.15450853 0.86729395
		 -0.86729395 0.15450853 1.19372773 -0.45596343 0.15450853 1.40331101 -4.3974172e-008 0.15450853 1.47552848
		 0.45596331 0.15450853 1.40331101 0.86729378 0.15450853 1.19372761 1.19372749 0.15450853 0.86729389
		 1.40331089 0.15450853 0.45596334 1.47552836 0.15450853 0 1.42658579 0 -0.4635258
		 1.21352637 0 -0.88167846 0.88167846 0 -1.21352637 0.46352577 0 -1.42658567 0 0 -1.50000083
		 -0.46352577 0 -1.42658556 -0.88167828 0 -1.21352601 -1.21352601 0 -0.88167822 -1.42658532 0 -0.46352562
		 -1.50000048 0 0 -1.42658532 0 0.46352562 -1.21352589 0 0.8816781 -0.8816781 0 1.21352577
		 -0.46352562 0 1.42658508 -4.4703487e-008 0 1.50000036 0.4635255 0 1.42658496 0.88167793 0 1.21352565
		 1.21352565 0 0.88167804 1.42658496 0 0.46352553 1.50000012 0 0 1.40331173 -0.15450853 -0.45596361
		 1.19372833 -0.15450853 -0.86729431 0.86729431 -0.15450853 -1.19372821 0.45596358 -0.15450853 -1.40331161
		 0 -0.15450853 -1.47552907 -0.45596358 -0.15450853 -1.40331149 -0.86729413 -0.15450853 -1.19372797
		 -1.19372785 -0.15450853 -0.86729407 -1.40331125 -0.15450853 -0.45596343 -1.47552872 -0.15450853 0
		 -1.40331125 -0.15450853 0.45596343 -1.19372785 -0.15450853 0.86729395 -0.86729395 -0.15450853 1.19372773
		 -0.45596343 -0.15450853 1.40331101 -4.3974172e-008 -0.15450853 1.47552848 0.45596331 -0.15450853 1.40331101
		 0.86729378 -0.15450853 1.19372761 1.19372749 -0.15450853 0.86729389 1.40331089 -0.15450853 0.45596334
		 1.47552836 -0.15450853 0 1.33576787 -0.29389271 -0.4340173 1.13627207 -0.29389271 -0.8255499
		 0.8255499 -0.29389271 -1.13627195 0.43401724 -0.29389271 -1.33576775 0 -0.29389271 -1.40450931
		 -0.43401724 -0.29389271 -1.33576763 -0.82554978 -0.29389271 -1.13627172 -1.13627172 -0.29389271 -0.82554966
		 -1.33576739 -0.29389271 -0.43401712 -1.40450895 -0.29389271 0 -1.33576739 -0.29389271 0.43401712
		 -1.1362716 -0.29389271 0.8255496 -0.8255496 -0.29389271 1.13627148 -0.43401712 -0.29389271 1.33576727
		 -4.1857618e-008 -0.29389271 1.40450871 0.434017 -0.29389271 1.33576715 0.82554942 -0.29389271 1.13627136
		 1.13627136 -0.29389271 0.82554948 1.33576703 -0.29389271 0.43401703 1.40450859 -0.29389271 0
		 1.23056591 -0.40450865 -0.39983508 1.046781898 -0.40450865 -0.76053154 0.76053154 -0.40450865 -1.046781898
		 0.39983505 -0.40450865 -1.23056579 0 -0.40450865 -1.29389334 -0.39983505 -0.40450865 -1.23056567
		 -0.76053137 -0.40450865 -1.046781659 -1.04678154 -0.40450865 -0.76053131 -1.23056543 -0.40450865 -0.39983493
		 -1.2938931 -0.40450865 0 -1.23056543 -0.40450865 0.39983493 -1.046781421 -0.40450865 0.76053119
		 -0.76053119 -0.40450865 1.046781421 -0.39983493 -0.40450865 1.23056531 -3.8561009e-008 -0.40450865 1.29389286
		 0.39983481 -0.40450865 1.23056519 0.76053107 -0.40450865 1.046781301 1.046781182 -0.40450865 0.76053113
		 1.23056519 -0.40450865 0.39983487 1.29389274 -0.40450865 0 1.098003626 -0.47552848 -0.35676301
		 0.93401772 -0.47552848 -0.67860353 0.67860353 -0.47552848 -0.93401766 0.35676295 -0.47552848 -1.098003507
		 0 -0.47552848 -1.15450919 -0.35676295 -0.47552848 -1.098003387 -0.67860341 -0.47552848 -0.93401742
		 -0.93401736 -0.47552848 -0.67860329 -1.098003268 -0.47552848 -0.35676286 -1.15450883 -0.47552848 0
		 -1.098003268 -0.47552848 0.35676286 -0.9340173 -0.47552848 0.67860323 -0.67860323 -0.47552848 0.93401724
		 -0.35676286 -0.47552848 1.09800303 -3.4407037e-008 -0.47552848 1.15450871 0.35676274 -0.47552848 1.09800303
		 0.67860311 -0.47552848 0.93401712 0.93401706 -0.47552848 0.67860317 1.098002911 -0.47552848 0.3567628
		 1.15450859 -0.47552848 0 0.95105714 -0.50000024 -0.30901718 0.80901754 -0.50000024 -0.5877856
		 0.5877856 -0.50000024 -0.80901748 0.30901715 -0.50000024 -0.95105702 0 -0.50000024 -1.000000476837
		 -0.30901715 -0.50000024 -0.95105696 -0.58778548 -0.50000024 -0.8090173 -0.80901724 -0.50000024 -0.58778542
		 -0.95105678 -0.50000024 -0.30901706 -1.000000238419 -0.50000024 0 -0.95105678 -0.50000024 0.30901706
		 -0.80901718 -0.50000024 0.58778536 -0.58778536 -0.50000024 0.80901712 -0.30901706 -0.50000024 0.95105666
		 -2.9802322e-008 -0.50000024 1.000000119209 0.30901697 -0.50000024 0.9510566 0.58778524 -0.50000024 0.80901706
		 0.809017 -0.50000024 0.5877853 0.95105654 -0.50000024 0.309017 1 -0.50000024 0 0.80411065 -0.47552851 -0.26127136
		 0.68401736 -0.47552851 -0.49696767 0.49696767 -0.47552851 -0.6840173 0.26127136 -0.47552851 -0.80411053
		 0 -0.47552851 -0.84549183 -0.26127136 -0.47552851 -0.80411047 -0.49696758 -0.47552851 -0.68401718
		 -0.68401712 -0.47552851 -0.49696752 -0.80411035 -0.47552851 -0.26127127 -0.84549159 -0.47552851 0
		 -0.80411035 -0.47552851 0.26127127 -0.68401706 -0.47552851 0.49696746;
	setAttr ".vt[332:399]" -0.49696746 -0.47552851 0.684017 -0.26127127 -0.47552851 0.80411023
		 -2.5197608e-008 -0.47552851 0.84549153 0.26127121 -0.47552851 0.80411017 0.49696738 -0.47552851 0.684017
		 0.68401694 -0.47552851 0.49696743 0.80411011 -0.47552851 0.26127121 0.84549141 -0.47552851 0
		 0.67154831 -0.40450874 -0.21819925 0.57125312 -0.40450874 -0.41503966 0.41503966 -0.40450874 -0.57125306
		 0.21819924 -0.40450874 -0.67154819 0 -0.40450874 -0.70610756 -0.21819924 -0.40450874 -0.67154819
		 -0.41503957 -0.40450874 -0.57125294 -0.57125288 -0.40450874 -0.41503951 -0.67154801 -0.40450874 -0.21819918
		 -0.70610738 -0.40450874 0 -0.67154801 -0.40450874 0.21819918 -0.57125288 -0.40450874 0.41503948
		 -0.41503948 -0.40450874 0.57125282 -0.21819918 -0.40450874 0.67154795 -2.1043634e-008 -0.40450874 0.70610726
		 0.2181991 -0.40450874 0.67154789 0.41503939 -0.40450874 0.57125276 0.5712527 -0.40450874 0.41503942
		 0.67154789 -0.40450874 0.21819913 0.7061072 -0.40450874 0 0.56634617 -0.2938928 -0.18401702
		 0.48176286 -0.2938928 -0.35002118 0.35002118 -0.2938928 -0.48176283 0.184017 -0.2938928 -0.56634611
		 0 -0.2938928 -0.59549153 -0.184017 -0.2938928 -0.56634605 -0.35002109 -0.2938928 -0.48176271
		 -0.48176268 -0.2938928 -0.35002106 -0.56634599 -0.2938928 -0.18401696 -0.59549135 -0.2938928 0
		 -0.56634599 -0.2938928 0.18401696 -0.48176265 -0.2938928 0.35002103 -0.35002103 -0.2938928 0.48176259
		 -0.18401696 -0.2938928 0.56634587 -1.7747022e-008 -0.2938928 0.59549129 0.1840169 -0.2938928 0.56634587
		 0.35002095 -0.2938928 0.48176256 0.48176253 -0.2938928 0.350021 0.56634581 -0.2938928 0.18401691
		 0.59549123 -0.2938928 0 0.49880227 -0.15450859 -0.16207068 0.42430657 -0.15450859 -0.30827674
		 0.30827674 -0.15450859 -0.42430654 0.16207066 -0.15450859 -0.49880221 0 -0.15450859 -0.52447164
		 -0.16207066 -0.15450859 -0.49880219 -0.30827668 -0.15450859 -0.42430645 -0.42430639 -0.15450859 -0.30827665
		 -0.4988021 -0.15450859 -0.16207062 -0.52447152 -0.15450859 0 -0.4988021 -0.15450859 0.16207062
		 -0.42430636 -0.15450859 0.30827662 -0.30827662 -0.15450859 0.42430633 -0.16207062 -0.15450859 0.49880201
		 -1.5630466e-008 -0.15450859 0.52447146 0.16207057 -0.15450859 0.49880198 0.30827656 -0.15450859 0.4243063
		 0.42430627 -0.15450859 0.30827659 0.49880195 -0.15450859 0.16207059 0.5244714 -0.15450859 0;
	setAttr -s 800 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 380 381 1 381 382 1 382 383 1
		 383 384 1 384 385 1 385 386 1 386 387 1 387 388 1 388 389 1 389 390 1 390 391 1 391 392 1
		 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1 397 398 1 398 399 1 399 380 1 0 20 1
		 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1
		 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1
		 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1
		 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1
		 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1
		 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1
		 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1
		 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1;
	setAttr ".ed[498:663]" 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1
		 104 124 1 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1
		 113 133 1 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1
		 122 142 1 123 143 1 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1
		 131 151 1 132 152 1 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1
		 140 160 1 141 161 1 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1
		 149 169 1 150 170 1 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1
		 158 178 1 159 179 1 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1
		 167 187 1 168 188 1 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1
		 176 196 1 177 197 1 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1
		 185 205 1 186 206 1 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1
		 194 214 1 195 215 1 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1
		 203 223 1 204 224 1 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1
		 212 232 1 213 233 1 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1
		 221 241 1 222 242 1 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1
		 230 250 1 231 251 1 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1
		 239 259 1 240 260 1 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1
		 248 268 1 249 269 1 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1
		 257 277 1 258 278 1 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1;
	setAttr ".ed[664:799]" 264 284 1 265 285 1 266 286 1 267 287 1 268 288 1 269 289 1
		 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1 277 297 1 278 298 1
		 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1 284 304 1 285 305 1 286 306 1 287 307 1
		 288 308 1 289 309 1 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1
		 297 317 1 298 318 1 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1
		 306 326 1 307 327 1 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1
		 315 335 1 316 336 1 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1
		 324 344 1 325 345 1 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1
		 333 353 1 334 354 1 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1
		 342 362 1 343 363 1 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1
		 351 371 1 352 372 1 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1
		 360 380 1 361 381 1 362 382 1 363 383 1 364 384 1 365 385 1 366 386 1 367 387 1 368 388 1
		 369 389 1 370 390 1 371 391 1 372 392 1 373 393 1 374 394 1 375 395 1 376 396 1 377 397 1
		 378 398 1 379 399 1 380 0 1 381 1 1 382 2 1 383 3 1 384 4 1 385 5 1 386 6 1 387 7 1
		 388 8 1 389 9 1 390 10 1 391 11 1 392 12 1 393 13 1 394 14 1 395 15 1 396 16 1 397 17 1
		 398 18 1 399 19 1;
	setAttr -s 400 -ch 1600 ".fc[0:399]" -type "polyFaces" 
		f 4 -1 400 20 -402
		mu 0 4 1 0 21 22
		f 4 -2 401 21 -403
		mu 0 4 2 1 22 23
		f 4 -3 402 22 -404
		mu 0 4 3 2 23 24
		f 4 -4 403 23 -405
		mu 0 4 4 3 24 25
		f 4 -5 404 24 -406
		mu 0 4 5 4 25 26
		f 4 -6 405 25 -407
		mu 0 4 6 5 26 27
		f 4 -7 406 26 -408
		mu 0 4 7 6 27 28
		f 4 -8 407 27 -409
		mu 0 4 8 7 28 29
		f 4 -9 408 28 -410
		mu 0 4 9 8 29 30
		f 4 -10 409 29 -411
		mu 0 4 10 9 30 31
		f 4 -11 410 30 -412
		mu 0 4 11 10 31 32
		f 4 -12 411 31 -413
		mu 0 4 12 11 32 33
		f 4 -13 412 32 -414
		mu 0 4 13 12 33 34
		f 4 -14 413 33 -415
		mu 0 4 14 13 34 35
		f 4 -15 414 34 -416
		mu 0 4 15 14 35 36
		f 4 -16 415 35 -417
		mu 0 4 16 15 36 37
		f 4 -17 416 36 -418
		mu 0 4 17 16 37 38
		f 4 -18 417 37 -419
		mu 0 4 18 17 38 39
		f 4 -19 418 38 -420
		mu 0 4 19 18 39 40
		f 4 -20 419 39 -401
		mu 0 4 20 19 40 41
		f 4 -21 420 40 -422
		mu 0 4 22 21 42 43
		f 4 -22 421 41 -423
		mu 0 4 23 22 43 44
		f 4 -23 422 42 -424
		mu 0 4 24 23 44 45
		f 4 -24 423 43 -425
		mu 0 4 25 24 45 46
		f 4 -25 424 44 -426
		mu 0 4 26 25 46 47
		f 4 -26 425 45 -427
		mu 0 4 27 26 47 48
		f 4 -27 426 46 -428
		mu 0 4 28 27 48 49
		f 4 -28 427 47 -429
		mu 0 4 29 28 49 50
		f 4 -29 428 48 -430
		mu 0 4 30 29 50 51
		f 4 -30 429 49 -431
		mu 0 4 31 30 51 52
		f 4 -31 430 50 -432
		mu 0 4 32 31 52 53
		f 4 -32 431 51 -433
		mu 0 4 33 32 53 54
		f 4 -33 432 52 -434
		mu 0 4 34 33 54 55
		f 4 -34 433 53 -435
		mu 0 4 35 34 55 56
		f 4 -35 434 54 -436
		mu 0 4 36 35 56 57
		f 4 -36 435 55 -437
		mu 0 4 37 36 57 58
		f 4 -37 436 56 -438
		mu 0 4 38 37 58 59
		f 4 -38 437 57 -439
		mu 0 4 39 38 59 60
		f 4 -39 438 58 -440
		mu 0 4 40 39 60 61
		f 4 -40 439 59 -421
		mu 0 4 41 40 61 62
		f 4 -41 440 60 -442
		mu 0 4 43 42 63 64
		f 4 -42 441 61 -443
		mu 0 4 44 43 64 65
		f 4 -43 442 62 -444
		mu 0 4 45 44 65 66
		f 4 -44 443 63 -445
		mu 0 4 46 45 66 67
		f 4 -45 444 64 -446
		mu 0 4 47 46 67 68
		f 4 -46 445 65 -447
		mu 0 4 48 47 68 69
		f 4 -47 446 66 -448
		mu 0 4 49 48 69 70
		f 4 -48 447 67 -449
		mu 0 4 50 49 70 71
		f 4 -49 448 68 -450
		mu 0 4 51 50 71 72
		f 4 -50 449 69 -451
		mu 0 4 52 51 72 73
		f 4 -51 450 70 -452
		mu 0 4 53 52 73 74
		f 4 -52 451 71 -453
		mu 0 4 54 53 74 75
		f 4 -53 452 72 -454
		mu 0 4 55 54 75 76
		f 4 -54 453 73 -455
		mu 0 4 56 55 76 77
		f 4 -55 454 74 -456
		mu 0 4 57 56 77 78
		f 4 -56 455 75 -457
		mu 0 4 58 57 78 79
		f 4 -57 456 76 -458
		mu 0 4 59 58 79 80
		f 4 -58 457 77 -459
		mu 0 4 60 59 80 81
		f 4 -59 458 78 -460
		mu 0 4 61 60 81 82
		f 4 -60 459 79 -441
		mu 0 4 62 61 82 83
		f 4 -61 460 80 -462
		mu 0 4 64 63 84 85
		f 4 -62 461 81 -463
		mu 0 4 65 64 85 86
		f 4 -63 462 82 -464
		mu 0 4 66 65 86 87
		f 4 -64 463 83 -465
		mu 0 4 67 66 87 88
		f 4 -65 464 84 -466
		mu 0 4 68 67 88 89
		f 4 -66 465 85 -467
		mu 0 4 69 68 89 90
		f 4 -67 466 86 -468
		mu 0 4 70 69 90 91
		f 4 -68 467 87 -469
		mu 0 4 71 70 91 92
		f 4 -69 468 88 -470
		mu 0 4 72 71 92 93
		f 4 -70 469 89 -471
		mu 0 4 73 72 93 94
		f 4 -71 470 90 -472
		mu 0 4 74 73 94 95
		f 4 -72 471 91 -473
		mu 0 4 75 74 95 96
		f 4 -73 472 92 -474
		mu 0 4 76 75 96 97
		f 4 -74 473 93 -475
		mu 0 4 77 76 97 98
		f 4 -75 474 94 -476
		mu 0 4 78 77 98 99
		f 4 -76 475 95 -477
		mu 0 4 79 78 99 100
		f 4 -77 476 96 -478
		mu 0 4 80 79 100 101
		f 4 -78 477 97 -479
		mu 0 4 81 80 101 102
		f 4 -79 478 98 -480
		mu 0 4 82 81 102 103
		f 4 -80 479 99 -461
		mu 0 4 83 82 103 104
		f 4 -81 480 100 -482
		mu 0 4 85 84 105 106
		f 4 -82 481 101 -483
		mu 0 4 86 85 106 107
		f 4 -83 482 102 -484
		mu 0 4 87 86 107 108
		f 4 -84 483 103 -485
		mu 0 4 88 87 108 109
		f 4 -85 484 104 -486
		mu 0 4 89 88 109 110
		f 4 -86 485 105 -487
		mu 0 4 90 89 110 111
		f 4 -87 486 106 -488
		mu 0 4 91 90 111 112
		f 4 -88 487 107 -489
		mu 0 4 92 91 112 113
		f 4 -89 488 108 -490
		mu 0 4 93 92 113 114
		f 4 -90 489 109 -491
		mu 0 4 94 93 114 115
		f 4 -91 490 110 -492
		mu 0 4 95 94 115 116
		f 4 -92 491 111 -493
		mu 0 4 96 95 116 117
		f 4 -93 492 112 -494
		mu 0 4 97 96 117 118
		f 4 -94 493 113 -495
		mu 0 4 98 97 118 119
		f 4 -95 494 114 -496
		mu 0 4 99 98 119 120
		f 4 -96 495 115 -497
		mu 0 4 100 99 120 121
		f 4 -97 496 116 -498
		mu 0 4 101 100 121 122
		f 4 -98 497 117 -499
		mu 0 4 102 101 122 123
		f 4 -99 498 118 -500
		mu 0 4 103 102 123 124
		f 4 -100 499 119 -481
		mu 0 4 104 103 124 125
		f 4 -101 500 120 -502
		mu 0 4 106 105 126 127
		f 4 -102 501 121 -503
		mu 0 4 107 106 127 128
		f 4 -103 502 122 -504
		mu 0 4 108 107 128 129
		f 4 -104 503 123 -505
		mu 0 4 109 108 129 130
		f 4 -105 504 124 -506
		mu 0 4 110 109 130 131
		f 4 -106 505 125 -507
		mu 0 4 111 110 131 132
		f 4 -107 506 126 -508
		mu 0 4 112 111 132 133
		f 4 -108 507 127 -509
		mu 0 4 113 112 133 134
		f 4 -109 508 128 -510
		mu 0 4 114 113 134 135
		f 4 -110 509 129 -511
		mu 0 4 115 114 135 136
		f 4 -111 510 130 -512
		mu 0 4 116 115 136 137
		f 4 -112 511 131 -513
		mu 0 4 117 116 137 138
		f 4 -113 512 132 -514
		mu 0 4 118 117 138 139
		f 4 -114 513 133 -515
		mu 0 4 119 118 139 140
		f 4 -115 514 134 -516
		mu 0 4 120 119 140 141
		f 4 -116 515 135 -517
		mu 0 4 121 120 141 142
		f 4 -117 516 136 -518
		mu 0 4 122 121 142 143
		f 4 -118 517 137 -519
		mu 0 4 123 122 143 144
		f 4 -119 518 138 -520
		mu 0 4 124 123 144 145
		f 4 -120 519 139 -501
		mu 0 4 125 124 145 146
		f 4 -121 520 140 -522
		mu 0 4 127 126 147 148
		f 4 -122 521 141 -523
		mu 0 4 128 127 148 149
		f 4 -123 522 142 -524
		mu 0 4 129 128 149 150
		f 4 -124 523 143 -525
		mu 0 4 130 129 150 151
		f 4 -125 524 144 -526
		mu 0 4 131 130 151 152
		f 4 -126 525 145 -527
		mu 0 4 132 131 152 153
		f 4 -127 526 146 -528
		mu 0 4 133 132 153 154
		f 4 -128 527 147 -529
		mu 0 4 134 133 154 155
		f 4 -129 528 148 -530
		mu 0 4 135 134 155 156
		f 4 -130 529 149 -531
		mu 0 4 136 135 156 157
		f 4 -131 530 150 -532
		mu 0 4 137 136 157 158
		f 4 -132 531 151 -533
		mu 0 4 138 137 158 159
		f 4 -133 532 152 -534
		mu 0 4 139 138 159 160
		f 4 -134 533 153 -535
		mu 0 4 140 139 160 161
		f 4 -135 534 154 -536
		mu 0 4 141 140 161 162
		f 4 -136 535 155 -537
		mu 0 4 142 141 162 163
		f 4 -137 536 156 -538
		mu 0 4 143 142 163 164
		f 4 -138 537 157 -539
		mu 0 4 144 143 164 165
		f 4 -139 538 158 -540
		mu 0 4 145 144 165 166
		f 4 -140 539 159 -521
		mu 0 4 146 145 166 167
		f 4 -141 540 160 -542
		mu 0 4 148 147 168 169
		f 4 -142 541 161 -543
		mu 0 4 149 148 169 170
		f 4 -143 542 162 -544
		mu 0 4 150 149 170 171
		f 4 -144 543 163 -545
		mu 0 4 151 150 171 172
		f 4 -145 544 164 -546
		mu 0 4 152 151 172 173
		f 4 -146 545 165 -547
		mu 0 4 153 152 173 174
		f 4 -147 546 166 -548
		mu 0 4 154 153 174 175
		f 4 -148 547 167 -549
		mu 0 4 155 154 175 176
		f 4 -149 548 168 -550
		mu 0 4 156 155 176 177
		f 4 -150 549 169 -551
		mu 0 4 157 156 177 178
		f 4 -151 550 170 -552
		mu 0 4 158 157 178 179
		f 4 -152 551 171 -553
		mu 0 4 159 158 179 180
		f 4 -153 552 172 -554
		mu 0 4 160 159 180 181
		f 4 -154 553 173 -555
		mu 0 4 161 160 181 182
		f 4 -155 554 174 -556
		mu 0 4 162 161 182 183
		f 4 -156 555 175 -557
		mu 0 4 163 162 183 184
		f 4 -157 556 176 -558
		mu 0 4 164 163 184 185
		f 4 -158 557 177 -559
		mu 0 4 165 164 185 186
		f 4 -159 558 178 -560
		mu 0 4 166 165 186 187
		f 4 -160 559 179 -541
		mu 0 4 167 166 187 188
		f 4 -161 560 180 -562
		mu 0 4 169 168 189 190
		f 4 -162 561 181 -563
		mu 0 4 170 169 190 191
		f 4 -163 562 182 -564
		mu 0 4 171 170 191 192
		f 4 -164 563 183 -565
		mu 0 4 172 171 192 193
		f 4 -165 564 184 -566
		mu 0 4 173 172 193 194
		f 4 -166 565 185 -567
		mu 0 4 174 173 194 195
		f 4 -167 566 186 -568
		mu 0 4 175 174 195 196
		f 4 -168 567 187 -569
		mu 0 4 176 175 196 197
		f 4 -169 568 188 -570
		mu 0 4 177 176 197 198
		f 4 -170 569 189 -571
		mu 0 4 178 177 198 199
		f 4 -171 570 190 -572
		mu 0 4 179 178 199 200
		f 4 -172 571 191 -573
		mu 0 4 180 179 200 201
		f 4 -173 572 192 -574
		mu 0 4 181 180 201 202
		f 4 -174 573 193 -575
		mu 0 4 182 181 202 203
		f 4 -175 574 194 -576
		mu 0 4 183 182 203 204
		f 4 -176 575 195 -577
		mu 0 4 184 183 204 205
		f 4 -177 576 196 -578
		mu 0 4 185 184 205 206
		f 4 -178 577 197 -579
		mu 0 4 186 185 206 207
		f 4 -179 578 198 -580
		mu 0 4 187 186 207 208
		f 4 -180 579 199 -561
		mu 0 4 188 187 208 209
		f 4 -181 580 200 -582
		mu 0 4 190 189 210 211
		f 4 -182 581 201 -583
		mu 0 4 191 190 211 212
		f 4 -183 582 202 -584
		mu 0 4 192 191 212 213
		f 4 -184 583 203 -585
		mu 0 4 193 192 213 214
		f 4 -185 584 204 -586
		mu 0 4 194 193 214 215
		f 4 -186 585 205 -587
		mu 0 4 195 194 215 216
		f 4 -187 586 206 -588
		mu 0 4 196 195 216 217
		f 4 -188 587 207 -589
		mu 0 4 197 196 217 218
		f 4 -189 588 208 -590
		mu 0 4 198 197 218 219
		f 4 -190 589 209 -591
		mu 0 4 199 198 219 220
		f 4 -191 590 210 -592
		mu 0 4 200 199 220 221
		f 4 -192 591 211 -593
		mu 0 4 201 200 221 222
		f 4 -193 592 212 -594
		mu 0 4 202 201 222 223
		f 4 -194 593 213 -595
		mu 0 4 203 202 223 224
		f 4 -195 594 214 -596
		mu 0 4 204 203 224 225
		f 4 -196 595 215 -597
		mu 0 4 205 204 225 226
		f 4 -197 596 216 -598
		mu 0 4 206 205 226 227
		f 4 -198 597 217 -599
		mu 0 4 207 206 227 228
		f 4 -199 598 218 -600
		mu 0 4 208 207 228 229
		f 4 -200 599 219 -581
		mu 0 4 209 208 229 230
		f 4 -201 600 220 -602
		mu 0 4 211 210 231 232
		f 4 -202 601 221 -603
		mu 0 4 212 211 232 233
		f 4 -203 602 222 -604
		mu 0 4 213 212 233 234
		f 4 -204 603 223 -605
		mu 0 4 214 213 234 235
		f 4 -205 604 224 -606
		mu 0 4 215 214 235 236
		f 4 -206 605 225 -607
		mu 0 4 216 215 236 237
		f 4 -207 606 226 -608
		mu 0 4 217 216 237 238
		f 4 -208 607 227 -609
		mu 0 4 218 217 238 239
		f 4 -209 608 228 -610
		mu 0 4 219 218 239 240
		f 4 -210 609 229 -611
		mu 0 4 220 219 240 241
		f 4 -211 610 230 -612
		mu 0 4 221 220 241 242
		f 4 -212 611 231 -613
		mu 0 4 222 221 242 243
		f 4 -213 612 232 -614
		mu 0 4 223 222 243 244
		f 4 -214 613 233 -615
		mu 0 4 224 223 244 245
		f 4 -215 614 234 -616
		mu 0 4 225 224 245 246
		f 4 -216 615 235 -617
		mu 0 4 226 225 246 247
		f 4 -217 616 236 -618
		mu 0 4 227 226 247 248
		f 4 -218 617 237 -619
		mu 0 4 228 227 248 249
		f 4 -219 618 238 -620
		mu 0 4 229 228 249 250
		f 4 -220 619 239 -601
		mu 0 4 230 229 250 251
		f 4 -221 620 240 -622
		mu 0 4 232 231 252 253
		f 4 -222 621 241 -623
		mu 0 4 233 232 253 254
		f 4 -223 622 242 -624
		mu 0 4 234 233 254 255
		f 4 -224 623 243 -625
		mu 0 4 235 234 255 256
		f 4 -225 624 244 -626
		mu 0 4 236 235 256 257
		f 4 -226 625 245 -627
		mu 0 4 237 236 257 258
		f 4 -227 626 246 -628
		mu 0 4 238 237 258 259
		f 4 -228 627 247 -629
		mu 0 4 239 238 259 260
		f 4 -229 628 248 -630
		mu 0 4 240 239 260 261
		f 4 -230 629 249 -631
		mu 0 4 241 240 261 262
		f 4 -231 630 250 -632
		mu 0 4 242 241 262 263
		f 4 -232 631 251 -633
		mu 0 4 243 242 263 264
		f 4 -233 632 252 -634
		mu 0 4 244 243 264 265
		f 4 -234 633 253 -635
		mu 0 4 245 244 265 266
		f 4 -235 634 254 -636
		mu 0 4 246 245 266 267
		f 4 -236 635 255 -637
		mu 0 4 247 246 267 268
		f 4 -237 636 256 -638
		mu 0 4 248 247 268 269
		f 4 -238 637 257 -639
		mu 0 4 249 248 269 270
		f 4 -239 638 258 -640
		mu 0 4 250 249 270 271
		f 4 -240 639 259 -621
		mu 0 4 251 250 271 272
		f 4 -241 640 260 -642
		mu 0 4 253 252 273 274
		f 4 -242 641 261 -643
		mu 0 4 254 253 274 275
		f 4 -243 642 262 -644
		mu 0 4 255 254 275 276
		f 4 -244 643 263 -645
		mu 0 4 256 255 276 277
		f 4 -245 644 264 -646
		mu 0 4 257 256 277 278
		f 4 -246 645 265 -647
		mu 0 4 258 257 278 279
		f 4 -247 646 266 -648
		mu 0 4 259 258 279 280
		f 4 -248 647 267 -649
		mu 0 4 260 259 280 281
		f 4 -249 648 268 -650
		mu 0 4 261 260 281 282
		f 4 -250 649 269 -651
		mu 0 4 262 261 282 283
		f 4 -251 650 270 -652
		mu 0 4 263 262 283 284
		f 4 -252 651 271 -653
		mu 0 4 264 263 284 285
		f 4 -253 652 272 -654
		mu 0 4 265 264 285 286
		f 4 -254 653 273 -655
		mu 0 4 266 265 286 287
		f 4 -255 654 274 -656
		mu 0 4 267 266 287 288
		f 4 -256 655 275 -657
		mu 0 4 268 267 288 289
		f 4 -257 656 276 -658
		mu 0 4 269 268 289 290
		f 4 -258 657 277 -659
		mu 0 4 270 269 290 291
		f 4 -259 658 278 -660
		mu 0 4 271 270 291 292
		f 4 -260 659 279 -641
		mu 0 4 272 271 292 293
		f 4 -261 660 280 -662
		mu 0 4 274 273 294 295
		f 4 -262 661 281 -663
		mu 0 4 275 274 295 296
		f 4 -263 662 282 -664
		mu 0 4 276 275 296 297
		f 4 -264 663 283 -665
		mu 0 4 277 276 297 298
		f 4 -265 664 284 -666
		mu 0 4 278 277 298 299
		f 4 -266 665 285 -667
		mu 0 4 279 278 299 300
		f 4 -267 666 286 -668
		mu 0 4 280 279 300 301
		f 4 -268 667 287 -669
		mu 0 4 281 280 301 302
		f 4 -269 668 288 -670
		mu 0 4 282 281 302 303
		f 4 -270 669 289 -671
		mu 0 4 283 282 303 304
		f 4 -271 670 290 -672
		mu 0 4 284 283 304 305
		f 4 -272 671 291 -673
		mu 0 4 285 284 305 306
		f 4 -273 672 292 -674
		mu 0 4 286 285 306 307
		f 4 -274 673 293 -675
		mu 0 4 287 286 307 308
		f 4 -275 674 294 -676
		mu 0 4 288 287 308 309
		f 4 -276 675 295 -677
		mu 0 4 289 288 309 310
		f 4 -277 676 296 -678
		mu 0 4 290 289 310 311
		f 4 -278 677 297 -679
		mu 0 4 291 290 311 312
		f 4 -279 678 298 -680
		mu 0 4 292 291 312 313
		f 4 -280 679 299 -661
		mu 0 4 293 292 313 314
		f 4 -281 680 300 -682
		mu 0 4 295 294 315 316
		f 4 -282 681 301 -683
		mu 0 4 296 295 316 317
		f 4 -283 682 302 -684
		mu 0 4 297 296 317 318
		f 4 -284 683 303 -685
		mu 0 4 298 297 318 319
		f 4 -285 684 304 -686
		mu 0 4 299 298 319 320
		f 4 -286 685 305 -687
		mu 0 4 300 299 320 321
		f 4 -287 686 306 -688
		mu 0 4 301 300 321 322
		f 4 -288 687 307 -689
		mu 0 4 302 301 322 323
		f 4 -289 688 308 -690
		mu 0 4 303 302 323 324
		f 4 -290 689 309 -691
		mu 0 4 304 303 324 325
		f 4 -291 690 310 -692
		mu 0 4 305 304 325 326
		f 4 -292 691 311 -693
		mu 0 4 306 305 326 327
		f 4 -293 692 312 -694
		mu 0 4 307 306 327 328
		f 4 -294 693 313 -695
		mu 0 4 308 307 328 329
		f 4 -295 694 314 -696
		mu 0 4 309 308 329 330
		f 4 -296 695 315 -697
		mu 0 4 310 309 330 331
		f 4 -297 696 316 -698
		mu 0 4 311 310 331 332
		f 4 -298 697 317 -699
		mu 0 4 312 311 332 333
		f 4 -299 698 318 -700
		mu 0 4 313 312 333 334
		f 4 -300 699 319 -681
		mu 0 4 314 313 334 335
		f 4 -301 700 320 -702
		mu 0 4 316 315 336 337
		f 4 -302 701 321 -703
		mu 0 4 317 316 337 338
		f 4 -303 702 322 -704
		mu 0 4 318 317 338 339
		f 4 -304 703 323 -705
		mu 0 4 319 318 339 340
		f 4 -305 704 324 -706
		mu 0 4 320 319 340 341
		f 4 -306 705 325 -707
		mu 0 4 321 320 341 342
		f 4 -307 706 326 -708
		mu 0 4 322 321 342 343
		f 4 -308 707 327 -709
		mu 0 4 323 322 343 344
		f 4 -309 708 328 -710
		mu 0 4 324 323 344 345
		f 4 -310 709 329 -711
		mu 0 4 325 324 345 346
		f 4 -311 710 330 -712
		mu 0 4 326 325 346 347
		f 4 -312 711 331 -713
		mu 0 4 327 326 347 348
		f 4 -313 712 332 -714
		mu 0 4 328 327 348 349
		f 4 -314 713 333 -715
		mu 0 4 329 328 349 350
		f 4 -315 714 334 -716
		mu 0 4 330 329 350 351
		f 4 -316 715 335 -717
		mu 0 4 331 330 351 352
		f 4 -317 716 336 -718
		mu 0 4 332 331 352 353
		f 4 -318 717 337 -719
		mu 0 4 333 332 353 354
		f 4 -319 718 338 -720
		mu 0 4 334 333 354 355
		f 4 -320 719 339 -701
		mu 0 4 335 334 355 356
		f 4 -321 720 340 -722
		mu 0 4 337 336 357 358
		f 4 -322 721 341 -723
		mu 0 4 338 337 358 359
		f 4 -323 722 342 -724
		mu 0 4 339 338 359 360
		f 4 -324 723 343 -725
		mu 0 4 340 339 360 361
		f 4 -325 724 344 -726
		mu 0 4 341 340 361 362
		f 4 -326 725 345 -727
		mu 0 4 342 341 362 363
		f 4 -327 726 346 -728
		mu 0 4 343 342 363 364
		f 4 -328 727 347 -729
		mu 0 4 344 343 364 365
		f 4 -329 728 348 -730
		mu 0 4 345 344 365 366
		f 4 -330 729 349 -731
		mu 0 4 346 345 366 367
		f 4 -331 730 350 -732
		mu 0 4 347 346 367 368
		f 4 -332 731 351 -733
		mu 0 4 348 347 368 369
		f 4 -333 732 352 -734
		mu 0 4 349 348 369 370
		f 4 -334 733 353 -735
		mu 0 4 350 349 370 371
		f 4 -335 734 354 -736
		mu 0 4 351 350 371 372
		f 4 -336 735 355 -737
		mu 0 4 352 351 372 373
		f 4 -337 736 356 -738
		mu 0 4 353 352 373 374
		f 4 -338 737 357 -739
		mu 0 4 354 353 374 375
		f 4 -339 738 358 -740
		mu 0 4 355 354 375 376
		f 4 -340 739 359 -721
		mu 0 4 356 355 376 377
		f 4 -341 740 360 -742
		mu 0 4 358 357 378 379
		f 4 -342 741 361 -743
		mu 0 4 359 358 379 380
		f 4 -343 742 362 -744
		mu 0 4 360 359 380 381
		f 4 -344 743 363 -745
		mu 0 4 361 360 381 382
		f 4 -345 744 364 -746
		mu 0 4 362 361 382 383
		f 4 -346 745 365 -747
		mu 0 4 363 362 383 384
		f 4 -347 746 366 -748
		mu 0 4 364 363 384 385
		f 4 -348 747 367 -749
		mu 0 4 365 364 385 386
		f 4 -349 748 368 -750
		mu 0 4 366 365 386 387
		f 4 -350 749 369 -751
		mu 0 4 367 366 387 388
		f 4 -351 750 370 -752
		mu 0 4 368 367 388 389
		f 4 -352 751 371 -753
		mu 0 4 369 368 389 390
		f 4 -353 752 372 -754
		mu 0 4 370 369 390 391
		f 4 -354 753 373 -755
		mu 0 4 371 370 391 392
		f 4 -355 754 374 -756
		mu 0 4 372 371 392 393
		f 4 -356 755 375 -757
		mu 0 4 373 372 393 394
		f 4 -357 756 376 -758
		mu 0 4 374 373 394 395
		f 4 -358 757 377 -759
		mu 0 4 375 374 395 396
		f 4 -359 758 378 -760
		mu 0 4 376 375 396 397
		f 4 -360 759 379 -741
		mu 0 4 377 376 397 398
		f 4 -361 760 380 -762
		mu 0 4 379 378 399 400
		f 4 -362 761 381 -763
		mu 0 4 380 379 400 401
		f 4 -363 762 382 -764
		mu 0 4 381 380 401 402
		f 4 -364 763 383 -765
		mu 0 4 382 381 402 403
		f 4 -365 764 384 -766
		mu 0 4 383 382 403 404
		f 4 -366 765 385 -767
		mu 0 4 384 383 404 405
		f 4 -367 766 386 -768
		mu 0 4 385 384 405 406
		f 4 -368 767 387 -769
		mu 0 4 386 385 406 407
		f 4 -369 768 388 -770
		mu 0 4 387 386 407 408
		f 4 -370 769 389 -771
		mu 0 4 388 387 408 409
		f 4 -371 770 390 -772
		mu 0 4 389 388 409 410
		f 4 -372 771 391 -773
		mu 0 4 390 389 410 411
		f 4 -373 772 392 -774
		mu 0 4 391 390 411 412
		f 4 -374 773 393 -775
		mu 0 4 392 391 412 413
		f 4 -375 774 394 -776
		mu 0 4 393 392 413 414
		f 4 -376 775 395 -777
		mu 0 4 394 393 414 415
		f 4 -377 776 396 -778
		mu 0 4 395 394 415 416
		f 4 -378 777 397 -779
		mu 0 4 396 395 416 417
		f 4 -379 778 398 -780
		mu 0 4 397 396 417 418
		f 4 -380 779 399 -761
		mu 0 4 398 397 418 419
		f 4 -381 780 0 -782
		mu 0 4 400 399 420 421
		f 4 -382 781 1 -783
		mu 0 4 401 400 421 422
		f 4 -383 782 2 -784
		mu 0 4 402 401 422 423
		f 4 -384 783 3 -785
		mu 0 4 403 402 423 424
		f 4 -385 784 4 -786
		mu 0 4 404 403 424 425
		f 4 -386 785 5 -787
		mu 0 4 405 404 425 426
		f 4 -387 786 6 -788
		mu 0 4 406 405 426 427
		f 4 -388 787 7 -789
		mu 0 4 407 406 427 428
		f 4 -389 788 8 -790
		mu 0 4 408 407 428 429
		f 4 -390 789 9 -791
		mu 0 4 409 408 429 430
		f 4 -391 790 10 -792
		mu 0 4 410 409 430 431
		f 4 -392 791 11 -793
		mu 0 4 411 410 431 432
		f 4 -393 792 12 -794
		mu 0 4 412 411 432 433
		f 4 -394 793 13 -795
		mu 0 4 413 412 433 434
		f 4 -395 794 14 -796
		mu 0 4 414 413 434 435
		f 4 -396 795 15 -797
		mu 0 4 415 414 435 436
		f 4 -397 796 16 -798
		mu 0 4 416 415 436 437
		f 4 -398 797 17 -799
		mu 0 4 417 416 437 438
		f 4 -399 798 18 -800
		mu 0 4 418 417 438 439
		f 4 -400 799 19 -781
		mu 0 4 419 418 439 440;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "group6";
	setAttr ".t" -type "double3" -4.3130728753307528 1.2868263405420388 -0.21863211963623383 ;
	setAttr ".r" -type "double3" -10.450469974000079 35.028528879196728 -4.2328471337593214 ;
	setAttr ".s" -type "double3" 0.1068369882520433 0.20409832991211754 0.036864133681394809 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube7" -p "group6";
	setAttr ".t" -type "double3" -4.2989424182236968 1.2923919412360467 -0.19963914027583979 ;
	setAttr ".r" -type "double3" -10.450469974000079 35.028528879196728 -4.2328471337593214 ;
	setAttr ".s" -type "double3" 0.046341828838990337 0.088530105779448878 0.015990261437645734 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
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
createNode transform -n "pCube8" -p "group6";
	setAttr ".t" -type "double3" -4.7659210569627177 1.5808573489955116 10.111397848475056 ;
	setAttr ".r" -type "double3" -12.31176777903045 7.7285224790980944 -0.80078545171166393 ;
	setAttr ".s" -type "double3" 1 1.6413337857181587 0.32449400074902046 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder3" -p "group6";
	setAttr ".t" -type "double3" 6.7162553653979957 0.45952612645520574 -2.4126028184101194 ;
	setAttr ".s" -type "double3" 5.9135989623382983 0.1748455520395385 10.227932680094554 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder4" -p "group6";
	setAttr ".t" -type "double3" 6.7162553653979957 0.45952612645520574 -2.4126028184101194 ;
	setAttr ".r" -type "double3" 0 -152.84715190247093 0 ;
	setAttr ".s" -type "double3" 2.9895454964036157 0.1748455520395385 9.588309375319529 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 640 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0.3125 0.3828125 0.3125
		 0.3828125 0.40648496 0.375 0.40648496 0.3828125 0.3125 0.390625 0.3125 0.390625 0.40648496
		 0.3828125 0.40648496 0.3828125 0.40648496 0.390625 0.40648496 0.390625 0.50046992
		 0.3828125 0.50046992 0.375 0.40648496 0.3828125 0.40648496 0.3828125 0.50046992 0.375
		 0.50046992 0.390625 0.3125 0.3984375 0.3125 0.3984375 0.40648496 0.390625 0.40648496
		 0.3984375 0.3125 0.40625 0.3125 0.40625 0.40648496 0.3984375 0.40648496 0.3984375
		 0.40648496 0.40625 0.40648496 0.40625 0.50046992 0.3984375 0.50046992 0.390625 0.40648496
		 0.3984375 0.40648496 0.3984375 0.50046992 0.390625 0.50046992 0.40625 0.3125 0.4140625
		 0.3125 0.4140625 0.40648496 0.40625 0.40648496 0.4140625 0.3125 0.421875 0.3125 0.421875
		 0.40648496 0.4140625 0.40648496 0.4140625 0.40648496 0.421875 0.40648496 0.421875
		 0.50046992 0.4140625 0.50046992 0.40625 0.40648496 0.4140625 0.40648496 0.4140625
		 0.50046992 0.40625 0.50046992 0.421875 0.3125 0.4296875 0.3125 0.4296875 0.40648496
		 0.421875 0.40648496 0.4296875 0.3125 0.4375 0.3125 0.4375 0.40648496 0.4296875 0.40648496
		 0.4296875 0.40648496 0.4375 0.40648496 0.4375 0.50046992 0.4296875 0.50046992 0.421875
		 0.40648496 0.4296875 0.40648496 0.4296875 0.50046992 0.421875 0.50046992 0.4375 0.3125
		 0.4453125 0.3125 0.4453125 0.40648496 0.4375 0.40648496 0.4453125 0.3125 0.453125
		 0.3125 0.453125 0.40648496 0.4453125 0.40648496 0.4453125 0.40648496 0.453125 0.40648496
		 0.453125 0.50046992 0.4453125 0.50046992 0.4375 0.40648496 0.4453125 0.40648496 0.4453125
		 0.50046992 0.4375 0.50046992 0.453125 0.3125 0.4609375 0.3125 0.4609375 0.40648496
		 0.453125 0.40648496 0.4609375 0.3125 0.46875 0.3125 0.46875 0.40648496 0.4609375
		 0.40648496 0.4609375 0.40648496 0.46875 0.40648496 0.46875 0.50046992 0.4609375 0.50046992
		 0.453125 0.40648496 0.4609375 0.40648496 0.4609375 0.50046992 0.453125 0.50046992
		 0.46875 0.3125 0.4765625 0.3125 0.4765625 0.40648496 0.46875 0.40648496 0.4765625
		 0.3125 0.484375 0.3125 0.484375 0.40648496 0.4765625 0.40648496 0.4765625 0.40648496
		 0.484375 0.40648496 0.484375 0.50046992 0.4765625 0.50046992 0.46875 0.40648496 0.4765625
		 0.40648496 0.4765625 0.50046992 0.46875 0.50046992 0.484375 0.3125 0.4921875 0.3125
		 0.4921875 0.40648496 0.484375 0.40648496 0.4921875 0.3125 0.5 0.3125 0.5 0.40648496
		 0.4921875 0.40648496 0.4921875 0.40648496 0.5 0.40648496 0.5 0.50046992 0.4921875
		 0.50046992 0.484375 0.40648496 0.4921875 0.40648496 0.4921875 0.50046992 0.484375
		 0.50046992 0.5 0.3125 0.5078125 0.3125 0.5078125 0.40648496 0.5 0.40648496 0.5078125
		 0.3125 0.515625 0.3125 0.515625 0.40648496 0.5078125 0.40648496 0.5078125 0.40648496
		 0.515625 0.40648496 0.515625 0.50046992 0.5078125 0.50046992 0.5 0.40648496 0.5078125
		 0.40648496 0.5078125 0.50046992 0.5 0.50046992 0.515625 0.3125 0.5234375 0.3125 0.5234375
		 0.40648496 0.515625 0.40648496 0.5234375 0.3125 0.53125 0.3125 0.53125 0.40648496
		 0.5234375 0.40648496 0.5234375 0.40648496 0.53125 0.40648496 0.53125 0.50046992 0.5234375
		 0.50046992 0.515625 0.40648496 0.5234375 0.40648496 0.5234375 0.50046992 0.515625
		 0.50046992 0.53125 0.3125 0.5390625 0.3125 0.5390625 0.40648496 0.53125 0.40648496
		 0.5390625 0.3125 0.546875 0.3125 0.546875 0.40648496 0.5390625 0.40648496 0.5390625
		 0.40648496 0.546875 0.40648496 0.546875 0.50046992 0.5390625 0.50046992 0.53125 0.40648496
		 0.5390625 0.40648496 0.5390625 0.50046992 0.53125 0.50046992 0.546875 0.3125 0.5546875
		 0.3125 0.5546875 0.40648496 0.546875 0.40648496 0.5546875 0.3125 0.5625 0.3125 0.5625
		 0.40648496 0.5546875 0.40648496 0.5546875 0.40648496 0.5625 0.40648496 0.5625 0.50046992
		 0.5546875 0.50046992 0.546875 0.40648496 0.5546875 0.40648496 0.5546875 0.50046992
		 0.546875 0.50046992 0.5625 0.3125 0.5703125 0.3125 0.5703125 0.40648496 0.5625 0.40648496
		 0.5703125 0.3125 0.578125 0.3125 0.578125 0.40648496 0.5703125 0.40648496 0.5703125
		 0.40648496 0.578125 0.40648496 0.578125 0.50046992 0.5703125 0.50046992 0.5625 0.40648496
		 0.5703125 0.40648496 0.5703125 0.50046992 0.5625 0.50046992 0.578125 0.3125 0.5859375
		 0.3125 0.5859375 0.40648496 0.578125 0.40648496 0.5859375 0.3125 0.59375 0.3125 0.59375
		 0.40648496 0.5859375 0.40648496 0.5859375 0.40648496 0.59375 0.40648496 0.59375 0.50046992
		 0.5859375 0.50046992 0.578125 0.40648496 0.5859375 0.40648496 0.5859375 0.50046992
		 0.578125 0.50046992 0.59375 0.3125 0.6015625 0.3125 0.6015625 0.40648496 0.59375
		 0.40648496 0.6015625 0.3125 0.609375 0.3125 0.609375 0.40648496 0.6015625 0.40648496
		 0.6015625 0.40648496 0.609375 0.40648496 0.609375 0.50046992 0.6015625 0.50046992
		 0.59375 0.40648496 0.6015625 0.40648496 0.6015625 0.50046992 0.59375 0.50046992 0.609375
		 0.3125 0.6171875 0.3125 0.6171875 0.40648496 0.609375 0.40648496 0.6171875 0.3125
		 0.625 0.3125 0.625 0.40648496 0.6171875 0.40648496 0.6171875 0.40648496 0.625 0.40648496;
	setAttr ".uvst[0].uvsp[250:499]" 0.625 0.50046992 0.6171875 0.50046992 0.609375
		 0.40648496 0.6171875 0.40648496 0.6171875 0.50046992 0.609375 0.50046992 0.375 0.50046992
		 0.3828125 0.50046992 0.3828125 0.59445488 0.375 0.59445488 0.3828125 0.50046992 0.390625
		 0.50046992 0.390625 0.59445488 0.3828125 0.59445488 0.3828125 0.59445488 0.390625
		 0.59445488 0.390625 0.68843985 0.3828125 0.68843985 0.375 0.59445488 0.3828125 0.59445488
		 0.3828125 0.68843985 0.375 0.68843985 0.390625 0.50046992 0.3984375 0.50046992 0.3984375
		 0.59445488 0.390625 0.59445488 0.3984375 0.50046992 0.40625 0.50046992 0.40625 0.59445488
		 0.3984375 0.59445488 0.3984375 0.59445488 0.40625 0.59445488 0.40625 0.68843985 0.3984375
		 0.68843985 0.390625 0.59445488 0.3984375 0.59445488 0.3984375 0.68843985 0.390625
		 0.68843985 0.40625 0.50046992 0.4140625 0.50046992 0.4140625 0.59445488 0.40625 0.59445488
		 0.4140625 0.50046992 0.421875 0.50046992 0.421875 0.59445488 0.4140625 0.59445488
		 0.4140625 0.59445488 0.421875 0.59445488 0.421875 0.68843985 0.4140625 0.68843985
		 0.40625 0.59445488 0.4140625 0.59445488 0.4140625 0.68843985 0.40625 0.68843985 0.421875
		 0.50046992 0.4296875 0.50046992 0.4296875 0.59445488 0.421875 0.59445488 0.4296875
		 0.50046992 0.4375 0.50046992 0.4375 0.59445488 0.4296875 0.59445488 0.4296875 0.59445488
		 0.4375 0.59445488 0.4375 0.68843985 0.4296875 0.68843985 0.421875 0.59445488 0.4296875
		 0.59445488 0.4296875 0.68843985 0.421875 0.68843985 0.4375 0.50046992 0.4453125 0.50046992
		 0.4453125 0.59445488 0.4375 0.59445488 0.4453125 0.50046992 0.453125 0.50046992 0.453125
		 0.59445488 0.4453125 0.59445488 0.4453125 0.59445488 0.453125 0.59445488 0.453125
		 0.68843985 0.4453125 0.68843985 0.4375 0.59445488 0.4453125 0.59445488 0.4453125
		 0.68843985 0.4375 0.68843985 0.453125 0.50046992 0.4609375 0.50046992 0.4609375 0.59445488
		 0.453125 0.59445488 0.4609375 0.50046992 0.46875 0.50046992 0.46875 0.59445488 0.4609375
		 0.59445488 0.4609375 0.59445488 0.46875 0.59445488 0.46875 0.68843985 0.4609375 0.68843985
		 0.453125 0.59445488 0.4609375 0.59445488 0.4609375 0.68843985 0.453125 0.68843985
		 0.46875 0.50046992 0.4765625 0.50046992 0.4765625 0.59445488 0.46875 0.59445488 0.4765625
		 0.50046992 0.484375 0.50046992 0.484375 0.59445488 0.4765625 0.59445488 0.4765625
		 0.59445488 0.484375 0.59445488 0.484375 0.68843985 0.4765625 0.68843985 0.46875 0.59445488
		 0.4765625 0.59445488 0.4765625 0.68843985 0.46875 0.68843985 0.484375 0.50046992
		 0.4921875 0.50046992 0.4921875 0.59445488 0.484375 0.59445488 0.4921875 0.50046992
		 0.5 0.50046992 0.5 0.59445488 0.4921875 0.59445488 0.4921875 0.59445488 0.5 0.59445488
		 0.5 0.68843985 0.4921875 0.68843985 0.484375 0.59445488 0.4921875 0.59445488 0.4921875
		 0.68843985 0.484375 0.68843985 0.5 0.50046992 0.5078125 0.50046992 0.5078125 0.59445488
		 0.5 0.59445488 0.5078125 0.50046992 0.515625 0.50046992 0.515625 0.59445488 0.5078125
		 0.59445488 0.5078125 0.59445488 0.515625 0.59445488 0.515625 0.68843985 0.5078125
		 0.68843985 0.5 0.59445488 0.5078125 0.59445488 0.5078125 0.68843985 0.5 0.68843985
		 0.515625 0.50046992 0.5234375 0.50046992 0.5234375 0.59445488 0.515625 0.59445488
		 0.5234375 0.50046992 0.53125 0.50046992 0.53125 0.59445488 0.5234375 0.59445488 0.5234375
		 0.59445488 0.53125 0.59445488 0.53125 0.68843985 0.5234375 0.68843985 0.515625 0.59445488
		 0.5234375 0.59445488 0.5234375 0.68843985 0.515625 0.68843985 0.53125 0.50046992
		 0.5390625 0.50046992 0.5390625 0.59445488 0.53125 0.59445488 0.5390625 0.50046992
		 0.546875 0.50046992 0.546875 0.59445488 0.5390625 0.59445488 0.5390625 0.59445488
		 0.546875 0.59445488 0.546875 0.68843985 0.5390625 0.68843985 0.53125 0.59445488 0.5390625
		 0.59445488 0.5390625 0.68843985 0.53125 0.68843985 0.546875 0.50046992 0.5546875
		 0.50046992 0.5546875 0.59445488 0.546875 0.59445488 0.5546875 0.50046992 0.5625 0.50046992
		 0.5625 0.59445488 0.5546875 0.59445488 0.5546875 0.59445488 0.5625 0.59445488 0.5625
		 0.68843985 0.5546875 0.68843985 0.546875 0.59445488 0.5546875 0.59445488 0.5546875
		 0.68843985 0.546875 0.68843985 0.5625 0.50046992 0.5703125 0.50046992 0.5703125 0.59445488
		 0.5625 0.59445488 0.5703125 0.50046992 0.578125 0.50046992 0.578125 0.59445488 0.5703125
		 0.59445488 0.5703125 0.59445488 0.578125 0.59445488 0.578125 0.68843985 0.5703125
		 0.68843985 0.5625 0.59445488 0.5703125 0.59445488 0.5703125 0.68843985 0.5625 0.68843985
		 0.578125 0.50046992 0.5859375 0.50046992 0.5859375 0.59445488 0.578125 0.59445488
		 0.5859375 0.50046992 0.59375 0.50046992 0.59375 0.59445488 0.5859375 0.59445488 0.5859375
		 0.59445488 0.59375 0.59445488 0.59375 0.68843985 0.5859375 0.68843985 0.578125 0.59445488
		 0.5859375 0.59445488 0.5859375 0.68843985 0.578125 0.68843985 0.59375 0.50046992
		 0.6015625 0.50046992 0.6015625 0.59445488 0.59375 0.59445488 0.6015625 0.50046992
		 0.609375 0.50046992 0.609375 0.59445488 0.6015625 0.59445488 0.6015625 0.59445488
		 0.609375 0.59445488 0.609375 0.68843985 0.6015625 0.68843985 0.59375 0.59445488 0.6015625
		 0.59445488 0.6015625 0.68843985 0.59375 0.68843985 0.609375 0.50046992 0.6171875
		 0.50046992 0.6171875 0.59445488 0.609375 0.59445488;
	setAttr ".uvst[0].uvsp[500:639]" 0.6171875 0.50046992 0.625 0.50046992 0.625
		 0.59445488 0.6171875 0.59445488 0.6171875 0.59445488 0.625 0.59445488 0.625 0.68843985
		 0.6171875 0.68843985 0.609375 0.59445488 0.6171875 0.59445488 0.6171875 0.68843985
		 0.609375 0.68843985 0.64435619 0.096455798 0.65030313 0.12635291 0.5 0.15624999 0.62742084
		 0.071110219 0.65625 0.15625 0.65030313 0.18614715 0.5 0.15624999 0.65030313 0.12635291
		 0.64435619 0.21604429 0.62742078 0.24138987 0.5 0.15624999 0.65030313 0.18614715
		 0.61048543 0.26673543 0.58513987 0.28367081 0.5 0.15624999 0.62742078 0.24138987
		 0.55979425 0.30060619 0.52989709 0.3065531 0.5 0.15624999 0.58513987 0.28367081 0.49999997
		 0.3125 0.47010285 0.30655307 0.5 0.15624999 0.52989709 0.3065531 0.44020569 0.30060616
		 0.41486013 0.28367078 0.5 0.15624999 0.47010285 0.30655307 0.38951454 0.2667354 0.37257916
		 0.24138983 0.5 0.15624999 0.41486013 0.28367078 0.35564381 0.21604425 0.3496969 0.18614709
		 0.5 0.15624999 0.37257916 0.24138983 0.34375 0.15624994 0.34969693 0.1263528 0.5
		 0.15624999 0.3496969 0.18614709 0.35564384 0.096455663 0.37257922 0.071110092 0.5
		 0.15624999 0.34969693 0.1263528 0.38951463 0.045764521 0.41486019 0.028829157 0.5
		 0.15624999 0.37257922 0.071110092 0.44020578 0.011893794 0.47010291 0.0059469044
		 0.5 0.15624999 0.41486019 0.028829157 0.50000006 1.4901161e-008 0.52989721 0.0059469417
		 0.5 0.15624999 0.47010291 0.0059469044 0.55979437 0.011893868 0.58513993 0.02882925
		 0.5 0.15624999 0.52989721 0.0059469417 0.61048549 0.045764633 0.62742084 0.071110219
		 0.5 0.15624999 0.58513993 0.02882925 0.64435619 0.90354431 0.62742078 0.92888987
		 0.49999997 0.84375012 0.65030313 0.87364715 0.61048543 0.95423543 0.58513987 0.97117078
		 0.49999997 0.84375012 0.62742078 0.92888987 0.55979425 0.98810619 0.52989709 0.99405313
		 0.49999997 0.84375012 0.58513987 0.97117078 0.49999997 1 0.47010285 0.99405307 0.49999997
		 0.84375012 0.52989709 0.99405313 0.44020569 0.98810613 0.41486013 0.97117078 0.49999997
		 0.84375012 0.47010285 0.99405307 0.38951454 0.95423543 0.37257916 0.92888987 0.49999997
		 0.84375012 0.41486013 0.97117078 0.35564381 0.90354425 0.3496969 0.87364709 0.49999997
		 0.84375012 0.37257916 0.92888987 0.34375 0.84374994 0.34969693 0.81385279 0.49999997
		 0.84375012 0.3496969 0.87364709 0.35564384 0.78395569 0.37257922 0.75861013 0.49999997
		 0.84375012 0.34969693 0.81385279 0.38951463 0.73326451 0.41486019 0.71632916 0.49999997
		 0.84375012 0.37257922 0.75861013 0.44020578 0.69939381 0.47010291 0.69344687 0.49999997
		 0.84375012 0.41486019 0.71632916 0.50000006 0.6875 0.52989721 0.69344693 0.49999997
		 0.84375012 0.47010291 0.69344687 0.55979437 0.69939387 0.58513993 0.71632922 0.49999997
		 0.84375012 0.52989721 0.69344693 0.61048549 0.73326463 0.62742084 0.75861025 0.49999997
		 0.84375012 0.58513993 0.71632922 0.64435619 0.78395581 0.65030313 0.81385291 0.49999997
		 0.84375012 0.62742084 0.75861025 0.65625 0.84375 0.65030313 0.87364715 0.49999997
		 0.84375012 0.65030313 0.81385291;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 162 ".vt[0:161]"  0.79778439 -0.77777779 -0.33045268 0.61059791 -0.77777779 -0.61059719
		 0.33045343 -0.77777779 -0.79778397 4.3958426e-007 -0.77777779 -0.86351538 -0.33045265 -0.77777779 -0.79778433
		 -0.61059731 -0.77777779 -0.61059785 -0.79778409 -0.77777779 -0.33045334 -0.86351538 -0.77777779 -3.1292439e-007
		 -0.79778433 -0.77777779 0.33045277 -0.61059773 -0.77777779 0.61059743 -0.33045322 -0.77777779 0.79778415
		 -1.3038516e-007 -0.77777779 0.86351538 0.33045295 -0.77777779 0.79778427 0.61059755 -0.77777779 0.61059761
		 0.79778415 -0.77777779 0.33045307 0.86351544 -0.77777779 9.3132257e-008 0.90629822 0 -0.37540045
		 0.69365078 0 -0.69365001 0.37540138 0 -0.9062978 4.9173832e-007 0 -0.98096985 -0.37540048 0 -0.90629816
		 -0.69365013 0 -0.69365066 -0.90629786 0 -0.37540126 -0.98096991 0 -3.5017729e-007
		 -0.9062981 0 0.37540063 -0.6936506 0 0.69365025 -0.37540108 0 0.90629792 -1.4901161e-007 0 0.98096991
		 0.37540078 0 0.9062981 0.69365042 0 0.69365054 0.90629792 0 0.37540096 0.98096991 0 6.7986548e-008
		 0.79778433 0.77777779 -0.33045268 0.61059797 0.77777779 -0.61059725 0.33045343 0.77777779 -0.79778397
		 4.4372348e-007 0.77777779 -0.86351538 -0.33045265 0.77777779 -0.79778439 -0.61059737 0.77777779 -0.61059785
		 -0.79778409 0.77777779 -0.33045334 -0.86351538 0.77777779 -3.0754342e-007 -0.79778427 0.77777779 0.3304528
		 -0.61059767 0.77777779 0.61059743 -0.33045322 0.77777779 0.79778415 -1.1879537e-007 0.77777779 0.86351538
		 0.33045295 0.77777779 0.79778427 0.61059755 0.77777779 0.61059767 0.79778421 0.77777779 0.33045307
		 0.8635155 0.77777779 9.1062653e-008 -0.69365013 -0.5 -0.69365072 -0.5448947 0 -0.81549335
		 -0.61161971 -0.875 -0.40867156 -0.90629792 -0.5 -0.37540126 -0.81549299 0 -0.54489541
		 -0.72145474 -0.875 -0.14350656 -0.98096991 -0.5 -3.5017729e-007 -0.96193969 0 -0.19134207
		 -0.72145486 -0.875 0.14350604 -0.9062981 -0.5 0.37540063 -0.96193981 0 0.19134139
		 -0.61161995 -0.875 0.40867114 -0.6936506 -0.5 0.69365025 -0.81549329 0 0.54489487
		 -0.40867144 -0.875 0.61161971 -0.37540108 -0.5 0.90629792 -0.54489529 0 0.81549299
		 -0.14350639 -0.875 0.72145474 -1.4901161e-007 -0.5 0.98096991 -0.19134188 0 0.96193969
		 0.1435062 -0.875 0.72145486 0.37540078 -0.5 0.90629804 0.19134158 0 0.96193981 0.40867129 -0.875 0.61161995
		 0.69365036 -0.5 0.69365048 0.54489499 0 0.81549323 0.61161983 -0.875 0.40867138 0.90629798 -0.5 0.37540096
		 0.81549311 0 0.54489517 0.72145486 -0.875 0.14350629 0.98096991 -0.5 7.0780516e-008
		 0.96193981 0 0.19134173 0.72145492 -0.875 -0.14350608 0.96193987 0 -0.19134144 0.90629816 0.5 -0.37540045
		 0.69365084 0.5 -0.69365007 0.61162007 0.875 -0.40867096 0.37540141 0.5 -0.90629774
		 0.40867168 0.875 -0.61161959 4.9173832e-007 0.5 -0.98096979 0.14350668 0.875 -0.72145468
		 -0.37540048 0.5 -0.9062981 -0.1435059 0.875 -0.72145486 -0.69365013 0.5 -0.69365072
		 -0.40867099 0.875 -0.61162001 -0.90629792 0.5 -0.37540126 -0.61161971 0.875 -0.40867156
		 -0.98096991 0.5 -3.5017729e-007 -0.72145474 0.875 -0.14350656 -0.9062981 0.5 0.37540063
		 -0.72145486 0.875 0.14350604 -0.6936506 0.5 0.69365025 -0.61161995 0.875 0.40867114
		 -0.37540108 0.5 0.90629792 -0.40867144 0.875 0.61161971 -1.4901161e-007 0.5 0.98096991
		 -0.14350638 0.875 0.72145474 0.37540078 0.5 0.90629804 0.14350621 0.875 0.72145486
		 0.69365036 0.5 0.69365048 0.40867129 0.875 0.61161995 0.90629798 0.5 0.37540096 0.61161983 0.875 0.40867138
		 0.98096991 0.5 7.0780516e-008 0.72145486 0.875 0.14350629 0.72145492 0.875 -0.14350608
		 0.61162007 -0.875 -0.40867096 0.90629816 -0.5 -0.37540045 0.69365084 -0.5 -0.69365007
		 0.81549346 0 -0.54489464 0.40867168 -0.875 -0.61161959 0.37540141 -0.5 -0.90629774
		 0.54489553 0 -0.81549281 0.14350666 -0.875 -0.72145468 4.9173832e-007 -0.5 -0.98096979
		 0.1913422 0 -0.96193957 -0.14350592 -0.875 -0.72145486 -0.37540048 -0.5 -0.9062981
		 -0.19134125 0 -0.96193981 -0.40867099 -0.875 -0.61162001 0.81549346 -0.5 -0.54489464
		 0.54489553 -0.5 -0.81549281 0.1913422 -0.5 -0.96193957 -0.19134125 -0.5 -0.96193981
		 -0.5448947 -0.5 -0.81549335 -0.81549299 -0.5 -0.54489541 -0.96193969 -0.5 -0.19134207
		 -0.96193981 -0.5 0.19134139 -0.81549329 -0.5 0.54489487 -0.54489529 -0.5 0.81549299
		 -0.19134188 -0.5 0.96193969 0.19134158 -0.5 0.96193981 0.54489499 -0.5 0.81549323
		 0.81549311 -0.5 0.54489517 0.96193981 -0.5 0.19134173 0.96193987 -0.5 -0.19134144
		 0.81549346 0.5 -0.54489464 0.54489553 0.5 -0.81549281 0.1913422 0.5 -0.96193957 -0.19134125 0.5 -0.96193981
		 -0.5448947 0.5 -0.81549335 -0.81549299 0.5 -0.54489541 -0.96193969 0.5 -0.19134207
		 -0.96193981 0.5 0.19134139 -0.81549329 0.5 0.54489487 -0.54489529 0.5 0.81549299
		 -0.19134188 0.5 0.96193969 0.19134158 0.5 0.96193981 0.54489499 0.5 0.81549323 0.81549311 0.5 0.54489517
		 0.96193981 0.5 0.19134173 0.96193987 0.5 -0.19134144 8.5681677e-008 -1 -2.2351742e-008
		 1.0430813e-007 1 -1.8626451e-008;
	setAttr -s 320 ".ed";
	setAttr ".ed[0:165]"  0 114 1 114 1 1 1 118 1 118 2 1 2 121 1 121 3 1 3 124 1
		 124 4 1 4 127 1 127 5 1 5 50 1 50 6 1 6 53 1 53 7 1 7 56 1 56 8 1 8 59 1 59 9 1 9 62 1
		 62 10 1 10 65 1 65 11 1 11 68 1 68 12 1 12 71 1 71 13 1 13 74 1 74 14 1 14 77 1 77 15 1
		 15 80 1 80 0 1 16 117 1 117 17 1 17 120 1 120 18 1 18 123 1 123 19 1 19 126 1 126 20 1
		 20 49 1 49 21 1 21 52 1 52 22 1 22 55 1 55 23 1 23 58 1 58 24 1 24 61 1 61 25 1 25 64 1
		 64 26 1 26 67 1 67 27 1 27 70 1 70 28 1 28 73 1 73 29 1 29 76 1 76 30 1 30 79 1 79 31 1
		 31 81 1 81 16 1 32 84 1 84 33 1 33 86 1 86 34 1 34 88 1 88 35 1 35 90 1 90 36 1 36 92 1
		 92 37 1 37 94 1 94 38 1 38 96 1 96 39 1 39 98 1 98 40 1 40 100 1 100 41 1 41 102 1
		 102 42 1 42 104 1 104 43 1 43 106 1 106 44 1 44 108 1 108 45 1 45 110 1 110 46 1
		 46 112 1 112 47 1 47 113 1 113 32 1 0 115 1 115 16 1 1 116 1 116 17 1 2 119 1 119 18 1
		 3 122 1 122 19 1 4 125 1 125 20 1 5 48 1 48 21 1 6 51 1 51 22 1 7 54 1 54 23 1 8 57 1
		 57 24 1 9 60 1 60 25 1 10 63 1 63 26 1 11 66 1 66 27 1 12 69 1 69 28 1 13 72 1 72 29 1
		 14 75 1 75 30 1 15 78 1 78 31 1 16 82 1 82 32 1 17 83 1 83 33 1 18 85 1 85 34 1 19 87 1
		 87 35 1 20 89 1 89 36 1 21 91 1 91 37 1 22 93 1 93 38 1 23 95 1 95 39 1 24 97 1 97 40 1
		 25 99 1 99 41 1 26 101 1 101 42 1 27 103 1 103 43 1 28 105 1 105 44 1 29 107 1 107 45 1
		 30 109 1 109 46 1 31 111 1 111 47 1 114 128 1 128 115 1 116 128 1 117 128 1 118 129 1
		 129 116 1;
	setAttr ".ed[166:319]" 119 129 1 120 129 1 121 130 1 130 119 1 122 130 1 123 130 1
		 124 131 1 131 122 1 125 131 1 126 131 1 127 132 1 132 125 1 48 132 1 49 132 1 50 133 1
		 133 48 1 51 133 1 52 133 1 53 134 1 134 51 1 54 134 1 55 134 1 56 135 1 135 54 1
		 57 135 1 58 135 1 59 136 1 136 57 1 60 136 1 61 136 1 62 137 1 137 60 1 63 137 1
		 64 137 1 65 138 1 138 63 1 66 138 1 67 138 1 68 139 1 139 66 1 69 139 1 70 139 1
		 71 140 1 140 69 1 72 140 1 73 140 1 74 141 1 141 72 1 75 141 1 76 141 1 77 142 1
		 142 75 1 78 142 1 79 142 1 80 143 1 143 78 1 115 143 1 81 143 1 117 144 1 144 82 1
		 83 144 1 84 144 1 120 145 1 145 83 1 85 145 1 86 145 1 123 146 1 146 85 1 87 146 1
		 88 146 1 126 147 1 147 87 1 89 147 1 90 147 1 49 148 1 148 89 1 91 148 1 92 148 1
		 52 149 1 149 91 1 93 149 1 94 149 1 55 150 1 150 93 1 95 150 1 96 150 1 58 151 1
		 151 95 1 97 151 1 98 151 1 61 152 1 152 97 1 99 152 1 100 152 1 64 153 1 153 99 1
		 101 153 1 102 153 1 67 154 1 154 101 1 103 154 1 104 154 1 70 155 1 155 103 1 105 155 1
		 106 155 1 73 156 1 156 105 1 107 156 1 108 156 1 76 157 1 157 107 1 109 157 1 110 157 1
		 79 158 1 158 109 1 111 158 1 112 158 1 81 159 1 159 111 1 82 159 1 113 159 1 80 160 1
		 160 114 1 77 160 1 74 160 1 71 160 1 68 160 1 65 160 1 62 160 1 59 160 1 56 160 1
		 53 160 1 50 160 1 127 160 1 124 160 1 121 160 1 118 160 1 84 161 1 161 113 1 86 161 1
		 88 161 1 90 161 1 92 161 1 94 161 1 96 161 1 98 161 1 100 161 1 102 161 1 104 161 1
		 106 161 1 108 161 1 110 161 1 112 161 1;
	setAttr -s 160 -ch 640 ".fc[0:159]" -type "polyFaces" 
		f 4 0 160 161 -97
		mu 0 4 0 4 13 3
		f 4 1 98 162 -161
		mu 0 4 4 5 28 13
		f 4 -163 99 -34 163
		mu 0 4 13 28 261 257
		f 4 -162 -164 -33 -98
		mu 0 4 3 13 257 15
		f 4 2 164 165 -99
		mu 0 4 5 20 29 28
		f 4 3 100 166 -165
		mu 0 4 20 21 44 29
		f 4 -167 101 -36 167
		mu 0 4 29 44 277 273
		f 4 -166 -168 -35 -100
		mu 0 4 28 29 273 261
		f 4 4 168 169 -101
		mu 0 4 21 36 45 44
		f 4 5 102 170 -169
		mu 0 4 36 37 60 45
		f 4 -171 103 -38 171
		mu 0 4 45 60 293 289
		f 4 -170 -172 -37 -102
		mu 0 4 44 45 289 277
		f 4 6 172 173 -103
		mu 0 4 37 52 61 60
		f 4 7 104 174 -173
		mu 0 4 52 53 76 61
		f 4 -175 105 -40 175
		mu 0 4 61 76 309 305
		f 4 -174 -176 -39 -104
		mu 0 4 60 61 305 293
		f 4 8 176 177 -105
		mu 0 4 53 68 77 76
		f 4 9 106 178 -177
		mu 0 4 68 69 92 77
		f 4 -179 107 -42 179
		mu 0 4 77 92 325 321
		f 4 -178 -180 -41 -106
		mu 0 4 76 77 321 309
		f 4 10 180 181 -107
		mu 0 4 69 84 93 92
		f 4 11 108 182 -181
		mu 0 4 84 85 108 93
		f 4 -183 109 -44 183
		mu 0 4 93 108 341 337
		f 4 -182 -184 -43 -108
		mu 0 4 92 93 337 325
		f 4 12 184 185 -109
		mu 0 4 85 100 109 108
		f 4 13 110 186 -185
		mu 0 4 100 101 124 109
		f 4 -187 111 -46 187
		mu 0 4 109 124 357 353
		f 4 -186 -188 -45 -110
		mu 0 4 108 109 353 341
		f 4 14 188 189 -111
		mu 0 4 101 116 125 124
		f 4 15 112 190 -189
		mu 0 4 116 117 140 125
		f 4 -191 113 -48 191
		mu 0 4 125 140 373 369
		f 4 -190 -192 -47 -112
		mu 0 4 124 125 369 357
		f 4 16 192 193 -113
		mu 0 4 117 132 141 140
		f 4 17 114 194 -193
		mu 0 4 132 133 156 141
		f 4 -195 115 -50 195
		mu 0 4 141 156 389 385
		f 4 -194 -196 -49 -114
		mu 0 4 140 141 385 373
		f 4 18 196 197 -115
		mu 0 4 133 148 157 156
		f 4 19 116 198 -197
		mu 0 4 148 149 172 157
		f 4 -199 117 -52 199
		mu 0 4 157 172 405 401
		f 4 -198 -200 -51 -116
		mu 0 4 156 157 401 389
		f 4 20 200 201 -117
		mu 0 4 149 164 173 172
		f 4 21 118 202 -201
		mu 0 4 164 165 188 173
		f 4 -203 119 -54 203
		mu 0 4 173 188 421 417
		f 4 -202 -204 -53 -118
		mu 0 4 172 173 417 405
		f 4 22 204 205 -119
		mu 0 4 165 180 189 188
		f 4 23 120 206 -205
		mu 0 4 180 181 204 189
		f 4 -207 121 -56 207
		mu 0 4 189 204 437 433
		f 4 -206 -208 -55 -120
		mu 0 4 188 189 433 421
		f 4 24 208 209 -121
		mu 0 4 181 196 205 204
		f 4 25 122 210 -209
		mu 0 4 196 197 220 205
		f 4 -211 123 -58 211
		mu 0 4 205 220 453 449
		f 4 -210 -212 -57 -122
		mu 0 4 204 205 449 437
		f 4 26 212 213 -123
		mu 0 4 197 212 221 220
		f 4 27 124 214 -213
		mu 0 4 212 213 236 221
		f 4 -215 125 -60 215
		mu 0 4 221 236 469 465
		f 4 -214 -216 -59 -124
		mu 0 4 220 221 465 453
		f 4 28 216 217 -125
		mu 0 4 213 228 237 236
		f 4 29 126 218 -217
		mu 0 4 228 229 252 237
		f 4 -219 127 -62 219
		mu 0 4 237 252 485 481
		f 4 -218 -220 -61 -126
		mu 0 4 236 237 481 469
		f 4 30 220 221 -127
		mu 0 4 229 244 253 252
		f 4 31 96 222 -221
		mu 0 4 244 245 246 253
		f 4 -223 97 -64 223
		mu 0 4 253 246 501 497
		f 4 -222 -224 -63 -128
		mu 0 4 252 253 497 485
		f 4 32 224 225 -129
		mu 0 4 15 257 269 259
		f 4 33 130 226 -225
		mu 0 4 257 261 284 269
		f 4 -227 131 -66 227
		mu 0 4 269 284 287 270
		f 4 -226 -228 -65 -130
		mu 0 4 259 269 270 271
		f 4 34 228 229 -131
		mu 0 4 261 273 285 284
		f 4 35 132 230 -229
		mu 0 4 273 277 300 285
		f 4 -231 133 -68 231
		mu 0 4 285 300 303 286
		f 4 -230 -232 -67 -132
		mu 0 4 284 285 286 287
		f 4 36 232 233 -133
		mu 0 4 277 289 301 300
		f 4 37 134 234 -233
		mu 0 4 289 293 316 301
		f 4 -235 135 -70 235
		mu 0 4 301 316 319 302
		f 4 -234 -236 -69 -134
		mu 0 4 300 301 302 303
		f 4 38 236 237 -135
		mu 0 4 293 305 317 316
		f 4 39 136 238 -237
		mu 0 4 305 309 332 317
		f 4 -239 137 -72 239
		mu 0 4 317 332 335 318
		f 4 -238 -240 -71 -136
		mu 0 4 316 317 318 319
		f 4 40 240 241 -137
		mu 0 4 309 321 333 332
		f 4 41 138 242 -241
		mu 0 4 321 325 348 333
		f 4 -243 139 -74 243
		mu 0 4 333 348 351 334
		f 4 -242 -244 -73 -138
		mu 0 4 332 333 334 335
		f 4 42 244 245 -139
		mu 0 4 325 337 349 348
		f 4 43 140 246 -245
		mu 0 4 337 341 364 349
		f 4 -247 141 -76 247
		mu 0 4 349 364 367 350
		f 4 -246 -248 -75 -140
		mu 0 4 348 349 350 351
		f 4 44 248 249 -141
		mu 0 4 341 353 365 364
		f 4 45 142 250 -249
		mu 0 4 353 357 380 365
		f 4 -251 143 -78 251
		mu 0 4 365 380 383 366
		f 4 -250 -252 -77 -142
		mu 0 4 364 365 366 367
		f 4 46 252 253 -143
		mu 0 4 357 369 381 380
		f 4 47 144 254 -253
		mu 0 4 369 373 396 381
		f 4 -255 145 -80 255
		mu 0 4 381 396 399 382
		f 4 -254 -256 -79 -144
		mu 0 4 380 381 382 383
		f 4 48 256 257 -145
		mu 0 4 373 385 397 396
		f 4 49 146 258 -257
		mu 0 4 385 389 412 397
		f 4 -259 147 -82 259
		mu 0 4 397 412 415 398
		f 4 -258 -260 -81 -146
		mu 0 4 396 397 398 399
		f 4 50 260 261 -147
		mu 0 4 389 401 413 412
		f 4 51 148 262 -261
		mu 0 4 401 405 428 413
		f 4 -263 149 -84 263
		mu 0 4 413 428 431 414
		f 4 -262 -264 -83 -148
		mu 0 4 412 413 414 415
		f 4 52 264 265 -149
		mu 0 4 405 417 429 428
		f 4 53 150 266 -265
		mu 0 4 417 421 444 429
		f 4 -267 151 -86 267
		mu 0 4 429 444 447 430
		f 4 -266 -268 -85 -150
		mu 0 4 428 429 430 431
		f 4 54 268 269 -151
		mu 0 4 421 433 445 444
		f 4 55 152 270 -269
		mu 0 4 433 437 460 445
		f 4 -271 153 -88 271
		mu 0 4 445 460 463 446
		f 4 -270 -272 -87 -152
		mu 0 4 444 445 446 447
		f 4 56 272 273 -153
		mu 0 4 437 449 461 460
		f 4 57 154 274 -273
		mu 0 4 449 453 476 461
		f 4 -275 155 -90 275
		mu 0 4 461 476 479 462
		f 4 -274 -276 -89 -154
		mu 0 4 460 461 462 463
		f 4 58 276 277 -155
		mu 0 4 453 465 477 476
		f 4 59 156 278 -277
		mu 0 4 465 469 492 477
		f 4 -279 157 -92 279
		mu 0 4 477 492 495 478
		f 4 -278 -280 -91 -156
		mu 0 4 476 477 478 479
		f 4 60 280 281 -157
		mu 0 4 469 481 493 492
		f 4 61 158 282 -281
		mu 0 4 481 485 508 493
		f 4 -283 159 -94 283
		mu 0 4 493 508 511 494
		f 4 -282 -284 -93 -158
		mu 0 4 492 493 494 495
		f 4 62 284 285 -159
		mu 0 4 485 497 509 508
		f 4 63 128 286 -285
		mu 0 4 497 501 502 509
		f 4 -287 129 -96 287
		mu 0 4 509 502 506 510
		f 4 -286 -288 -95 -160
		mu 0 4 508 509 510 511
		f 4 -32 288 289 -1
		mu 0 4 512 513 574 573
		f 4 -30 290 -289 -31
		mu 0 4 516 517 574 513
		f 4 -28 291 -291 -29
		mu 0 4 520 521 574 517
		f 4 -26 292 -292 -27
		mu 0 4 524 525 574 521
		f 4 -24 293 -293 -25
		mu 0 4 528 529 574 525
		f 4 -22 294 -294 -23
		mu 0 4 532 533 574 529
		f 4 -20 295 -295 -21
		mu 0 4 536 537 574 533
		f 4 -18 296 -296 -19
		mu 0 4 540 541 574 537
		f 4 -16 297 -297 -17
		mu 0 4 544 545 574 541
		f 4 -14 298 -298 -15
		mu 0 4 548 549 574 545
		f 4 -12 299 -299 -13
		mu 0 4 552 553 574 549
		f 4 -10 300 -300 -11
		mu 0 4 556 557 574 553
		f 4 -8 301 -301 -9
		mu 0 4 560 561 574 557
		f 4 -6 302 -302 -7
		mu 0 4 564 565 574 561
		f 4 -4 303 -303 -5
		mu 0 4 568 569 574 565
		f 4 -2 -290 -304 -3
		mu 0 4 572 573 574 569
		f 4 64 304 305 95
		mu 0 4 576 577 638 637
		f 4 66 306 -305 65
		mu 0 4 580 581 638 577
		f 4 68 307 -307 67
		mu 0 4 584 585 638 581
		f 4 70 308 -308 69
		mu 0 4 588 589 638 585
		f 4 72 309 -309 71
		mu 0 4 592 593 638 589
		f 4 74 310 -310 73
		mu 0 4 596 597 638 593
		f 4 76 311 -311 75
		mu 0 4 600 601 638 597
		f 4 78 312 -312 77
		mu 0 4 604 605 638 601
		f 4 80 313 -313 79
		mu 0 4 608 609 638 605
		f 4 82 314 -314 81
		mu 0 4 612 613 638 609
		f 4 84 315 -315 83
		mu 0 4 616 617 638 613
		f 4 86 316 -316 85
		mu 0 4 620 621 638 617
		f 4 88 317 -317 87
		mu 0 4 624 625 638 621
		f 4 90 318 -318 89
		mu 0 4 628 629 638 625
		f 4 92 319 -319 91
		mu 0 4 632 633 638 629
		f 4 94 -306 -320 93
		mu 0 4 636 637 638 633;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder5" -p "group6";
	setAttr ".t" -type "double3" 6.7162553653979957 0.45952612645520574 -2.4126028184101194 ;
	setAttr ".r" -type "double3" 0 -208.58185401634677 0 ;
	setAttr ".s" -type "double3" 2.9895454964036157 0.1748455520395385 9.588309375319529 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 640 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0.3125 0.3828125 0.3125
		 0.3828125 0.40648496 0.375 0.40648496 0.3828125 0.3125 0.390625 0.3125 0.390625 0.40648496
		 0.3828125 0.40648496 0.3828125 0.40648496 0.390625 0.40648496 0.390625 0.50046992
		 0.3828125 0.50046992 0.375 0.40648496 0.3828125 0.40648496 0.3828125 0.50046992 0.375
		 0.50046992 0.390625 0.3125 0.3984375 0.3125 0.3984375 0.40648496 0.390625 0.40648496
		 0.3984375 0.3125 0.40625 0.3125 0.40625 0.40648496 0.3984375 0.40648496 0.3984375
		 0.40648496 0.40625 0.40648496 0.40625 0.50046992 0.3984375 0.50046992 0.390625 0.40648496
		 0.3984375 0.40648496 0.3984375 0.50046992 0.390625 0.50046992 0.40625 0.3125 0.4140625
		 0.3125 0.4140625 0.40648496 0.40625 0.40648496 0.4140625 0.3125 0.421875 0.3125 0.421875
		 0.40648496 0.4140625 0.40648496 0.4140625 0.40648496 0.421875 0.40648496 0.421875
		 0.50046992 0.4140625 0.50046992 0.40625 0.40648496 0.4140625 0.40648496 0.4140625
		 0.50046992 0.40625 0.50046992 0.421875 0.3125 0.4296875 0.3125 0.4296875 0.40648496
		 0.421875 0.40648496 0.4296875 0.3125 0.4375 0.3125 0.4375 0.40648496 0.4296875 0.40648496
		 0.4296875 0.40648496 0.4375 0.40648496 0.4375 0.50046992 0.4296875 0.50046992 0.421875
		 0.40648496 0.4296875 0.40648496 0.4296875 0.50046992 0.421875 0.50046992 0.4375 0.3125
		 0.4453125 0.3125 0.4453125 0.40648496 0.4375 0.40648496 0.4453125 0.3125 0.453125
		 0.3125 0.453125 0.40648496 0.4453125 0.40648496 0.4453125 0.40648496 0.453125 0.40648496
		 0.453125 0.50046992 0.4453125 0.50046992 0.4375 0.40648496 0.4453125 0.40648496 0.4453125
		 0.50046992 0.4375 0.50046992 0.453125 0.3125 0.4609375 0.3125 0.4609375 0.40648496
		 0.453125 0.40648496 0.4609375 0.3125 0.46875 0.3125 0.46875 0.40648496 0.4609375
		 0.40648496 0.4609375 0.40648496 0.46875 0.40648496 0.46875 0.50046992 0.4609375 0.50046992
		 0.453125 0.40648496 0.4609375 0.40648496 0.4609375 0.50046992 0.453125 0.50046992
		 0.46875 0.3125 0.4765625 0.3125 0.4765625 0.40648496 0.46875 0.40648496 0.4765625
		 0.3125 0.484375 0.3125 0.484375 0.40648496 0.4765625 0.40648496 0.4765625 0.40648496
		 0.484375 0.40648496 0.484375 0.50046992 0.4765625 0.50046992 0.46875 0.40648496 0.4765625
		 0.40648496 0.4765625 0.50046992 0.46875 0.50046992 0.484375 0.3125 0.4921875 0.3125
		 0.4921875 0.40648496 0.484375 0.40648496 0.4921875 0.3125 0.5 0.3125 0.5 0.40648496
		 0.4921875 0.40648496 0.4921875 0.40648496 0.5 0.40648496 0.5 0.50046992 0.4921875
		 0.50046992 0.484375 0.40648496 0.4921875 0.40648496 0.4921875 0.50046992 0.484375
		 0.50046992 0.5 0.3125 0.5078125 0.3125 0.5078125 0.40648496 0.5 0.40648496 0.5078125
		 0.3125 0.515625 0.3125 0.515625 0.40648496 0.5078125 0.40648496 0.5078125 0.40648496
		 0.515625 0.40648496 0.515625 0.50046992 0.5078125 0.50046992 0.5 0.40648496 0.5078125
		 0.40648496 0.5078125 0.50046992 0.5 0.50046992 0.515625 0.3125 0.5234375 0.3125 0.5234375
		 0.40648496 0.515625 0.40648496 0.5234375 0.3125 0.53125 0.3125 0.53125 0.40648496
		 0.5234375 0.40648496 0.5234375 0.40648496 0.53125 0.40648496 0.53125 0.50046992 0.5234375
		 0.50046992 0.515625 0.40648496 0.5234375 0.40648496 0.5234375 0.50046992 0.515625
		 0.50046992 0.53125 0.3125 0.5390625 0.3125 0.5390625 0.40648496 0.53125 0.40648496
		 0.5390625 0.3125 0.546875 0.3125 0.546875 0.40648496 0.5390625 0.40648496 0.5390625
		 0.40648496 0.546875 0.40648496 0.546875 0.50046992 0.5390625 0.50046992 0.53125 0.40648496
		 0.5390625 0.40648496 0.5390625 0.50046992 0.53125 0.50046992 0.546875 0.3125 0.5546875
		 0.3125 0.5546875 0.40648496 0.546875 0.40648496 0.5546875 0.3125 0.5625 0.3125 0.5625
		 0.40648496 0.5546875 0.40648496 0.5546875 0.40648496 0.5625 0.40648496 0.5625 0.50046992
		 0.5546875 0.50046992 0.546875 0.40648496 0.5546875 0.40648496 0.5546875 0.50046992
		 0.546875 0.50046992 0.5625 0.3125 0.5703125 0.3125 0.5703125 0.40648496 0.5625 0.40648496
		 0.5703125 0.3125 0.578125 0.3125 0.578125 0.40648496 0.5703125 0.40648496 0.5703125
		 0.40648496 0.578125 0.40648496 0.578125 0.50046992 0.5703125 0.50046992 0.5625 0.40648496
		 0.5703125 0.40648496 0.5703125 0.50046992 0.5625 0.50046992 0.578125 0.3125 0.5859375
		 0.3125 0.5859375 0.40648496 0.578125 0.40648496 0.5859375 0.3125 0.59375 0.3125 0.59375
		 0.40648496 0.5859375 0.40648496 0.5859375 0.40648496 0.59375 0.40648496 0.59375 0.50046992
		 0.5859375 0.50046992 0.578125 0.40648496 0.5859375 0.40648496 0.5859375 0.50046992
		 0.578125 0.50046992 0.59375 0.3125 0.6015625 0.3125 0.6015625 0.40648496 0.59375
		 0.40648496 0.6015625 0.3125 0.609375 0.3125 0.609375 0.40648496 0.6015625 0.40648496
		 0.6015625 0.40648496 0.609375 0.40648496 0.609375 0.50046992 0.6015625 0.50046992
		 0.59375 0.40648496 0.6015625 0.40648496 0.6015625 0.50046992 0.59375 0.50046992 0.609375
		 0.3125 0.6171875 0.3125 0.6171875 0.40648496 0.609375 0.40648496 0.6171875 0.3125
		 0.625 0.3125 0.625 0.40648496 0.6171875 0.40648496 0.6171875 0.40648496 0.625 0.40648496;
	setAttr ".uvst[0].uvsp[250:499]" 0.625 0.50046992 0.6171875 0.50046992 0.609375
		 0.40648496 0.6171875 0.40648496 0.6171875 0.50046992 0.609375 0.50046992 0.375 0.50046992
		 0.3828125 0.50046992 0.3828125 0.59445488 0.375 0.59445488 0.3828125 0.50046992 0.390625
		 0.50046992 0.390625 0.59445488 0.3828125 0.59445488 0.3828125 0.59445488 0.390625
		 0.59445488 0.390625 0.68843985 0.3828125 0.68843985 0.375 0.59445488 0.3828125 0.59445488
		 0.3828125 0.68843985 0.375 0.68843985 0.390625 0.50046992 0.3984375 0.50046992 0.3984375
		 0.59445488 0.390625 0.59445488 0.3984375 0.50046992 0.40625 0.50046992 0.40625 0.59445488
		 0.3984375 0.59445488 0.3984375 0.59445488 0.40625 0.59445488 0.40625 0.68843985 0.3984375
		 0.68843985 0.390625 0.59445488 0.3984375 0.59445488 0.3984375 0.68843985 0.390625
		 0.68843985 0.40625 0.50046992 0.4140625 0.50046992 0.4140625 0.59445488 0.40625 0.59445488
		 0.4140625 0.50046992 0.421875 0.50046992 0.421875 0.59445488 0.4140625 0.59445488
		 0.4140625 0.59445488 0.421875 0.59445488 0.421875 0.68843985 0.4140625 0.68843985
		 0.40625 0.59445488 0.4140625 0.59445488 0.4140625 0.68843985 0.40625 0.68843985 0.421875
		 0.50046992 0.4296875 0.50046992 0.4296875 0.59445488 0.421875 0.59445488 0.4296875
		 0.50046992 0.4375 0.50046992 0.4375 0.59445488 0.4296875 0.59445488 0.4296875 0.59445488
		 0.4375 0.59445488 0.4375 0.68843985 0.4296875 0.68843985 0.421875 0.59445488 0.4296875
		 0.59445488 0.4296875 0.68843985 0.421875 0.68843985 0.4375 0.50046992 0.4453125 0.50046992
		 0.4453125 0.59445488 0.4375 0.59445488 0.4453125 0.50046992 0.453125 0.50046992 0.453125
		 0.59445488 0.4453125 0.59445488 0.4453125 0.59445488 0.453125 0.59445488 0.453125
		 0.68843985 0.4453125 0.68843985 0.4375 0.59445488 0.4453125 0.59445488 0.4453125
		 0.68843985 0.4375 0.68843985 0.453125 0.50046992 0.4609375 0.50046992 0.4609375 0.59445488
		 0.453125 0.59445488 0.4609375 0.50046992 0.46875 0.50046992 0.46875 0.59445488 0.4609375
		 0.59445488 0.4609375 0.59445488 0.46875 0.59445488 0.46875 0.68843985 0.4609375 0.68843985
		 0.453125 0.59445488 0.4609375 0.59445488 0.4609375 0.68843985 0.453125 0.68843985
		 0.46875 0.50046992 0.4765625 0.50046992 0.4765625 0.59445488 0.46875 0.59445488 0.4765625
		 0.50046992 0.484375 0.50046992 0.484375 0.59445488 0.4765625 0.59445488 0.4765625
		 0.59445488 0.484375 0.59445488 0.484375 0.68843985 0.4765625 0.68843985 0.46875 0.59445488
		 0.4765625 0.59445488 0.4765625 0.68843985 0.46875 0.68843985 0.484375 0.50046992
		 0.4921875 0.50046992 0.4921875 0.59445488 0.484375 0.59445488 0.4921875 0.50046992
		 0.5 0.50046992 0.5 0.59445488 0.4921875 0.59445488 0.4921875 0.59445488 0.5 0.59445488
		 0.5 0.68843985 0.4921875 0.68843985 0.484375 0.59445488 0.4921875 0.59445488 0.4921875
		 0.68843985 0.484375 0.68843985 0.5 0.50046992 0.5078125 0.50046992 0.5078125 0.59445488
		 0.5 0.59445488 0.5078125 0.50046992 0.515625 0.50046992 0.515625 0.59445488 0.5078125
		 0.59445488 0.5078125 0.59445488 0.515625 0.59445488 0.515625 0.68843985 0.5078125
		 0.68843985 0.5 0.59445488 0.5078125 0.59445488 0.5078125 0.68843985 0.5 0.68843985
		 0.515625 0.50046992 0.5234375 0.50046992 0.5234375 0.59445488 0.515625 0.59445488
		 0.5234375 0.50046992 0.53125 0.50046992 0.53125 0.59445488 0.5234375 0.59445488 0.5234375
		 0.59445488 0.53125 0.59445488 0.53125 0.68843985 0.5234375 0.68843985 0.515625 0.59445488
		 0.5234375 0.59445488 0.5234375 0.68843985 0.515625 0.68843985 0.53125 0.50046992
		 0.5390625 0.50046992 0.5390625 0.59445488 0.53125 0.59445488 0.5390625 0.50046992
		 0.546875 0.50046992 0.546875 0.59445488 0.5390625 0.59445488 0.5390625 0.59445488
		 0.546875 0.59445488 0.546875 0.68843985 0.5390625 0.68843985 0.53125 0.59445488 0.5390625
		 0.59445488 0.5390625 0.68843985 0.53125 0.68843985 0.546875 0.50046992 0.5546875
		 0.50046992 0.5546875 0.59445488 0.546875 0.59445488 0.5546875 0.50046992 0.5625 0.50046992
		 0.5625 0.59445488 0.5546875 0.59445488 0.5546875 0.59445488 0.5625 0.59445488 0.5625
		 0.68843985 0.5546875 0.68843985 0.546875 0.59445488 0.5546875 0.59445488 0.5546875
		 0.68843985 0.546875 0.68843985 0.5625 0.50046992 0.5703125 0.50046992 0.5703125 0.59445488
		 0.5625 0.59445488 0.5703125 0.50046992 0.578125 0.50046992 0.578125 0.59445488 0.5703125
		 0.59445488 0.5703125 0.59445488 0.578125 0.59445488 0.578125 0.68843985 0.5703125
		 0.68843985 0.5625 0.59445488 0.5703125 0.59445488 0.5703125 0.68843985 0.5625 0.68843985
		 0.578125 0.50046992 0.5859375 0.50046992 0.5859375 0.59445488 0.578125 0.59445488
		 0.5859375 0.50046992 0.59375 0.50046992 0.59375 0.59445488 0.5859375 0.59445488 0.5859375
		 0.59445488 0.59375 0.59445488 0.59375 0.68843985 0.5859375 0.68843985 0.578125 0.59445488
		 0.5859375 0.59445488 0.5859375 0.68843985 0.578125 0.68843985 0.59375 0.50046992
		 0.6015625 0.50046992 0.6015625 0.59445488 0.59375 0.59445488 0.6015625 0.50046992
		 0.609375 0.50046992 0.609375 0.59445488 0.6015625 0.59445488 0.6015625 0.59445488
		 0.609375 0.59445488 0.609375 0.68843985 0.6015625 0.68843985 0.59375 0.59445488 0.6015625
		 0.59445488 0.6015625 0.68843985 0.59375 0.68843985 0.609375 0.50046992 0.6171875
		 0.50046992 0.6171875 0.59445488 0.609375 0.59445488;
	setAttr ".uvst[0].uvsp[500:639]" 0.6171875 0.50046992 0.625 0.50046992 0.625
		 0.59445488 0.6171875 0.59445488 0.6171875 0.59445488 0.625 0.59445488 0.625 0.68843985
		 0.6171875 0.68843985 0.609375 0.59445488 0.6171875 0.59445488 0.6171875 0.68843985
		 0.609375 0.68843985 0.64435619 0.096455798 0.65030313 0.12635291 0.5 0.15624999 0.62742084
		 0.071110219 0.65625 0.15625 0.65030313 0.18614715 0.5 0.15624999 0.65030313 0.12635291
		 0.64435619 0.21604429 0.62742078 0.24138987 0.5 0.15624999 0.65030313 0.18614715
		 0.61048543 0.26673543 0.58513987 0.28367081 0.5 0.15624999 0.62742078 0.24138987
		 0.55979425 0.30060619 0.52989709 0.3065531 0.5 0.15624999 0.58513987 0.28367081 0.49999997
		 0.3125 0.47010285 0.30655307 0.5 0.15624999 0.52989709 0.3065531 0.44020569 0.30060616
		 0.41486013 0.28367078 0.5 0.15624999 0.47010285 0.30655307 0.38951454 0.2667354 0.37257916
		 0.24138983 0.5 0.15624999 0.41486013 0.28367078 0.35564381 0.21604425 0.3496969 0.18614709
		 0.5 0.15624999 0.37257916 0.24138983 0.34375 0.15624994 0.34969693 0.1263528 0.5
		 0.15624999 0.3496969 0.18614709 0.35564384 0.096455663 0.37257922 0.071110092 0.5
		 0.15624999 0.34969693 0.1263528 0.38951463 0.045764521 0.41486019 0.028829157 0.5
		 0.15624999 0.37257922 0.071110092 0.44020578 0.011893794 0.47010291 0.0059469044
		 0.5 0.15624999 0.41486019 0.028829157 0.50000006 1.4901161e-008 0.52989721 0.0059469417
		 0.5 0.15624999 0.47010291 0.0059469044 0.55979437 0.011893868 0.58513993 0.02882925
		 0.5 0.15624999 0.52989721 0.0059469417 0.61048549 0.045764633 0.62742084 0.071110219
		 0.5 0.15624999 0.58513993 0.02882925 0.64435619 0.90354431 0.62742078 0.92888987
		 0.49999997 0.84375012 0.65030313 0.87364715 0.61048543 0.95423543 0.58513987 0.97117078
		 0.49999997 0.84375012 0.62742078 0.92888987 0.55979425 0.98810619 0.52989709 0.99405313
		 0.49999997 0.84375012 0.58513987 0.97117078 0.49999997 1 0.47010285 0.99405307 0.49999997
		 0.84375012 0.52989709 0.99405313 0.44020569 0.98810613 0.41486013 0.97117078 0.49999997
		 0.84375012 0.47010285 0.99405307 0.38951454 0.95423543 0.37257916 0.92888987 0.49999997
		 0.84375012 0.41486013 0.97117078 0.35564381 0.90354425 0.3496969 0.87364709 0.49999997
		 0.84375012 0.37257916 0.92888987 0.34375 0.84374994 0.34969693 0.81385279 0.49999997
		 0.84375012 0.3496969 0.87364709 0.35564384 0.78395569 0.37257922 0.75861013 0.49999997
		 0.84375012 0.34969693 0.81385279 0.38951463 0.73326451 0.41486019 0.71632916 0.49999997
		 0.84375012 0.37257922 0.75861013 0.44020578 0.69939381 0.47010291 0.69344687 0.49999997
		 0.84375012 0.41486019 0.71632916 0.50000006 0.6875 0.52989721 0.69344693 0.49999997
		 0.84375012 0.47010291 0.69344687 0.55979437 0.69939387 0.58513993 0.71632922 0.49999997
		 0.84375012 0.52989721 0.69344693 0.61048549 0.73326463 0.62742084 0.75861025 0.49999997
		 0.84375012 0.58513993 0.71632922 0.64435619 0.78395581 0.65030313 0.81385291 0.49999997
		 0.84375012 0.62742084 0.75861025 0.65625 0.84375 0.65030313 0.87364715 0.49999997
		 0.84375012 0.65030313 0.81385291;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 162 ".vt[0:161]"  0.79778439 -0.77777779 -0.33045268 0.61059791 -0.77777779 -0.61059719
		 0.33045343 -0.77777779 -0.79778397 4.3958426e-007 -0.77777779 -0.86351538 -0.33045265 -0.77777779 -0.79778433
		 -0.61059731 -0.77777779 -0.61059785 -0.79778409 -0.77777779 -0.33045334 -0.86351538 -0.77777779 -3.1292439e-007
		 -0.79778433 -0.77777779 0.33045277 -0.61059773 -0.77777779 0.61059743 -0.33045322 -0.77777779 0.79778415
		 -1.3038516e-007 -0.77777779 0.86351538 0.33045295 -0.77777779 0.79778427 0.61059755 -0.77777779 0.61059761
		 0.79778415 -0.77777779 0.33045307 0.86351544 -0.77777779 9.3132257e-008 0.90629822 0 -0.37540045
		 0.69365078 0 -0.69365001 0.37540138 0 -0.9062978 4.9173832e-007 0 -0.98096985 -0.37540048 0 -0.90629816
		 -0.69365013 0 -0.69365066 -0.90629786 0 -0.37540126 -0.98096991 0 -3.5017729e-007
		 -0.9062981 0 0.37540063 -0.6936506 0 0.69365025 -0.37540108 0 0.90629792 -1.4901161e-007 0 0.98096991
		 0.37540078 0 0.9062981 0.69365042 0 0.69365054 0.90629792 0 0.37540096 0.98096991 0 6.7986548e-008
		 0.79778433 0.77777779 -0.33045268 0.61059797 0.77777779 -0.61059725 0.33045343 0.77777779 -0.79778397
		 4.4372348e-007 0.77777779 -0.86351538 -0.33045265 0.77777779 -0.79778439 -0.61059737 0.77777779 -0.61059785
		 -0.79778409 0.77777779 -0.33045334 -0.86351538 0.77777779 -3.0754342e-007 -0.79778427 0.77777779 0.3304528
		 -0.61059767 0.77777779 0.61059743 -0.33045322 0.77777779 0.79778415 -1.1879537e-007 0.77777779 0.86351538
		 0.33045295 0.77777779 0.79778427 0.61059755 0.77777779 0.61059767 0.79778421 0.77777779 0.33045307
		 0.8635155 0.77777779 9.1062653e-008 -0.69365013 -0.5 -0.69365072 -0.5448947 0 -0.81549335
		 -0.61161971 -0.875 -0.40867156 -0.90629792 -0.5 -0.37540126 -0.81549299 0 -0.54489541
		 -0.72145474 -0.875 -0.14350656 -0.98096991 -0.5 -3.5017729e-007 -0.96193969 0 -0.19134207
		 -0.72145486 -0.875 0.14350604 -0.9062981 -0.5 0.37540063 -0.96193981 0 0.19134139
		 -0.61161995 -0.875 0.40867114 -0.6936506 -0.5 0.69365025 -0.81549329 0 0.54489487
		 -0.40867144 -0.875 0.61161971 -0.37540108 -0.5 0.90629792 -0.54489529 0 0.81549299
		 -0.14350639 -0.875 0.72145474 -1.4901161e-007 -0.5 0.98096991 -0.19134188 0 0.96193969
		 0.1435062 -0.875 0.72145486 0.37540078 -0.5 0.90629804 0.19134158 0 0.96193981 0.40867129 -0.875 0.61161995
		 0.69365036 -0.5 0.69365048 0.54489499 0 0.81549323 0.61161983 -0.875 0.40867138 0.90629798 -0.5 0.37540096
		 0.81549311 0 0.54489517 0.72145486 -0.875 0.14350629 0.98096991 -0.5 7.0780516e-008
		 0.96193981 0 0.19134173 0.72145492 -0.875 -0.14350608 0.96193987 0 -0.19134144 0.90629816 0.5 -0.37540045
		 0.69365084 0.5 -0.69365007 0.61162007 0.875 -0.40867096 0.37540141 0.5 -0.90629774
		 0.40867168 0.875 -0.61161959 4.9173832e-007 0.5 -0.98096979 0.14350668 0.875 -0.72145468
		 -0.37540048 0.5 -0.9062981 -0.1435059 0.875 -0.72145486 -0.69365013 0.5 -0.69365072
		 -0.40867099 0.875 -0.61162001 -0.90629792 0.5 -0.37540126 -0.61161971 0.875 -0.40867156
		 -0.98096991 0.5 -3.5017729e-007 -0.72145474 0.875 -0.14350656 -0.9062981 0.5 0.37540063
		 -0.72145486 0.875 0.14350604 -0.6936506 0.5 0.69365025 -0.61161995 0.875 0.40867114
		 -0.37540108 0.5 0.90629792 -0.40867144 0.875 0.61161971 -1.4901161e-007 0.5 0.98096991
		 -0.14350638 0.875 0.72145474 0.37540078 0.5 0.90629804 0.14350621 0.875 0.72145486
		 0.69365036 0.5 0.69365048 0.40867129 0.875 0.61161995 0.90629798 0.5 0.37540096 0.61161983 0.875 0.40867138
		 0.98096991 0.5 7.0780516e-008 0.72145486 0.875 0.14350629 0.72145492 0.875 -0.14350608
		 0.61162007 -0.875 -0.40867096 0.90629816 -0.5 -0.37540045 0.69365084 -0.5 -0.69365007
		 0.81549346 0 -0.54489464 0.40867168 -0.875 -0.61161959 0.37540141 -0.5 -0.90629774
		 0.54489553 0 -0.81549281 0.14350666 -0.875 -0.72145468 4.9173832e-007 -0.5 -0.98096979
		 0.1913422 0 -0.96193957 -0.14350592 -0.875 -0.72145486 -0.37540048 -0.5 -0.9062981
		 -0.19134125 0 -0.96193981 -0.40867099 -0.875 -0.61162001 0.81549346 -0.5 -0.54489464
		 0.54489553 -0.5 -0.81549281 0.1913422 -0.5 -0.96193957 -0.19134125 -0.5 -0.96193981
		 -0.5448947 -0.5 -0.81549335 -0.81549299 -0.5 -0.54489541 -0.96193969 -0.5 -0.19134207
		 -0.96193981 -0.5 0.19134139 -0.81549329 -0.5 0.54489487 -0.54489529 -0.5 0.81549299
		 -0.19134188 -0.5 0.96193969 0.19134158 -0.5 0.96193981 0.54489499 -0.5 0.81549323
		 0.81549311 -0.5 0.54489517 0.96193981 -0.5 0.19134173 0.96193987 -0.5 -0.19134144
		 0.81549346 0.5 -0.54489464 0.54489553 0.5 -0.81549281 0.1913422 0.5 -0.96193957 -0.19134125 0.5 -0.96193981
		 -0.5448947 0.5 -0.81549335 -0.81549299 0.5 -0.54489541 -0.96193969 0.5 -0.19134207
		 -0.96193981 0.5 0.19134139 -0.81549329 0.5 0.54489487 -0.54489529 0.5 0.81549299
		 -0.19134188 0.5 0.96193969 0.19134158 0.5 0.96193981 0.54489499 0.5 0.81549323 0.81549311 0.5 0.54489517
		 0.96193981 0.5 0.19134173 0.96193987 0.5 -0.19134144 8.5681677e-008 -1 -2.2351742e-008
		 1.0430813e-007 1 -1.8626451e-008;
	setAttr -s 320 ".ed";
	setAttr ".ed[0:165]"  0 114 1 114 1 1 1 118 1 118 2 1 2 121 1 121 3 1 3 124 1
		 124 4 1 4 127 1 127 5 1 5 50 1 50 6 1 6 53 1 53 7 1 7 56 1 56 8 1 8 59 1 59 9 1 9 62 1
		 62 10 1 10 65 1 65 11 1 11 68 1 68 12 1 12 71 1 71 13 1 13 74 1 74 14 1 14 77 1 77 15 1
		 15 80 1 80 0 1 16 117 1 117 17 1 17 120 1 120 18 1 18 123 1 123 19 1 19 126 1 126 20 1
		 20 49 1 49 21 1 21 52 1 52 22 1 22 55 1 55 23 1 23 58 1 58 24 1 24 61 1 61 25 1 25 64 1
		 64 26 1 26 67 1 67 27 1 27 70 1 70 28 1 28 73 1 73 29 1 29 76 1 76 30 1 30 79 1 79 31 1
		 31 81 1 81 16 1 32 84 1 84 33 1 33 86 1 86 34 1 34 88 1 88 35 1 35 90 1 90 36 1 36 92 1
		 92 37 1 37 94 1 94 38 1 38 96 1 96 39 1 39 98 1 98 40 1 40 100 1 100 41 1 41 102 1
		 102 42 1 42 104 1 104 43 1 43 106 1 106 44 1 44 108 1 108 45 1 45 110 1 110 46 1
		 46 112 1 112 47 1 47 113 1 113 32 1 0 115 1 115 16 1 1 116 1 116 17 1 2 119 1 119 18 1
		 3 122 1 122 19 1 4 125 1 125 20 1 5 48 1 48 21 1 6 51 1 51 22 1 7 54 1 54 23 1 8 57 1
		 57 24 1 9 60 1 60 25 1 10 63 1 63 26 1 11 66 1 66 27 1 12 69 1 69 28 1 13 72 1 72 29 1
		 14 75 1 75 30 1 15 78 1 78 31 1 16 82 1 82 32 1 17 83 1 83 33 1 18 85 1 85 34 1 19 87 1
		 87 35 1 20 89 1 89 36 1 21 91 1 91 37 1 22 93 1 93 38 1 23 95 1 95 39 1 24 97 1 97 40 1
		 25 99 1 99 41 1 26 101 1 101 42 1 27 103 1 103 43 1 28 105 1 105 44 1 29 107 1 107 45 1
		 30 109 1 109 46 1 31 111 1 111 47 1 114 128 1 128 115 1 116 128 1 117 128 1 118 129 1
		 129 116 1;
	setAttr ".ed[166:319]" 119 129 1 120 129 1 121 130 1 130 119 1 122 130 1 123 130 1
		 124 131 1 131 122 1 125 131 1 126 131 1 127 132 1 132 125 1 48 132 1 49 132 1 50 133 1
		 133 48 1 51 133 1 52 133 1 53 134 1 134 51 1 54 134 1 55 134 1 56 135 1 135 54 1
		 57 135 1 58 135 1 59 136 1 136 57 1 60 136 1 61 136 1 62 137 1 137 60 1 63 137 1
		 64 137 1 65 138 1 138 63 1 66 138 1 67 138 1 68 139 1 139 66 1 69 139 1 70 139 1
		 71 140 1 140 69 1 72 140 1 73 140 1 74 141 1 141 72 1 75 141 1 76 141 1 77 142 1
		 142 75 1 78 142 1 79 142 1 80 143 1 143 78 1 115 143 1 81 143 1 117 144 1 144 82 1
		 83 144 1 84 144 1 120 145 1 145 83 1 85 145 1 86 145 1 123 146 1 146 85 1 87 146 1
		 88 146 1 126 147 1 147 87 1 89 147 1 90 147 1 49 148 1 148 89 1 91 148 1 92 148 1
		 52 149 1 149 91 1 93 149 1 94 149 1 55 150 1 150 93 1 95 150 1 96 150 1 58 151 1
		 151 95 1 97 151 1 98 151 1 61 152 1 152 97 1 99 152 1 100 152 1 64 153 1 153 99 1
		 101 153 1 102 153 1 67 154 1 154 101 1 103 154 1 104 154 1 70 155 1 155 103 1 105 155 1
		 106 155 1 73 156 1 156 105 1 107 156 1 108 156 1 76 157 1 157 107 1 109 157 1 110 157 1
		 79 158 1 158 109 1 111 158 1 112 158 1 81 159 1 159 111 1 82 159 1 113 159 1 80 160 1
		 160 114 1 77 160 1 74 160 1 71 160 1 68 160 1 65 160 1 62 160 1 59 160 1 56 160 1
		 53 160 1 50 160 1 127 160 1 124 160 1 121 160 1 118 160 1 84 161 1 161 113 1 86 161 1
		 88 161 1 90 161 1 92 161 1 94 161 1 96 161 1 98 161 1 100 161 1 102 161 1 104 161 1
		 106 161 1 108 161 1 110 161 1 112 161 1;
	setAttr -s 160 -ch 640 ".fc[0:159]" -type "polyFaces" 
		f 4 0 160 161 -97
		mu 0 4 0 4 13 3
		f 4 1 98 162 -161
		mu 0 4 4 5 28 13
		f 4 -163 99 -34 163
		mu 0 4 13 28 261 257
		f 4 -162 -164 -33 -98
		mu 0 4 3 13 257 15
		f 4 2 164 165 -99
		mu 0 4 5 20 29 28
		f 4 3 100 166 -165
		mu 0 4 20 21 44 29
		f 4 -167 101 -36 167
		mu 0 4 29 44 277 273
		f 4 -166 -168 -35 -100
		mu 0 4 28 29 273 261
		f 4 4 168 169 -101
		mu 0 4 21 36 45 44
		f 4 5 102 170 -169
		mu 0 4 36 37 60 45
		f 4 -171 103 -38 171
		mu 0 4 45 60 293 289
		f 4 -170 -172 -37 -102
		mu 0 4 44 45 289 277
		f 4 6 172 173 -103
		mu 0 4 37 52 61 60
		f 4 7 104 174 -173
		mu 0 4 52 53 76 61
		f 4 -175 105 -40 175
		mu 0 4 61 76 309 305
		f 4 -174 -176 -39 -104
		mu 0 4 60 61 305 293
		f 4 8 176 177 -105
		mu 0 4 53 68 77 76
		f 4 9 106 178 -177
		mu 0 4 68 69 92 77
		f 4 -179 107 -42 179
		mu 0 4 77 92 325 321
		f 4 -178 -180 -41 -106
		mu 0 4 76 77 321 309
		f 4 10 180 181 -107
		mu 0 4 69 84 93 92
		f 4 11 108 182 -181
		mu 0 4 84 85 108 93
		f 4 -183 109 -44 183
		mu 0 4 93 108 341 337
		f 4 -182 -184 -43 -108
		mu 0 4 92 93 337 325
		f 4 12 184 185 -109
		mu 0 4 85 100 109 108
		f 4 13 110 186 -185
		mu 0 4 100 101 124 109
		f 4 -187 111 -46 187
		mu 0 4 109 124 357 353
		f 4 -186 -188 -45 -110
		mu 0 4 108 109 353 341
		f 4 14 188 189 -111
		mu 0 4 101 116 125 124
		f 4 15 112 190 -189
		mu 0 4 116 117 140 125
		f 4 -191 113 -48 191
		mu 0 4 125 140 373 369
		f 4 -190 -192 -47 -112
		mu 0 4 124 125 369 357
		f 4 16 192 193 -113
		mu 0 4 117 132 141 140
		f 4 17 114 194 -193
		mu 0 4 132 133 156 141
		f 4 -195 115 -50 195
		mu 0 4 141 156 389 385
		f 4 -194 -196 -49 -114
		mu 0 4 140 141 385 373
		f 4 18 196 197 -115
		mu 0 4 133 148 157 156
		f 4 19 116 198 -197
		mu 0 4 148 149 172 157
		f 4 -199 117 -52 199
		mu 0 4 157 172 405 401
		f 4 -198 -200 -51 -116
		mu 0 4 156 157 401 389
		f 4 20 200 201 -117
		mu 0 4 149 164 173 172
		f 4 21 118 202 -201
		mu 0 4 164 165 188 173
		f 4 -203 119 -54 203
		mu 0 4 173 188 421 417
		f 4 -202 -204 -53 -118
		mu 0 4 172 173 417 405
		f 4 22 204 205 -119
		mu 0 4 165 180 189 188
		f 4 23 120 206 -205
		mu 0 4 180 181 204 189
		f 4 -207 121 -56 207
		mu 0 4 189 204 437 433
		f 4 -206 -208 -55 -120
		mu 0 4 188 189 433 421
		f 4 24 208 209 -121
		mu 0 4 181 196 205 204
		f 4 25 122 210 -209
		mu 0 4 196 197 220 205
		f 4 -211 123 -58 211
		mu 0 4 205 220 453 449
		f 4 -210 -212 -57 -122
		mu 0 4 204 205 449 437
		f 4 26 212 213 -123
		mu 0 4 197 212 221 220
		f 4 27 124 214 -213
		mu 0 4 212 213 236 221
		f 4 -215 125 -60 215
		mu 0 4 221 236 469 465
		f 4 -214 -216 -59 -124
		mu 0 4 220 221 465 453
		f 4 28 216 217 -125
		mu 0 4 213 228 237 236
		f 4 29 126 218 -217
		mu 0 4 228 229 252 237
		f 4 -219 127 -62 219
		mu 0 4 237 252 485 481
		f 4 -218 -220 -61 -126
		mu 0 4 236 237 481 469
		f 4 30 220 221 -127
		mu 0 4 229 244 253 252
		f 4 31 96 222 -221
		mu 0 4 244 245 246 253
		f 4 -223 97 -64 223
		mu 0 4 253 246 501 497
		f 4 -222 -224 -63 -128
		mu 0 4 252 253 497 485
		f 4 32 224 225 -129
		mu 0 4 15 257 269 259
		f 4 33 130 226 -225
		mu 0 4 257 261 284 269
		f 4 -227 131 -66 227
		mu 0 4 269 284 287 270
		f 4 -226 -228 -65 -130
		mu 0 4 259 269 270 271
		f 4 34 228 229 -131
		mu 0 4 261 273 285 284
		f 4 35 132 230 -229
		mu 0 4 273 277 300 285
		f 4 -231 133 -68 231
		mu 0 4 285 300 303 286
		f 4 -230 -232 -67 -132
		mu 0 4 284 285 286 287
		f 4 36 232 233 -133
		mu 0 4 277 289 301 300
		f 4 37 134 234 -233
		mu 0 4 289 293 316 301
		f 4 -235 135 -70 235
		mu 0 4 301 316 319 302
		f 4 -234 -236 -69 -134
		mu 0 4 300 301 302 303
		f 4 38 236 237 -135
		mu 0 4 293 305 317 316
		f 4 39 136 238 -237
		mu 0 4 305 309 332 317
		f 4 -239 137 -72 239
		mu 0 4 317 332 335 318
		f 4 -238 -240 -71 -136
		mu 0 4 316 317 318 319
		f 4 40 240 241 -137
		mu 0 4 309 321 333 332
		f 4 41 138 242 -241
		mu 0 4 321 325 348 333
		f 4 -243 139 -74 243
		mu 0 4 333 348 351 334
		f 4 -242 -244 -73 -138
		mu 0 4 332 333 334 335
		f 4 42 244 245 -139
		mu 0 4 325 337 349 348
		f 4 43 140 246 -245
		mu 0 4 337 341 364 349
		f 4 -247 141 -76 247
		mu 0 4 349 364 367 350
		f 4 -246 -248 -75 -140
		mu 0 4 348 349 350 351
		f 4 44 248 249 -141
		mu 0 4 341 353 365 364
		f 4 45 142 250 -249
		mu 0 4 353 357 380 365
		f 4 -251 143 -78 251
		mu 0 4 365 380 383 366
		f 4 -250 -252 -77 -142
		mu 0 4 364 365 366 367
		f 4 46 252 253 -143
		mu 0 4 357 369 381 380
		f 4 47 144 254 -253
		mu 0 4 369 373 396 381
		f 4 -255 145 -80 255
		mu 0 4 381 396 399 382
		f 4 -254 -256 -79 -144
		mu 0 4 380 381 382 383
		f 4 48 256 257 -145
		mu 0 4 373 385 397 396
		f 4 49 146 258 -257
		mu 0 4 385 389 412 397
		f 4 -259 147 -82 259
		mu 0 4 397 412 415 398
		f 4 -258 -260 -81 -146
		mu 0 4 396 397 398 399
		f 4 50 260 261 -147
		mu 0 4 389 401 413 412
		f 4 51 148 262 -261
		mu 0 4 401 405 428 413
		f 4 -263 149 -84 263
		mu 0 4 413 428 431 414
		f 4 -262 -264 -83 -148
		mu 0 4 412 413 414 415
		f 4 52 264 265 -149
		mu 0 4 405 417 429 428
		f 4 53 150 266 -265
		mu 0 4 417 421 444 429
		f 4 -267 151 -86 267
		mu 0 4 429 444 447 430
		f 4 -266 -268 -85 -150
		mu 0 4 428 429 430 431
		f 4 54 268 269 -151
		mu 0 4 421 433 445 444
		f 4 55 152 270 -269
		mu 0 4 433 437 460 445
		f 4 -271 153 -88 271
		mu 0 4 445 460 463 446
		f 4 -270 -272 -87 -152
		mu 0 4 444 445 446 447
		f 4 56 272 273 -153
		mu 0 4 437 449 461 460
		f 4 57 154 274 -273
		mu 0 4 449 453 476 461
		f 4 -275 155 -90 275
		mu 0 4 461 476 479 462
		f 4 -274 -276 -89 -154
		mu 0 4 460 461 462 463
		f 4 58 276 277 -155
		mu 0 4 453 465 477 476
		f 4 59 156 278 -277
		mu 0 4 465 469 492 477
		f 4 -279 157 -92 279
		mu 0 4 477 492 495 478
		f 4 -278 -280 -91 -156
		mu 0 4 476 477 478 479
		f 4 60 280 281 -157
		mu 0 4 469 481 493 492
		f 4 61 158 282 -281
		mu 0 4 481 485 508 493
		f 4 -283 159 -94 283
		mu 0 4 493 508 511 494
		f 4 -282 -284 -93 -158
		mu 0 4 492 493 494 495
		f 4 62 284 285 -159
		mu 0 4 485 497 509 508
		f 4 63 128 286 -285
		mu 0 4 497 501 502 509
		f 4 -287 129 -96 287
		mu 0 4 509 502 506 510
		f 4 -286 -288 -95 -160
		mu 0 4 508 509 510 511
		f 4 -32 288 289 -1
		mu 0 4 512 513 574 573
		f 4 -30 290 -289 -31
		mu 0 4 516 517 574 513
		f 4 -28 291 -291 -29
		mu 0 4 520 521 574 517
		f 4 -26 292 -292 -27
		mu 0 4 524 525 574 521
		f 4 -24 293 -293 -25
		mu 0 4 528 529 574 525
		f 4 -22 294 -294 -23
		mu 0 4 532 533 574 529
		f 4 -20 295 -295 -21
		mu 0 4 536 537 574 533
		f 4 -18 296 -296 -19
		mu 0 4 540 541 574 537
		f 4 -16 297 -297 -17
		mu 0 4 544 545 574 541
		f 4 -14 298 -298 -15
		mu 0 4 548 549 574 545
		f 4 -12 299 -299 -13
		mu 0 4 552 553 574 549
		f 4 -10 300 -300 -11
		mu 0 4 556 557 574 553
		f 4 -8 301 -301 -9
		mu 0 4 560 561 574 557
		f 4 -6 302 -302 -7
		mu 0 4 564 565 574 561
		f 4 -4 303 -303 -5
		mu 0 4 568 569 574 565
		f 4 -2 -290 -304 -3
		mu 0 4 572 573 574 569
		f 4 64 304 305 95
		mu 0 4 576 577 638 637
		f 4 66 306 -305 65
		mu 0 4 580 581 638 577
		f 4 68 307 -307 67
		mu 0 4 584 585 638 581
		f 4 70 308 -308 69
		mu 0 4 588 589 638 585
		f 4 72 309 -309 71
		mu 0 4 592 593 638 589
		f 4 74 310 -310 73
		mu 0 4 596 597 638 593
		f 4 76 311 -311 75
		mu 0 4 600 601 638 597
		f 4 78 312 -312 77
		mu 0 4 604 605 638 601
		f 4 80 313 -313 79
		mu 0 4 608 609 638 605
		f 4 82 314 -314 81
		mu 0 4 612 613 638 609
		f 4 84 315 -315 83
		mu 0 4 616 617 638 613
		f 4 86 316 -316 85
		mu 0 4 620 621 638 617
		f 4 88 317 -317 87
		mu 0 4 624 625 638 621
		f 4 90 318 -318 89
		mu 0 4 628 629 638 625
		f 4 92 319 -319 91
		mu 0 4 632 633 638 629
		f 4 94 -306 -320 93
		mu 0 4 636 637 638 633;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "group6";
	setAttr ".t" -type "double3" -4.7155639071325615 1.1780930402683356 -0.10660928378181374 ;
	setAttr ".r" -type "double3" -1.867439811880562 10.680260999911006 -2.5286122475321207e-017 ;
	setAttr ".s" -type "double3" 0.62677121378536227 1.3513719452014366 0.095703474107779116 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".sa" 4;
	setAttr ".sh" 2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.2641567419016866 0 1;
	setAttr ".wt" 0.48596963286399841;
	setAttr ".dr" no;
	setAttr ".re" 18;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[0:13]" -type "float3"  1.5751532e-007 -1.22835088
		 -1.20117795 -1.20117795 -1.22835088 -1.050099e-007 -5.2504948e-008 -1.22835088 1.20117795
		 1.20117795 -1.22835088 0 6.9015343e-008 -1.0728836e-006 -0.52629375 -0.52629375 -1.0728836e-006
		 -4.601004e-008 -2.3005063e-008 0 0.52629435 0.52629435 0 0 -5.9413416e-008 1.17581832
		 0.45307356 0.45307356 1.17581832 3.960896e-008 1.980448e-008 1.17581832 -0.45307356
		 -0.45307356 1.17581832 0 0 -1.22835088 0 0 1.17581832 0;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.2641567419016866 0 1;
	setAttr ".wt" 0.44059604406356812;
	setAttr ".re" 14;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk[0:21]" -type "float3"  5.7955424e-007 0.044175491
		 -1.32995856 -1.3299588 0.044175312 -1.1626832e-007 -4.6328816e-007 0.044175491 1.32995856
		 1.3299588 0.044175312 0 2.5849337e-007 0.6434257 -1.29137576 -1.29137576 0.6434257
		 -3.2978309e-007 -6.1387783e-007 0.643426 1.29137611 1.29137588 0.643426 -2.1688726e-007
		 4.0711958e-009 0.55707252 -0.50060749 -0.50060743 0.55707252 -4.3764487e-008 -3.2383883e-007
		 0.55707252 0.50060749 0.50060743 0.55707252 0 -1.602377e-007 0.044175491 0 -2.4186312e-007
		 0.55707252 0 -4.8278741e-007 0.92777866 0.86654371 -0.86654377 0.92777866 -2.0635915e-007
		 1.0860131e-007 0.92777866 -0.86654365 0.86654377 0.92777866 -1.3060344e-007 -5.4567187e-007
		 0.30820265 1.35550725 -1.35550725 0.30820277 -2.0175115e-007 4.3926818e-007 0.30820224
		 -1.35550725 1.35550725 0.30820283 -8.3248786e-008;
createNode polyCube -n "polyCube1";
	setAttr ".sw" 2;
	setAttr ".sh" 4;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[8:11]";
	setAttr ".ix" -type "matrix" 2.6876467996214663e-015 0 -12.104085125278742 0 0 1.7886909948666914 0 0
		 5.4044190828517022 0 1.2000221001011063e-015 0 -1.3509511922689842e-015 1.1920449301647267 -1.6374776161189608 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.3322676e-015 2.0863905 -1.6374776 ;
	setAttr ".rs" 51274;
	setAttr ".lt" -type "double3" 0 2.2323723275650006e-016 1.0053711182573943 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.1355494673305193 2.0863904275980723 -6.4203917731337441 ;
	setAttr ".cbx" -type "double3" 2.1355494673305166 2.0863904275980723 3.1454365408958225 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[0:41]" -type "float3"  -0.14199853 0 0.14199853 0
		 0 0.14199853 0.14199853 0 0.14199853 -0.080323316 0 0.080323316 0 0 0.080323316 0.080323316
		 0 0.080323316 -0.035587803 7.9020796e-018 0.035587803 0 7.9020796e-018 0.035587803
		 0.035587803 7.9020796e-018 0.035587803 0.021909945 0 -0.021909945 0 0 -0.021909945
		 -0.021909945 0 -0.021909945 0.10485125 0 -0.10485125 0 0 -0.10485125 -0.10485125
		 0 -0.10485126 0.10485125 0 7.2496094e-019 0 0 7.2496094e-019 -0.10485125 0 7.2496094e-019
		 0.10485125 0 0.10485125 0 0 0.10485125 -0.10485125 0 0.10485126 0.021909945 0 0.021909945
		 0 0 0.021909945 -0.021909945 0 0.021909945 -0.035587803 7.9020796e-018 -0.035587803
		 0 7.9020796e-018 -0.035587803 0.035587803 7.9020796e-018 -0.035587803 -0.080323316
		 0 -0.080323316 0 0 -0.080323316 0.080323316 0 -0.080323316 -0.14199853 0 -0.14199853
		 0 0 -0.14199853 0.14199853 0 -0.14199853 -0.14199853 0 -9.8180352e-019 0 0 -9.8180352e-019
		 0.14199853 0 -9.8180352e-019 0.080323316 0 -5.5536932e-019 0.035587803 7.9020796e-018
		 -2.4606043e-019 -0.021909945 0 1.5148929e-019 -0.080323316 0 -5.5536932e-019 -0.035587803
		 7.9020796e-018 -2.4606043e-019 0.021909945 0 1.5148929e-019;
createNode polySphere -n "polySphere1";
	setAttr ".sa" 4;
	setAttr ".sh" 4;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
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
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
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
		+ "            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n"
		+ "                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"bottom3\\\" -ps 1 100 55 -ps 2 50 45 -ps 3 50 45 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Hypershade\")) \n\t\t\t\t\t\"scriptedPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"hyperShadePanel\\\" -l (localizedPanelLabel(\\\"Hypershade\\\")) -mbv $menusOkayInPanels `\"\n\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Hypershade\\\")) -mbv $menusOkayInPanels  $panelName\"\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Render View\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"renderWindowPanel\\\" -l (localizedPanelLabel(\\\"Render View\\\")) -mbv $menusOkayInPanels `\"\n\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Render View\\\")) -mbv $menusOkayInPanels  $panelName\"\n\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube2";
	setAttr ".sh" 2;
	setAttr ".cuv" 4;
createNode polySmoothFace -n "polySmoothFace2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[0]" -type "float3" 0.022276429 0 -0.022276428 ;
	setAttr ".tk[1]" -type "float3" -1.5511469e-009 0 -0.022276428 ;
	setAttr ".tk[2]" -type "float3" -0.022276429 0 -0.022276428 ;
	setAttr ".tk[29]" -type "float3" 0.022276429 0 0.022276428 ;
	setAttr ".tk[30]" -type "float3" -1.5511469e-009 0 0.022276428 ;
	setAttr ".tk[31]" -type "float3" -0.022276429 0 0.022276428 ;
	setAttr ".tk[32]" -type "float3" 0.022276429 0 1.5402422e-019 ;
	setAttr ".tk[33]" -type "float3" -1.5511469e-009 0 1.5402422e-019 ;
	setAttr ".tk[34]" -type "float3" -0.022276429 0 1.5402422e-019 ;
	setAttr ".tk[41]" -type "float3" 0.144789 -0.23245998 -0.14478898 ;
	setAttr ".tk[42]" -type "float3" 5.4600333e-009 -0.23245998 -0.14478898 ;
	setAttr ".tk[43]" -type "float3" 5.4600333e-009 -0.23245998 -6.7753971e-019 ;
	setAttr ".tk[44]" -type "float3" 0.144789 -0.23245998 -6.775303e-019 ;
	setAttr ".tk[45]" -type "float3" -0.144789 -0.23245998 -0.14478898 ;
	setAttr ".tk[46]" -type "float3" -0.144789 -0.23245998 -1.5732024e-017 ;
	setAttr ".tk[47]" -type "float3" 5.4600333e-009 -0.23245998 0.14478898 ;
	setAttr ".tk[48]" -type "float3" 0.144789 -0.23245998 0.14478898 ;
	setAttr ".tk[49]" -type "float3" -0.144789 -0.23245998 0.14478898 ;
createNode polySmoothFace -n "polySmoothFace3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyCylinder -n "polyCylinder2";
	setAttr ".sa" 28;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 3 "f[15]" "f[80]" "f[83]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.1002552469984197 2.2641567419016866 9.5946550395729506 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1369714 1.7902371 8.7458467 ;
	setAttr ".rs" 62075;
	setAttr ".lt" -type "double3" -2.4980018054066022e-015 7.1470607210244452e-016 -0.38804608702832077 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7201143463865423 0.70289616088514606 7.8970375087501967 ;
	setAttr ".cbx" -type "double3" -0.55382847392713064 2.8775779436076192 9.5946550395729506 ;
createNode polyCrease -n "polyCrease1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[14]" "e[31]" "e[82:83]" "e[100]" "e[102]" "e[167]" "e[169]" "e[176]" "e[178]" "e[181]" "e[183]" "e[186]" "e[188]" "e[190:191]";
	setAttr -s 16 ".cr";
	setAttr ".cr[14]" 1.2499979734420776;
	setAttr ".cr[31]" 1.2499979734420776;
	setAttr ".cr[82]" 1.2499979734420776;
	setAttr ".cr[83]" 1.2499979734420776;
	setAttr ".cr[100]" 1.2499979734420776;
	setAttr ".cr[102]" 1.2499979734420776;
	setAttr ".cr[167]" 1.2499979734420776;
	setAttr ".cr[169]" 1.2499979734420776;
	setAttr ".cr[176]" 3.3499979972839355;
	setAttr ".cr[178]" 3.3499979972839355;
	setAttr ".cr[181]" 3.3499979972839355;
	setAttr ".cr[183]" 3.3499979972839355;
	setAttr ".cr[186]" 3.3499979972839355;
	setAttr ".cr[188]" 3.3499979972839355;
	setAttr ".cr[190]" 3.3499979972839355;
	setAttr ".cr[191]" 3.3499979972839355;
createNode polySphere -n "polySphere2";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 8 "f[1:4]" "f[9:12]" "f[17:20]" "f[25:28]" "f[33:36]" "f[41:44]" "f[49:52]" "f[57:60]";
createNode polySmoothFace -n "polySmoothFace4";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace5";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace6";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.49728402 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.69711918 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.66744059 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.46760535 ;
	setAttr ".tk[4]" -type "float3" 0 0 -0.014839294 ;
	setAttr ".tk[5]" -type "float3" 0 0 -0.25483462 ;
	setAttr ".tk[6]" -type "float3" 0 0 -0.35789603 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.34585124 ;
	setAttr ".tk[8]" -type "float3" 0 0 0.24278979 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.0060224114 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.066166207 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.092755303 ;
	setAttr ".tk[12]" -type "float3" 0 0 0.088806421 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.062217325 ;
	setAttr ".tk[14]" -type "float3" 0 0 -0.0019744434 ;
	setAttr ".tk[25]" -type "float3" 0 0 -0.11136699 ;
	setAttr ".tk[26]" -type "float3" 0 0 -0.15612018 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.14947365 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.10472047 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.0033232609 ;
	setAttr ".tk[30]" -type "float3" 0 0 -0.27529302 ;
	setAttr ".tk[31]" -type "float3" 0 0 -0.38592041 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.36949053 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.25886312 ;
	setAttr ".tk[34]" -type "float3" 0 0 -0.0082149301 ;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:19]";
	setAttr ".ix" -type "matrix" 3.3134208203864635 0 -3.3134208203864639 0 0 4.6858846620399239 0 0
		 3.3134208203864639 0 3.3134208203864635 0 -8.5545508809884083 2.449241839159698 0 1;
	setAttr ".wt" 0.61027044057846069;
	setAttr ".dr" no;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.21407905 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.21407905 0 ;
	setAttr ".tk[2]" -type "float3" 0 0.21407905 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.21407905 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.51683265 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.51683265 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.51683265 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.51683265 0 ;
	setAttr ".tk[12]" -type "float3" 0 0.51683265 0 ;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[36:37]" "e[39]" "e[41]";
	setAttr ".ix" -type "matrix" 3.3134208203864635 0 -3.3134208203864639 0 0 4.6858846620399239 0 0
		 3.3134208203864639 0 3.3134208203864635 0 -5.7941659937620251 2.4492418391596962 -4.7111967877071779 1;
	setAttr ".wt" 0;
	setAttr ".dr" no;
	setAttr ".re" 39;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk";
	setAttr ".tk[4]" -type "float3" 6.2324361e-008 0 -0.47527447 ;
	setAttr ".tk[5]" -type "float3" -0.47527447 0 -2.0774888e-008 ;
	setAttr ".tk[6]" -type "float3" -2.0774884e-008 0 0.47527447 ;
	setAttr ".tk[7]" -type "float3" 0.47527447 0 2.0774884e-008 ;
	setAttr ".tk[8]" -type "float3" -2.9781152e-008 0 0.2271046 ;
	setAttr ".tk[9]" -type "float3" 0.2271046 0 9.9270583e-009 ;
	setAttr ".tk[10]" -type "float3" 9.9270565e-009 0 -0.2271046 ;
	setAttr ".tk[11]" -type "float3" -0.2271046 0 -9.9270565e-009 ;
	setAttr ".tk[13]" -type "float3" 0 -0.1653972 0 ;
	setAttr ".tk[14]" -type "float3" -0.108406 0 -4.9601727e-009 ;
	setAttr ".tk[15]" -type "float3" 1.443732e-008 0 -0.108406 ;
	setAttr ".tk[16]" -type "float3" 0.108406 0 4.5169708e-009 ;
	setAttr ".tk[17]" -type "float3" -4.5169708e-009 0 0.108406 ;
	setAttr ".tk[18]" -type "float3" -0.30797419 0 -1.5664089e-008 ;
	setAttr ".tk[19]" -type "float3" 1.3119396e-007 0 -0.3079741 ;
	setAttr ".tk[20]" -type "float3" 0.30797413 0 -1.1155281e-007 ;
	setAttr ".tk[21]" -type "float3" -4.5288862e-009 0 0.30797419 ;
	setAttr ".tk[22]" -type "float3" -0.47138703 2.0816682e-017 -2.0604981e-008 ;
	setAttr ".tk[23]" -type "float3" 6.181488e-008 2.0816682e-017 -0.47138703 ;
	setAttr ".tk[24]" -type "float3" 0.47138703 2.0816682e-017 2.0604981e-008 ;
	setAttr ".tk[25]" -type "float3" -2.0604981e-008 2.0816682e-017 0.47138703 ;
	setAttr ".tk[26]" -type "float3" -0.58544207 0 -2.5590504e-008 ;
	setAttr ".tk[27]" -type "float3" 7.6771499e-008 0 -0.58544201 ;
	setAttr ".tk[28]" -type "float3" 0.58544207 0 2.5590504e-008 ;
	setAttr ".tk[29]" -type "float3" -2.5590504e-008 0 0.58544207 ;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[28:29]" "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 3.3134208203864635 0 -3.3134208203864639 0 0 4.6858846620399239 0 0
		 3.3134208203864639 0 3.3134208203864635 0 -5.7941659937620251 2.4492418391596962 -4.7111967877071779 1;
	setAttr ".wt" 0.2183237224817276;
	setAttr ".dr" no;
	setAttr ".re" 31;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[44:45]" "e[47]" "e[49]";
	setAttr ".ix" -type "matrix" 3.3134208203864635 0 -3.3134208203864639 0 0 4.6858846620399239 0 0
		 3.3134208203864639 0 3.3134208203864635 0 -5.7941659937620251 2.4492418391596962 -4.7111967877071779 1;
	setAttr ".wt" 0.58908438682556152;
	setAttr ".dr" no;
	setAttr ".re" 47;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[52:53]" "e[55]" "e[57]";
	setAttr ".ix" -type "matrix" 3.3134208203864635 0 -3.3134208203864639 0 0 4.6858846620399239 0 0
		 3.3134208203864639 0 3.3134208203864635 0 -5.7941659937620251 2.4492418391596962 -4.7111967877071779 1;
	setAttr ".wt" 0.55327558517456055;
	setAttr ".dr" no;
	setAttr ".re" 55;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[12:15]";
	setAttr ".ix" -type "matrix" 3.3134208203864635 0 -3.3134208203864639 0 0 4.6858846620399239 0 0
		 3.3134208203864639 0 3.3134208203864635 0 -5.7941659937620251 2.4492418391596962 -4.7111967877071779 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.7941661 6.0613785 -4.7111969 ;
	setAttr ".rs" 43951;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.4148356446483863 5.7626626028393773 -7.3318665652865187 ;
	setAttr ".cbx" -type "double3" -3.1734965690085053 6.3600944522450593 -2.0905272605404002 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[8]" -type "float3" 4.398785e-008 1.110223e-016 -0.31092343 ;
	setAttr ".tk[9]" -type "float3" -0.31092343 1.110223e-016 -1.6806052e-008 ;
	setAttr ".tk[10]" -type "float3" -1.0375748e-008 1.110223e-016 0.31092343 ;
	setAttr ".tk[11]" -type "float3" 0.31092343 1.110223e-016 1.0375748e-008 ;
	setAttr ".tk[14]" -type "float3" -0.30786654 0 -1.2622788e-008 ;
	setAttr ".tk[15]" -type "float3" 3.9615383e-008 0 -0.30786654 ;
	setAttr ".tk[16]" -type "float3" 0.30786654 0 1.4291782e-008 ;
	setAttr ".tk[17]" -type "float3" -1.4213722e-008 0 0.30786654 ;
	setAttr ".tk[18]" -type "float3" -0.15674336 0 -4.9524593e-009 ;
	setAttr ".tk[19]" -type "float3" 3.4813347e-008 0 -0.15674329 ;
	setAttr ".tk[20]" -type "float3" 0.15674327 0 -8.2513028e-009 ;
	setAttr ".tk[21]" -type "float3" -3.9270169e-009 0 0.15674336 ;
	setAttr ".tk[30]" -type "float3" 0.25124639 0 -4.7840412e-009 ;
	setAttr ".tk[31]" -type "float3" -3.5431948e-009 0 0.25124642 ;
	setAttr ".tk[32]" -type "float3" -0.25124642 0 -1.1369249e-008 ;
	setAttr ".tk[33]" -type "float3" 5.0639091e-008 0 -0.25124639 ;
	setAttr ".tk[34]" -type "float3" 0.26525691 0 1.1086557e-008 ;
	setAttr ".tk[35]" -type "float3" -1.1043152e-008 0 0.26525691 ;
	setAttr ".tk[36]" -type "float3" -0.26525691 0 -1.2102946e-008 ;
	setAttr ".tk[37]" -type "float3" 3.5335848e-008 0 -0.26525691 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[12:15]";
	setAttr ".ix" -type "matrix" 3.3134208203864635 0 -3.3134208203864639 0 0 4.6858846620399239 0 0
		 3.3134208203864639 0 3.3134208203864635 0 -5.7941659937620251 2.4492418391596962 -4.7111967877071779 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.7941661 7.3224707 -4.7111974 ;
	setAttr ".rs" 55810;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.4984064015364957 7.1282138140538214 -6.4154374461371546 ;
	setAttr ".cbx" -type "double3" -4.0899261698405205 7.5167274998840226 -3.006956957576036 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk[45:49]" -type "float3"  -2.9962276e-008 0.29141805
		 0.27658102 0.27658102 0.29141805 1.3027073e-009 -9.1189527e-009 0.24683361 -4.0383956e-008
		 1.1724365e-008 0.29141805 -0.27658105 -0.27658099 0.29141805 1.3027073e-009;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[88:89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 3.3134208203864635 0 -3.3134208203864639 0 0 4.6858846620399239 0 0
		 3.3134208203864639 0 3.3134208203864635 0 -5.7941659937620251 2.4492418391596962 -4.7111967877071779 1;
	setAttr ".wt" 0.62310850620269775;
	setAttr ".dr" no;
	setAttr ".re" 89;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk[49:53]" -type "float3"  -2.2482302e-008 0.12508401
		 0.20693959 0.20693952 0.12508401 -4.6463406e-008 -2.2482302e-008 0.091725901 -4.6463406e-008
		 2.5479924e-008 0.12508401 -0.20693958 -0.20693953 0.12508401 1.4988197e-009;
createNode polySmoothFace -n "polySmoothFace7";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace8";
	setAttr ".ics" -type "componentList" 1 "f[0:231]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode nonLinear -n "bend2";
	addAttr -is true -ci true -k true -sn "cur" -ln "curvature" -smn -3.14159 -smx 
		3.14159 -at "doubleAngle";
	addAttr -is true -ci true -k true -sn "lb" -ln "lowBound" -dv -1 -max 0 -smn -10 
		-smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "hb" -ln "highBound" -dv 1 -min 0 -smn 0 -smx 
		10 -at "double";
	setAttr -k on ".cur" -14.666654213691688;
	setAttr -k on ".lb";
	setAttr -k on ".hb";
createNode tweak -n "tweak2";
createNode objectSet -n "bend2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "bend2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "bend2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode polyTorus -n "polyTorus1";
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 48 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1.0 1.0 1.0";
	setAttr ".stringOptions[47].type" -type "string" "color";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode polyCube -n "polyCube3";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube4";
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polySmoothFace -n "polySmoothFace9";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[10:11]" "e[16:19]";
	setAttr ".ix" -type "matrix" 0.27837019623226267 0 0 0 0 2.5678449067545484 0 0 0 0 18.001999999999999 0
		 8.1298583302210687 1.8722950826679088 -2.3945926388088092 1;
	setAttr ".wt" 0.53757983446121216;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[10:11]" "e[20]" "e[25]" "e[27]" "e[29]";
	setAttr ".ix" -type "matrix" 0.27837019623226267 0 0 0 0 2.5678449067545484 0 0 0 0 18.001999999999999 0
		 8.1298583302210687 1.8722950826679088 -2.3945926388088092 1;
	setAttr ".wt" 0.092479273676872253;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[10:11]" "e[16:19]";
	setAttr ".ix" -type "matrix" 0.27837019623226267 0 0 0 0 2.5678449067545484 0 0 0 0 14.885816234960563 0
		 10.178146395796523 2.1272372017356056 -2.3945926388088092 1;
	setAttr ".wt" 0.057688053697347641;
	setAttr ".re" 11;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[10:11]" "e[23]" "e[25]" "e[27]" "e[29]";
	setAttr ".ix" -type "matrix" 0.27837019623226267 0 0 0 0 2.5678449067545484 0 0 0 0 14.885816234960563 0
		 10.178146395796523 2.1272372017356056 -2.3945926388088092 1;
	setAttr ".wt" 0.11537610739469528;
	setAttr ".re" 11;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:21]";
	setAttr ".ix" -type "matrix" 0.27837019623226267 0 0 0 0 2.5678449067545484 0 0 0 0 14.885816234960563 0
		 10.178146395796523 2.1272372017356056 -2.3945926388088092 1;
	setAttr ".wt" 0.85320699214935303;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[16:19]" "e[21]" "e[23]";
	setAttr ".ix" -type "matrix" 0.27837019623226267 0 0 0 0 2.5678449067545484 0 0 0 0 18.001999999999999 0
		 8.1298583302210687 1.8722950826679088 -2.3945926388088092 1;
	setAttr ".wt" 0.75919586420059204;
	setAttr ".dr" no;
	setAttr ".re" 23;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[10:11]" "e[16:19]";
	setAttr ".ix" -type "matrix" 0.27837019623226267 0 0 0 0 2.5678449067545484 0 0 0 0 18.001999999999999 0
		 5.3324859977484822 1.8722950826679057 -2.3945926388088106 1;
	setAttr ".wt" 0.84148013591766357;
	setAttr ".dr" no;
	setAttr ".re" 11;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  0 0.092428349 -0.010617021
		 0 0.092428349 -0.010617021 -2.1094237e-015 0.032611195 -0.10440421 -2.0539126e-015
		 0.032611195 -0.10440421 0 -0.056668486 -0.28173482 0 -0.056668486 -0.28173482 0 -0.056668501
		 0.28173482 0 -0.056668501 0.28173482 -2.1094237e-015 0.032611195 0.1044042 -2.0539126e-015
		 0.032611195 0.1044042 0 0.092428349 0.010617021 0 0.092428349 0.010617021;
createNode polySplitRing -n "polySplitRing16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:21]";
	setAttr ".ix" -type "matrix" 0.27837019623226267 0 0 0 0 2.5678449067545484 0 0 0 0 18.001999999999999 0
		 5.3324859977484822 1.8722950826679057 -2.3945926388088106 1;
	setAttr ".wt" 0.68026745319366455;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[10:11]" "e[23]" "e[25]" "e[27]" "e[29]";
	setAttr ".ix" -type "matrix" 0.27837019623226267 0 0 0 0 2.5678449067545484 0 0 0 0 18.001999999999999 0
		 5.3324859977484822 1.8722950826679057 -2.3945926388088106 1;
	setAttr ".wt" 0.44202610850334167;
	setAttr ".re" 11;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[10:11]" "e[16:19]";
	setAttr ".ix" -type "matrix" 0.27837019623226267 0 0 0 0 2.5678449067545484 0 0 0 0 14.885816234960563 0
		 3.3963665987388589 2.1272372017356016 -2.3945926388088101 1;
	setAttr ".wt" 0.025863436982035637;
	setAttr ".re" 10;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[10:11]" "e[21]" "e[23]" "e[25]" "e[27]";
	setAttr ".ix" -type "matrix" 0.27837019623226267 0 0 0 0 2.5678449067545484 0 0 0 0 14.885816234960563 0
		 3.3963665987388589 2.1272372017356016 -2.3945926388088101 1;
	setAttr ".wt" 0.071787290275096893;
	setAttr ".re" 10;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[16:20]" "e[29]";
	setAttr ".ix" -type "matrix" 0.27837019623226267 0 0 0 0 2.5678449067545484 0 0 0 0 14.885816234960563 0
		 3.3963665987388589 2.1272372017356016 -2.3945926388088101 1;
	setAttr ".wt" 0.47159060835838318;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySmoothFace -n "polySmoothFace10";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace11";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace12";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace13";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode phong -n "phong1";
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".it" -type "float3" 0.6410315 0.6410315 0.6410315 ;
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 15 "f[21]" "f[25:26]" "f[29]" "f[32]" "f[35:36]" "f[44:45]" "f[48:59]" "f[61:62]" "f[68:69]" "f[72:83]" "f[85:86]" "f[93]" "f[97:98]" "f[102:105]" "f[109]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "f[20]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 13 "f[20:29]" "f[32:37]" "f[40:41]" "f[48:49]" "f[52:64]" "f[73]" "f[77:78]" "f[80:81]" "f[84:85]" "f[93]" "f[97:98]" "f[104:105]" "f[109]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[59:60]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 16 "f[21]" "f[25:26]" "f[29]" "f[32]" "f[35:36]" "f[40:41]" "f[44:55]" "f[57:58]" "f[64:65]" "f[68:79]" "f[81:82]" "f[89]" "f[93:94]" "f[98]" "f[100:101]" "f[105]";
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 1 "f[56]";
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "f[20]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 14 "f[25:26]" "f[29]" "f[32]" "f[35:36]" "f[44:45]" "f[48:59]" "f[61:62]" "f[69]" "f[73:74]" "f[78:81]" "f[85]" "f[92:93]" "f[96:107]" "f[109:110]";
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 1 "f[20:21]";
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[33]" -type "float3" -0.0272331 -0.019444332 0.026016293 ;
	setAttr ".tk[34]" -type "float3" 0.0272331 -0.019444332 0.026016293 ;
	setAttr ".tk[35]" -type "float3" 0.036310792 0.0082591455 0.020977803 ;
	setAttr ".tk[36]" -type "float3" 0.036310792 0.023440171 0.011144882 ;
	setAttr ".tk[37]" -type "float3" -0.036310792 0.0082591455 0.020977803 ;
	setAttr ".tk[38]" -type "float3" -0.036310792 0.023440171 0.011144882 ;
	setAttr ".tk[43]" -type "float3" -0.036310792 0.023440171 -0.011144882 ;
	setAttr ".tk[44]" -type "float3" -0.036310792 0.023440171 2.0156539e-018 ;
	setAttr ".tk[45]" -type "float3" 0.036310792 0.023440171 2.0156539e-018 ;
	setAttr ".tk[46]" -type "float3" 0.036310792 0.023440171 -0.011144882 ;
	setAttr ".tk[49]" -type "float3" -0.036310792 0.0082591455 -0.020977803 ;
	setAttr ".tk[50]" -type "float3" -0.0272331 -0.019444332 -0.026016297 ;
	setAttr ".tk[51]" -type "float3" 0.0272331 -0.019444332 -0.026016293 ;
	setAttr ".tk[52]" -type "float3" 0.036310792 0.0082591455 -0.020977803 ;
	setAttr ".tk[62]" -type "float3" -2.5800369e-016 -0.023440171 0.026654817 ;
	setAttr ".tk[63]" -type "float3" 0.036310792 -0.0074567907 0.024100708 ;
	setAttr ".tk[64]" -type "float3" 0.036310792 0.023440171 0.016717322 ;
	setAttr ".tk[65]" -type "float3" -0.036310792 -0.0074567907 0.024100708 ;
	setAttr ".tk[66]" -type "float3" -0.036310792 0.023440171 0.016717322 ;
	setAttr ".tk[68]" -type "float3" -0.036310792 0.023440171 -0.005572441 ;
	setAttr ".tk[69]" -type "float3" 0.036310792 0.023440171 -0.005572441 ;
	setAttr ".tk[71]" -type "float3" -0.036310792 0.023440171 -0.016717322 ;
	setAttr ".tk[72]" -type "float3" -0.036310792 -0.0074567907 -0.024100708 ;
	setAttr ".tk[73]" -type "float3" -2.5800369e-016 -0.023440171 -0.026654817 ;
	setAttr ".tk[74]" -type "float3" 0.036310792 -0.0074567907 -0.024100708 ;
	setAttr ".tk[75]" -type "float3" 0.036310792 0.023440171 -0.016717322 ;
	setAttr ".tk[77]" -type "float3" -0.036310792 0.023440171 0.005572441 ;
	setAttr ".tk[78]" -type "float3" 0.036310792 0.023440171 0.005572441 ;
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 2 "f[20:24]" "f[27:29]";
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[34]" -type "float3" 0.051951446 0.052447613 0 ;
	setAttr ".tk[35]" -type "float3" 0.051951446 0.052447613 -0.015945481 ;
	setAttr ".tk[36]" -type "float3" -0.051951446 0.052447613 -0.015945481 ;
	setAttr ".tk[37]" -type "float3" -0.051951446 0.052447613 0 ;
	setAttr ".tk[38]" -type "float3" -0.051951446 0.052447613 0.015945481 ;
	setAttr ".tk[42]" -type "float3" 0.051951446 0.052447613 0.015945481 ;
	setAttr ".tk[43]" -type "float3" -0.051951446 0.030727442 0.03001391 ;
	setAttr ".tk[46]" -type "float3" 0.051951446 0.030727442 0.03001391 ;
	setAttr ".tk[47]" -type "float3" 0.038963623 -0.0089091659 0.03722265 ;
	setAttr ".tk[48]" -type "float3" -0.038963623 -0.008909164 0.03722265 ;
	setAttr ".tk[51]" -type "float3" -0.051951446 0.030727442 -0.03001391 ;
	setAttr ".tk[52]" -type "float3" -0.038963623 -0.0089091659 -0.03722265 ;
	setAttr ".tk[53]" -type "float3" 0.038963623 -0.008909164 -0.03722265 ;
	setAttr ".tk[54]" -type "float3" 0.051951446 0.030727442 -0.03001391 ;
	setAttr ".tk[62]" -type "float3" 0.051951446 0.052447613 -0.0079727406 ;
	setAttr ".tk[63]" -type "float3" -0.051951446 0.052447613 -0.0079727406 ;
	setAttr ".tk[64]" -type "float3" -0.051951446 0.052447613 0.0079727406 ;
	setAttr ".tk[66]" -type "float3" 0.051951446 0.052447613 0.0079727406 ;
	setAttr ".tk[67]" -type "float3" -0.051951446 0.052447613 0.02391823 ;
	setAttr ".tk[69]" -type "float3" 0.051951446 0.052447613 0.02391823 ;
	setAttr ".tk[70]" -type "float3" 0.051951446 0.0082419533 0.03448195 ;
	setAttr ".tk[71]" -type "float3" 0 -0.014626192 0.03813621 ;
	setAttr ".tk[72]" -type "float3" -0.051951446 0.0082419533 0.03448195 ;
	setAttr ".tk[74]" -type "float3" -0.051951446 0.052447613 -0.02391823 ;
	setAttr ".tk[75]" -type "float3" -0.051951446 0.0082419533 -0.03448195 ;
	setAttr ".tk[76]" -type "float3" 0 -0.014626192 -0.03813621 ;
	setAttr ".tk[77]" -type "float3" 0.051951446 0.0082419533 -0.03448195 ;
	setAttr ".tk[78]" -type "float3" 0.051951446 0.052447613 -0.02391823 ;
createNode deleteComponent -n "deleteComponent13";
	setAttr ".dc" -type "componentList" 4 "f[32]" "f[39]" "f[42:43]" "f[46:47]";
createNode deleteComponent -n "deleteComponent14";
	setAttr ".dc" -type "componentList" 1 "f[40:41]";
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[33]" -type "float3" -0.036217202 -0.017676452 0.038965624 ;
	setAttr ".tk[34]" -type "float3" 0.036217202 -0.017676452 0.038965624 ;
	setAttr ".tk[35]" -type "float3" 0.048289631 0.01063336 0.030957369 ;
	setAttr ".tk[36]" -type "float3" 0.048289631 0.02200347 0.016917389 ;
	setAttr ".tk[37]" -type "float3" -0.048289631 0.01063336 0.030957369 ;
	setAttr ".tk[38]" -type "float3" -0.048289631 0.02200347 0.016917389 ;
	setAttr ".tk[39]" -type "float3" -0.048289631 0.02200347 -0.016917389 ;
	setAttr ".tk[40]" -type "float3" -0.048289631 0.02200347 -7.1957157e-010 ;
	setAttr ".tk[42]" -type "float3" 0.048289631 0.02200347 -7.1957157e-010 ;
	setAttr ".tk[44]" -type "float3" 0.048289631 0.02200347 -0.016917389 ;
	setAttr ".tk[49]" -type "float3" -0.048289631 0.010633361 -0.030957371 ;
	setAttr ".tk[51]" -type "float3" -0.036217202 -0.017676452 -0.038965624 ;
	setAttr ".tk[52]" -type "float3" 0.036217202 -0.017676452 -0.038965624 ;
	setAttr ".tk[53]" -type "float3" 0.048289631 0.010633361 -0.030957371 ;
	setAttr ".tk[62]" -type "float3" -3.4311846e-016 -0.022003474 0.040050525 ;
	setAttr ".tk[63]" -type "float3" 0.048289631 -0.0046953955 0.035710871 ;
	setAttr ".tk[64]" -type "float3" 0.048289631 0.02200347 0.025376074 ;
	setAttr ".tk[65]" -type "float3" -0.048289631 -0.0046953955 0.035710871 ;
	setAttr ".tk[66]" -type "float3" -0.048289631 0.02200347 0.025376091 ;
	setAttr ".tk[67]" -type "float3" -0.048289631 0.02200347 -0.0084586944 ;
	setAttr ".tk[68]" -type "float3" 0.048289631 0.02200347 -0.0084586944 ;
	setAttr ".tk[70]" -type "float3" -0.048289631 0.02200347 0.0084586944 ;
	setAttr ".tk[71]" -type "float3" 0.048289631 0.02200347 0.0084586944 ;
	setAttr ".tk[73]" -type "float3" -0.048289631 0.02200347 -0.025376091 ;
	setAttr ".tk[74]" -type "float3" -0.048289631 -0.0046953955 -0.035710871 ;
	setAttr ".tk[75]" -type "float3" -3.4311846e-016 -0.022003474 -0.040050525 ;
	setAttr ".tk[76]" -type "float3" 0.048289631 -0.0046953931 -0.035710871 ;
	setAttr ".tk[77]" -type "float3" 0.048289631 0.02200347 -0.025376091 ;
createNode deleteComponent -n "deleteComponent15";
	setAttr ".dc" -type "componentList" 2 "f[20:24]" "f[27:29]";
createNode deleteComponent -n "deleteComponent16";
	setAttr ".dc" -type "componentList" 3 "f[44]" "f[47:52]" "f[54]";
createNode deleteComponent -n "deleteComponent17";
	setAttr ".dc" -type "componentList" 4 "f[36]" "f[39:40]" "f[42:44]" "f[46]";
createNode deleteComponent -n "deleteComponent18";
	setAttr ".dc" -type "componentList" 1 "f[38]";
createNode deleteComponent -n "deleteComponent19";
	setAttr ".dc" -type "componentList" 3 "f[40]" "f[43:48]" "f[50]";
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 6.1532776193947374 0 0 0 0 0.38601240163124706 0 0 0 0 10.663718178648866 0
		 6.7194329778345665 0.43664061582563934 -2.2783116708392894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.7194343 0.822653 -2.2783093 ;
	setAttr ".rs" 34622;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1595258443206964 0.82265301745688646 -11.882261735502915 ;
	setAttr ".cbx" -type "double3" 12.279342311931998 0.82265301745688646 7.3256428430742764 ;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 49 ".tk";
	setAttr ".tk[0]" -type "float3" -0.089908443 0 0 ;
	setAttr ".tk[1]" -type "float3" -0.063361362 0 0 ;
	setAttr ".tk[3]" -type "float3" 0 0 4.6566129e-009 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.062783137 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.089512013 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.099380322 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.089512013 ;
	setAttr ".tk[8]" -type "float3" 0 0 0.062783137 ;
	setAttr ".tk[9]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[11]" -type "float3" 0.063361362 0 0 ;
	setAttr ".tk[12]" -type "float3" 0.089908473 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.096431226 0 0 ;
	setAttr ".tk[14]" -type "float3" 0.089908458 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.063361377 0 0 ;
	setAttr ".tk[17]" -type "float3" 0 0 2.7939677e-009 ;
	setAttr ".tk[18]" -type "float3" 0 0 -0.062783115 ;
	setAttr ".tk[19]" -type "float3" 0 0 -0.089511834 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.099380143 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.089511864 ;
	setAttr ".tk[22]" -type "float3" 0 0 -0.062782943 ;
	setAttr ".tk[23]" -type "float3" 0 0 1.7881393e-007 ;
	setAttr ".tk[24]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[25]" -type "float3" -0.063361377 0 0 ;
	setAttr ".tk[26]" -type "float3" -0.089908458 0 0 ;
	setAttr ".tk[27]" -type "float3" -0.096431226 0 0 ;
	setAttr ".tk[28]" -type "float3" -0.089908443 0 0 ;
	setAttr ".tk[29]" -type "float3" -0.063361362 0 0 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.062783137 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.089512013 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.099380322 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.089512013 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.062783107 ;
	setAttr ".tk[37]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[38]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[39]" -type "float3" 0.063361362 0 0 ;
	setAttr ".tk[40]" -type "float3" 0.089908473 0 0 ;
	setAttr ".tk[41]" -type "float3" 0.096431226 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.089908458 0 0 ;
	setAttr ".tk[43]" -type "float3" 0.063361377 0 0 ;
	setAttr ".tk[46]" -type "float3" 0 0 -0.062783115 ;
	setAttr ".tk[47]" -type "float3" 0 0 -0.089511834 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.099380143 ;
	setAttr ".tk[49]" -type "float3" 0 0 -0.089511864 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.062782943 ;
	setAttr ".tk[51]" -type "float3" 0 0 1.7881393e-007 ;
	setAttr ".tk[52]" -type "float3" 0 0 1.7881393e-007 ;
	setAttr ".tk[53]" -type "float3" -0.063361377 0 7.4505806e-009 ;
	setAttr ".tk[54]" -type "float3" -0.089908458 0 0 ;
	setAttr ".tk[55]" -type "float3" -0.096431226 0 0 ;
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 6.1532776193947374 0 0 0 0 0.38601240163124706 0 0 0 0 10.663718178648866 0
		 6.7194329778345665 0.43664061582563934 -2.2783116708392894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.7194347 0.822653 -2.2783098 ;
	setAttr ".rs" 54755;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk[56:83]" -type "float3"  -0.14115134 0 0.035489812
		 -0.13358973 0 0.069200054 -0.12469408 0 0.099440157 -0.099440128 0 0.12469418 -0.069200009
		 0 0.13368221 -0.035489783 0 0.14121482 2.3765848e-008 0 0.14363959 0.035489865 0
		 0.14121489 0.069200054 0 0.13368221 0.099440202 0 0.12469418 0.12469418 0 0.099440157
		 0.13358974 0 0.069200054 0.14115162 0 0.03548985 0.14411004 0 3.0895595e-008 0.14115162
		 0 -0.035489783 0.13358974 0 -0.069200009 0.12469419 0 -0.099440128 0.099440314 0
		 -0.1246941 0.069200054 0 -0.13368207 0.035489894 0 -0.14121479 4.2778495e-008 0 -0.14363956
		 -0.035489783 0 -0.14121479 -0.069200009 0 -0.13368215 -0.099440165 0 -0.12469419
		 -0.12469415 0 -0.099440202 -0.13358974 0 -0.069200054 -0.14115147 0 -0.035489805
		 -0.14411002 0 2.3765848e-008;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:57]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/Farmland0001_10_S.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode polyAutoProj -n "polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 6.1532776193947374 0 0 0 0 0.38601240163124706 0 0 0 0 10.663718178648866 0
		 6.7194329778345665 0.43664061582563934 -2.2783116708392894 1;
	setAttr ".s" -type "double3" 16.144439636797213 16.144439636797213 16.144439636797213 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyChipOff -n "polyChipOff2";
	setAttr ".ics" -type "componentList" 6 "f[176:287]" "f[488:495]" "f[504:511]" "f[520:527]" "f[536:607]" "f[736:927]";
	setAttr ".ix" -type "matrix" 3.3134208203864635 0 -3.3134208203864639 0 0 4.6858846620399239 0 0
		 3.3134208203864639 0 3.3134208203864635 0 -5.7941659937620251 2.4492418391596962 -4.7111967877071779 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.7941661 2.4492419 -4.7111969 ;
	setAttr ".rs" 34942;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:927]";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode blinn -n "blinn1";
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo3";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/BronzeCopper0016_3_M.jpg";
createNode place2dTexture -n "place2dTexture2";
createNode polyChipOff -n "polyChipOff3";
	setAttr ".ics" -type "componentList" 9 "f[154:155]" "f[158:159]" "f[170:171]" "f[174:175]" "f[186:187]" "f[190:191]" "f[202:203]" "f[206:271]" "f[336:399]";
	setAttr ".ix" -type "matrix" 3.3134208203864635 0 -3.3134208203864639 0 0 4.6858846620399239 0 0
		 3.3134208203864639 0 3.3134208203864635 0 -5.7941659937620251 2.4492418391596962 -4.7111967877071779 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.7941661 2.4492419 -4.7111969 ;
	setAttr ".rs" 65220;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 2 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:255]";
createNode phong -n "phong2";
	setAttr ".c" -type "float3" 0.29059282 0.29059282 0.29059282 ;
	setAttr ".it" -type "float3" 0.076920733 0.076920733 0.076920733 ;
createNode shadingEngine -n "phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 171 ".uvtk";
	setAttr ".uvtk[73]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[74]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[75]" -type "float2" 0 -0.4351463 ;
	setAttr ".uvtk[76]" -type "float2" 0 -0.4351463 ;
	setAttr ".uvtk[77]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[78]" -type "float2" 0 -0.43514681 ;
	setAttr ".uvtk[79]" -type "float2" 0 -0.37914196 ;
	setAttr ".uvtk[80]" -type "float2" 0 -0.37914196 ;
	setAttr ".uvtk[81]" -type "float2" 0 -0.37914145 ;
	setAttr ".uvtk[82]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[83]" -type "float2" 0 -0.4351463 ;
	setAttr ".uvtk[84]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[85]" -type "float2" 0 -0.4351463 ;
	setAttr ".uvtk[86]" -type "float2" 0 -0.37914145 ;
	setAttr ".uvtk[87]" -type "float2" 0 -0.37914196 ;
	setAttr ".uvtk[88]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[89]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[90]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[91]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[92]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[93]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[94]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[95]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[96]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[97]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[98]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[99]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[100]" -type "float2" 0 -0.4351463 ;
	setAttr ".uvtk[101]" -type "float2" 0 -0.4351463 ;
	setAttr ".uvtk[102]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[103]" -type "float2" 0 -0.43514681 ;
	setAttr ".uvtk[104]" -type "float2" 0 -0.37914196 ;
	setAttr ".uvtk[105]" -type "float2" 0 -0.37914196 ;
	setAttr ".uvtk[106]" -type "float2" 0 -0.37914145 ;
	setAttr ".uvtk[107]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[108]" -type "float2" 0 -0.4351463 ;
	setAttr ".uvtk[109]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[110]" -type "float2" 0 -0.4351463 ;
	setAttr ".uvtk[111]" -type "float2" 0 -0.37914145 ;
	setAttr ".uvtk[112]" -type "float2" 0 -0.37914196 ;
	setAttr ".uvtk[113]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[114]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[115]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[116]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[117]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[118]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[119]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[120]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[121]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[122]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[123]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[124]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[125]" -type "float2" 0 -0.4351463 ;
	setAttr ".uvtk[126]" -type "float2" 0 -0.4351463 ;
	setAttr ".uvtk[127]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[128]" -type "float2" 0 -0.43514681 ;
	setAttr ".uvtk[129]" -type "float2" 0 -0.37914196 ;
	setAttr ".uvtk[130]" -type "float2" 0 -0.37914196 ;
	setAttr ".uvtk[131]" -type "float2" 0 -0.37914145 ;
	setAttr ".uvtk[132]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[133]" -type "float2" 0 -0.4351463 ;
	setAttr ".uvtk[134]" -type "float2" 0 -0.37914196 ;
	setAttr ".uvtk[135]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[136]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[137]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[138]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[139]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[140]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[141]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[142]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[143]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[144]" -type "float2" 0 -0.4351463 ;
	setAttr ".uvtk[145]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[146]" -type "float2" 0 -0.43514681 ;
	setAttr ".uvtk[147]" -type "float2" 0 -0.37914196 ;
	setAttr ".uvtk[148]" -type "float2" 0 -0.37914196 ;
	setAttr ".uvtk[149]" -type "float2" 0 -0.49115175 ;
	setAttr ".uvtk[150]" -type "float2" 0 -0.4351463 ;
	setAttr ".uvtk[151]" -type "float2" 0 -0.37914196 ;
	setAttr ".uvtk[152]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[153]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[154]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[155]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[156]" -type "float2" 0 -0.32313657 ;
	setAttr ".uvtk[157]" -type "float2" 0 -0.26713121 ;
	setAttr ".uvtk[158]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[159]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[160]" -type "float2" 0 -0.54715663 ;
	setAttr ".uvtk[161]" -type "float2" 0 -0.54715717 ;
	setAttr ".uvtk[162]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[163]" -type "float2" 0 -0.54715717 ;
	setAttr ".uvtk[164]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[165]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[166]" -type "float2" 0 -0.54715663 ;
	setAttr ".uvtk[167]" -type "float2" 0 -0.54715717 ;
	setAttr ".uvtk[168]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[169]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[170]" -type "float2" 0 -0.54715663 ;
	setAttr ".uvtk[171]" -type "float2" 0 -0.54715717 ;
	setAttr ".uvtk[172]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[173]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[174]" -type "float2" 0 -0.54715663 ;
	setAttr ".uvtk[175]" -type "float2" 0 -0.54715717 ;
	setAttr ".uvtk[176]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[177]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[178]" -type "float2" 0 -0.54715663 ;
	setAttr ".uvtk[179]" -type "float2" 0 -0.54715717 ;
	setAttr ".uvtk[180]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[181]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[182]" -type "float2" 0 -0.54715663 ;
	setAttr ".uvtk[183]" -type "float2" 0 -0.54715717 ;
	setAttr ".uvtk[184]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[185]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[186]" -type "float2" 0 -0.54715663 ;
	setAttr ".uvtk[187]" -type "float2" 0 -0.54715717 ;
	setAttr ".uvtk[188]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[189]" -type "float2" 0 -0.54715717 ;
	setAttr ".uvtk[190]" -type "float2" 0 -0.60316205 ;
	setAttr ".uvtk[191]" -type "float2" 0 -0.54715663 ;
	setAttr ".uvtk[192]" -type "float2" 0 -0.21112621 ;
	setAttr ".uvtk[193]" -type "float2" 0 -0.21112573 ;
	setAttr ".uvtk[194]" -type "float2" 0 -0.21112573 ;
	setAttr ".uvtk[195]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[196]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[197]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[198]" -type "float2" 0 -0.21112621 ;
	setAttr ".uvtk[199]" -type "float2" 0 -0.21112573 ;
	setAttr ".uvtk[200]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[201]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[202]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[203]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[204]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[205]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[206]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[207]" -type "float2" 0 -0.21112621 ;
	setAttr ".uvtk[208]" -type "float2" 0 -0.21112573 ;
	setAttr ".uvtk[209]" -type "float2" 0 -0.21112573 ;
	setAttr ".uvtk[210]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[211]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[212]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[213]" -type "float2" 0 -0.21112621 ;
	setAttr ".uvtk[214]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[215]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[216]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[217]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[218]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[219]" -type "float2" 0 -0.21112621 ;
	setAttr ".uvtk[220]" -type "float2" 0 -0.21112573 ;
	setAttr ".uvtk[221]" -type "float2" 0 -0.21112573 ;
	setAttr ".uvtk[222]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[223]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[224]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[225]" -type "float2" 0 -0.21112621 ;
	setAttr ".uvtk[226]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[227]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[228]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[229]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[230]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[231]" -type "float2" 0 -0.21112621 ;
	setAttr ".uvtk[232]" -type "float2" 0 -0.21112573 ;
	setAttr ".uvtk[233]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[234]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[235]" -type "float2" 0 -0.21112621 ;
	setAttr ".uvtk[236]" -type "float2" 0 -0.21112573 ;
	setAttr ".uvtk[237]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[238]" -type "float2" 0 -0.15512091 ;
	setAttr ".uvtk[239]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[240]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[241]" -type "float2" 0 -0.099115968 ;
	setAttr ".uvtk[242]" -type "float2" 0 -0.099115968 ;
createNode blinn -n "blinn2";
createNode shadingEngine -n "blinn2SG";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/ConcreteBare0210_M.jpg";
createNode place2dTexture -n "place2dTexture3";
createNode blinn -n "blinn3";
createNode shadingEngine -n "blinn3SG";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode file -n "file4";
	setAttr ".dc" -type "float3" 0.8524605 0.8524605 0.8524605 ;
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/metal-316803_1280.jpg";
createNode place2dTexture -n "place2dTexture4";
createNode polyCylinder -n "polyCylinder3";
	setAttr ".sa" 16;
	setAttr ".sh" 2;
	setAttr ".cuv" 3;
createNode polySmoothFace -n "polySmoothFace14";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode blinn -n "blinn4";
createNode shadingEngine -n "blinn4SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode file -n "file5";
	setAttr ".ftn" -type "string" "G:/New folder (2)/Escape Menu/Assets/Resources/Textures/MetalRollup0070_2_S.jpg";
createNode place2dTexture -n "place2dTexture5";
createNode polyCube -n "polyCube5";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 0.49545712129598174 0 -0.093440822123101189 0 0 1 0 0
		 0.017736541479581598 0 0.09404557433841014 0 -4.7175644444154337 1.17774108844715 -0.11721685786662778 1;
	setAttr ".wt" 0.8985859751701355;
	setAttr ".dr" no;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.041817959 0.041817959 -0.19786714
		 -0.041817959 0.041817959 -0.19786714 0.041817959 -0.041817959 -0.19786714 -0.041817959
		 -0.041817959 -0.19786714 0.056277014 -0.056277014 -1.080438256 -0.056277014 -0.056277014
		 -1.080438256 0.056277014 0.056277014 -1.080438256 -0.056277014 0.056277014 -1.080438256;
createNode polySplitRing -n "polySplitRing22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:3]" "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 0.49545712129598174 0 -0.093440822123101189 0 0 1 0 0
		 0.017736541479581598 0 0.09404557433841014 0 -4.7175644444154337 1.17774108844715 -0.11721685786662778 1;
	setAttr ".wt" 0.40473511815071106;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[8:9]" "e[12]" "e[17]" "e[24]" "e[31]";
	setAttr ".ix" -type "matrix" 0.49545712129598174 0 -0.093440822123101189 0 0 1 0 0
		 0.017736541479581598 0 0.09404557433841014 0 -4.7175644444154337 1.17774108844715 -0.11721685786662778 1;
	setAttr ".wt" 0.68940055370330811;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[4:5]" "e[13]" "e[15]" "e[26]" "e[30]";
	setAttr ".ix" -type "matrix" 0.49545712129598174 0 -0.093440822123101189 0 0 1 0 0
		 0.017736541479581598 0 0.09404557433841014 0 -4.7175644444154337 1.17774108844715 -0.11721685786662778 1;
	setAttr ".wt" 0.45408934354782104;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySmoothFace -n "polySmoothFace15";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.83730501 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.83730501 ;
	setAttr ".tk[2]" -type "float3" 0 0 -0.83730501 ;
	setAttr ".tk[3]" -type "float3" 0 0 -0.83730501 ;
	setAttr ".tk[18]" -type "float3" 1.7763568e-015 0 -0.055710029 ;
	setAttr ".tk[22]" -type "float3" 1.7763568e-015 0 -0.055710029 ;
	setAttr ".tk[24]" -type "float3" 1.7763568e-015 0 -0.055710029 ;
	setAttr ".tk[28]" -type "float3" 1.7763568e-015 0 -0.055710029 ;
createNode lambert -n "lambert3";
	setAttr ".c" -type "float3" 0.254271 0.64700001 0.32748878 ;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
createNode polyAutoProj -n "polyAutoProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:56]";
	setAttr ".ix" -type "matrix" 6.1532776193947374 0 0 0 0 0.38601240163124706 0 0 0 0 10.663718178648866 0
		 6.7194329778345665 0.43664061582563934 -2.2783116708392894 1;
	setAttr ".s" -type "double3" 19.207904578577192 19.207904578577192 19.207904578577192 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
lockNode -l 1 ;
select -ne :time1;
	setAttr ".o" 96;
	setAttr ".unw" 96;
select -ne :renderPartition;
	setAttr -s 10 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 5 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
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
connectAttr "groupParts9.og" "polySurfaceShape7.i";
connectAttr "groupId11.id" "polySurfaceShape7.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "polySurfaceShape7.iog.og[1].gco";
connectAttr "groupId12.id" "polySurfaceShape7.ciog.cog[0].cgid";
connectAttr "groupParts7.og" "pSphereShape1.i";
connectAttr "groupId8.id" "pSphereShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupId9.id" "pSphereShape1.ciog.cog[0].cgid";
connectAttr "groupParts5.og" "pCylinderShape2.i";
connectAttr "groupId5.id" "pCylinderShape2.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[2].gco";
connectAttr "groupId6.id" "pCylinderShape2.ciog.cog[2].cgid";
connectAttr "polySeparate2.out[0]" "polySurfaceShape6.i";
connectAttr "polySeparate3.out[0]" "polySurfaceShape8.i";
connectAttr "polyTweakUV1.out" "polySurfaceShape9.i";
connectAttr "groupId14.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr "blinn1SG.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "polyTweakUV1.uvtk[0]" "polySurfaceShape9.uvst[0].uvtw";
connectAttr "polySmoothFace5.out" "pCylinderShape1.i";
connectAttr "polySmoothFace6.out" "pSphereShape2.i";
connectAttr "deleteComponent4.og" "pCubeShape4.i";
connectAttr "deleteComponent16.og" "pCubeShape3.i";
connectAttr "deleteComponent18.og" "pCubeShape2.i";
connectAttr "polyAutoProj2.out" "polySurfaceShape4.i";
connectAttr "polyAutoProj1.out" "polySurfaceShape5.i";
connectAttr "deleteComponent19.og" "pCubeShape5.i";
connectAttr "polySmoothFace3.out" "pCubeShape1.i";
connectAttr "bend2GroupId.id" "pSphereShape4.iog.og[4].gid";
connectAttr "bend2Set.mwc" "pSphereShape4.iog.og[4].gco";
connectAttr "groupId4.id" "pSphereShape4.iog.og[5].gid";
connectAttr "tweakSet2.mwc" "pSphereShape4.iog.og[5].gco";
connectAttr "bend2.og[0]" "pSphereShape4.i";
connectAttr "tweak2.vl[0].vt[0]" "pSphereShape4.twl";
connectAttr "bend2.msg" "bend2Handle.sml";
connectAttr "bend2.cur" "bend2HandleShape.cur";
connectAttr "bend2.lb" "bend2HandleShape.lb";
connectAttr "bend2.hb" "bend2HandleShape.hb";
connectAttr "polyTorus1.out" "pTorusShape1.i";
connectAttr "polyCube3.out" "pCubeShape6.i";
connectAttr "polySmoothFace9.out" "pCubeShape8.i";
connectAttr "polySmoothFace14.out" "pCylinderShape3.i";
connectAttr "polySmoothFace15.out" "pCubeShape9.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing1.mp";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing2.mp";
connectAttr "polyTweak2.out" "polySmoothFace1.ip";
connectAttr "polySplitRing2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube1.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySmoothFace2.ip";
connectAttr "polyExtrudeFace1.out" "polyTweak4.ip";
connectAttr "polySmoothFace2.out" "polySmoothFace3.ip";
connectAttr "polySmoothFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyCrease1.ip";
connectAttr "polySphere2.out" "deleteComponent1.ig";
connectAttr "polyCrease1.out" "polySmoothFace4.ip";
connectAttr "polySmoothFace4.out" "polySmoothFace5.ip";
connectAttr "polyTweak5.out" "polySmoothFace6.ip";
connectAttr "deleteComponent1.og" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polySplitRing3.ip";
connectAttr "pSphereShape1.wm" "polySplitRing3.mp";
connectAttr "polySphere1.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplitRing4.ip";
connectAttr "pSphereShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak7.ip";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pSphereShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pSphereShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pSphereShape1.wm" "polySplitRing7.mp";
connectAttr "polyTweak8.out" "polyExtrudeFace3.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polySplitRing7.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace4.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polySplitRing8.ip";
connectAttr "pSphereShape1.wm" "polySplitRing8.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak10.ip";
connectAttr "polySplitRing8.out" "polySmoothFace7.ip";
connectAttr "polySmoothFace7.out" "polySmoothFace8.ip";
connectAttr "bend2GroupParts.og" "bend2.ip[0].ig";
connectAttr "bend2GroupId.id" "bend2.ip[0].gi";
connectAttr "bend2HandleShape.dd" "bend2.dd";
connectAttr "bend2Handle.wm" "bend2.ma";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "bend2GroupId.msg" "bend2Set.gn" -na;
connectAttr "pSphereShape4.iog.og[4]" "bend2Set.dsm" -na;
connectAttr "bend2.msg" "bend2Set.ub[0]";
connectAttr "tweak2.og[0]" "bend2GroupParts.ig";
connectAttr "bend2GroupId.id" "bend2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "pSphereShape4.iog.og[5]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "pSphereShape4Orig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "polyCube4.out" "polySmoothFace9.ip";
connectAttr "polySurfaceShape1.o" "polySplitRing9.ip";
connectAttr "pCubeShape3.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape3.wm" "polySplitRing10.mp";
connectAttr "polySurfaceShape2.o" "polySplitRing11.ip";
connectAttr "pCubeShape4.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCubeShape4.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "pCubeShape4.wm" "polySplitRing13.mp";
connectAttr "polySplitRing10.out" "polySplitRing14.ip";
connectAttr "pCubeShape3.wm" "polySplitRing14.mp";
connectAttr "polyTweak11.out" "polySplitRing15.ip";
connectAttr "pCubeShape2.wm" "polySplitRing15.mp";
connectAttr "polyCube2.out" "polyTweak11.ip";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "pCubeShape2.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "pCubeShape2.wm" "polySplitRing17.mp";
connectAttr "polySurfaceShape3.o" "polySplitRing18.ip";
connectAttr "pCubeShape5.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "pCubeShape5.wm" "polySplitRing19.mp";
connectAttr "polySplitRing19.out" "polySplitRing20.ip";
connectAttr "pCubeShape5.wm" "polySplitRing20.mp";
connectAttr "polySplitRing13.out" "polySmoothFace10.ip";
connectAttr "polySplitRing14.out" "polySmoothFace11.ip";
connectAttr "polySplitRing17.out" "polySmoothFace12.ip";
connectAttr "polySplitRing20.out" "polySmoothFace13.ip";
connectAttr "phong1.oc" "phong1SG.ss";
connectAttr "pCubeShape1.iog" "phong1SG.dsm" -na;
connectAttr "phong1SG.msg" "materialInfo1.sg";
connectAttr "phong1.msg" "materialInfo1.m";
connectAttr "polySmoothFace10.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "polySmoothFace11.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "polySmoothFace13.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "polySmoothFace12.out" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "polyTweak12.ip";
connectAttr "polyTweak12.out" "deleteComponent12.ig";
connectAttr "deleteComponent6.og" "polyTweak13.ip";
connectAttr "polyTweak13.out" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent9.og" "polyTweak14.ip";
connectAttr "polyTweak14.out" "deleteComponent15.ig";
connectAttr "deleteComponent14.og" "deleteComponent16.ig";
connectAttr "deleteComponent12.og" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "deleteComponent15.og" "deleteComponent19.ig";
connectAttr "polyTweak15.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyCylinder2.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyChipOff1.ip";
connectAttr "pCylinderShape2.wm" "polyChipOff1.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak16.ip";
connectAttr "pCylinderShape2.o" "polySeparate1.ip";
connectAttr "polyChipOff1.out" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "polySurfaceShape5.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "lambert2.msg" "materialInfo2.m";
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
connectAttr "polySeparate1.out[1]" "polyAutoProj1.ip";
connectAttr "polySurfaceShape5.wm" "polyAutoProj1.mp";
connectAttr "polySmoothFace8.out" "polyChipOff2.ip";
connectAttr "pSphereShape1.wm" "polyChipOff2.mp";
connectAttr "pSphereShape1.o" "polySeparate2.ip";
connectAttr "polyChipOff2.out" "groupParts7.ig";
connectAttr "groupId8.id" "groupParts7.gi";
connectAttr "file2.oc" "blinn1.c";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "polySurfaceShape7.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape7.ciog.cog[0]" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" "blinn1SG.dsm" -na;
connectAttr "pTorusShape2.iog" "blinn1SG.dsm" -na;
connectAttr "pTorusShape1.iog" "blinn1SG.dsm" -na;
connectAttr "pTorusShape3.iog" "blinn1SG.dsm" -na;
connectAttr "groupId11.msg" "blinn1SG.gn" -na;
connectAttr "groupId12.msg" "blinn1SG.gn" -na;
connectAttr "groupId14.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo3.sg";
connectAttr "blinn1.msg" "materialInfo3.m";
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
connectAttr "polySeparate2.out[1]" "polyChipOff3.ip";
connectAttr "polySurfaceShape7.wm" "polyChipOff3.mp";
connectAttr "polySurfaceShape7.o" "polySeparate3.ip";
connectAttr "polyChipOff3.out" "groupParts9.ig";
connectAttr "groupId11.id" "groupParts9.gi";
connectAttr "polySeparate3.out[1]" "groupParts11.ig";
connectAttr "groupId14.id" "groupParts11.gi";
connectAttr "phong2.oc" "phong2SG.ss";
connectAttr "polySurfaceShape8.iog" "phong2SG.dsm" -na;
connectAttr "phong2SG.msg" "materialInfo4.sg";
connectAttr "phong2.msg" "materialInfo4.m";
connectAttr "groupParts11.og" "polyTweakUV1.ip";
connectAttr "file3.oc" "blinn2.c";
connectAttr "blinn2.oc" "blinn2SG.ss";
connectAttr "polySurfaceShape6.iog" "blinn2SG.dsm" -na;
connectAttr "pCylinderShape1.iog" "blinn2SG.dsm" -na;
connectAttr "pSphereShape4.iog" "blinn2SG.dsm" -na;
connectAttr "pCubeShape6.iog" "blinn2SG.dsm" -na;
connectAttr "pCylinderShape4.iog" "blinn2SG.dsm" -na;
connectAttr "pCylinderShape5.iog" "blinn2SG.dsm" -na;
connectAttr "pCylinderShape3.iog" "blinn2SG.dsm" -na;
connectAttr "blinn2SG.msg" "materialInfo5.sg";
connectAttr "blinn2.msg" "materialInfo5.m";
connectAttr "file3.msg" "materialInfo5.t" -na;
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
connectAttr "file4.oc" "blinn3.c";
connectAttr "blinn3.oc" "blinn3SG.ss";
connectAttr "pCubeShape4.iog" "blinn3SG.dsm" -na;
connectAttr "pCubeShape3.iog" "blinn3SG.dsm" -na;
connectAttr "pCubeShape5.iog" "blinn3SG.dsm" -na;
connectAttr "pCubeShape2.iog" "blinn3SG.dsm" -na;
connectAttr "pSphereShape2.iog" "blinn3SG.dsm" -na;
connectAttr "polySurfaceShape4.iog" "blinn3SG.dsm" -na;
connectAttr "blinn3SG.msg" "materialInfo6.sg";
connectAttr "blinn3.msg" "materialInfo6.m";
connectAttr "file4.msg" "materialInfo6.t" -na;
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
connectAttr "polyCylinder3.out" "polySmoothFace14.ip";
connectAttr "file5.oc" "blinn4.c";
connectAttr "blinn4.oc" "blinn4SG.ss";
connectAttr "pCubeShape8.iog" "blinn4SG.dsm" -na;
connectAttr "pCubeShape9.iog" "blinn4SG.dsm" -na;
connectAttr "blinn4SG.msg" "materialInfo7.sg";
connectAttr "blinn4.msg" "materialInfo7.m";
connectAttr "file5.msg" "materialInfo7.t" -na;
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
connectAttr "polyTweak17.out" "polySplitRing21.ip";
connectAttr "pCubeShape9.wm" "polySplitRing21.mp";
connectAttr "polyCube5.out" "polyTweak17.ip";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "pCubeShape9.wm" "polySplitRing22.mp";
connectAttr "polySplitRing22.out" "polySplitRing23.ip";
connectAttr "pCubeShape9.wm" "polySplitRing23.mp";
connectAttr "polySplitRing23.out" "polySplitRing24.ip";
connectAttr "pCubeShape9.wm" "polySplitRing24.mp";
connectAttr "polyTweak18.out" "polySmoothFace15.ip";
connectAttr "polySplitRing24.out" "polyTweak18.ip";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pCubeShape7.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo8.sg";
connectAttr "lambert3.msg" "materialInfo8.m";
connectAttr "polySeparate1.out[0]" "polyAutoProj2.ip";
connectAttr "polySurfaceShape4.wm" "polyAutoProj2.mp";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "phong2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "phong2.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn4.msg" ":defaultShaderList1.s" -na;
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
connectAttr "pCylinderShape2.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/Farmland0001_10_S.jpg\" 4163951504 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/Farmland0001_10_S.jpg\" \"sourceImages\"\n1\n\"file2\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/BronzeCopper0016_3_M.jpg\" 774528691 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/BronzeCopper0016_3_M.jpg\" \"sourceImages\"\n2\n\"file3\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/ConcreteBare0210_M.jpg\" 3942781958 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/ConcreteBare0210_M.jpg\" \"sourceImages\"\n3\n\"file4\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/metal-316803_1280.jpg\" 1482661929 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/metal-316803_1280.jpg\" \"sourceImages\"\n4\n\"file5\" \"fileTextureName\" \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/MetalRollup0070_2_S.jpg\" 1001974211 \"G:/New folder (2)/Escape Menu/Assets/Resources/Textures/MetalRollup0070_2_S.jpg\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Farm.ma
