//Maya ASCII 2015 scene
//Name: Mountain1.ma
//Last modified: Mon, Apr 27, 2015 06:54:47 PM
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
createNode transform -n "pCube5";
	setAttr ".s" -type "double3" 1.6369317082306383 0.15537109136051308 1.6369317082306383 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.46892374753952026 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 132 ".pt";
	setAttr ".pt[4]" -type "float3" -2.3283064e-010 -4.4703484e-008 4.6566129e-010 ;
	setAttr ".pt[10]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[13]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[16]" -type "float3" -3.7252903e-009 4.0233135e-007 4.6566129e-010 ;
	setAttr ".pt[19]" -type "float3" 0 -5.2899122e-007 0 ;
	setAttr ".pt[29]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[30]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[31]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[32]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[33]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[38]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[39]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[40]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[41]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[42]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[47]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[48]" -type "float3" -1.8626451e-009 2.0116568e-007 -1.8626451e-009 ;
	setAttr ".pt[49]" -type "float3" 9.3132257e-010 -1.0244548e-007 -1.8626451e-009 ;
	setAttr ".pt[50]" -type "float3" -3.7252903e-009 -4.2887405e-007 -3.7252903e-009 ;
	setAttr ".pt[51]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[56]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[57]" -type "float3" 1.8626451e-009 -1.527369e-007 -2.7939677e-009 ;
	setAttr ".pt[58]" -type "float3" 2.3283064e-010 -4.3585896e-007 0 ;
	setAttr ".pt[59]" -type "float3" -3.7252903e-009 1.5646219e-007 -9.3132257e-010 ;
	setAttr ".pt[60]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[65]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[66]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[67]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[68]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[69]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[83]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[84]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[85]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[86]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[91]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[92]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[93]" -type "float3" 3.7252903e-009 -4.331232e-007 1.8626451e-009 ;
	setAttr ".pt[94]" -type "float3" 0 -5.9604645e-007 -4.6566129e-010 ;
	setAttr ".pt[95]" -type "float3" -3.7252903e-009 4.0978193e-007 -2.7939677e-009 ;
	setAttr ".pt[97]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[98]" -type "float3" -9.3132257e-010 -8.4750354e-008 0 ;
	setAttr ".pt[99]" -type "float3" -2.7939677e-009 2.6077032e-007 0 ;
	setAttr ".pt[101]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[102]" -type "float3" 5.5879354e-009 -3.7252903e-007 5.5879354e-009 ;
	setAttr ".pt[103]" -type "float3" 5.5879354e-009 -3.9627776e-007 4.6566129e-010 ;
	setAttr ".pt[105]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[106]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[107]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[118]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[119]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[120]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[121]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[122]" -type "float3" 3.7252903e-009 -4.0791929e-007 -1.8626451e-009 ;
	setAttr ".pt[123]" -type "float3" 1.8626451e-009 1.8801074e-008 2.7939677e-009 ;
	setAttr ".pt[124]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[125]" -type "float3" 2.3283064e-010 -4.5620254e-007 -1.8626451e-009 ;
	setAttr ".pt[126]" -type "float3" -1.3969839e-009 -2.9429793e-007 2.7939677e-009 ;
	setAttr ".pt[127]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[128]" -type "float3" 0 -1.2014061e-007 -1.8626451e-009 ;
	setAttr ".pt[129]" -type "float3" 9.3132257e-010 2.4214387e-007 9.3132257e-010 ;
	setAttr ".pt[130]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[131]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[132]" -type "float3" -3.7252903e-009 -1.7881393e-007 1.8626451e-009 ;
	setAttr ".pt[133]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[135]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[143]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[145]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[146]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[148]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[149]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[150]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[152]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[154]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[155]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[157]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[160]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[166]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[167]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[168]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[169]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[170]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[175]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[176]" -type "float3" 1.8626451e-009 -5.2154064e-008 -4.6566129e-010 ;
	setAttr ".pt[177]" -type "float3" -6.9849193e-010 -7.4505806e-009 4.6566129e-010 ;
	setAttr ".pt[178]" -type "float3" -3.7252903e-009 2.6077032e-007 -6.9849193e-010 ;
	setAttr ".pt[179]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[184]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[185]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[186]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[187]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[188]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[215]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[220]" -type "float3" 4.6566129e-010 -1.1920929e-007 9.3132257e-010 ;
	setAttr ".pt[221]" -type "float3" -6.9849193e-010 4.0233135e-007 3.7252903e-009 ;
	setAttr ".pt[222]" -type "float3" 0 -4.384201e-007 -9.3132257e-010 ;
	setAttr ".pt[223]" -type "float3" -9.3132257e-010 2.9057264e-007 0 ;
	setAttr ".pt[228]" -type "float3" -9.3132257e-010 1.8998981e-007 1.8626451e-009 ;
	setAttr ".pt[230]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[232]" -type "float3" 3.7252903e-009 3.5017729e-007 1.8626451e-009 ;
	setAttr ".pt[234]" -type "float3" -9.3132257e-010 -3.5017729e-007 1.8626451e-009 ;
	setAttr ".pt[236]" -type "float3" 1.8626451e-009 3.7252903e-008 1.8626451e-009 ;
	setAttr ".pt[238]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[242]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[243]" -type "float3" -7.4505806e-009 2.0489097e-007 1.8626451e-009 ;
	setAttr ".pt[244]" -type "float3" 9.3132257e-010 -4.4237822e-008 -1.8626451e-009 ;
	setAttr ".pt[245]" -type "float3" -9.3132257e-010 -1.2852252e-007 -1.8626451e-009 ;
	setAttr ".pt[246]" -type "float3" 0 3.7066638e-007 -1.8626451e-009 ;
	setAttr ".pt[247]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[250]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[251]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[252]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[253]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[254]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[255]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[258]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[259]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[260]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[261]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[262]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[263]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[266]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[267]" -type "float3" -3.7252903e-009 -2.104789e-007 -2.3283064e-010 ;
	setAttr ".pt[268]" -type "float3" -1.3969839e-009 -4.3213367e-007 0 ;
	setAttr ".pt[269]" -type "float3" -9.3132257e-010 2.2351742e-007 -2.3283064e-010 ;
	setAttr ".pt[270]" -type "float3" 0 -5.5879354e-007 -9.3132257e-010 ;
	setAttr ".pt[271]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[274]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[275]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[276]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[277]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[278]" -type "float3" 0 1.4901161e-007 0 ;
	setAttr ".pt[279]" -type "float3" 0 1.4901161e-007 0 ;
createNode mesh -n "polySurfaceShape3" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.375 0.25 0.5 0.25
		 0.625 0.25 0.375 0.375 0.5 0.375 0.625 0.375 0.375 0.5 0.5 0.5 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[10]" -type "float3"  0 -4.9960036e-016 0;
	setAttr -s 9 ".vt[0:8]"  -0.5 0.5 0.5 0 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 0
		 0 0.5 0 0.5 0.5 0 -0.5 0.5 -0.5 0 0.5 -0.5 0.5 0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 7 8 0 0 3 0
		 1 4 1 2 5 0 3 6 0 4 7 1 5 8 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 7 -3 -7
		mu 0 4 0 1 4 3
		f 4 1 8 -4 -8
		mu 0 4 1 2 5 4
		f 4 2 10 -5 -10
		mu 0 4 3 4 7 6
		f 4 3 11 -6 -11
		mu 0 4 4 5 8 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4335795539376883 1.1869263635238811 -1.0999082871341657 ;
	setAttr ".r" -type "double3" -18.338352773550465 -1674.6000000004437 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2.0205759412487687;
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
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode polySplitRing -n "polySplitRing56";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[59:60]" "e[62]" "e[64]" "e[66]" "e[68]" "e[70]" "e[72]" "e[74]";
	setAttr ".ix" -type "matrix" 1.6369317082306383 0 0 0 0 0.15537109136051308 0 0 0 0 1.6369317082306383 0
		 0 0 2 1;
	setAttr ".wt" 0.40551158785820007;
	setAttr ".re" 70;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing55";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[6:8]" "e[14]" "e[19]" "e[24]" "e[29]" "e[34]" "e[39]";
	setAttr ".ix" -type "matrix" 1.6369317082306383 0 0 0 0 0.15537109136051308 0 0 0 0 1.6369317082306383 0
		 0 0 2 1;
	setAttr ".wt" 0.63801169395446777;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing54";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[42:43]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53]" "e[55]" "e[57]";
	setAttr ".ix" -type "matrix" 1.6369317082306383 0 0 0 0 0.15537109136051308 0 0 0 0 1.6369317082306383 0
		 0 0 2 1;
	setAttr ".wt" 0.55324697494506836;
	setAttr ".dr" no;
	setAttr ".re" 51;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing53";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[9:11]" "e[16]" "e[21]" "e[26]" "e[31]" "e[36]" "e[41]";
	setAttr ".ix" -type "matrix" 1.6369317082306383 0 0 0 0 0.15537109136051308 0 0 0 0 1.6369317082306383 0
		 0 0 2 1;
	setAttr ".wt" 0.52223730087280273;
	setAttr ".dr" no;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[9:11]" "e[16]" "e[21]" "e[26]" "e[31]" "e[36]" "e[41]";
	setAttr ".ix" -type "matrix" 1.6369317082306383 0 0 0 0 0.15537109136051308 0 0 0 0 1.6369317082306383 0
		 0 0 2 1;
	setAttr ".wt" 0.36558502912521362;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[6:8]" "e[14]" "e[19]" "e[24]" "e[29]" "e[34]" "e[39]";
	setAttr ".ix" -type "matrix" 1.6369317082306383 0 0 0 0 0.15537109136051308 0 0 0 0 1.6369317082306383 0
		 0 0 2 1;
	setAttr ".wt" 0.34730783104896545;
	setAttr ".re" 24;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing50";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[12:13]" "e[15]";
	setAttr ".ix" -type "matrix" 1.6369317082306383 0 0 0 0 0.15537109136051308 0 0 0 0 1.6369317082306383 0
		 0 0 2 1;
	setAttr ".wt" 0.60477489233016968;
	setAttr ".dr" no;
	setAttr ".re" 13;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing49";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0]" "e[2]" "e[4]";
	setAttr ".ix" -type "matrix" 1.6369317082306383 0 0 0 0 0.15537109136051308 0 0 0 0 1.6369317082306383 0
		 0 0 2 1;
	setAttr ".wt" 0.69687211513519287;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing48";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5]";
	setAttr ".ix" -type "matrix" 1.6369317082306383 0 0 0 0 0.15537109136051308 0 0 0 0 1.6369317082306383 0
		 0 0 2 1;
	setAttr ".wt" 0.49950793385505676;
	setAttr ".dr" no;
	setAttr ".re" 3;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[17:18]" "e[20]";
	setAttr ".ix" -type "matrix" 1.6369317082306383 0 0 0 0 0.15537109136051308 0 0 0 0 1.6369317082306383 0
		 0 0 2 1;
	setAttr ".wt" 0.68675452470779419;
	setAttr ".dr" no;
	setAttr ".re" 18;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing46";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0]" "e[2]" "e[4]";
	setAttr ".ix" -type "matrix" 1.6369317082306383 0 0 0 0 0.15537109136051308 0 0 0 0 1.6369317082306383 0
		 0 0 2 1;
	setAttr ".wt" 0.65179312229156494;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[3]" "e[5]";
	setAttr ".ix" -type "matrix" 1.6369317082306383 0 0 0 0 0.15537109136051308 0 0 0 0 1.6369317082306383 0
		 0 0 2 1;
	setAttr ".wt" 0.12976951897144318;
	setAttr ".re" 3;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode materialInfo -n "materialInfo3";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "lambert3";
	setAttr ".ambc" -type "float3" 0.456 0.017327994 0.022372659 ;
createNode file -n "file5";
	setAttr ".ftn" -type "string" "G:/New folder (2)/UI Building Info copy/Assets/Textures/mountain.png";
createNode place2dTexture -n "place2dTexture12";
createNode bump2d -n "bump2d4";
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode fractal -n "fractal4";
	setAttr ".ail" yes;
	setAttr ".a" 0.33834585547447205;
createNode place2dTexture -n "place2dTexture11";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n"
		+ "\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	setAttr ".vcs" -type "string" "baked_$p";
	setAttr ".vdir" -type "string" "turtle/bakedTextures/";
	setAttr ".vfn" -type "string" "baked_$p_$b.pc";
	setAttr ".tdir" -type "string" "turtle/bakedTextures/";
	setAttr ".tfn" -type "string" "baked_$p_$s.$e";
lockNode -l 1 ;
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".ofb" 0;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 57 ".tk";
	setAttr ".tk[4]" -type "float3" 9.2889776e-017 4.103981 -0.0033607939 ;
	setAttr ".tk[9]" -type "float3" 0.078548782 -4.4408921e-016 0 ;
	setAttr ".tk[10]" -type "float3" 0.078548782 3.1473863 0 ;
	setAttr ".tk[11]" -type "float3" 0.078548782 -4.4408921e-016 0 ;
	setAttr ".tk[13]" -type "float3" 0 3.6844497 7.4505806e-009 ;
	setAttr ".tk[16]" -type "float3" 1.1175871e-008 4.3780375 1.4901161e-008 ;
	setAttr ".tk[18]" -type "float3" 0.056486532 -6.6613381e-016 0 ;
	setAttr ".tk[19]" -type "float3" 0.068735495 3.8984413 0.0061244769 ;
	setAttr ".tk[20]" -type "float3" 0.056486532 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.012248972 1.1061933 0.0061244769 ;
	setAttr ".tk[24]" -type "float3" 0.060400143 -0.0080837011 0.0022740299 ;
	setAttr ".tk[25]" -type "float3" 0.060400143 0.87072498 -0.00032486147 ;
	setAttr ".tk[26]" -type "float3" 0.060400143 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.060400143 1.0402827 0.0009745842 ;
	setAttr ".tk[29]" -type "float3" 0.078548782 2.1625934 0 ;
	setAttr ".tk[30]" -type "float3" 0.056486532 2.6141739 0 ;
	setAttr ".tk[31]" -type "float3" 0 2.771266 0 ;
	setAttr ".tk[32]" -type "float3" 0 2.9342153 0 ;
	setAttr ".tk[33]" -type "float3" 0 2.6569912 0 ;
	setAttr ".tk[34]" -type "float3" 0 1.2100571 0 ;
	setAttr ".tk[37]" -type "float3" 0.060400143 0.8307246 -0.0016243072 ;
	setAttr ".tk[38]" -type "float3" 0.078548782 0.68557811 0 ;
	setAttr ".tk[39]" -type "float3" 0.068735473 1.2868184 -0.006124483 ;
	setAttr ".tk[40]" -type "float3" 0 2.279614 0 ;
	setAttr ".tk[41]" -type "float3" 0 2.4247794 0 ;
	setAttr ".tk[42]" -type "float3" 0 2.050386 0 ;
	setAttr ".tk[43]" -type "float3" -0.012248965 0.65494162 -0.006124483 ;
	setAttr ".tk[45]" -type "float3" 0 -5.9604645e-008 0.015782047 ;
	setAttr ".tk[46]" -type "float3" 0.060400143 0.65494156 0.014807467 ;
	setAttr ".tk[47]" -type "float3" 0.078548782 2.4118924 0.015782047 ;
	setAttr ".tk[48]" -type "float3" 0.069661081 2.8360913 0.015782032 ;
	setAttr ".tk[49]" -type "float3" 0 3.2147739 0.015782047 ;
	setAttr ".tk[50]" -type "float3" 1.1175871e-008 3.4045906 0.015782036 ;
	setAttr ".tk[51]" -type "float3" 0 3.3955371 0.015782043 ;
	setAttr ".tk[52]" -type "float3" -0.012248972 0.87927806 0.015782036 ;
	setAttr ".tk[53]" -type "float3" 0 -5.9604645e-008 0.015782047 ;
	setAttr ".tk[55]" -type "float3" 0.060400143 1.2241986 0.00032486144 ;
	setAttr ".tk[56]" -type "float3" 0.078548782 3.0343156 0 ;
	setAttr ".tk[57]" -type "float3" 0.068735495 3.914093 0.012248965 ;
	setAttr ".tk[58]" -type "float3" 0.006124483 3.8859208 0.012248965 ;
	setAttr ".tk[59]" -type "float3" 1.1814183e-008 4.1283956 0.012248977 ;
	setAttr ".tk[60]" -type "float3" -0.0061244825 3.7238643 0.012248977 ;
	setAttr ".tk[61]" -type "float3" -0.012248972 1.3405287 0.012248977 ;
	setAttr ".tk[64]" -type "float3" 0.060400143 0.4899399 0.0016243072 ;
	setAttr ".tk[65]" -type "float3" 0.08449389 0.9798438 0 ;
	setAttr ".tk[66]" -type "float3" 0.051653475 1.3885403 0 ;
	setAttr ".tk[67]" -type "float3" 0 1.416959 0 ;
	setAttr ".tk[68]" -type "float3" 0 1.4672595 0 ;
	setAttr ".tk[69]" -type "float3" 0 1.2962868 0 ;
	setAttr ".tk[70]" -type "float3" 0 0.95569408 0 ;
	setAttr ".tk[73]" -type "float3" 0.060400143 0.63237965 -0.0022740299 ;
	setAttr ".tk[74]" -type "float3" 0.078548782 0.63356358 -0.012248963 ;
	setAttr ".tk[75]" -type "float3" 0.068735495 1.361923 -0.012248965 ;
	setAttr ".tk[76]" -type "float3" 0.006124483 1.380862 -0.012248965 ;
	setAttr ".tk[77]" -type "float3" 0 1.351011 -0.0040749339 ;
	setAttr ".tk[78]" -type "float3" -0.0061244825 1.5213332 -0.012248965 ;
	setAttr ".tk[79]" -type "float3" -0.012248965 0.65494162 -0.012248965 ;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 289 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.36302277 -0.24721995 ;
	setAttr ".uvtk[3]" -type "float2" -0.36302277 -0.20069245 ;
	setAttr ".uvtk[4]" -type "float2" -0.31764495 -0.24721995 ;
	setAttr ".uvtk[10]" -type "float2" -0.2722671 -0.154165 ;
	setAttr ".uvtk[13]" -type "float2" -0.31764495 -0.20069245 ;
	setAttr ".uvtk[15]" -type "float2" -0.36302277 -0.154165 ;
	setAttr ".uvtk[16]" -type "float2" 0 -0.24721995 ;
	setAttr ".uvtk[20]" -type "float2" 0.045377791 -0.24721995 ;
	setAttr ".uvtk[26]" -type "float2" 0.090755701 -0.154165 ;
	setAttr ".uvtk[29]" -type "float2" 0.045377791 -0.20069245 ;
	setAttr ".uvtk[35]" -type "float2" -0.36302277 0.17152746 ;
	setAttr ".uvtk[42]" -type "float2" -0.2722671 0.21805501 ;
	setAttr ".uvtk[45]" -type "float2" -0.31764495 0.17152746 ;
	setAttr ".uvtk[47]" -type "float2" -0.36302277 0.21805501 ;
	setAttr ".uvtk[58]" -type "float2" 0.090755701 0.21805501 ;
	setAttr ".uvtk[61]" -type "float2" 0.045377791 0.17152746 ;
	setAttr ".uvtk[64]" -type "float2" 0.18151134 -0.24721995 ;
	setAttr ".uvtk[68]" -type "float2" 0.22688919 -0.24721995 ;
	setAttr ".uvtk[74]" -type "float2" 0.27226698 -0.154165 ;
	setAttr ".uvtk[77]" -type "float2" 0.22688919 -0.20069245 ;
	setAttr ".uvtk[93]" -type "float2" 0.22688919 0.17152746 ;
	setAttr ".uvtk[95]" -type "float2" 0.27226698 0.21805501 ;
	setAttr ".uvtk[96]" -type "float2" -0.18151137 -0.24721995 ;
	setAttr ".uvtk[100]" -type "float2" -0.13613349 -0.24721995 ;
	setAttr ".uvtk[106]" -type "float2" -0.090755671 -0.154165 ;
	setAttr ".uvtk[109]" -type "float2" -0.13613349 -0.20069245 ;
	setAttr ".uvtk[125]" -type "float2" -0.13613349 0.17152746 ;
	setAttr ".uvtk[127]" -type "float2" -0.090755671 0.21805501 ;
	setAttr ".uvtk[128]" -type "float2" -0.090755671 -0.24721995 ;
	setAttr ".uvtk[132]" -type "float2" -0.045377851 -0.24721995 ;
	setAttr ".uvtk[134]" -type "float2" 0 -0.20069245 ;
	setAttr ".uvtk[138]" -type "float2" 0 -0.154165 ;
	setAttr ".uvtk[140]" -type "float2" -0.090755671 -0.20069245 ;
	setAttr ".uvtk[141]" -type "float2" -0.045377851 -0.20069245 ;
	setAttr ".uvtk[145]" -type "float2" -0.090755671 0.17152746 ;
	setAttr ".uvtk[155]" -type "float2" 0 0.17152746 ;
	setAttr ".uvtk[157]" -type "float2" -0.045377851 0.17152746 ;
	setAttr ".uvtk[159]" -type "float2" 0 0.21805501 ;
	setAttr ".uvtk[160]" -type "float2" 0.090755701 -0.24721995 ;
	setAttr ".uvtk[164]" -type "float2" 0.13613349 -0.24721995 ;
	setAttr ".uvtk[166]" -type "float2" 0.18151134 -0.20069245 ;
	setAttr ".uvtk[170]" -type "float2" 0.18151134 -0.154165 ;
	setAttr ".uvtk[172]" -type "float2" 0.090755701 -0.20069245 ;
	setAttr ".uvtk[173]" -type "float2" 0.13613349 -0.20069245 ;
	setAttr ".uvtk[177]" -type "float2" 0.090755701 0.17152746 ;
	setAttr ".uvtk[187]" -type "float2" 0.18151134 0.17152746 ;
	setAttr ".uvtk[189]" -type "float2" 0.13613349 0.17152746 ;
	setAttr ".uvtk[191]" -type "float2" 0.18151134 0.21805501 ;
	setAttr ".uvtk[192]" -type "float2" -0.2722671 -0.24721995 ;
	setAttr ".uvtk[196]" -type "float2" -0.22688925 -0.24721995 ;
	setAttr ".uvtk[198]" -type "float2" -0.18151137 -0.20069245 ;
	setAttr ".uvtk[202]" -type "float2" -0.18151137 -0.154165 ;
	setAttr ".uvtk[204]" -type "float2" -0.2722671 -0.20069245 ;
	setAttr ".uvtk[205]" -type "float2" -0.22688925 -0.20069245 ;
	setAttr ".uvtk[209]" -type "float2" -0.2722671 0.17152746 ;
	setAttr ".uvtk[219]" -type "float2" -0.18151137 0.17152746 ;
	setAttr ".uvtk[221]" -type "float2" -0.22688925 0.17152746 ;
	setAttr ".uvtk[223]" -type "float2" -0.18151137 0.21805501 ;
	setAttr ".uvtk[224]" -type "float2" 0.27226698 -0.24721995 ;
	setAttr ".uvtk[228]" -type "float2" 0.31764495 -0.24721995 ;
	setAttr ".uvtk[229]" -type "float2" 0.36302274 -0.24721995 ;
	setAttr ".uvtk[233]" -type "float2" 0.36302274 -0.20069245 ;
	setAttr ".uvtk[236]" -type "float2" 0.27226698 -0.20069245 ;
	setAttr ".uvtk[237]" -type "float2" 0.31764495 -0.20069245 ;
	setAttr ".uvtk[241]" -type "float2" 0.27226698 0.17152746 ;
	setAttr ".uvtk[250]" -type "float2" 0.36302274 0.12500004 ;
	setAttr ".uvtk[253]" -type "float2" 0.31764495 0.17152746 ;
	setAttr ".uvtk[254]" -type "float2" 0.36302274 0.17152746 ;
	setAttr ".uvtk[261]" -type "float2" 0.36302274 -0.06110996 ;
	setAttr ".uvtk[265]" -type "float2" 0.36302274 -0.014582515 ;
	setAttr ".uvtk[269]" -type "float2" 0.31764495 -0.014582515 ;
	setAttr ".uvtk[278]" -type "float2" 0.27226698 -0.014582515 ;
	setAttr ".uvtk[282]" -type "float2" 0.27226698 0.031945035 ;
	setAttr ".uvtk[285]" -type "float2" 0.22688919 -0.014582515 ;
	setAttr ".uvtk[294]" -type "float2" 0.18151134 -0.014582515 ;
	setAttr ".uvtk[298]" -type "float2" 0.18151134 0.031945035 ;
	setAttr ".uvtk[301]" -type "float2" 0.13613349 -0.014582515 ;
	setAttr ".uvtk[310]" -type "float2" 0.090755701 -0.014582515 ;
	setAttr ".uvtk[314]" -type "float2" 0.090755701 0.031945035 ;
	setAttr ".uvtk[317]" -type "float2" 0.045377791 -0.014582515 ;
	setAttr ".uvtk[326]" -type "float2" 0 -0.014582515 ;
	setAttr ".uvtk[330]" -type "float2" 0 0.031945035 ;
	setAttr ".uvtk[333]" -type "float2" -0.045377851 -0.014582515 ;
	setAttr ".uvtk[342]" -type "float2" -0.090755671 -0.014582515 ;
	setAttr ".uvtk[346]" -type "float2" -0.090755671 0.031945035 ;
	setAttr ".uvtk[349]" -type "float2" -0.13613349 -0.014582515 ;
	setAttr ".uvtk[358]" -type "float2" -0.18151137 -0.014582515 ;
	setAttr ".uvtk[362]" -type "float2" -0.18151137 0.031945035 ;
	setAttr ".uvtk[365]" -type "float2" -0.22688925 -0.014582515 ;
	setAttr ".uvtk[371]" -type "float2" -0.36302277 -0.014582515 ;
	setAttr ".uvtk[374]" -type "float2" -0.2722671 -0.014582515 ;
	setAttr ".uvtk[378]" -type "float2" -0.2722671 0.031945035 ;
	setAttr ".uvtk[381]" -type "float2" -0.31764495 -0.014582515 ;
	setAttr ".uvtk[383]" -type "float2" -0.36302277 0.031945035 ;
	setAttr ".uvtk[394]" -type "float2" 0.36302274 0.31111002 ;
	setAttr ".uvtk[397]" -type "float2" 0.31764495 0.35763741 ;
	setAttr ".uvtk[398]" -type "float2" 0.36302274 0.35763741 ;
	setAttr ".uvtk[411]" -type "float2" 0.27226698 0.35763741 ;
	setAttr ".uvtk[413]" -type "float2" 0.22688919 0.35763741 ;
	setAttr ".uvtk[415]" -type "float2" 0.27226698 0.40416491 ;
	setAttr ".uvtk[427]" -type "float2" 0.18151134 0.35763741 ;
	setAttr ".uvtk[429]" -type "float2" 0.13613349 0.35763741 ;
	setAttr ".uvtk[431]" -type "float2" 0.18151134 0.40416491 ;
	setAttr ".uvtk[438]" -type "float2" 0.090755701 0.35763741 ;
	setAttr ".uvtk[442]" -type "float2" 0.090755701 0.40416491 ;
	setAttr ".uvtk[445]" -type "float2" 0.045377791 0.35763741 ;
	setAttr ".uvtk[459]" -type "float2" 0 0.35763741 ;
	setAttr ".uvtk[461]" -type "float2" -0.045377851 0.35763741 ;
	setAttr ".uvtk[463]" -type "float2" 0 0.40416491 ;
	setAttr ".uvtk[475]" -type "float2" -0.090755671 0.35763741 ;
	setAttr ".uvtk[477]" -type "float2" -0.13613349 0.35763741 ;
	setAttr ".uvtk[479]" -type "float2" -0.090755671 0.40416491 ;
	setAttr ".uvtk[491]" -type "float2" -0.18151137 0.35763741 ;
	setAttr ".uvtk[493]" -type "float2" -0.22688925 0.35763741 ;
	setAttr ".uvtk[495]" -type "float2" -0.18151137 0.40416491 ;
	setAttr ".uvtk[499]" -type "float2" -0.36302277 0.35763741 ;
	setAttr ".uvtk[502]" -type "float2" -0.2722671 0.35763741 ;
	setAttr ".uvtk[506]" -type "float2" -0.2722671 0.40416491 ;
	setAttr ".uvtk[509]" -type "float2" -0.31764495 0.35763741 ;
	setAttr ".uvtk[511]" -type "float2" -0.36302277 0.40416491 ;
	setAttr ".uvtk[512]" -type "float2" 0.27226698 0.31111002 ;
	setAttr ".uvtk[518]" -type "float2" 0.31764495 0.21805501 ;
	setAttr ".uvtk[522]" -type "float2" 0.36302274 0.21805501 ;
	setAttr ".uvtk[524]" -type "float2" 0.31764495 0.31111002 ;
	setAttr ".uvtk[525]" -type "float2" 0.31764495 0.26458246 ;
	setAttr ".uvtk[526]" -type "float2" 0.36302274 0.26458246 ;
	setAttr ".uvtk[528]" -type "float2" 0.18151134 0.31111002 ;
	setAttr ".uvtk[534]" -type "float2" 0.22688919 0.21805501 ;
	setAttr ".uvtk[539]" -type "float2" 0.27226698 0.26458246 ;
	setAttr ".uvtk[540]" -type "float2" 0.22688919 0.31111002 ;
	setAttr ".uvtk[541]" -type "float2" 0.22688919 0.26458246 ;
	setAttr ".uvtk[544]" -type "float2" 0.090755701 0.31111002 ;
	setAttr ".uvtk[550]" -type "float2" 0.13613349 0.21805501 ;
	setAttr ".uvtk[555]" -type "float2" 0.18151134 0.26458246 ;
	setAttr ".uvtk[556]" -type "float2" 0.13613349 0.31111002 ;
	setAttr ".uvtk[557]" -type "float2" 0.13613349 0.26458246 ;
	setAttr ".uvtk[561]" -type "float2" 0.045377791 0.21805501 ;
	setAttr ".uvtk[566]" -type "float2" 0.090755701 0.26458246 ;
	setAttr ".uvtk[571]" -type "float2" 0.045377791 0.31111002 ;
	setAttr ".uvtk[573]" -type "float2" 0.045377791 0.26458246 ;
	setAttr ".uvtk[575]" -type "float2" 0 0.31111002 ;
	setAttr ".uvtk[576]" -type "float2" -0.090755671 0.31111002 ;
	setAttr ".uvtk[582]" -type "float2" -0.045377851 0.21805501 ;
	setAttr ".uvtk[587]" -type "float2" 0 0.26458246 ;
	setAttr ".uvtk[588]" -type "float2" -0.045377851 0.31111002 ;
	setAttr ".uvtk[589]" -type "float2" -0.045377851 0.26458246 ;
	setAttr ".uvtk[592]" -type "float2" -0.18151137 0.31111002 ;
	setAttr ".uvtk[598]" -type "float2" -0.13613349 0.21805501 ;
	setAttr ".uvtk[603]" -type "float2" -0.090755671 0.26458246 ;
	setAttr ".uvtk[604]" -type "float2" -0.13613349 0.31111002 ;
	setAttr ".uvtk[605]" -type "float2" -0.13613349 0.26458246 ;
	setAttr ".uvtk[608]" -type "float2" -0.2722671 0.31111002 ;
	setAttr ".uvtk[614]" -type "float2" -0.22688925 0.21805501 ;
	setAttr ".uvtk[619]" -type "float2" -0.18151137 0.26458246 ;
	setAttr ".uvtk[620]" -type "float2" -0.22688925 0.31111002 ;
	setAttr ".uvtk[621]" -type "float2" -0.22688925 0.26458246 ;
	setAttr ".uvtk[625]" -type "float2" -0.31764495 0.21805501 ;
	setAttr ".uvtk[627]" -type "float2" -0.36302277 0.26458246 ;
	setAttr ".uvtk[630]" -type "float2" -0.2722671 0.26458246 ;
	setAttr ".uvtk[635]" -type "float2" -0.31764495 0.31111002 ;
	setAttr ".uvtk[637]" -type "float2" -0.31764495 0.26458246 ;
	setAttr ".uvtk[639]" -type "float2" -0.36302277 0.31111002 ;
	setAttr ".uvtk[641]" -type "float2" 0.31764495 0.031945035 ;
	setAttr ".uvtk[645]" -type "float2" 0.36302274 0.031945035 ;
	setAttr ".uvtk[649]" -type "float2" 0.36302274 0.07847254 ;
	setAttr ".uvtk[651]" -type "float2" 0.31764495 0.12500004 ;
	setAttr ".uvtk[653]" -type "float2" 0.31764495 0.07847254 ;
	setAttr ".uvtk[655]" -type "float2" 0.27226698 0.12500004 ;
	setAttr ".uvtk[657]" -type "float2" 0.22688919 0.031945035 ;
	setAttr ".uvtk[662]" -type "float2" 0.27226698 0.07847254 ;
	setAttr ".uvtk[667]" -type "float2" 0.22688919 0.12500004 ;
	setAttr ".uvtk[669]" -type "float2" 0.22688919 0.07847254 ;
	setAttr ".uvtk[671]" -type "float2" 0.18151134 0.12500004 ;
	setAttr ".uvtk[673]" -type "float2" 0.13613349 0.031945035 ;
	setAttr ".uvtk[678]" -type "float2" 0.18151134 0.07847254 ;
	setAttr ".uvtk[683]" -type "float2" 0.13613349 0.12500004 ;
	setAttr ".uvtk[685]" -type "float2" 0.13613349 0.07847254 ;
	setAttr ".uvtk[687]" -type "float2" 0.090755701 0.12500004 ;
	setAttr ".uvtk[689]" -type "float2" 0.045377791 0.031945035 ;
	setAttr ".uvtk[694]" -type "float2" 0.090755701 0.07847254 ;
	setAttr ".uvtk[699]" -type "float2" 0.045377791 0.12500004 ;
	setAttr ".uvtk[701]" -type "float2" 0.045377791 0.07847254 ;
	setAttr ".uvtk[703]" -type "float2" 0 0.12500004 ;
	setAttr ".uvtk[705]" -type "float2" -0.045377851 0.031945035 ;
	setAttr ".uvtk[710]" -type "float2" 0 0.07847254 ;
	setAttr ".uvtk[715]" -type "float2" -0.045377851 0.12500004 ;
	setAttr ".uvtk[717]" -type "float2" -0.045377851 0.07847254 ;
	setAttr ".uvtk[719]" -type "float2" -0.090755671 0.12500004 ;
	setAttr ".uvtk[721]" -type "float2" -0.13613349 0.031945035 ;
	setAttr ".uvtk[726]" -type "float2" -0.090755671 0.07847254 ;
	setAttr ".uvtk[731]" -type "float2" -0.13613349 0.12500004 ;
	setAttr ".uvtk[733]" -type "float2" -0.13613349 0.07847254 ;
	setAttr ".uvtk[735]" -type "float2" -0.18151137 0.12500004 ;
	setAttr ".uvtk[737]" -type "float2" -0.22688925 0.031945035 ;
	setAttr ".uvtk[742]" -type "float2" -0.18151137 0.07847254 ;
	setAttr ".uvtk[747]" -type "float2" -0.22688925 0.12500004 ;
	setAttr ".uvtk[749]" -type "float2" -0.22688925 0.07847254 ;
	setAttr ".uvtk[751]" -type "float2" -0.2722671 0.12500004 ;
	setAttr ".uvtk[753]" -type "float2" -0.31764495 0.031945035 ;
	setAttr ".uvtk[755]" -type "float2" -0.36302277 0.07847254 ;
	setAttr ".uvtk[758]" -type "float2" -0.2722671 0.07847254 ;
	setAttr ".uvtk[763]" -type "float2" -0.31764495 0.12500004 ;
	setAttr ".uvtk[765]" -type "float2" -0.31764495 0.07847254 ;
	setAttr ".uvtk[767]" -type "float2" -0.36302277 0.12500004 ;
	setAttr ".uvtk[769]" -type "float2" 0.31764495 -0.154165 ;
	setAttr ".uvtk[773]" -type "float2" 0.36302274 -0.154165 ;
	setAttr ".uvtk[777]" -type "float2" 0.36302274 -0.10763749 ;
	setAttr ".uvtk[779]" -type "float2" 0.31764495 -0.06110996 ;
	setAttr ".uvtk[781]" -type "float2" 0.31764495 -0.10763749 ;
	setAttr ".uvtk[783]" -type "float2" 0.27226698 -0.06110996 ;
	setAttr ".uvtk[785]" -type "float2" 0.22688919 -0.154165 ;
	setAttr ".uvtk[790]" -type "float2" 0.27226698 -0.10763749 ;
	setAttr ".uvtk[795]" -type "float2" 0.22688919 -0.06110996 ;
	setAttr ".uvtk[797]" -type "float2" 0.22688919 -0.10763749 ;
	setAttr ".uvtk[799]" -type "float2" 0.18151134 -0.06110996 ;
	setAttr ".uvtk[801]" -type "float2" 0.13613349 -0.154165 ;
	setAttr ".uvtk[806]" -type "float2" 0.18151134 -0.10763749 ;
	setAttr ".uvtk[811]" -type "float2" 0.13613349 -0.06110996 ;
	setAttr ".uvtk[813]" -type "float2" 0.13613349 -0.10763749 ;
	setAttr ".uvtk[815]" -type "float2" 0.090755701 -0.06110996 ;
	setAttr ".uvtk[817]" -type "float2" 0.045377791 -0.154165 ;
	setAttr ".uvtk[822]" -type "float2" 0.090755701 -0.10763749 ;
	setAttr ".uvtk[827]" -type "float2" 0.045377791 -0.06110996 ;
	setAttr ".uvtk[829]" -type "float2" 0.045377791 -0.10763749 ;
	setAttr ".uvtk[831]" -type "float2" 0 -0.06110996 ;
	setAttr ".uvtk[833]" -type "float2" -0.045377851 -0.154165 ;
	setAttr ".uvtk[838]" -type "float2" 0 -0.10763749 ;
	setAttr ".uvtk[843]" -type "float2" -0.045377851 -0.06110996 ;
	setAttr ".uvtk[845]" -type "float2" -0.045377851 -0.10763749 ;
	setAttr ".uvtk[847]" -type "float2" -0.090755671 -0.06110996 ;
	setAttr ".uvtk[849]" -type "float2" -0.13613349 -0.154165 ;
	setAttr ".uvtk[854]" -type "float2" -0.090755671 -0.10763749 ;
	setAttr ".uvtk[859]" -type "float2" -0.13613349 -0.06110996 ;
	setAttr ".uvtk[861]" -type "float2" -0.13613349 -0.10763749 ;
	setAttr ".uvtk[863]" -type "float2" -0.18151137 -0.06110996 ;
	setAttr ".uvtk[865]" -type "float2" -0.22688925 -0.154165 ;
	setAttr ".uvtk[870]" -type "float2" -0.18151137 -0.10763749 ;
	setAttr ".uvtk[875]" -type "float2" -0.22688925 -0.06110996 ;
	setAttr ".uvtk[877]" -type "float2" -0.22688925 -0.10763749 ;
	setAttr ".uvtk[879]" -type "float2" -0.2722671 -0.06110996 ;
	setAttr ".uvtk[881]" -type "float2" -0.31764495 -0.154165 ;
	setAttr ".uvtk[883]" -type "float2" -0.36302277 -0.10763749 ;
	setAttr ".uvtk[886]" -type "float2" -0.2722671 -0.10763749 ;
	setAttr ".uvtk[891]" -type "float2" -0.31764495 -0.06110996 ;
	setAttr ".uvtk[893]" -type "float2" -0.31764495 -0.10763749 ;
	setAttr ".uvtk[895]" -type "float2" -0.36302277 -0.06110996 ;
	setAttr ".uvtk[899]" -type "float2" 0.31764495 0.49722004 ;
	setAttr ".uvtk[902]" -type "float2" 0.31764495 0.40416491 ;
	setAttr ".uvtk[906]" -type "float2" 0.36302274 0.40416491 ;
	setAttr ".uvtk[909]" -type "float2" 0.31764495 0.45069242 ;
	setAttr ".uvtk[910]" -type "float2" 0.36302274 0.45069242 ;
	setAttr ".uvtk[911]" -type "float2" 0.36302274 0.49722004 ;
	setAttr ".uvtk[915]" -type "float2" 0.22688919 0.49722004 ;
	setAttr ".uvtk[918]" -type "float2" 0.22688919 0.40416491 ;
	setAttr ".uvtk[923]" -type "float2" 0.27226698 0.45069242 ;
	setAttr ".uvtk[925]" -type "float2" 0.22688919 0.45069242 ;
	setAttr ".uvtk[927]" -type "float2" 0.27226698 0.49722004 ;
	setAttr ".uvtk[931]" -type "float2" 0.13613349 0.49722004 ;
	setAttr ".uvtk[934]" -type "float2" 0.13613349 0.40416491 ;
	setAttr ".uvtk[939]" -type "float2" 0.18151134 0.45069242 ;
	setAttr ".uvtk[941]" -type "float2" 0.13613349 0.45069242 ;
	setAttr ".uvtk[943]" -type "float2" 0.18151134 0.49722004 ;
	setAttr ".uvtk[945]" -type "float2" 0.045377791 0.40416491 ;
	setAttr ".uvtk[950]" -type "float2" 0.090755701 0.45069242 ;
	setAttr ".uvtk[954]" -type "float2" 0.090755701 0.49722004 ;
	setAttr ".uvtk[957]" -type "float2" 0.045377791 0.45069242 ;
	setAttr ".uvtk[958]" -type "float2" 0.045377791 0.49722004 ;
	setAttr ".uvtk[963]" -type "float2" -0.045377851 0.49722004 ;
	setAttr ".uvtk[966]" -type "float2" -0.045377851 0.40416491 ;
	setAttr ".uvtk[971]" -type "float2" 0 0.45069242 ;
	setAttr ".uvtk[973]" -type "float2" -0.045377851 0.45069242 ;
	setAttr ".uvtk[975]" -type "float2" 0 0.49722004 ;
	setAttr ".uvtk[979]" -type "float2" -0.13613349 0.49722004 ;
	setAttr ".uvtk[982]" -type "float2" -0.13613349 0.40416491 ;
	setAttr ".uvtk[987]" -type "float2" -0.090755671 0.45069242 ;
	setAttr ".uvtk[989]" -type "float2" -0.13613349 0.45069242 ;
	setAttr ".uvtk[991]" -type "float2" -0.090755671 0.49722004 ;
	setAttr ".uvtk[995]" -type "float2" -0.22688925 0.49722004 ;
	setAttr ".uvtk[998]" -type "float2" -0.22688925 0.40416491 ;
	setAttr ".uvtk[1003]" -type "float2" -0.18151137 0.45069242 ;
	setAttr ".uvtk[1005]" -type "float2" -0.22688925 0.45069242 ;
	setAttr ".uvtk[1007]" -type "float2" -0.18151137 0.49722004 ;
	setAttr ".uvtk[1009]" -type "float2" -0.31764495 0.40416491 ;
	setAttr ".uvtk[1011]" -type "float2" -0.36302277 0.45069242 ;
	setAttr ".uvtk[1014]" -type "float2" -0.2722671 0.45069242 ;
	setAttr ".uvtk[1018]" -type "float2" -0.2722671 0.49722004 ;
	setAttr ".uvtk[1021]" -type "float2" -0.31764495 0.45069242 ;
	setAttr ".uvtk[1022]" -type "float2" -0.31764495 0.49722004 ;
	setAttr ".uvtk[1023]" -type "float2" -0.36302277 0.49722004 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 0;
	setAttr ".mss" 1;
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
connectAttr "polyTweakUV1.out" "pCubeShape5.i";
connectAttr "polyTweakUV1.uvtk[0]" "pCubeShape5.uvst[0].uvtw";
connectAttr "polySplitRing55.out" "polySplitRing56.ip";
connectAttr "pCubeShape5.wm" "polySplitRing56.mp";
connectAttr "polySplitRing54.out" "polySplitRing55.ip";
connectAttr "pCubeShape5.wm" "polySplitRing55.mp";
connectAttr "polySplitRing53.out" "polySplitRing54.ip";
connectAttr "pCubeShape5.wm" "polySplitRing54.mp";
connectAttr "polySplitRing52.out" "polySplitRing53.ip";
connectAttr "pCubeShape5.wm" "polySplitRing53.mp";
connectAttr "polySplitRing51.out" "polySplitRing52.ip";
connectAttr "pCubeShape5.wm" "polySplitRing52.mp";
connectAttr "polySplitRing50.out" "polySplitRing51.ip";
connectAttr "pCubeShape5.wm" "polySplitRing51.mp";
connectAttr "polySplitRing49.out" "polySplitRing50.ip";
connectAttr "pCubeShape5.wm" "polySplitRing50.mp";
connectAttr "polySplitRing48.out" "polySplitRing49.ip";
connectAttr "pCubeShape5.wm" "polySplitRing49.mp";
connectAttr "polySplitRing47.out" "polySplitRing48.ip";
connectAttr "pCubeShape5.wm" "polySplitRing48.mp";
connectAttr "polySplitRing46.out" "polySplitRing47.ip";
connectAttr "pCubeShape5.wm" "polySplitRing47.mp";
connectAttr "polySplitRing45.out" "polySplitRing46.ip";
connectAttr "pCubeShape5.wm" "polySplitRing46.mp";
connectAttr "polySurfaceShape3.o" "polySplitRing45.ip";
connectAttr "pCubeShape5.wm" "polySplitRing45.mp";
connectAttr "lambert3SG.msg" "materialInfo3.sg";
connectAttr "lambert3.msg" "materialInfo3.m";
connectAttr "file5.msg" "materialInfo3.t" -na;
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pCubeShape5.iog" "lambert3SG.dsm" -na;
connectAttr "file5.oc" "lambert3.c";
connectAttr "bump2d4.o" "lambert3.n";
connectAttr "file5.ot" "lambert3.it";
connectAttr "place2dTexture12.c" "file5.c";
connectAttr "place2dTexture12.tf" "file5.tf";
connectAttr "place2dTexture12.rf" "file5.rf";
connectAttr "place2dTexture12.mu" "file5.mu";
connectAttr "place2dTexture12.mv" "file5.mv";
connectAttr "place2dTexture12.s" "file5.s";
connectAttr "place2dTexture12.wu" "file5.wu";
connectAttr "place2dTexture12.wv" "file5.wv";
connectAttr "place2dTexture12.re" "file5.re";
connectAttr "place2dTexture12.of" "file5.of";
connectAttr "place2dTexture12.r" "file5.ro";
connectAttr "place2dTexture12.n" "file5.n";
connectAttr "place2dTexture12.vt1" "file5.vt1";
connectAttr "place2dTexture12.vt2" "file5.vt2";
connectAttr "place2dTexture12.vt3" "file5.vt3";
connectAttr "place2dTexture12.vc1" "file5.vc1";
connectAttr "place2dTexture12.o" "file5.uv";
connectAttr "place2dTexture12.ofs" "file5.fs";
connectAttr "fractal4.oa" "bump2d4.bv";
connectAttr "place2dTexture11.o" "fractal4.uv";
connectAttr "place2dTexture11.ofs" "fractal4.fs";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "polyTweak1.out" "polySmoothFace1.ip";
connectAttr "polySplitRing56.out" "polyTweak1.ip";
connectAttr "polySmoothFace1.out" "polyTweakUV1.ip";
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "fractal4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file5\" \"fileTextureName\" \"G:/New folder (2)/UI Building Info copy/Assets/Textures/mountain.png\" 16121111 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Mountain1.ma
