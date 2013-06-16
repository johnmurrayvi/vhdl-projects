-- cpu (EPF10K10TC144-3)
--
-- Copyright (C) 1991-1997 Altera Corporation
-- Any megafunction design, and related net list (encrypted or decrypted),
-- support information, device programming or simulation file, and any other
-- associated documentation or information provided by Altera or a partner
-- under Altera's Megafunction Partnership Program may be used only to
-- program PLD devices (but not masked PLD devices) from Altera.  Any other
-- use of such megafunction design, net list, support information, device
-- programming or simulation file, or any other related documentation or
-- information is prohibited for any other purpose, including, but not
-- limited to modification, reverse engineering, de-compiling, or use with
-- any other silicon devices, unless such use is explicitly licensed under
-- a separate agreement with Altera or a megafunction partner.  Title to
-- the intellectual property, including patents, copyrights, trademarks,
-- trade secrets, or maskworks, embodied in any such megafunction design,
-- net list, support information, device programming or simulation file, or
-- any other related documentation or information provided by Altera or a
-- megafunction partner, remains with Altera, the megafunction partner, or
-- their respective licensors.  No other licenses, including any licenses
-- needed under any third party's intellectual property, are provided herein.
--
-- MAX+plus II Version 7.2 RC2 2/14/97
-- Mon Dec 22 16:11:31 1997

--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY alt_vtl;
USE alt_vtl.VCOMPONENTS.all;

ENTITY cpu IS
    PORT (
      addr : OUT std_logic_vector(15 downto 0);
      data : INOUT std_logic_vector(15 downto 0);
      clock : IN std_logic;
      ready : IN std_logic;
      reset : IN std_logic;
      rw : OUT std_logic;
      vma : OUT std_logic);
END cpu;

ARCHITECTURE EPF10K10TC144_a3 OF cpu IS

SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL
    ix1553_aOE, n_174, a_as_or3_aix1786_a_a32_aOUT, n_176, n_177, n_178, n_179,
          n_180, O_dup_827_aOUT, n_182, ix1551_aOE, n_184, n_185, n_186, n_187,
          n_188, n_189, O_dup_820_aOUT, n_191, ix1549_aOE, n_193, n_194, n_195,
          n_196, n_197, n_198, O_dup_817_aOUT, n_200, ix1547_aOE, n_202, n_203,
          n_204, n_205, n_206, n_207, O_dup_814_aOUT, n_209, ix1545_aOE, n_211,
          n_212, n_213, n_214, n_215, n_216, O_dup_811_aOUT, n_218, ix1543_aOE,
          n_220, n_221, n_222, n_223, n_224, n_225, O_dup_808_aOUT, n_227,
          ix1541_aOE, n_229, n_230, n_231, n_232, n_233, n_234, O_dup_805_aOUT,
          n_236, ix1539_aOE, n_238, n_239, n_240, n_241, n_242, n_243, O_dup_802_aOUT,
          n_245, ix1537_aOE, n_247, n_248, n_249, n_250, n_251, n_252, O_dup_799_aOUT,
          n_254, ix1535_aOE, n_256, n_257, n_258, n_259, n_260, n_261, O_dup_796_aOUT,
          n_263, ix1533_aOE, n_265, n_266, n_267, n_268, n_269, n_270, O_dup_793_aOUT,
          n_272, ix1531_aOE, n_274, n_275, n_276, n_277, n_278, n_279, O_dup_790_aOUT,
          n_281, ix1529_aOE, n_283, n_284, n_285, n_286, n_287, n_288, O_dup_787_aOUT,
          n_290, ix1527_aOE, n_292, n_293, n_294, n_295, n_296, n_297, O_dup_784_aOUT,
          n_299, ix1525_aOE, n_301, n_302, n_303, n_304, n_305, n_306, O_dup_781_aOUT,
          n_308, ix1523_aOE, n_310, n_311, n_312, n_313, n_314, n_315, O_dup_778_aOUT,
          n_317, n_318, n_319, n_320, n_321, n_322, O_aOUT, n_324, n_325,
          n_326, n_327, n_328, n_329, rw_dup0_Q, n_331, n_332, n_333, n_334,
          n_335, n_336, addr_dup00_Q, n_338, n_339, n_340, n_341, n_342, n_343,
          addr_dup01_Q, n_345, n_346, n_347, n_348, n_349, n_350, addr_dup02_Q,
          n_352, n_353, n_354, n_355, n_356, n_357, addr_dup03_Q, n_359, n_360,
          n_361, n_362, n_363, n_364, addr_dup04_Q, n_366, n_367, n_368, n_369,
          n_370, n_371, addr_dup05_Q, n_373, n_374, n_375, n_376, n_377, n_378,
          addr_dup06_Q, n_380, n_381, n_382, n_383, n_384, n_385, addr_dup07_Q,
          n_387, n_388, n_389, n_390, n_391, n_392, addr_dup08_Q, n_394, n_395,
          n_396, n_397, n_398, n_399, addr_dup09_Q, n_401, n_402, n_403, n_404,
          n_405, n_406, addr_dup010_Q, n_408, n_409, n_410, n_411, n_412,
          n_413, addr_dup011_Q, n_415, n_416, n_417, n_418, n_419, n_420,
          addr_dup012_Q, n_422, n_423, n_424, n_425, n_426, n_427, addr_dup013_Q,
          n_429, n_430, n_431, n_432, n_433, n_434, addr_dup014_Q, n_436,
          n_437, n_438, n_439, n_440, n_441, addr_dup015_Q, n_443, O_dup_876_aOUT,
          O_dup_876_aIN, n_446, n_447, n_448, I2_dup_823_aOUT, n_450, ix484_nx43_aOUT,
          n_452, ix484_nx40_aOUT, ix484_nx40_aIN, n_455, n_456, n_457, I1_dup_755_aOUT,
          n_459, regsel0_aOUT, n_461, I2_dup_756_aOUT, n_463, O_dup_885_aOUT,
          O_dup_885_aIN, n_466, n_467, n_468, n_469, n_470, I1_dup_767_aOUT,
          I1_dup_767_aIN, n_473, n_474, n_475, O_dup_1034_aOUT, n_477, n_478,
          ix484_nx44_aOUT, ix484_nx44_aIN, n_481, n_482, n_483, I0_dup_770_aOUT,
          n_485, n_486, O_dup_882_aOUT, O_dup_882_aIN, n_489, n_490, n_491,
          n_492, n_493, ix484_nx39_aOUT, ix484_nx39_aIN, n_496, n_497, n_498,
          n_499, n_500, n_501, O_dup_891_aOUT, O_dup_891_aIN, n_504, n_505,
          n_506, n_507, n_508, ix484_nx42_aOUT, ix484_nx42_aIN, n_511, n_512,
          n_513, I0_dup_766_aOUT, n_515, n_516, O_dup_888_aOUT, O_dup_888_aIN,
          n_519, n_520, n_521, n_522, n_523, I0_dup_1373_aOUT, I0_dup_1373_aIN,
          n_526, n_527, n_528, n_529, n_530, n_531, ix484_a3_dup_619_Q, n_533,
          n_534, n_535, ix484_a6_dup_616_Q, n_537, n_538, n_539, n_540, n_541,
          O_dup_1375_aOUT, O_dup_1375_aIN, n_544, n_545, n_546, n_547, n_548,
          n_549, ix484_a1_dup_621_Q, n_551, n_552, n_553, ix484_a5_dup_617_Q,
          n_555, n_556, n_557, n_558, n_559, O_dup_1697_aOUT, O_dup_1697_aIN,
          n_562, n_563, n_564, outregrd_aOUT, n_566, n3_aOUT, n_568, n_569,
          outreg_val4_Q, n_571, progcntr_val4_Q, n_573, n_574, n_575, n_576,
          n_577, n_578, n_579, I1_dup_810_aOUT, I1_dup_810_aIN, n_582, n_583,
          n_584, n_585, O_dup_879_aOUT, n_587, n_588, ix484_a2_dup_620_Q,
          n_590, n_591, n_592, ix484_a7_dup_615_Q, n_594, n_595, n_596, n_597,
          n_598, O_dup_811_aIN1, n_600, n_601, n_602, O_dup_870_aOUT, n_604,
          O_dup_873_aOUT, n_606, n_607, ix484_a4_dup_618_Q, n_609, n_610,
          n_611, ix484_a0_dup_622_Q, n_613, n_614, n_615, n_616, n_617, instrregout4_Q,
          instrregout4_aD, n_624, n_625, n_626, n_627, n_628, n_629, a_as_or3_aix1644_a_a32_aOUT,
          instrregout4_aCLK, I0_dup_1401_aOUT, I0_dup_1401_aIN, n_634, n_635,
          n_636, n_637, n_638, n_639, ix484_a3_dup_627_Q, n_641, n_642, n_643,
          ix484_a6_dup_624_Q, n_645, n_646, n_647, n_648, n_649, O_dup_1403_aOUT,
          O_dup_1403_aIN, n_652, n_653, n_654, n_655, n_656, n_657, ix484_a1_dup_629_Q,
          n_659, n_660, n_661, ix484_a5_dup_625_Q, n_663, n_664, n_665, n_666,
          n_667, O_dup_1705_aOUT, O_dup_1705_aIN, n_670, n_671, n_672, n_673,
          n_674, n_675, outreg_val3_Q, n_677, progcntr_val3_Q, n_679, n_680,
          n_681, n_682, n_683, n_684, n_685, I1_dup_813_aOUT, I1_dup_813_aIN,
          n_688, n_689, n_690, n_691, n_692, n_693, ix484_a2_dup_628_Q, n_695,
          n_696, n_697, ix484_a7_dup_623_Q, n_699, n_700, n_701, n_702, n_703,
          O_dup_814_aIN1, n_705, n_706, n_707, n_708, n_709, n_710, ix484_a4_dup_626_Q,
          n_712, n_713, n_714, ix484_a0_dup_630_Q, n_716, n_717, n_718, n_719,
          n_720, instrregout3_Q, instrregout3_aD, n_727, n_728, n_729, n_730,
          n_731, n_732, instrregout3_aCLK, I0_dup_1429_aOUT, I0_dup_1429_aIN,
          n_736, n_737, n_738, n_739, n_740, n_741, ix484_a3_dup_635_Q, n_743,
          n_744, n_745, ix484_a6_dup_632_Q, n_747, n_748, n_749, n_750, n_751,
          O_dup_1431_aOUT, O_dup_1431_aIN, n_754, n_755, n_756, n_757, n_758,
          n_759, ix484_a1_dup_637_Q, n_761, n_762, n_763, ix484_a5_dup_633_Q,
          n_765, n_766, n_767, n_768, n_769, O_dup_1713_aOUT, O_dup_1713_aIN,
          n_772, n_773, n_774, n_775, n_776, n_777, outreg_val2_Q, n_779,
          progcntr_val2_Q, n_781, n_782, n_783, n_784, n_785, n_786, n_787,
          I1_dup_816_aOUT, I1_dup_816_aIN, n_790, n_791, n_792, n_793, n_794,
          n_795, ix484_a2_dup_636_Q, n_797, n_798, n_799, ix484_a7_dup_631_Q,
          n_801, n_802, n_803, n_804, n_805, O_dup_817_aIN1, n_807, n_808,
          n_809, n_810, n_811, n_812, ix484_a4_dup_634_Q, n_814, n_815, n_816,
          ix484_a0_dup_638_Q, n_818, n_819, n_820, n_821, n_822, instrregout2_Q,
          instrregout2_aD, n_829, n_830, n_831, n_832, n_833, n_834, instrregout2_aCLK,
          I0_dup_1345_aOUT, I0_dup_1345_aIN, n_838, n_839, n_840, n_841, n_842,
          n_843, ix484_a3_dup_611_Q, n_845, n_846, n_847, ix484_a6_dup_608_Q,
          n_849, n_850, n_851, n_852, n_853, O_dup_1347_aOUT, O_dup_1347_aIN,
          n_856, n_857, n_858, n_859, n_860, n_861, ix484_a1_dup_613_Q, n_863,
          n_864, n_865, ix484_a5_dup_609_Q, n_867, n_868, n_869, n_870, n_871,
          O_dup_1689_aOUT, O_dup_1689_aIN, n_874, n_875, n_876, n_877, n_878,
          n_879, outreg_val5_Q, n_881, progcntr_val5_Q, n_883, n_884, n_885,
          n_886, n_887, n_888, n_889, I1_dup_807_aOUT, I1_dup_807_aIN, n_892,
          n_893, n_894, n_895, n_896, n_897, ix484_a2_dup_612_Q, n_899, n_900,
          n_901, ix484_a7_dup_607_Q, n_903, n_904, n_905, n_906, n_907, O_dup_808_aIN1,
          n_909, n_910, n_911, n_912, n_913, n_914, ix484_a4_dup_610_Q, n_916,
          n_917, n_918, ix484_a0_dup_614_Q, n_920, n_921, n_922, n_923, n_924,
          instrregout5_Q, instrregout5_aD, n_931, n_932, n_933, n_934, n_935,
          n_936, instrregout5_aCLK, con1_current_state31_Q, con1_current_state31_aCLRN,
          con1_current_state31_aD, n_946, n_947, n_948, opregwr_Q, n_950,
          con1_current_state31_aCLK, con1_current_state32_Q, con1_current_state32_aCLRN,
          con1_current_state32_aD, n_960, n_961, n_962, n_963, con1_current_state32_aCLK,
          con1_modgen_63_nx10_aOUT, con1_modgen_63_nx10_aIN, n_967, n_968,
          n_969, instrregout12_Q, n_971, n_972, instrregout11_Q, n_974, con1_current_state17_Q,
          con1_current_state17_aCLRN, con1_current_state17_aD, n_982, n_983,
          n_984, instrregout15_Q, n_986, n_987, con1_modgen_61_nx12_aOUT,
          n_989, con1_current_state6_Q, n_991, con1_current_state17_aCLK,
          I0_dup_1457_aOUT, I0_dup_1457_aIN, n_995, n_996, n_997, n_998, n_999,
          n_1000, ix484_a3_dup_643_Q, n_1002, n_1003, n_1004, ix484_a6_dup_640_Q,
          n_1006, n_1007, n_1008, n_1009, n_1010, O_dup_1459_aOUT, O_dup_1459_aIN,
          n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, ix484_a1_dup_645_Q,
          n_1020, n_1021, n_1022, ix484_a5_dup_641_Q, n_1024, n_1025, n_1026,
          n_1027, n_1028, O_dup_1721_aOUT, O_dup_1721_aIN, n_1031, n_1032,
          n_1033, n_1034, n_1035, n_1036, outreg_val1_Q, n_1038, progcntr_val1_Q,
          n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, I1_dup_819_aOUT,
          I1_dup_819_aIN, n_1049, n_1050, n_1051, n_1052, n_1053, n_1054,
          ix484_a2_dup_644_Q, n_1056, n_1057, n_1058, ix484_a7_dup_639_Q,
          n_1060, n_1061, n_1062, n_1063, n_1064, O_dup_820_aIN1, n_1066,
          n_1067, n_1068, n_1069, n_1070, n_1071, ix484_a4_dup_642_Q, n_1073,
          n_1074, n_1075, ix484_a0_dup_646_Q, n_1077, n_1078, n_1079, n_1080,
          n_1081, instrregout1_Q, instrregout1_aD, n_1088, n_1089, n_1090,
          n_1091, n_1092, n_1093, instrregout1_aCLK, I0_dup_1485_aOUT, I0_dup_1485_aIN,
          n_1097, n_1098, n_1099, n_1100, n_1101, n_1102, ix484_a3_dup_651_Q,
          n_1104, n_1105, n_1106, ix484_a6_dup_648_Q, n_1108, n_1109, n_1110,
          n_1111, n_1112, O_dup_1487_aOUT, O_dup_1487_aIN, n_1115, n_1116,
          n_1117, n_1118, n_1119, n_1120, ix484_a1_dup_653_Q, n_1122, n_1123,
          n_1124, ix484_a5_dup_649_Q, n_1126, n_1127, n_1128, n_1129, n_1130,
          O_dup_1729_aOUT, O_dup_1729_aIN, n_1133, n_1134, n_1135, n_1136,
          n_1137, n_1138, outreg_val0_Q, n_1140, progcntr_val0_Q, n_1142,
          n_1143, n_1144, n_1145, n_1146, n_1147, n_1148, I1_dup_826_aOUT,
          I1_dup_826_aIN, n_1151, n_1152, n_1153, n_1154, n_1155, n_1156,
          ix484_a2_dup_652_Q, n_1158, n_1159, n_1160, ix484_a7_dup_647_Q,
          n_1162, n_1163, n_1164, n_1165, n_1166, O_dup_827_aIN1, n_1168,
          n_1169, n_1170, n_1171, n_1172, n_1173, ix484_a4_dup_650_Q, n_1175,
          n_1176, n_1177, ix484_a0_dup_654_Q, n_1179, n_1180, n_1181, n_1182,
          n_1183, instrregout0_Q, instrregout0_aD, n_1190, n_1191, n_1192,
          n_1193, n_1194, n_1195, instrregout0_aCLK, I3_dup_673_aOUT, I3_dup_673_aIN,
          n_1199, n_1200, n_1201, con1_current_state51_Q, n_1203, n_1204,
          con1_current_state19_Q, n_1206, a_as_or3_aix1635_a_a32_aOUT, a_as_or3_aix1635_a_a32_aIN1,
          n_1209, n_1210, n_1211, con1_current_state13_Q, n_1213, n_1214,
          n_1215, n_1216, n_1218, con1_current_state48_Q, n_1220, ix484_a3_dup_651_aD,
          n_1227, n_1228, n_1229, n_1230, n_1231, n_1232, ix484_a3_dup_651_aCLK,
          ix484_a3_dup_651_aENA, n_1235, ix484_a6_dup_648_aD, n_1242, n_1243,
          n_1244, n_1245, n_1246, n_1247, ix484_a6_dup_648_aCLK, ix484_a6_dup_648_aENA,
          n_1250, ix484_a3_dup_643_aD, n_1257, n_1258, n_1259, n_1260, n_1261,
          n_1262, ix484_a3_dup_643_aCLK, ix484_a3_dup_643_aENA, n_1265, ix484_a6_dup_640_aD,
          n_1272, n_1273, n_1274, n_1275, n_1276, n_1277, ix484_a6_dup_640_aCLK,
          ix484_a6_dup_640_aENA, n_1280, ix484_a3_dup_635_aD, n_1287, n_1288,
          n_1289, n_1290, n_1291, n_1292, ix484_a3_dup_635_aCLK, ix484_a3_dup_635_aENA,
          n_1295, ix484_a6_dup_632_aD, n_1302, n_1303, n_1304, n_1305, n_1306,
          n_1307, ix484_a6_dup_632_aCLK, ix484_a6_dup_632_aENA, n_1310, ix484_a3_dup_627_aD,
          n_1317, n_1318, n_1319, n_1320, n_1321, n_1322, ix484_a3_dup_627_aCLK,
          ix484_a3_dup_627_aENA, n_1325, ix484_a6_dup_624_aD, n_1332, n_1333,
          n_1334, n_1335, n_1336, n_1337, ix484_a6_dup_624_aCLK, ix484_a6_dup_624_aENA,
          n_1340, ix484_a3_dup_619_aD, n_1347, n_1348, n_1349, n_1350, n_1351,
          n_1352, ix484_a3_dup_619_aCLK, ix484_a3_dup_619_aENA, n_1355, ix484_a6_dup_616_aD,
          n_1362, n_1363, n_1364, n_1365, n_1366, n_1367, ix484_a6_dup_616_aCLK,
          ix484_a6_dup_616_aENA, n_1370, ix484_a3_dup_611_aD, n_1377, n_1378,
          n_1379, n_1380, n_1381, n_1382, ix484_a3_dup_611_aCLK, ix484_a3_dup_611_aENA,
          n_1385, ix484_a6_dup_608_aD, n_1392, n_1393, n_1394, n_1395, n_1396,
          n_1397, ix484_a6_dup_608_aCLK, ix484_a6_dup_608_aENA, n_1400, I0_dup_1317_aOUT,
          I0_dup_1317_aIN, n_1403, n_1404, n_1405, n_1406, n_1407, n_1408,
          ix484_a3_dup_603_Q, n_1410, n_1411, n_1412, ix484_a6_dup_600_Q,
          n_1414, n_1415, n_1416, n_1417, n_1418, O_dup_1319_aOUT, O_dup_1319_aIN,
          n_1421, n_1422, n_1423, n_1424, n_1425, n_1426, ix484_a1_dup_605_Q,
          n_1428, n_1429, n_1430, ix484_a5_dup_601_Q, n_1432, n_1433, n_1434,
          n_1435, n_1436, O_dup_1681_aOUT, O_dup_1681_aIN, n_1439, n_1440,
          n_1441, n_1442, n_1443, n_1444, outreg_val6_Q, n_1446, progcntr_val6_Q,
          n_1448, n_1449, n_1450, n_1451, n_1452, n_1453, n_1454, I1_dup_804_aOUT,
          I1_dup_804_aIN, n_1457, n_1458, n_1459, n_1460, n_1461, n_1462,
          ix484_a2_dup_604_Q, n_1464, n_1465, n_1466, ix484_a7_dup_599_Q,
          n_1468, n_1469, n_1470, n_1471, n_1472, O_dup_805_aIN1, n_1474,
          n_1475, n_1476, n_1477, n_1478, n_1479, ix484_a4_dup_602_Q, n_1481,
          n_1482, n_1483, ix484_a0_dup_606_Q, n_1485, n_1486, n_1487, n_1488,
          n_1489, ix484_a3_dup_603_aD, n_1496, n_1497, n_1498, n_1499, n_1500,
          n_1501, ix484_a3_dup_603_aCLK, ix484_a3_dup_603_aENA, n_1504, ix484_a6_dup_600_aD,
          n_1511, n_1512, n_1513, n_1514, n_1515, n_1516, ix484_a6_dup_600_aCLK,
          ix484_a6_dup_600_aENA, n_1519, I0_dup_1289_aOUT, I0_dup_1289_aIN,
          n_1522, n_1523, n_1524, n_1525, n_1526, n_1527, ix484_a3_dup_595_Q,
          n_1529, n_1530, n_1531, ix484_a6_dup_592_Q, n_1533, n_1534, n_1535,
          n_1536, n_1537, O_dup_1291_aOUT, O_dup_1291_aIN, n_1540, n_1541,
          n_1542, n_1543, n_1544, n_1545, ix484_a1_dup_597_Q, n_1547, n_1548,
          n_1549, ix484_a5_dup_593_Q, n_1551, n_1552, n_1553, n_1554, n_1555,
          O_dup_1673_aOUT, O_dup_1673_aIN, n_1558, n_1559, n_1560, n_1561,
          n_1562, n_1563, outreg_val7_Q, n_1565, progcntr_val7_Q, n_1567,
          n_1568, n_1569, n_1570, n_1571, n_1572, n_1573, I1_dup_801_aOUT,
          I1_dup_801_aIN, n_1576, n_1577, n_1578, n_1579, n_1580, n_1581,
          ix484_a2_dup_596_Q, n_1583, n_1584, n_1585, ix484_a7_dup_591_Q,
          n_1587, n_1588, n_1589, n_1590, n_1591, O_dup_802_aIN1, n_1593,
          n_1594, n_1595, n_1596, n_1597, n_1598, ix484_a4_dup_594_Q, n_1600,
          n_1601, n_1602, ix484_a0_dup_598_Q, n_1604, n_1605, n_1606, n_1607,
          n_1608, ix484_a3_dup_595_aD, n_1615, n_1616, n_1617, n_1618, n_1619,
          n_1620, ix484_a3_dup_595_aCLK, ix484_a3_dup_595_aENA, n_1623, ix484_a6_dup_592_aD,
          n_1630, n_1631, n_1632, n_1633, n_1634, n_1635, ix484_a6_dup_592_aCLK,
          ix484_a6_dup_592_aENA, n_1638, I0_dup_1261_aOUT, I0_dup_1261_aIN,
          n_1641, n_1642, n_1643, n_1644, n_1645, n_1646, ix484_a3_dup_587_Q,
          n_1648, n_1649, n_1650, ix484_a6_dup_584_Q, n_1652, n_1653, n_1654,
          n_1655, n_1656, O_dup_1263_aOUT, O_dup_1263_aIN, n_1659, n_1660,
          n_1661, n_1662, n_1663, n_1664, ix484_a1_dup_589_Q, n_1666, n_1667,
          n_1668, ix484_a5_dup_585_Q, n_1670, n_1671, n_1672, n_1673, n_1674,
          O_dup_1665_aOUT, O_dup_1665_aIN, n_1677, n_1678, n_1679, n_1680,
          n_1681, n_1682, outreg_val8_Q, n_1684, progcntr_val8_Q, n_1686,
          n_1687, n_1688, n_1689, n_1690, n_1691, n_1692, I1_dup_798_aOUT,
          I1_dup_798_aIN, n_1695, n_1696, n_1697, n_1698, n_1699, n_1700,
          ix484_a2_dup_588_Q, n_1702, n_1703, n_1704, ix484_a7_dup_583_Q,
          n_1706, n_1707, n_1708, n_1709, n_1710, O_dup_799_aIN1, n_1712,
          n_1713, n_1714, n_1715, n_1716, n_1717, ix484_a4_dup_586_Q, n_1719,
          n_1720, n_1721, ix484_a0_dup_590_Q, n_1723, n_1724, n_1725, n_1726,
          n_1727, ix484_a3_dup_587_aD, n_1734, n_1735, n_1736, n_1737, n_1738,
          n_1739, ix484_a3_dup_587_aCLK, ix484_a3_dup_587_aENA, n_1742, ix484_a6_dup_584_aD,
          n_1749, n_1750, n_1751, n_1752, n_1753, n_1754, ix484_a6_dup_584_aCLK,
          ix484_a6_dup_584_aENA, n_1757, I0_dup_1233_aOUT, I0_dup_1233_aIN,
          n_1760, n_1761, n_1762, n_1763, n_1764, n_1765, ix484_a3_dup_579_Q,
          n_1767, n_1768, n_1769, ix484_a6_dup_576_Q, n_1771, n_1772, n_1773,
          n_1774, n_1775, O_dup_1235_aOUT, O_dup_1235_aIN, n_1778, n_1779,
          n_1780, n_1781, n_1782, n_1783, ix484_a1_dup_581_Q, n_1785, n_1786,
          n_1787, ix484_a5_dup_577_Q, n_1789, n_1790, n_1791, n_1792, n_1793,
          O_dup_1657_aOUT, O_dup_1657_aIN, n_1796, n_1797, n_1798, n_1799,
          n_1800, n_1801, outreg_val9_Q, n_1803, progcntr_val9_Q, n_1805,
          n_1806, n_1807, n_1808, n_1809, n_1810, n_1811, I1_dup_795_aOUT,
          I1_dup_795_aIN, n_1814, n_1815, n_1816, n_1817, n_1818, n_1819,
          ix484_a2_dup_580_Q, n_1821, n_1822, n_1823, ix484_a7_dup_575_Q,
          n_1825, n_1826, n_1827, n_1828, n_1829, O_dup_796_aIN1, n_1831,
          n_1832, n_1833, n_1834, n_1835, n_1836, ix484_a4_dup_578_Q, n_1838,
          n_1839, n_1840, ix484_a0_dup_582_Q, n_1842, n_1843, n_1844, n_1845,
          n_1846, ix484_a3_dup_579_aD, n_1853, n_1854, n_1855, n_1856, n_1857,
          n_1858, ix484_a3_dup_579_aCLK, ix484_a3_dup_579_aENA, n_1861, ix484_a6_dup_576_aD,
          n_1868, n_1869, n_1870, n_1871, n_1872, n_1873, ix484_a6_dup_576_aCLK,
          ix484_a6_dup_576_aENA, n_1876, I0_dup_1205_aOUT, I0_dup_1205_aIN,
          n_1879, n_1880, n_1881, n_1882, n_1883, n_1884, ix484_a3_dup_571_Q,
          n_1886, n_1887, n_1888, ix484_a6_dup_568_Q, n_1890, n_1891, n_1892,
          n_1893, n_1894, O_dup_1207_aOUT, O_dup_1207_aIN, n_1897, n_1898,
          n_1899, n_1900, n_1901, n_1902, ix484_a1_dup_573_Q, n_1904, n_1905,
          n_1906, ix484_a5_dup_569_Q, n_1908, n_1909, n_1910, n_1911, n_1912,
          O_dup_1649_aOUT, O_dup_1649_aIN, n_1915, n_1916, n_1917, n_1918,
          n_1919, n_1920, outreg_val10_Q, n_1922, progcntr_val10_Q, n_1924,
          n_1925, n_1926, n_1927, n_1928, n_1929, n_1930, I1_dup_792_aOUT,
          I1_dup_792_aIN, n_1933, n_1934, n_1935, n_1936, n_1937, n_1938,
          ix484_a2_dup_572_Q, n_1940, n_1941, n_1942, ix484_a7_dup_567_Q,
          n_1944, n_1945, n_1946, n_1947, n_1948, O_dup_793_aIN1, n_1950,
          n_1951, n_1952, n_1953, n_1954, n_1955, ix484_a4_dup_570_Q, n_1957,
          n_1958, n_1959, ix484_a0_dup_574_Q, n_1961, n_1962, n_1963, n_1964,
          n_1965, ix484_a3_dup_571_aD, n_1972, n_1973, n_1974, n_1975, n_1976,
          n_1977, ix484_a3_dup_571_aCLK, ix484_a3_dup_571_aENA, n_1980, ix484_a6_dup_568_aD,
          n_1987, n_1988, n_1989, n_1990, n_1991, n_1992, ix484_a6_dup_568_aCLK,
          ix484_a6_dup_568_aENA, n_1995, I0_dup_1177_aOUT, I0_dup_1177_aIN,
          n_1998, n_1999, n_2000, n_2001, n_2002, n_2003, ix484_a3_dup_563_Q,
          n_2005, n_2006, n_2007, ix484_a6_dup_560_Q, n_2009, n_2010, n_2011,
          n_2012, n_2013, O_dup_1179_aOUT, O_dup_1179_aIN, n_2016, n_2017,
          n_2018, n_2019, n_2020, n_2021, ix484_a1_dup_565_Q, n_2023, n_2024,
          n_2025, ix484_a5_dup_561_Q, n_2027, n_2028, n_2029, n_2030, n_2031,
          O_dup_1641_aOUT, O_dup_1641_aIN, n_2034, n_2035, n_2036, n_2037,
          n_2038, n_2039, outreg_val11_Q, n_2041, progcntr_val11_Q, n_2043,
          n_2044, n_2045, n_2046, n_2047, n_2048, n_2049, I1_dup_789_aOUT,
          I1_dup_789_aIN, n_2052, n_2053, n_2054, n_2055, n_2056, n_2057,
          ix484_a2_dup_564_Q, n_2059, n_2060, n_2061, ix484_a7_dup_559_Q,
          n_2063, n_2064, n_2065, n_2066, n_2067, O_dup_790_aIN1, n_2069,
          n_2070, n_2071, n_2072, n_2073, n_2074, ix484_a4_dup_562_Q, n_2076,
          n_2077, n_2078, ix484_a0_dup_566_Q, n_2080, n_2081, n_2082, n_2083,
          n_2084, ix484_a3_dup_563_aD, n_2091, n_2092, n_2093, n_2094, n_2095,
          n_2096, ix484_a3_dup_563_aCLK, ix484_a3_dup_563_aENA, n_2099, ix484_a6_dup_560_aD,
          n_2106, n_2107, n_2108, n_2109, n_2110, n_2111, ix484_a6_dup_560_aCLK,
          ix484_a6_dup_560_aENA, n_2114, I0_dup_1149_aOUT, I0_dup_1149_aIN,
          n_2117, n_2118, n_2119, n_2120, n_2121, n_2122, ix484_a3_dup_555_Q,
          n_2124, n_2125, n_2126, ix484_a6_dup_552_Q, n_2128, n_2129, n_2130,
          n_2131, n_2132, O_dup_1151_aOUT, O_dup_1151_aIN, n_2135, n_2136,
          n_2137, n_2138, n_2139, n_2140, ix484_a1_dup_557_Q, n_2142, n_2143,
          n_2144, ix484_a5_dup_553_Q, n_2146, n_2147, n_2148, n_2149, n_2150,
          O_dup_1633_aOUT, O_dup_1633_aIN, n_2153, n_2154, n_2155, n_2156,
          n_2157, n_2158, outreg_val12_Q, n_2160, progcntr_val12_Q, n_2162,
          n_2163, n_2164, n_2165, n_2166, n_2167, n_2168, I1_dup_786_aOUT,
          I1_dup_786_aIN, n_2171, n_2172, n_2173, n_2174, n_2175, n_2176,
          ix484_a2_dup_556_Q, n_2178, n_2179, n_2180, ix484_a7_dup_551_Q,
          n_2182, n_2183, n_2184, n_2185, n_2186, O_dup_787_aIN1, n_2188,
          n_2189, n_2190, n_2191, n_2192, n_2193, ix484_a4_dup_554_Q, n_2195,
          n_2196, n_2197, ix484_a0_dup_558_Q, n_2199, n_2200, n_2201, n_2202,
          n_2203, ix484_a3_dup_555_aD, n_2210, n_2211, n_2212, n_2213, n_2214,
          n_2215, ix484_a3_dup_555_aCLK, ix484_a3_dup_555_aENA, n_2218, ix484_a6_dup_552_aD,
          n_2225, n_2226, n_2227, n_2228, n_2229, n_2230, ix484_a6_dup_552_aCLK,
          ix484_a6_dup_552_aENA, n_2233, I0_dup_1121_aOUT, I0_dup_1121_aIN,
          n_2236, n_2237, n_2238, n_2239, n_2240, n_2241, ix484_a3_dup_547_Q,
          n_2243, n_2244, n_2245, ix484_a6_dup_544_Q, n_2247, n_2248, n_2249,
          n_2250, n_2251, O_dup_1123_aOUT, O_dup_1123_aIN, n_2254, n_2255,
          n_2256, n_2257, n_2258, n_2259, ix484_a1_dup_549_Q, n_2261, n_2262,
          n_2263, ix484_a5_dup_545_Q, n_2265, n_2266, n_2267, n_2268, n_2269,
          O_dup_1625_aOUT, O_dup_1625_aIN, n_2272, n_2273, n_2274, n_2275,
          n_2276, n_2277, outreg_val13_Q, n_2279, progcntr_val13_Q, n_2281,
          n_2282, n_2283, n_2284, n_2285, n_2286, n_2287, I1_dup_783_aOUT,
          I1_dup_783_aIN, n_2290, n_2291, n_2292, n_2293, n_2294, n_2295,
          ix484_a2_dup_548_Q, n_2297, n_2298, n_2299, ix484_a7_dup_543_Q,
          n_2301, n_2302, n_2303, n_2304, n_2305, O_dup_784_aIN1, n_2307,
          n_2308, n_2309, n_2310, n_2311, n_2312, ix484_a4_dup_546_Q, n_2314,
          n_2315, n_2316, ix484_a0_dup_550_Q, n_2318, n_2319, n_2320, n_2321,
          n_2322, ix484_a3_dup_547_aD, n_2329, n_2330, n_2331, n_2332, n_2333,
          n_2334, ix484_a3_dup_547_aCLK, ix484_a3_dup_547_aENA, n_2337, ix484_a6_dup_544_aD,
          n_2344, n_2345, n_2346, n_2347, n_2348, n_2349, ix484_a6_dup_544_aCLK,
          ix484_a6_dup_544_aENA, n_2352, I0_dup_1093_aOUT, I0_dup_1093_aIN,
          n_2355, n_2356, n_2357, n_2358, n_2359, n_2360, ix484_a3_dup_539_Q,
          n_2362, n_2363, n_2364, ix484_a6_dup_536_Q, n_2366, n_2367, n_2368,
          n_2369, n_2370, O_dup_1095_aOUT, O_dup_1095_aIN, n_2373, n_2374,
          n_2375, n_2376, n_2377, n_2378, ix484_a1_dup_541_Q, n_2380, n_2381,
          n_2382, ix484_a5_dup_537_Q, n_2384, n_2385, n_2386, n_2387, n_2388,
          O_dup_1617_aOUT, O_dup_1617_aIN, n_2391, n_2392, n_2393, n_2394,
          n_2395, n_2396, outreg_val14_Q, n_2398, progcntr_val14_Q, n_2400,
          n_2401, n_2402, n_2403, n_2404, n_2405, n_2406, I1_dup_780_aOUT,
          I1_dup_780_aIN, n_2409, n_2410, n_2411, n_2412, n_2413, n_2414,
          ix484_a2_dup_540_Q, n_2416, n_2417, n_2418, ix484_a7_dup_535_Q,
          n_2420, n_2421, n_2422, n_2423, n_2424, O_dup_781_aIN1, n_2426,
          n_2427, n_2428, n_2429, n_2430, n_2431, ix484_a4_dup_538_Q, n_2433,
          n_2434, n_2435, ix484_a0_dup_542_Q, n_2437, n_2438, n_2439, n_2440,
          n_2441, ix484_a3_dup_539_aD, n_2448, n_2449, n_2450, n_2451, n_2452,
          n_2453, ix484_a3_dup_539_aCLK, ix484_a3_dup_539_aENA, n_2456, ix484_a6_dup_536_aD,
          n_2463, n_2464, n_2465, n_2466, n_2467, n_2468, ix484_a6_dup_536_aCLK,
          ix484_a6_dup_536_aENA, n_2471, instrregout13_Q, instrregout13_aD,
          n_2478, n_2479, n_2480, n_2481, n_2482, n_2483, instrregout13_aCLK,
          instrregout14_Q, instrregout14_aD, n_2491, n_2492, n_2493, n_2494,
          n_2495, n_2496, instrregout14_aCLK, con1_current_state18_Q, con1_current_state18_aCLRN,
          con1_current_state18_aD, n_2505, n_2506, n_2507, n_2508, con1_current_state18_aCLK,
          I0_dup_1065_aOUT, I0_dup_1065_aIN, n_2512, n_2513, n_2514, n_2515,
          n_2516, n_2517, ix484_a3_Q, n_2519, n_2520, n_2521, ix484_a6_Q,
          n_2523, n_2524, n_2525, n_2526, n_2527, O_dup_1067_aOUT, O_dup_1067_aIN,
          n_2530, n_2531, n_2532, n_2533, n_2534, n_2535, ix484_a1_dup_533_Q,
          n_2537, n_2538, n_2539, ix484_a5_Q, n_2541, n_2542, n_2543, n_2544,
          n_2545, O_dup_1609_aOUT, O_dup_1609_aIN, n_2548, n_2549, n_2550,
          n_2551, n_2552, n_2553, outreg_val15_Q, n_2555, progcntr_val15_Q,
          n_2557, n_2558, n_2559, n_2560, n_2561, n_2562, n_2563, I1_dup_777_aOUT,
          I1_dup_777_aIN, n_2566, n_2567, n_2568, n_2569, n_2570, n_2571,
          ix484_a2_dup_532_Q, n_2573, n_2574, n_2575, ix484_a7_Q, n_2577,
          n_2578, n_2579, n_2580, n_2581, O_dup_778_aIN1, n_2583, n_2584,
          n_2585, n_2586, n_2587, n_2588, ix484_a4_Q, n_2590, n_2591, n_2592,
          ix484_a0_dup_534_Q, n_2594, n_2595, n_2596, n_2597, n_2598, ix484_a3_aD,
          n_2605, n_2606, n_2607, n_2608, n_2609, n_2610, ix484_a3_aCLK, ix484_a3_aENA,
          n_2613, ix484_a6_aD, n_2620, n_2621, n_2622, n_2623, n_2624, n_2625,
          ix484_a6_aCLK, ix484_a6_aENA, n_2628, opreg_val0_Q, opreg_val0_aD,
          n_2635, n_2636, n_2637, n_2638, n_2639, n_2640, opreg_val0_aCLK,
          comp1_modgen_56_l1_l0_c_int1_aOUT, comp1_modgen_56_l1_l0_c_int1_aIN,
          n_2644, n_2645, n_2646, n_2647, n_2648, n_2649, opreg_val1_Q, opreg_val1_aD,
          n_2656, n_2657, n_2658, n_2659, n_2660, n_2661, opreg_val1_aCLK,
          comp1_modgen_56_l1_l0_c_int2_aOUT, comp1_modgen_56_l1_l0_c_int2_aIN,
          n_2665, n_2666, n_2667, n_2668, n_2669, n_2670, n_2671, n_2672,
          n_2673, n_2674, n_2675, opreg_val2_Q, opreg_val2_aD, n_2682, n_2683,
          n_2684, n_2685, n_2686, n_2687, opreg_val2_aCLK, comp1_modgen_56_l1_l0_c_int3_aOUT,
          comp1_modgen_56_l1_l0_c_int3_aIN, n_2691, n_2692, n_2693, n_2694,
          n_2695, n_2696, n_2697, n_2698, n_2699, n_2700, n_2701, opreg_val3_Q,
          opreg_val3_aD, n_2708, n_2709, n_2710, n_2711, n_2712, n_2713, opreg_val3_aCLK,
          comp1_modgen_56_l1_l0_c_int4_aOUT, comp1_modgen_56_l1_l0_c_int4_aIN,
          n_2717, n_2718, n_2719, n_2720, n_2721, n_2722, n_2723, n_2724,
          n_2725, n_2726, n_2727, opreg_val4_Q, opreg_val4_aD, n_2734, n_2735,
          n_2736, n_2737, n_2738, n_2739, opreg_val4_aCLK, comp1_modgen_56_l1_l0_c_int5_aOUT,
          comp1_modgen_56_l1_l0_c_int5_aIN, n_2743, n_2744, n_2745, n_2746,
          n_2747, n_2748, n_2749, n_2750, n_2751, n_2752, n_2753, opreg_val5_Q,
          opreg_val5_aD, n_2760, n_2761, n_2762, n_2763, n_2764, n_2765, opreg_val5_aCLK,
          comp1_modgen_56_l1_l0_c_int6_aOUT, comp1_modgen_56_l1_l0_c_int6_aIN,
          n_2769, n_2770, n_2771, n_2772, n_2773, n_2774, n_2775, n_2776,
          n_2777, n_2778, n_2779, opreg_val6_Q, opreg_val6_aD, n_2786, n_2787,
          n_2788, n_2789, n_2790, n_2791, opreg_val6_aCLK, comp1_modgen_56_l1_l0_c_int7_aOUT,
          comp1_modgen_56_l1_l0_c_int7_aIN, n_2795, n_2796, n_2797, n_2798,
          n_2799, n_2800, n_2801, n_2802, n_2803, n_2804, n_2805, opreg_val7_Q,
          opreg_val7_aD, n_2812, n_2813, n_2814, n_2815, n_2816, n_2817, opreg_val7_aCLK,
          comp1_modgen_56_l1_l0_c_int8_aOUT, comp1_modgen_56_l1_l0_c_int8_aIN,
          n_2821, n_2822, n_2823, n_2824, n_2825, n_2826, n_2827, n_2828,
          n_2829, n_2830, n_2831, opreg_val8_Q, opreg_val8_aD, n_2838, n_2839,
          n_2840, n_2841, n_2842, n_2843, opreg_val8_aCLK, comp1_modgen_56_l1_l0_c_int9_aOUT,
          comp1_modgen_56_l1_l0_c_int9_aIN, n_2847, n_2848, n_2849, n_2850,
          n_2851, n_2852, n_2853, n_2854, n_2855, n_2856, n_2857, opreg_val9_Q,
          opreg_val9_aD, n_2864, n_2865, n_2866, n_2867, n_2868, n_2869, opreg_val9_aCLK,
          comp1_modgen_56_l1_l0_c_int10_aOUT, comp1_modgen_56_l1_l0_c_int10_aIN,
          n_2873, n_2874, n_2875, n_2876, n_2877, n_2878, n_2879, n_2880,
          n_2881, n_2882, n_2883, opreg_val10_Q, opreg_val10_aD, n_2890, n_2891,
          n_2892, n_2893, n_2894, n_2895, opreg_val10_aCLK, comp1_modgen_56_l1_l0_c_int11_aOUT,
          comp1_modgen_56_l1_l0_c_int11_aIN, n_2899, n_2900, n_2901, n_2902,
          n_2903, n_2904, n_2905, n_2906, n_2907, n_2908, n_2909, opreg_val11_Q,
          opreg_val11_aD, n_2916, n_2917, n_2918, n_2919, n_2920, n_2921,
          opreg_val11_aCLK, comp1_modgen_56_l1_l0_c_int12_aOUT, comp1_modgen_56_l1_l0_c_int12_aIN,
          n_2925, n_2926, n_2927, n_2928, n_2929, n_2930, n_2931, n_2932,
          n_2933, n_2934, n_2935, opreg_val12_Q, opreg_val12_aD, n_2942, n_2943,
          n_2944, n_2945, n_2946, n_2947, opreg_val12_aCLK, comp1_modgen_56_l1_l0_c_int13_aOUT,
          comp1_modgen_56_l1_l0_c_int13_aIN, n_2951, n_2952, n_2953, n_2954,
          n_2955, n_2956, n_2957, n_2958, n_2959, n_2960, n_2961, opreg_val13_Q,
          opreg_val13_aD, n_2968, n_2969, n_2970, n_2971, n_2972, n_2973,
          opreg_val13_aCLK, comp1_modgen_56_l1_l0_c_int14_aOUT, comp1_modgen_56_l1_l0_c_int14_aIN,
          n_2977, n_2978, n_2979, n_2980, n_2981, n_2982, n_2983, n_2984,
          n_2985, n_2986, n_2987, opreg_val14_Q, opreg_val14_aD, n_2994, n_2995,
          n_2996, n_2997, n_2998, n_2999, opreg_val14_aCLK, comp1_modgen_56_l1_l0_c_int15_aOUT,
          comp1_modgen_56_l1_l0_c_int15_aIN, n_3003, n_3004, n_3005, n_3006,
          n_3007, n_3008, n_3009, n_3010, n_3011, n_3012, n_3013, opreg_val15_Q,
          opreg_val15_aD, n_3020, n_3021, n_3022, n_3023, n_3024, n_3025,
          opreg_val15_aCLK, a_as_or2_a77_a_a30_aOUT_aNOT, a_as_or2_a77_a_a30_aOUT,
          n_3029, a_as_or2_a77_a_a30_aIN1, n_3031, n_3032, n_3033, n_3034,
          n_3035, n_3036, n_3037, n_3038, n_3039, n_3040, n_3041, a_a289_aOUT,
          a_a289_aIN, n_3044, n_3045, n_3046, n_3047, n_3048, n_3049, n_3050,
          n_3051, n_3052, n_3053, n_3054, n_3055, n_3056, n_3057, n_3058,
          n_3059, n_3060, n_3061, n_3062, n_3063, n_3064, n_3065, a_a290_aOUT,
          a_a290_aIN, n_3068, n_3069, n_3070, n_3071, n_3072, n_3073, n_3074,
          n_3075, n_3076, n_3077, n_3078, n_3079, n_3080, n_3081, n_3082,
          n_3083, n_3084, n_3085, n_3086, n_3087, n_3088, n_3089, a_a291_aOUT,
          a_a291_aIN, n_3092, n_3093, n_3094, n_3095, n_3096, n_3097, n_3098,
          n_3099, n_3100, n_3101, n_3102, n_3103, n_3104, n_3105, n_3106,
          n_3107, n_3108, n_3109, n_3110, n_3111, n_3112, n_3113, comp1_modgen_54_eqo1_aOUT,
          comp1_modgen_54_eqo1_aIN1, n_3116, n_3117, n_3118, n_3119, n_3120,
          n_3121, n_3122, n_3123, n_3124, n_3125, n_3126, n_3127, n_3128,
          n_3129, n_3130, n_3131, n_3132, n_3133, n_3134, n_3135, n_3136,
          n_3137, a_a286_aOUT, a_a286_aIN, n_3140, n_3141, n_3142, n_3143,
          n_3144, n_3145, n_3146, n_3147, n_3148, n_3149, n_3150, n_3151,
          n_3152, n_3153, n_3154, n_3155, n_3156, n_3157, n_3158, n_3159,
          n_3160, n_3161, a_a287_aOUT, a_a287_aIN, n_3164, n_3165, n_3166,
          n_3167, n_3168, n_3169, n_3170, n_3171, n_3172, n_3173, n_3174,
          n_3175, n_3176, n_3177, n_3178, n_3179, n_3180, n_3181, n_3182,
          n_3183, n_3184, n_3185, a_a288_aOUT, a_a288_aIN, n_3188, n_3189,
          n_3190, n_3191, n_3192, n_3193, n_3194, n_3195, n_3196, n_3197,
          n_3198, n_3199, n_3200, n_3201, n_3202, n_3203, n_3204, n_3205,
          n_3206, n_3207, n_3208, n_3209, comp1_modgen_54_eqo0_aOUT, comp1_modgen_54_eqo0_aIN1,
          n_3212, n_3213, n_3214, n_3215, n_3216, n_3217, n_3218, n_3219,
          n_3220, n_3221, n_3222, n_3223, n_3224, n_3225, n_3226, n_3227,
          n_3228, n_3229, n_3230, n_3231, n_3232, n_3233, comp1_nx38_aOUT,
          comp1_nx38_aIN, n_3236, n_3237, n_3238, opregrd_aOUT, n_3240, n_3241,
          n_3242, n_3243, n_3244, n_3245, con1_current_state33_Q, con1_current_state33_aCLRN,
          con1_current_state33_aD, n_3253, n_3254, n_3255, n_3256, n_3257,
          con1_current_state33_aCLK, ix484_a1_dup_653_aD, n_3265, n_3266,
          n_3267, n_3268, n_3269, n_3270, ix484_a1_dup_653_aCLK, ix484_a1_dup_653_aENA,
          n_3273, ix484_a5_dup_649_aD, n_3280, n_3281, n_3282, n_3283, n_3284,
          n_3285, ix484_a5_dup_649_aCLK, ix484_a5_dup_649_aENA, n_3288, ix484_a1_dup_645_aD,
          n_3295, n_3296, n_3297, n_3298, n_3299, n_3300, ix484_a1_dup_645_aCLK,
          ix484_a1_dup_645_aENA, n_3303, ix484_a5_dup_641_aD, n_3310, n_3311,
          n_3312, n_3313, n_3314, n_3315, ix484_a5_dup_641_aCLK, ix484_a5_dup_641_aENA,
          n_3318, ix484_a1_dup_637_aD, n_3325, n_3326, n_3327, n_3328, n_3329,
          n_3330, ix484_a1_dup_637_aCLK, ix484_a1_dup_637_aENA, n_3333, ix484_a5_dup_633_aD,
          n_3340, n_3341, n_3342, n_3343, n_3344, n_3345, ix484_a5_dup_633_aCLK,
          ix484_a5_dup_633_aENA, n_3348, ix484_a1_dup_629_aD, n_3355, n_3356,
          n_3357, n_3358, n_3359, n_3360, ix484_a1_dup_629_aCLK, ix484_a1_dup_629_aENA,
          n_3363, ix484_a5_dup_625_aD, n_3370, n_3371, n_3372, n_3373, n_3374,
          n_3375, ix484_a5_dup_625_aCLK, ix484_a5_dup_625_aENA, n_3378, ix484_a1_dup_621_aD,
          n_3385, n_3386, n_3387, n_3388, n_3389, n_3390, ix484_a1_dup_621_aCLK,
          ix484_a1_dup_621_aENA, n_3393, ix484_a5_dup_617_aD, n_3400, n_3401,
          n_3402, n_3403, n_3404, n_3405, ix484_a5_dup_617_aCLK, ix484_a5_dup_617_aENA,
          n_3408, ix484_a1_dup_613_aD, n_3415, n_3416, n_3417, n_3418, n_3419,
          n_3420, ix484_a1_dup_613_aCLK, ix484_a1_dup_613_aENA, n_3423, ix484_a5_dup_609_aD,
          n_3430, n_3431, n_3432, n_3433, n_3434, n_3435, ix484_a5_dup_609_aCLK,
          ix484_a5_dup_609_aENA, n_3438, ix484_a1_dup_605_aD, n_3445, n_3446,
          n_3447, n_3448, n_3449, n_3450, ix484_a1_dup_605_aCLK, ix484_a1_dup_605_aENA,
          n_3453, ix484_a5_dup_601_aD, n_3460, n_3461, n_3462, n_3463, n_3464,
          n_3465, ix484_a5_dup_601_aCLK, ix484_a5_dup_601_aENA, n_3468, ix484_a1_dup_597_aD,
          n_3475, n_3476, n_3477, n_3478, n_3479, n_3480, ix484_a1_dup_597_aCLK,
          ix484_a1_dup_597_aENA, n_3483, ix484_a5_dup_593_aD, n_3490, n_3491,
          n_3492, n_3493, n_3494, n_3495, ix484_a5_dup_593_aCLK, ix484_a5_dup_593_aENA,
          n_3498, ix484_a1_dup_589_aD, n_3505, n_3506, n_3507, n_3508, n_3509,
          n_3510, ix484_a1_dup_589_aCLK, ix484_a1_dup_589_aENA, n_3513, ix484_a5_dup_585_aD,
          n_3520, n_3521, n_3522, n_3523, n_3524, n_3525, ix484_a5_dup_585_aCLK,
          ix484_a5_dup_585_aENA, n_3528, ix484_a1_dup_581_aD, n_3535, n_3536,
          n_3537, n_3538, n_3539, n_3540, ix484_a1_dup_581_aCLK, ix484_a1_dup_581_aENA,
          n_3543, ix484_a5_dup_577_aD, n_3550, n_3551, n_3552, n_3553, n_3554,
          n_3555, ix484_a5_dup_577_aCLK, ix484_a5_dup_577_aENA, n_3558, ix484_a1_dup_573_aD,
          n_3565, n_3566, n_3567, n_3568, n_3569, n_3570, ix484_a1_dup_573_aCLK,
          ix484_a1_dup_573_aENA, n_3573, ix484_a5_dup_569_aD, n_3580, n_3581,
          n_3582, n_3583, n_3584, n_3585, ix484_a5_dup_569_aCLK, ix484_a5_dup_569_aENA,
          n_3588, ix484_a1_dup_565_aD, n_3595, n_3596, n_3597, n_3598, n_3599,
          n_3600, ix484_a1_dup_565_aCLK, ix484_a1_dup_565_aENA, n_3603, ix484_a5_dup_561_aD,
          n_3610, n_3611, n_3612, n_3613, n_3614, n_3615, ix484_a5_dup_561_aCLK,
          ix484_a5_dup_561_aENA, n_3618, ix484_a1_dup_557_aD, n_3625, n_3626,
          n_3627, n_3628, n_3629, n_3630, ix484_a1_dup_557_aCLK, ix484_a1_dup_557_aENA,
          n_3633, ix484_a5_dup_553_aD, n_3640, n_3641, n_3642, n_3643, n_3644,
          n_3645, ix484_a5_dup_553_aCLK, ix484_a5_dup_553_aENA, n_3648, ix484_a1_dup_549_aD,
          n_3655, n_3656, n_3657, n_3658, n_3659, n_3660, ix484_a1_dup_549_aCLK,
          ix484_a1_dup_549_aENA, n_3663, ix484_a5_dup_545_aD, n_3670, n_3671,
          n_3672, n_3673, n_3674, n_3675, ix484_a5_dup_545_aCLK, ix484_a5_dup_545_aENA,
          n_3678, ix484_a1_dup_541_aD, n_3685, n_3686, n_3687, n_3688, n_3689,
          n_3690, ix484_a1_dup_541_aCLK, ix484_a1_dup_541_aENA, n_3693, ix484_a5_dup_537_aD,
          n_3700, n_3701, n_3702, n_3703, n_3704, n_3705, ix484_a5_dup_537_aCLK,
          ix484_a5_dup_537_aENA, n_3708, con1_current_state49_Q, con1_current_state49_aCLRN,
          con1_current_state49_aD, n_3716, n_3717, n_3718, I3_dup_732_aOUT,
          n_3720, n_3721, n_3722, n_3723, con1_current_state49_aCLK, con1_current_state19_aCLRN,
          con1_current_state19_aD, n_3731, n_3732, n_3733, n_3734, con1_current_state19_aCLK,
          con1_current_state51_aCLRN, con1_current_state51_aD, n_3742, n_3743,
          n_3744, con1_current_state50_Q, n_3746, con1_current_state51_aCLK,
          ix484_a1_dup_533_aD, n_3754, n_3755, n_3756, n_3757, n_3758, n_3759,
          ix484_a1_dup_533_aCLK, ix484_a1_dup_533_aENA, n_3762, ix484_a5_aD,
          n_3769, n_3770, n_3771, n_3772, n_3773, n_3774, ix484_a5_aCLK, ix484_a5_aENA,
          n_3777, instrregout11_aD, n_3783, n_3784, n_3785, n_3786, n_3787,
          n_3788, instrregout11_aCLK, con1_current_state44_Q, con1_current_state44_aCLRN,
          con1_current_state44_aD, n_3797, n_3798, n_3799, n_3800, n_3801,
          n_3802, n_3803, con1_current_state44_aCLK, con1_current_state39_Q,
          con1_current_state39_aCLRN, con1_current_state39_aD, n_3812, n_3813,
          n_3814, n_3815, n_3816, n_3817, n_3818, con1_current_state39_aCLK,
          con1_current_state34_Q, con1_current_state34_aCLRN, con1_current_state34_aD,
          n_3827, n_3828, n_3829, n_3830, con1_current_state34_aCLK, I2_dup_689_aOUT,
          I2_dup_689_aIN, n_3834, n_3835, n_3836, con1_current_state38_Q,
          n_3838, n_3839, con1_current_state43_Q, n_3841, a_as_or3_aix1652_a_a32_aOUT,
          a_as_or3_aix1652_a_a32_aIN1, n_3844, n_3845, n_3846, con1_current_state23_Q,
          n_3848, n_3849, n_3850, n_3851, n_3852, I2_dup_681_aOUT, n_3854,
          progcntr_val0_aD, n_3860, n_3861, n_3862, n_3863, n_3864, n_3865,
          progcntr_val0_aCLK, O_dup_914_aOUT, O_dup_914_aIN, n_3869, n_3870,
          n_3871, con1_current_state21_Q, n_3873, n_3874, n_3875, I2_dup_679_aOUT,
          I2_dup_679_aIN, n_3878, n_3879, n_3880, con1_current_state1_Q, n_3882,
          n_3883, n_3884, n_3885, n_3886, n_3887, n_3888, a_as_or3_aix1642_a_a32_aOUT,
          a_as_or3_aix1642_a_a32_aIN1, n_3891, n_3892, n_3893, n_3894, n_3895,
          n_3896, n_3897, n_3898, alu1_nx191_aOUT, alu1_nx191_aIN, n_3901,
          n_3902, n_3903, n_3904, n4_aOUT, n4_aIN, n_3907, n_3908, n_3909,
          n_3910, n_3911, n_3912, n_3913, n_3914, n_3915, alusel2_aOUT, alusel2_aIN,
          n_3918, n_3919, n_3920, n_3921, n_3922, n_3923, n_3924, I3_dup_696_aOUT,
          n_3926, n_3927, n_3928, O_dup_867_aOUT, O_dup_867_aIN, n_3931, n_3932,
          n_3933, n_3934, n_3935, con1_current_state0_aQ_aNOT, n_3937, I1_dup_669_aOUT,
          I1_dup_669_aIN, n_3940, n_3941, n_3942, n_3943, n_3944, alusel0_aOUT,
          alusel0_aIN, n_3947, n_3948, n_3949, n_3950, n_3951, n_3952, n_3953,
          n_3954, outreg_val0_aD, n_3960, n_3961, n_3962, n_3963, n_3964,
          n_3965, n_3966, n_3967, n_3968, outreg_val0_aCLK, progcntr_val1_aD,
          n_3975, n_3976, n_3977, n_3978, n_3979, n_3980, progcntr_val1_aCLK,
          alu1_nx190_aOUT, alu1_nx190_aIN, n_3984, n_3985, n_3986, n_3987,
          n_3988, n_3989, n_3990, n_3991, I1_dup_668_aOUT, I1_dup_668_aIN,
          n_3994, n_3995, n_3996, n_3997, n_3998, outreg_val1_aD, n_4004,
          n_4005, n_4006, n_4007, n_4008, n_4009, n_4010, n_4011, n_4012,
          outreg_val1_aCLK, progcntr_val2_aD, n_4019, n_4020, n_4021, n_4022,
          n_4023, n_4024, progcntr_val2_aCLK, alu1_modgen_34_l1_l0_c_int2_aOUT,
          alu1_modgen_34_l1_l0_c_int2_aIN, n_4028, n_4029, n_4030, n_4031,
          n_4032, alu1_nx189_aOUT, alu1_nx189_aIN, n_4035, n_4036, n_4037,
          n_4038, n_4039, n_4040, n_4041, n_4042, I1_dup_667_aOUT, I1_dup_667_aIN,
          n_4045, n_4046, n_4047, n_4048, n_4049, outreg_val2_aD, n_4055,
          n_4056, n_4057, n_4058, n_4059, n_4060, n_4061, n_4062, n_4063,
          outreg_val2_aCLK, progcntr_val3_aD, n_4070, n_4071, n_4072, n_4073,
          n_4074, n_4075, progcntr_val3_aCLK, alu1_modgen_34_l1_l0_c_int3_aOUT,
          alu1_modgen_34_l1_l0_c_int3_aIN, n_4079, n_4080, n_4081, n_4082,
          n_4083, alu1_nx188_aOUT, alu1_nx188_aIN, n_4086, n_4087, n_4088,
          n_4089, n_4090, n_4091, n_4092, n_4093, I1_dup_666_aOUT, I1_dup_666_aIN,
          n_4096, n_4097, n_4098, n_4099, n_4100, outreg_val3_aD, n_4106,
          n_4107, n_4108, n_4109, n_4110, n_4111, n_4112, n_4113, n_4114,
          outreg_val3_aCLK, progcntr_val4_aD, n_4121, n_4122, n_4123, n_4124,
          n_4125, n_4126, progcntr_val4_aCLK, alu1_modgen_34_l1_l0_c_int4_aOUT,
          alu1_modgen_34_l1_l0_c_int4_aIN, n_4130, n_4131, n_4132, n_4133,
          n_4134, alu1_nx187_aOUT, alu1_nx187_aIN, n_4137, n_4138, n_4139,
          n_4140, n_4141, n_4142, n_4143, n_4144, I1_dup_665_aOUT, I1_dup_665_aIN,
          n_4147, n_4148, n_4149, n_4150, n_4151, outreg_val4_aD, n_4157,
          n_4158, n_4159, n_4160, n_4161, n_4162, n_4163, n_4164, n_4165,
          outreg_val4_aCLK, progcntr_val5_aD, n_4172, n_4173, n_4174, n_4175,
          n_4176, n_4177, progcntr_val5_aCLK, alu1_modgen_34_l1_l0_c_int5_aOUT,
          alu1_modgen_34_l1_l0_c_int5_aIN, n_4181, n_4182, n_4183, n_4184,
          n_4185, alu1_nx186_aOUT, alu1_nx186_aIN, n_4188, n_4189, n_4190,
          n_4191, n_4192, n_4193, n_4194, n_4195, I1_dup_664_aOUT, I1_dup_664_aIN,
          n_4198, n_4199, n_4200, n_4201, n_4202, outreg_val5_aD, n_4208,
          n_4209, n_4210, n_4211, n_4212, n_4213, n_4214, n_4215, n_4216,
          outreg_val5_aCLK, progcntr_val6_aD, n_4223, n_4224, n_4225, n_4226,
          n_4227, n_4228, progcntr_val6_aCLK, alu1_modgen_34_l1_l0_c_int6_aOUT,
          alu1_modgen_34_l1_l0_c_int6_aIN, n_4232, n_4233, n_4234, n_4235,
          n_4236, alu1_nx185_aOUT, alu1_nx185_aIN, n_4239, n_4240, n_4241,
          n_4242, n_4243, n_4244, n_4245, n_4246, I1_dup_663_aOUT, I1_dup_663_aIN,
          n_4249, n_4250, n_4251, n_4252, n_4253, outreg_val6_aD, n_4259,
          n_4260, n_4261, n_4262, n_4263, n_4264, n_4265, n_4266, n_4267,
          outreg_val6_aCLK, progcntr_val7_aD, n_4274, n_4275, n_4276, n_4277,
          n_4278, n_4279, progcntr_val7_aCLK, alu1_modgen_34_l1_l0_c_int7_aOUT,
          alu1_modgen_34_l1_l0_c_int7_aIN, n_4283, n_4284, n_4285, n_4286,
          n_4287, alu1_nx184_aOUT, alu1_nx184_aIN, n_4290, n_4291, n_4292,
          n_4293, n_4294, n_4295, n_4296, n_4297, I1_dup_662_aOUT, I1_dup_662_aIN,
          n_4300, n_4301, n_4302, n_4303, n_4304, outreg_val7_aD, n_4310,
          n_4311, n_4312, n_4313, n_4314, n_4315, n_4316, n_4317, n_4318,
          outreg_val7_aCLK, progcntr_val8_aD, n_4325, n_4326, n_4327, n_4328,
          n_4329, n_4330, progcntr_val8_aCLK, alu1_modgen_34_l1_l0_c_int8_aOUT,
          alu1_modgen_34_l1_l0_c_int8_aIN, n_4334, n_4335, n_4336, n_4337,
          n_4338, alu1_nx183_aOUT, alu1_nx183_aIN, n_4341, n_4342, n_4343,
          n_4344, n_4345, n_4346, n_4347, n_4348, I1_dup_661_aOUT, I1_dup_661_aIN,
          n_4351, n_4352, n_4353, n_4354, n_4355, outreg_val8_aD, n_4361,
          n_4362, n_4363, n_4364, n_4365, n_4366, n_4367, n_4368, n_4369,
          outreg_val8_aCLK, progcntr_val9_aD, n_4376, n_4377, n_4378, n_4379,
          n_4380, n_4381, progcntr_val9_aCLK, alu1_modgen_34_l1_l0_c_int9_aOUT,
          alu1_modgen_34_l1_l0_c_int9_aIN, n_4385, n_4386, n_4387, n_4388,
          n_4389, alu1_nx182_aOUT, alu1_nx182_aIN, n_4392, n_4393, n_4394,
          n_4395, n_4396, n_4397, n_4398, n_4399, I1_dup_660_aOUT, I1_dup_660_aIN,
          n_4402, n_4403, n_4404, n_4405, n_4406, outreg_val9_aD, n_4412,
          n_4413, n_4414, n_4415, n_4416, n_4417, n_4418, n_4419, n_4420,
          outreg_val9_aCLK, progcntr_val10_aD, n_4427, n_4428, n_4429, n_4430,
          n_4431, n_4432, progcntr_val10_aCLK, alu1_modgen_34_l1_l0_c_int10_aOUT,
          alu1_modgen_34_l1_l0_c_int10_aIN, n_4436, n_4437, n_4438, n_4439,
          n_4440, alu1_nx181_aOUT, alu1_nx181_aIN, n_4443, n_4444, n_4445,
          n_4446, n_4447, n_4448, n_4449, n_4450, I1_dup_659_aOUT, I1_dup_659_aIN,
          n_4453, n_4454, n_4455, n_4456, n_4457, outreg_val10_aD, n_4463,
          n_4464, n_4465, n_4466, n_4467, n_4468, n_4469, n_4470, n_4471,
          outreg_val10_aCLK, progcntr_val11_aD, n_4478, n_4479, n_4480, n_4481,
          n_4482, n_4483, progcntr_val11_aCLK, alu1_modgen_34_l1_l0_c_int11_aOUT,
          alu1_modgen_34_l1_l0_c_int11_aIN, n_4487, n_4488, n_4489, n_4490,
          n_4491, alu1_nx180_aOUT, alu1_nx180_aIN, n_4494, n_4495, n_4496,
          n_4497, n_4498, n_4499, n_4500, n_4501, I1_dup_658_aOUT, I1_dup_658_aIN,
          n_4504, n_4505, n_4506, n_4507, n_4508, outreg_val11_aD, n_4514,
          n_4515, n_4516, n_4517, n_4518, n_4519, n_4520, n_4521, n_4522,
          outreg_val11_aCLK, progcntr_val12_aD, n_4529, n_4530, n_4531, n_4532,
          n_4533, n_4534, progcntr_val12_aCLK, alu1_modgen_34_l1_l0_c_int12_aOUT,
          alu1_modgen_34_l1_l0_c_int12_aIN, n_4538, n_4539, n_4540, n_4541,
          n_4542, alu1_nx179_aOUT, alu1_nx179_aIN, n_4545, n_4546, n_4547,
          n_4548, n_4549, n_4550, n_4551, n_4552, I1_dup_657_aOUT, I1_dup_657_aIN,
          n_4555, n_4556, n_4557, n_4558, n_4559, outreg_val12_aD, n_4565,
          n_4566, n_4567, n_4568, n_4569, n_4570, n_4571, n_4572, n_4573,
          outreg_val12_aCLK, progcntr_val13_aD, n_4580, n_4581, n_4582, n_4583,
          n_4584, n_4585, progcntr_val13_aCLK, alu1_modgen_34_l1_l0_c_int13_aOUT,
          alu1_modgen_34_l1_l0_c_int13_aIN, n_4589, n_4590, n_4591, n_4592,
          n_4593, alu1_nx178_aOUT, alu1_nx178_aIN, n_4596, n_4597, n_4598,
          n_4599, n_4600, n_4601, n_4602, n_4603, I1_dup_656_aOUT, I1_dup_656_aIN,
          n_4606, n_4607, n_4608, n_4609, n_4610, outreg_val13_aD, n_4616,
          n_4617, n_4618, n_4619, n_4620, n_4621, n_4622, n_4623, n_4624,
          outreg_val13_aCLK, progcntr_val14_aD, n_4631, n_4632, n_4633, n_4634,
          n_4635, n_4636, progcntr_val14_aCLK, alu1_modgen_34_l1_l0_c_int14_aOUT,
          alu1_modgen_34_l1_l0_c_int14_aIN, n_4640, n_4641, n_4642, n_4643,
          n_4644, alu1_nx177_aOUT, alu1_nx177_aIN, n_4647, n_4648, n_4649,
          n_4650, n_4651, n_4652, n_4653, n_4654, I1_dup_655_aOUT, I1_dup_655_aIN,
          n_4657, n_4658, n_4659, n_4660, n_4661, outreg_val14_aD, n_4667,
          n_4668, n_4669, n_4670, n_4671, n_4672, n_4673, n_4674, n_4675,
          outreg_val14_aCLK, con1_current_state50_aCLRN, con1_current_state50_aD,
          n_4683, n_4684, n_4685, n_4686, con1_current_state50_aCLK, progcntr_val15_aD,
          n_4693, n_4694, n_4695, n_4696, n_4697, n_4698, progcntr_val15_aCLK,
          alu1_modgen_34_l1_l0_c_int15_aOUT, alu1_modgen_34_l1_l0_c_int15_aIN,
          n_4702, n_4703, n_4704, n_4705, n_4706, alu1_nx176_aOUT, alu1_nx176_aIN,
          n_4709, n_4710, n_4711, n_4712, n_4713, n_4714, n_4715, n_4716,
          I1_aOUT, I1_aIN, n_4719, n_4720, n_4721, n_4722, n_4723, outreg_val15_aD,
          n_4729, n_4730, n_4731, n_4732, n_4733, n_4734, n_4735, n_4736,
          n_4737, outreg_val15_aCLK, instrregout15_aD, n_4744, n_4745, n_4746,
          n_4747, n_4748, n_4749, instrregout15_aCLK, con1_current_state45_Q,
          con1_current_state45_aCLRN, con1_current_state45_aD, n_4758, n_4759,
          n_4760, n_4761, con1_current_state45_aCLK, con1_current_state40_Q,
          con1_current_state40_aCLRN, con1_current_state40_aD, n_4770, n_4771,
          n_4772, n_4773, con1_current_state40_aCLK, con1_current_state35_Q,
          con1_current_state35_aCLRN, con1_current_state35_aD, n_4782, n_4783,
          n_4784, n_4785, con1_current_state35_aCLK, ix484_a2_dup_652_aD,
          n_4793, n_4794, n_4795, n_4796, n_4797, n_4798, ix484_a2_dup_652_aCLK,
          ix484_a2_dup_652_aENA, n_4801, ix484_a7_dup_647_aD, n_4808, n_4809,
          n_4810, n_4811, n_4812, n_4813, ix484_a7_dup_647_aCLK, ix484_a7_dup_647_aENA,
          n_4816, ix484_nx38_aOUT, ix484_a2_dup_644_aD, n_4824, n_4825, n_4826,
          n_4827, n_4828, n_4829, ix484_a2_dup_644_aCLK, ix484_a2_dup_644_aENA,
          n_4832, ix484_a7_dup_639_aD, n_4839, n_4840, n_4841, n_4842, n_4843,
          n_4844, ix484_a7_dup_639_aCLK, ix484_a7_dup_639_aENA, n_4847, ix484_a2_dup_636_aD,
          n_4854, n_4855, n_4856, n_4857, n_4858, n_4859, ix484_a2_dup_636_aCLK,
          ix484_a2_dup_636_aENA, n_4862, ix484_a7_dup_631_aD, n_4869, n_4870,
          n_4871, n_4872, n_4873, n_4874, ix484_a7_dup_631_aCLK, ix484_a7_dup_631_aENA,
          n_4877, ix484_a2_dup_628_aD, n_4884, n_4885, n_4886, n_4887, n_4888,
          n_4889, ix484_a2_dup_628_aCLK, ix484_a2_dup_628_aENA, n_4892, ix484_a7_dup_623_aD,
          n_4899, n_4900, n_4901, n_4902, n_4903, n_4904, ix484_a7_dup_623_aCLK,
          ix484_a7_dup_623_aENA, n_4907, ix484_a2_dup_620_aD, n_4914, n_4915,
          n_4916, n_4917, n_4918, n_4919, ix484_a2_dup_620_aCLK, ix484_a2_dup_620_aENA,
          n_4922, ix484_a7_dup_615_aD, n_4929, n_4930, n_4931, n_4932, n_4933,
          n_4934, ix484_a7_dup_615_aCLK, ix484_a7_dup_615_aENA, n_4937, ix484_a2_dup_612_aD,
          n_4944, n_4945, n_4946, n_4947, n_4948, n_4949, ix484_a2_dup_612_aCLK,
          ix484_a2_dup_612_aENA, n_4952, ix484_a7_dup_607_aD, n_4959, n_4960,
          n_4961, n_4962, n_4963, n_4964, ix484_a7_dup_607_aCLK, ix484_a7_dup_607_aENA,
          n_4967, ix484_a2_dup_604_aD, n_4974, n_4975, n_4976, n_4977, n_4978,
          n_4979, ix484_a2_dup_604_aCLK, ix484_a2_dup_604_aENA, n_4982, ix484_a7_dup_599_aD,
          n_4989, n_4990, n_4991, n_4992, n_4993, n_4994, ix484_a7_dup_599_aCLK,
          ix484_a7_dup_599_aENA, n_4997, ix484_a2_dup_596_aD, n_5004, n_5005,
          n_5006, n_5007, n_5008, n_5009, ix484_a2_dup_596_aCLK, ix484_a2_dup_596_aENA,
          n_5012, ix484_a7_dup_591_aD, n_5019, n_5020, n_5021, n_5022, n_5023,
          n_5024, ix484_a7_dup_591_aCLK, ix484_a7_dup_591_aENA, n_5027, ix484_a2_dup_588_aD,
          n_5034, n_5035, n_5036, n_5037, n_5038, n_5039, ix484_a2_dup_588_aCLK,
          ix484_a2_dup_588_aENA, n_5042, ix484_a7_dup_583_aD, n_5049, n_5050,
          n_5051, n_5052, n_5053, n_5054, ix484_a7_dup_583_aCLK, ix484_a7_dup_583_aENA,
          n_5057, ix484_a2_dup_580_aD, n_5064, n_5065, n_5066, n_5067, n_5068,
          n_5069, ix484_a2_dup_580_aCLK, ix484_a2_dup_580_aENA, n_5072, ix484_a7_dup_575_aD,
          n_5079, n_5080, n_5081, n_5082, n_5083, n_5084, ix484_a7_dup_575_aCLK,
          ix484_a7_dup_575_aENA, n_5087, ix484_a2_dup_572_aD, n_5094, n_5095,
          n_5096, n_5097, n_5098, n_5099, ix484_a2_dup_572_aCLK, ix484_a2_dup_572_aENA,
          n_5102, ix484_a7_dup_567_aD, n_5109, n_5110, n_5111, n_5112, n_5113,
          n_5114, ix484_a7_dup_567_aCLK, ix484_a7_dup_567_aENA, n_5117, ix484_a2_dup_564_aD,
          n_5124, n_5125, n_5126, n_5127, n_5128, n_5129, ix484_a2_dup_564_aCLK,
          ix484_a2_dup_564_aENA, n_5132, ix484_a7_dup_559_aD, n_5139, n_5140,
          n_5141, n_5142, n_5143, n_5144, ix484_a7_dup_559_aCLK, ix484_a7_dup_559_aENA,
          n_5147, ix484_a2_dup_556_aD, n_5154, n_5155, n_5156, n_5157, n_5158,
          n_5159, ix484_a2_dup_556_aCLK, ix484_a2_dup_556_aENA, n_5162, ix484_a7_dup_551_aD,
          n_5169, n_5170, n_5171, n_5172, n_5173, n_5174, ix484_a7_dup_551_aCLK,
          ix484_a7_dup_551_aENA, n_5177, ix484_a2_dup_548_aD, n_5184, n_5185,
          n_5186, n_5187, n_5188, n_5189, ix484_a2_dup_548_aCLK, ix484_a2_dup_548_aENA,
          n_5192, ix484_a7_dup_543_aD, n_5199, n_5200, n_5201, n_5202, n_5203,
          n_5204, ix484_a7_dup_543_aCLK, ix484_a7_dup_543_aENA, n_5207, ix484_a2_dup_540_aD,
          n_5214, n_5215, n_5216, n_5217, n_5218, n_5219, ix484_a2_dup_540_aCLK,
          ix484_a2_dup_540_aENA, n_5222, ix484_a7_dup_535_aD, n_5229, n_5230,
          n_5231, n_5232, n_5233, n_5234, ix484_a7_dup_535_aCLK, ix484_a7_dup_535_aENA,
          n_5237, instrregout12_aD, n_5243, n_5244, n_5245, n_5246, n_5247,
          n_5248, instrregout12_aCLK, ix484_a2_dup_532_aD, n_5256, n_5257,
          n_5258, n_5259, n_5260, n_5261, ix484_a2_dup_532_aCLK, ix484_a2_dup_532_aENA,
          n_5264, ix484_a7_aD, n_5271, n_5272, n_5273, n_5274, n_5275, n_5276,
          ix484_a7_aCLK, ix484_a7_aENA, n_5279, con1_current_state0_Q, con1_current_state0_aPRN,
          n_5286, con1_current_state0_aD, n_5288, n_5289, n_5290, con1_current_state0_aCLK,
          I1_dup_708_aOUT, I1_dup_708_aIN, n_5294, n_5295, n_5296, n_5297,
          n_5298, n_5299, n_5300, n_5301, n_5302, O_dup_926_aOUT, O_dup_926_aIN,
          n_5305, n_5306, n_5307, n_5308, n_5309, n_5310, I3_dup_710_aOUT,
          I3_dup_710_aIN, n_5313, n_5314, n_5315, I3_dup_900_aOUT, n_5317,
          I2_dup_1023_aOUT, n_5319, n_5320, I3_dup_1028_aOUT, I3_dup_1028_aIN,
          n_5323, n_5324, n_5325, con1_current_state25_Q, n_5327, n_5328,
          n_5329, con1_current_state29_Q, n_5331, alusel3_aOUT, alusel3_aIN,
          n_5334, n_5335, n_5336, n_5337, n_5338, n_5339, I3_dup_682_aOUT,
          I3_dup_682_aIN, n_5342, n_5343, n_5344, con1_current_state14_Q,
          n_5346, n_5347, con1_current_state11_Q, n_5349, a_as_or4_aix1643_a_a34_aOUT_aNOT,
          a_as_or4_aix1643_a_a34_aOUT, n_5352, a_as_or4_aix1643_a_a34_aIN1,
          n_5354, n_5355, n_5356, n_5357, con1_current_state27_Q, n_5359,
          n_5360, n_5361, O_dup_1005_aOUT, O_dup_1005_aIN, n_5364, n_5365,
          n_5366, con1_current_state42_Q, n_5368, con1_current_state37_Q,
          n_5370, n_5371, n_5372, O_dup_1572_aOUT, O_dup_1572_aIN, n_5375,
          n_5376, n_5377, con1_current_state26_Q, n_5379, con1_current_state24_Q,
          n_5381, con1_current_state28_Q, n_5383, n_5384, I1_dup_989_aOUT,
          I1_dup_989_aIN, n_5387, n_5388, n_5389, n_5390, n_5391, n_5392,
          n_5393, O_dup_990_aOUT, O_dup_990_aIN, n_5396, n_5397, n_5398, n_5399,
          con1_current_state47_Q, n_5401, n_5402, n_5403, O_dup_1589_aOUT,
          O_dup_1589_aIN, n_5406, n_5407, n_5408, con1_current_state15_Q,
          n_5410, con1_current_state22_Q, n_5412, n_5413, n_5414, I1_dup_986_aOUT,
          I1_dup_986_aIN, n_5417, n_5418, n_5419, con1_current_state4_Q, n_5421,
          con1_current_state2_Q, n_5423, con1_current_state5_Q, n_5425, con1_current_state12_Q,
          n_5427, I2_dup_709_aOUT, I2_dup_709_aIN1, n_5430, n_5431, n_5432,
          n_5433, n_5434, n_5435, n_5436, con1_current_state20_Q, con1_current_state20_aCLRN,
          con1_current_state20_aD, n_5444, n_5445, n_5446, n_5447, n_5448,
          n_5449, n_5450, n_5451, n_5452, n_5453, con1_current_state20_aCLK,
          con1_current_state46_Q, con1_current_state46_aCLRN, con1_current_state46_aD,
          n_5462, n_5463, n_5464, n_5465, con1_current_state46_aCLK, con1_current_state41_Q,
          con1_current_state41_aCLRN, con1_current_state41_aD, n_5474, n_5475,
          n_5476, n_5477, con1_current_state41_aCLK, con1_current_state36_Q,
          con1_current_state36_aCLRN, con1_current_state36_aD, n_5486, n_5487,
          n_5488, n_5489, con1_current_state36_aCLK, con1_current_state37_aCLRN,
          con1_current_state37_aD, n_5497, n_5498, n_5499, n_5500, con1_current_state37_aCLK,
          con1_current_state42_aCLRN, con1_current_state42_aD, n_5508, n_5509,
          n_5510, n_5511, con1_current_state42_aCLK, con1_current_state28_aCLRN,
          con1_current_state28_aD, n_5519, n_5520, n_5521, n_5522, con1_current_state28_aCLK,
          con1_modgen_61_nx10_aOUT, con1_modgen_61_nx10_aIN, n_5526, n_5527,
          n_5528, n_5529, n_5530, n_5531, con1_current_state11_aCLRN, con1_current_state11_aD,
          n_5538, n_5539, n_5540, n_5541, n_5542, n_5543, n_5544, con1_current_state11_aCLK,
          con1_current_state47_aCLRN, con1_current_state47_aD, n_5552, n_5553,
          n_5554, n_5555, con1_current_state47_aCLK, con1_current_state1_aCLRN,
          con1_current_state1_aD, n_5563, n_5564, n_5565, n_5566, con1_current_state1_aCLK,
          con1_current_state6_aCLRN, con1_current_state6_aD, n_5574, n_5575,
          n_5576, n_5577, n_5578, n_5579, n_5580, n_5581, n_5582, n_5583,
          n_5584, con1_current_state6_aCLK, con1_current_state21_aCLRN, con1_current_state21_aD,
          n_5592, n_5593, n_5594, n_5595, con1_current_state21_aCLK, ix484_a4_dup_650_aD,
          n_5603, n_5604, n_5605, n_5606, n_5607, n_5608, ix484_a4_dup_650_aCLK,
          ix484_a4_dup_650_aENA, n_5611, ix484_nx41_aOUT, ix484_a0_dup_654_aD,
          n_5619, n_5620, n_5621, n_5622, n_5623, n_5624, ix484_a0_dup_654_aCLK,
          ix484_a0_dup_654_aENA, n_5627, ix484_nx45_aOUT, ix484_a4_dup_642_aD,
          n_5635, n_5636, n_5637, n_5638, n_5639, n_5640, ix484_a4_dup_642_aCLK,
          ix484_a4_dup_642_aENA, n_5643, ix484_a0_dup_646_aD, n_5650, n_5651,
          n_5652, n_5653, n_5654, n_5655, ix484_a0_dup_646_aCLK, ix484_a0_dup_646_aENA,
          n_5658, ix484_a4_dup_634_aD, n_5665, n_5666, n_5667, n_5668, n_5669,
          n_5670, ix484_a4_dup_634_aCLK, ix484_a4_dup_634_aENA, n_5673, ix484_a0_dup_638_aD,
          n_5680, n_5681, n_5682, n_5683, n_5684, n_5685, ix484_a0_dup_638_aCLK,
          ix484_a0_dup_638_aENA, n_5688, ix484_a4_dup_626_aD, n_5695, n_5696,
          n_5697, n_5698, n_5699, n_5700, ix484_a4_dup_626_aCLK, ix484_a4_dup_626_aENA,
          n_5703, ix484_a0_dup_630_aD, n_5710, n_5711, n_5712, n_5713, n_5714,
          n_5715, ix484_a0_dup_630_aCLK, ix484_a0_dup_630_aENA, n_5718, ix484_a4_dup_618_aD,
          n_5725, n_5726, n_5727, n_5728, n_5729, n_5730, ix484_a4_dup_618_aCLK,
          ix484_a4_dup_618_aENA, n_5733, ix484_a0_dup_622_aD, n_5740, n_5741,
          n_5742, n_5743, n_5744, n_5745, ix484_a0_dup_622_aCLK, ix484_a0_dup_622_aENA,
          n_5748, ix484_a4_dup_610_aD, n_5755, n_5756, n_5757, n_5758, n_5759,
          n_5760, ix484_a4_dup_610_aCLK, ix484_a4_dup_610_aENA, n_5763, ix484_a0_dup_614_aD,
          n_5770, n_5771, n_5772, n_5773, n_5774, n_5775, ix484_a0_dup_614_aCLK,
          ix484_a0_dup_614_aENA, n_5778, ix484_a4_dup_602_aD, n_5785, n_5786,
          n_5787, n_5788, n_5789, n_5790, ix484_a4_dup_602_aCLK, ix484_a4_dup_602_aENA,
          n_5793, ix484_a0_dup_606_aD, n_5800, n_5801, n_5802, n_5803, n_5804,
          n_5805, ix484_a0_dup_606_aCLK, ix484_a0_dup_606_aENA, n_5808, ix484_a4_dup_594_aD,
          n_5815, n_5816, n_5817, n_5818, n_5819, n_5820, ix484_a4_dup_594_aCLK,
          ix484_a4_dup_594_aENA, n_5823, ix484_a0_dup_598_aD, n_5830, n_5831,
          n_5832, n_5833, n_5834, n_5835, ix484_a0_dup_598_aCLK, ix484_a0_dup_598_aENA,
          n_5838, ix484_a4_dup_586_aD, n_5845, n_5846, n_5847, n_5848, n_5849,
          n_5850, ix484_a4_dup_586_aCLK, ix484_a4_dup_586_aENA, n_5853, ix484_a0_dup_590_aD,
          n_5860, n_5861, n_5862, n_5863, n_5864, n_5865, ix484_a0_dup_590_aCLK,
          ix484_a0_dup_590_aENA, n_5868, ix484_a4_dup_578_aD, n_5875, n_5876,
          n_5877, n_5878, n_5879, n_5880, ix484_a4_dup_578_aCLK, ix484_a4_dup_578_aENA,
          n_5883, ix484_a0_dup_582_aD, n_5890, n_5891, n_5892, n_5893, n_5894,
          n_5895, ix484_a0_dup_582_aCLK, ix484_a0_dup_582_aENA, n_5898, ix484_a4_dup_570_aD,
          n_5905, n_5906, n_5907, n_5908, n_5909, n_5910, ix484_a4_dup_570_aCLK,
          ix484_a4_dup_570_aENA, n_5913, ix484_a0_dup_574_aD, n_5920, n_5921,
          n_5922, n_5923, n_5924, n_5925, ix484_a0_dup_574_aCLK, ix484_a0_dup_574_aENA,
          n_5928, ix484_a4_dup_562_aD, n_5935, n_5936, n_5937, n_5938, n_5939,
          n_5940, ix484_a4_dup_562_aCLK, ix484_a4_dup_562_aENA, n_5943, ix484_a0_dup_566_aD,
          n_5950, n_5951, n_5952, n_5953, n_5954, n_5955, ix484_a0_dup_566_aCLK,
          ix484_a0_dup_566_aENA, n_5958, ix484_a4_dup_554_aD, n_5965, n_5966,
          n_5967, n_5968, n_5969, n_5970, ix484_a4_dup_554_aCLK, ix484_a4_dup_554_aENA,
          n_5973, ix484_a0_dup_558_aD, n_5980, n_5981, n_5982, n_5983, n_5984,
          n_5985, ix484_a0_dup_558_aCLK, ix484_a0_dup_558_aENA, n_5988, ix484_a4_dup_546_aD,
          n_5995, n_5996, n_5997, n_5998, n_5999, n_6000, ix484_a4_dup_546_aCLK,
          ix484_a4_dup_546_aENA, n_6003, ix484_a0_dup_550_aD, n_6010, n_6011,
          n_6012, n_6013, n_6014, n_6015, ix484_a0_dup_550_aCLK, ix484_a0_dup_550_aENA,
          n_6018, ix484_a4_dup_538_aD, n_6025, n_6026, n_6027, n_6028, n_6029,
          n_6030, ix484_a4_dup_538_aCLK, ix484_a4_dup_538_aENA, n_6033, ix484_a0_dup_542_aD,
          n_6040, n_6041, n_6042, n_6043, n_6044, n_6045, ix484_a0_dup_542_aCLK,
          ix484_a0_dup_542_aENA, n_6048, ix484_a4_aD, n_6055, n_6056, n_6057,
          n_6058, n_6059, n_6060, ix484_a4_aCLK, ix484_a4_aENA, n_6063, ix484_a0_dup_534_aD,
          n_6070, n_6071, n_6072, n_6073, n_6074, n_6075, ix484_a0_dup_534_aCLK,
          ix484_a0_dup_534_aENA, n_6078, con1_current_state13_aCLRN, con1_current_state13_aD,
          n_6085, n_6086, n_6087, n_6088, con1_current_state13_aCLK, con1_current_state24_aCLRN,
          con1_current_state24_aD, n_6096, n_6097, n_6098, n_6099, con1_current_state24_aCLK,
          con1_current_state12_aCLRN, con1_current_state12_aD, n_6107, n_6108,
          n_6109, n_6110, con1_current_state12_aCLK, con1_current_state5_aCLRN,
          con1_current_state5_aD, n_6118, n_6119, n_6120, n_6121, n_6122,
          n_6123, n_6124, con1_current_state5_aCLK, con1_current_state2_aCLRN,
          con1_current_state2_aD, n_6132, n_6133, n_6134, n_6135, con1_current_state2_aCLK,
          con1_current_state29_aCLRN, con1_current_state29_aD, n_6143, n_6144,
          n_6145, n_6146, n_6147, n_6148, n_6149, con1_current_state29_aCLK,
          con1_current_state43_aCLRN, con1_current_state43_aD, n_6157, n_6158,
          n_6159, n_6160, n_6161, n_6162, n_6163, con1_current_state43_aCLK,
          con1_current_state38_aCLRN, con1_current_state38_aD, n_6171, n_6172,
          n_6173, n_6174, n_6175, n_6176, n_6177, con1_current_state38_aCLK,
          con1_current_state25_aCLRN, con1_current_state25_aD, n_6185, n_6186,
          n_6187, n_6188, n_6189, n_6190, n_6191, con1_current_state25_aCLK,
          con1_current_state26_aCLRN, con1_current_state26_aD, n_6199, n_6200,
          n_6201, n_6202, n_6203, n_6204, n_6205, n_6206, con1_current_state26_aCLK,
          con1_current_state22_aCLRN, con1_current_state22_aD, n_6214, n_6215,
          n_6216, n_6217, con1_current_state22_aCLK, con1_current_state3_Q,
          con1_current_state3_aCLRN, con1_current_state3_aD, n_6226, n_6227,
          n_6228, n_6229, con1_current_state3_aCLK, con1_current_state14_aCLRN,
          con1_current_state14_aD, n_6237, n_6238, n_6239, con1_modgen_62_nx16_aOUT,
          n_6241, n_6242, con1_current_state14_aCLK, con1_current_state27_aCLRN,
          con1_current_state27_aD, n_6250, n_6251, n_6252, n_6253, con1_current_state27_aCLK,
          con1_current_state23_aCLRN, con1_current_state23_aD, n_6261, n_6262,
          n_6263, n_6264, con1_current_state23_aCLK, con1_current_state48_aCLRN,
          con1_current_state48_aD, n_6272, n_6273, n_6274, n_6275, n_6276,
          n_6277, n_6278, con1_current_state48_aCLK, con1_current_state4_aCLRN,
          con1_current_state4_aD, n_6286, n_6287, n_6288, n_6289, con1_current_state4_aCLK,
          con1_current_state15_aCLRN, con1_current_state15_aD, n_6297, n_6298,
          n_6299, n_6300, con1_current_state15_aCLK, rw_dup0_aCLRN, rw_dup0_aD,
          n_6308, n_6309, n_6310, n_6311, rw_dup0_aCLK, O_dup_1039_aOUT, O_dup_1039_aIN,
          n_6315, n_6316, n_6317, n_6318, n_6319, n_6320, n_6321, I0_dup_774_aOUT,
          I0_dup_774_aIN, n_6324, n_6325, n_6326, n_6327, n_6328, n_6329,
          n_6330, O_aIN1, n_6332, n_6333, n_6334, n_6335, n_6336, n_6337,
          n_6338, addr_dup00_aD, n_6344, n_6345, n_6346, n_6347, n_6348, n_6349,
          addr_dup00_aCLK, addr_dup01_aD, n_6356, n_6357, n_6358, n_6359,
          n_6360, n_6361, addr_dup01_aCLK, addr_dup02_aD, n_6368, n_6369,
          n_6370, n_6371, n_6372, n_6373, addr_dup02_aCLK, addr_dup03_aD,
          n_6380, n_6381, n_6382, n_6383, n_6384, n_6385, addr_dup03_aCLK,
          addr_dup04_aD, n_6392, n_6393, n_6394, n_6395, n_6396, n_6397, addr_dup04_aCLK,
          addr_dup05_aD, n_6404, n_6405, n_6406, n_6407, n_6408, n_6409, addr_dup05_aCLK,
          addr_dup06_aD, n_6416, n_6417, n_6418, n_6419, n_6420, n_6421, addr_dup06_aCLK,
          addr_dup07_aD, n_6428, n_6429, n_6430, n_6431, n_6432, n_6433, addr_dup07_aCLK,
          addr_dup08_aD, n_6440, n_6441, n_6442, n_6443, n_6444, n_6445, addr_dup08_aCLK,
          addr_dup09_aD, n_6452, n_6453, n_6454, n_6455, n_6456, n_6457, addr_dup09_aCLK,
          addr_dup010_aD, n_6464, n_6465, n_6466, n_6467, n_6468, n_6469,
          addr_dup010_aCLK, addr_dup011_aD, n_6476, n_6477, n_6478, n_6479,
          n_6480, n_6481, addr_dup011_aCLK, addr_dup012_aD, n_6488, n_6489,
          n_6490, n_6491, n_6492, n_6493, addr_dup012_aCLK, addr_dup013_aD,
          n_6500, n_6501, n_6502, n_6503, n_6504, n_6505, addr_dup013_aCLK,
          addr_dup014_aD, n_6512, n_6513, n_6514, n_6515, n_6516, n_6517,
          addr_dup014_aCLK, addr_dup015_aD, n_6524, n_6525, n_6526, n_6527,
          n_6528, n_6529, addr_dup015_aCLK, a_as_or3_aix1644_a_a32_aIN1, n_6532,
          n_6533, n_6534, n_6535, n_6536, n_6537, n_6538, n_6539, n_6540,
          n_6541, n_6542, I3_dup_732_aIN, n_6544, n_6545, n_6546, n_6547,
          n_6548, n_6549, n_6550, n_6551, I3_dup_918_aOUT, I3_dup_918_aIN,
          n_6554, n_6555, n_6556, n_6557, n_6558, n_6559, I3_dup_696_aIN,
          n_6561, n_6562, n_6563, n_6564, n_6565, n_6566, n_6567, n_6568,
          n_6569, n_6570, I1_dup_686_aOUT, I1_dup_686_aIN, n_6573, n_6574,
          n_6575, n_6576, n_6577, n_6578, n_6579, n3_aIN1, n_6581, n_6582,
          n_6583, n_6584, n_6585, n_6586, n_6587, n_6588, con1_modgen_61_nx12_aIN,
          n_6590, n_6591, n_6592, n_6593, n_6594, n_6595, con1_modgen_62_nx16_aIN,
          n_6597, n_6598, n_6599, n_6600, n_6601, n_6602, n_6603, n_6604,
          n_6605, n_6606, I2_dup_1023_aIN, n_6608, n_6609, n_6610, n_6611,
          n_6612, n_6613, n_6614, n_6615, I3_dup_900_aIN, n_6617, n_6618,
          n_6619, n_6620, n_6621, n_6622, opregwr_aCLRN, opregwr_aD, n_6629,
          n_6630, n_6631, n_6632, n_6633, n_6634, n_6635, opregwr_aCLK, I3_dup_736_aOUT,
          I3_dup_736_aIN, n_6639, n_6640, n_6641, n_6642, n_6643, con1_nx3498_aOUT,
          con1_nx3498_aIN, n_6646, n_6647, n_6648, n_6649, n_6650, n_6651,
          n_6652, n_6653, n_6654, n_6655, opregrd_aIN, n_6657, n_6658, n_6659,
          n_6660, n_6661, n_6662, con1_nx3626_aOUT, con1_nx3626_aIN, n_6665,
          n_6666, n_6667, n_6668, n_6669, n_6670, n_6671, n_6672, n_6673,
          n_6674, I2_dup_823_aIN, n_6676, n_6677, n_6678, n_6679, n_6680,
          n_6681, n_6682, n_6683, n_6684, n_6685, I2_dup_681_aIN, n_6687,
          n_6688, n_6689, n_6690, n_6691, n_6692, n_6693, n_6694, n_6695,
          n_6696, O_dup_1049_aOUT, O_dup_1049_aIN, n_6699, n_6700, n_6701,
          n_6702, n_6703, n_6704, n_6705, I3_dup_677_aOUT, I3_dup_677_aIN1,
          n_6708, n_6709, n_6710, n_6711, n_6712, n_6713, n_6714, outregrd_aIN,
          n_6716, n_6717, n_6718, n_6719, n_6720, n_6721, n_6722, n_6723,
          n_6724, n_6725, a_as_or3_aix1786_a_a32_aIN1, n_6727, n_6728, n_6729,
          n_6730, n_6731, n_6732, n_6733, n_6734, con1_modgen_66_nx16_aOUT,
          con1_modgen_66_nx16_aIN, n_6737, n_6738, n_6739, n_6740, n_6741,
          n_6742, n_6743, n_6744, O_dup_901_aOUT, O_dup_901_aIN, n_6747, n_6748,
          n_6749, n_6750, n_6751, n_6752, n_6753, n_6754, n_6755, n_6756,
          I3_dup_1509_aOUT, I3_dup_1509_aIN, n_6759, n_6760, n_6761, n_6762,
          n_6763, con1_next_state14_aOUT, con1_next_state14_aIN1, n_6766,
          n_6767, n_6768, n_6769, n_6770, con1_next_state49_aOUT, con1_next_state49_aIN1,
          n_6773, n_6774, n_6775, n_6776, n_6777, n_6778, n_6779, I1_dup_670_aOUT,
          I1_dup_670_aIN, n_6782, n_6783, n_6784, n_6785, n_6786, n_6787,
          n_6788, n_6789, n_6790, I3_dup_1546_aOUT, I3_dup_1546_aIN, n_6793,
          n_6794, n_6795, n_6796, n_6797, n_6798, n_6799, n_6800, I2_aOUT,
          I2_aIN, n_6803, n_6804, n_6805, n_6806, n_6807, n_6808, n_6809,
          I1_dup_755_aIN, n_6811, n_6812, n_6813, n_6814, n_6815, n_6816,
          n_6817, n_6818, n_6819, n_6820, O_dup_1505_aOUT, O_dup_1505_aIN,
          n_6823, n_6824, n_6825, n_6826, n_6827, n_6828, I0_dup_770_aIN,
          n_6830, n_6831, n_6832, n_6833, n_6834, I3_aOUT, I3_aIN, n_6837,
          n_6838, n_6839, n_6840, n_6841, regsel0_aIN, n_6843, n_6844, n_6845,
          n_6846, n_6847, n_6848, n_6849, n_6850, n_6851, n_6852, O_dup_1034_aIN,
          n_6854, n_6855, n_6856, n_6857, n_6858, n_6859, n_6860, n_6861,
          I0_dup_768_aOUT, I0_dup_768_aIN, n_6864, n_6865, n_6866, n_6867,
          n_6868, ix484_nx45_aIN, n_6870, n_6871, n_6872, n_6873, n_6874,
          O_dup_873_aIN, n_6876, n_6877, n_6878, n_6879, n_6880, I2_dup_756_aIN,
          n_6882, n_6883, n_6884, n_6885, n_6886, n_6887, ix484_nx41_aIN,
          n_6889, n_6890, n_6891, n_6892, n_6893, n_6894, O_dup_870_aIN, n_6896,
          n_6897, n_6898, n_6899, n_6900, ix484_nx38_aIN, n_6902, n_6903,
          n_6904, n_6905, n_6906, n_6907, O_dup_879_aIN, n_6909, n_6910, n_6911,
          n_6912, n_6913, I0_dup_766_aIN, n_6915, n_6916, n_6917, n_6918,
          n_6919, ix484_nx43_aIN, n_6921, n_6922, n_6923, n_6924, n_6925 : std_logic;

BEGIN
tribuf_2: TRIBUF
    PORT MAP (IN1 => n_176, OE => ix1553_aOE, Y => data(0));
tribuf_4: TRIBUF
    PORT MAP (IN1 => n_185, OE => ix1551_aOE, Y => data(1));
tribuf_6: TRIBUF
    PORT MAP (IN1 => n_194, OE => ix1549_aOE, Y => data(2));
tribuf_8: TRIBUF
    PORT MAP (IN1 => n_203, OE => ix1547_aOE, Y => data(3));
tribuf_10: TRIBUF
    PORT MAP (IN1 => n_212, OE => ix1545_aOE, Y => data(4));
tribuf_12: TRIBUF
    PORT MAP (IN1 => n_221, OE => ix1543_aOE, Y => data(5));
tribuf_14: TRIBUF
    PORT MAP (IN1 => n_230, OE => ix1541_aOE, Y => data(6));
tribuf_16: TRIBUF
    PORT MAP (IN1 => n_239, OE => ix1539_aOE, Y => data(7));
tribuf_18: TRIBUF
    PORT MAP (IN1 => n_248, OE => ix1537_aOE, Y => data(8));
tribuf_20: TRIBUF
    PORT MAP (IN1 => n_257, OE => ix1535_aOE, Y => data(9));
tribuf_22: TRIBUF
    PORT MAP (IN1 => n_266, OE => ix1533_aOE, Y => data(10));
tribuf_24: TRIBUF
    PORT MAP (IN1 => n_275, OE => ix1531_aOE, Y => data(11));
tribuf_26: TRIBUF
    PORT MAP (IN1 => n_284, OE => ix1529_aOE, Y => data(12));
tribuf_28: TRIBUF
    PORT MAP (IN1 => n_293, OE => ix1527_aOE, Y => data(13));
tribuf_30: TRIBUF
    PORT MAP (IN1 => n_302, OE => ix1525_aOE, Y => data(14));
tribuf_32: TRIBUF
    PORT MAP (IN1 => n_311, OE => ix1523_aOE, Y => data(15));
tribuf_34: TRIBUF
    PORT MAP (IN1 => n_318, OE => vcc, Y => vma);
tribuf_36: TRIBUF
    PORT MAP (IN1 => n_325, OE => vcc, Y => rw);
tribuf_38: TRIBUF
    PORT MAP (IN1 => n_332, OE => vcc, Y => addr(0));
tribuf_40: TRIBUF
    PORT MAP (IN1 => n_339, OE => vcc, Y => addr(1));
tribuf_42: TRIBUF
    PORT MAP (IN1 => n_346, OE => vcc, Y => addr(2));
tribuf_44: TRIBUF
    PORT MAP (IN1 => n_353, OE => vcc, Y => addr(3));
tribuf_46: TRIBUF
    PORT MAP (IN1 => n_360, OE => vcc, Y => addr(4));
tribuf_48: TRIBUF
    PORT MAP (IN1 => n_367, OE => vcc, Y => addr(5));
tribuf_50: TRIBUF
    PORT MAP (IN1 => n_374, OE => vcc, Y => addr(6));
tribuf_52: TRIBUF
    PORT MAP (IN1 => n_381, OE => vcc, Y => addr(7));
tribuf_54: TRIBUF
    PORT MAP (IN1 => n_388, OE => vcc, Y => addr(8));
tribuf_56: TRIBUF
    PORT MAP (IN1 => n_395, OE => vcc, Y => addr(9));
tribuf_58: TRIBUF
    PORT MAP (IN1 => n_402, OE => vcc, Y => addr(10));
tribuf_60: TRIBUF
    PORT MAP (IN1 => n_409, OE => vcc, Y => addr(11));
tribuf_62: TRIBUF
    PORT MAP (IN1 => n_416, OE => vcc, Y => addr(12));
tribuf_64: TRIBUF
    PORT MAP (IN1 => n_423, OE => vcc, Y => addr(13));
tribuf_66: TRIBUF
    PORT MAP (IN1 => n_430, OE => vcc, Y => addr(14));
tribuf_68: TRIBUF
    PORT MAP (IN1 => n_437, OE => vcc, Y => addr(15));
and1_69: AND1
    PORT MAP ( Y => ix1553_aOE, IN1 => n_174);
delay_70: DELAY
    PORT MAP ( Y => n_174, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_71: DELAY
    PORT MAP ( Y => n_176, IN1 => n_177);
xor2_72: XOR2
    PORT MAP ( Y => n_177, IN1 => n_178, IN2 => n_182);
or1_73: OR1
    PORT MAP ( Y => n_178, IN1 => n_179);
and1_74: AND1
    PORT MAP ( Y => n_179, IN1 => n_180);
inv_75: INV 
    PORT MAP ( Y => n_180, IN1 => O_dup_827_aOUT);
and1_76: AND1
    PORT MAP ( Y => n_182, IN1 => gnd);
and1_77: AND1
    PORT MAP ( Y => ix1551_aOE, IN1 => n_184);
delay_78: DELAY
    PORT MAP ( Y => n_184, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_79: DELAY
    PORT MAP ( Y => n_185, IN1 => n_186);
xor2_80: XOR2
    PORT MAP ( Y => n_186, IN1 => n_187, IN2 => n_191);
or1_81: OR1
    PORT MAP ( Y => n_187, IN1 => n_188);
and1_82: AND1
    PORT MAP ( Y => n_188, IN1 => n_189);
inv_83: INV 
    PORT MAP ( Y => n_189, IN1 => O_dup_820_aOUT);
and1_84: AND1
    PORT MAP ( Y => n_191, IN1 => gnd);
and1_85: AND1
    PORT MAP ( Y => ix1549_aOE, IN1 => n_193);
delay_86: DELAY
    PORT MAP ( Y => n_193, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_87: DELAY
    PORT MAP ( Y => n_194, IN1 => n_195);
xor2_88: XOR2
    PORT MAP ( Y => n_195, IN1 => n_196, IN2 => n_200);
or1_89: OR1
    PORT MAP ( Y => n_196, IN1 => n_197);
and1_90: AND1
    PORT MAP ( Y => n_197, IN1 => n_198);
inv_91: INV 
    PORT MAP ( Y => n_198, IN1 => O_dup_817_aOUT);
and1_92: AND1
    PORT MAP ( Y => n_200, IN1 => gnd);
and1_93: AND1
    PORT MAP ( Y => ix1547_aOE, IN1 => n_202);
delay_94: DELAY
    PORT MAP ( Y => n_202, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_95: DELAY
    PORT MAP ( Y => n_203, IN1 => n_204);
xor2_96: XOR2
    PORT MAP ( Y => n_204, IN1 => n_205, IN2 => n_209);
or1_97: OR1
    PORT MAP ( Y => n_205, IN1 => n_206);
and1_98: AND1
    PORT MAP ( Y => n_206, IN1 => n_207);
inv_99: INV 
    PORT MAP ( Y => n_207, IN1 => O_dup_814_aOUT);
and1_100: AND1
    PORT MAP ( Y => n_209, IN1 => gnd);
and1_101: AND1
    PORT MAP ( Y => ix1545_aOE, IN1 => n_211);
delay_102: DELAY
    PORT MAP ( Y => n_211, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_103: DELAY
    PORT MAP ( Y => n_212, IN1 => n_213);
xor2_104: XOR2
    PORT MAP ( Y => n_213, IN1 => n_214, IN2 => n_218);
or1_105: OR1
    PORT MAP ( Y => n_214, IN1 => n_215);
and1_106: AND1
    PORT MAP ( Y => n_215, IN1 => n_216);
inv_107: INV 
    PORT MAP ( Y => n_216, IN1 => O_dup_811_aOUT);
and1_108: AND1
    PORT MAP ( Y => n_218, IN1 => gnd);
and1_109: AND1
    PORT MAP ( Y => ix1543_aOE, IN1 => n_220);
delay_110: DELAY
    PORT MAP ( Y => n_220, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_111: DELAY
    PORT MAP ( Y => n_221, IN1 => n_222);
xor2_112: XOR2
    PORT MAP ( Y => n_222, IN1 => n_223, IN2 => n_227);
or1_113: OR1
    PORT MAP ( Y => n_223, IN1 => n_224);
and1_114: AND1
    PORT MAP ( Y => n_224, IN1 => n_225);
inv_115: INV 
    PORT MAP ( Y => n_225, IN1 => O_dup_808_aOUT);
and1_116: AND1
    PORT MAP ( Y => n_227, IN1 => gnd);
and1_117: AND1
    PORT MAP ( Y => ix1541_aOE, IN1 => n_229);
delay_118: DELAY
    PORT MAP ( Y => n_229, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_119: DELAY
    PORT MAP ( Y => n_230, IN1 => n_231);
xor2_120: XOR2
    PORT MAP ( Y => n_231, IN1 => n_232, IN2 => n_236);
or1_121: OR1
    PORT MAP ( Y => n_232, IN1 => n_233);
and1_122: AND1
    PORT MAP ( Y => n_233, IN1 => n_234);
inv_123: INV 
    PORT MAP ( Y => n_234, IN1 => O_dup_805_aOUT);
and1_124: AND1
    PORT MAP ( Y => n_236, IN1 => gnd);
and1_125: AND1
    PORT MAP ( Y => ix1539_aOE, IN1 => n_238);
delay_126: DELAY
    PORT MAP ( Y => n_238, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_127: DELAY
    PORT MAP ( Y => n_239, IN1 => n_240);
xor2_128: XOR2
    PORT MAP ( Y => n_240, IN1 => n_241, IN2 => n_245);
or1_129: OR1
    PORT MAP ( Y => n_241, IN1 => n_242);
and1_130: AND1
    PORT MAP ( Y => n_242, IN1 => n_243);
inv_131: INV 
    PORT MAP ( Y => n_243, IN1 => O_dup_802_aOUT);
and1_132: AND1
    PORT MAP ( Y => n_245, IN1 => gnd);
and1_133: AND1
    PORT MAP ( Y => ix1537_aOE, IN1 => n_247);
delay_134: DELAY
    PORT MAP ( Y => n_247, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_135: DELAY
    PORT MAP ( Y => n_248, IN1 => n_249);
xor2_136: XOR2
    PORT MAP ( Y => n_249, IN1 => n_250, IN2 => n_254);
or1_137: OR1
    PORT MAP ( Y => n_250, IN1 => n_251);
and1_138: AND1
    PORT MAP ( Y => n_251, IN1 => n_252);
inv_139: INV 
    PORT MAP ( Y => n_252, IN1 => O_dup_799_aOUT);
and1_140: AND1
    PORT MAP ( Y => n_254, IN1 => gnd);
and1_141: AND1
    PORT MAP ( Y => ix1535_aOE, IN1 => n_256);
delay_142: DELAY
    PORT MAP ( Y => n_256, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_143: DELAY
    PORT MAP ( Y => n_257, IN1 => n_258);
xor2_144: XOR2
    PORT MAP ( Y => n_258, IN1 => n_259, IN2 => n_263);
or1_145: OR1
    PORT MAP ( Y => n_259, IN1 => n_260);
and1_146: AND1
    PORT MAP ( Y => n_260, IN1 => n_261);
inv_147: INV 
    PORT MAP ( Y => n_261, IN1 => O_dup_796_aOUT);
and1_148: AND1
    PORT MAP ( Y => n_263, IN1 => gnd);
and1_149: AND1
    PORT MAP ( Y => ix1533_aOE, IN1 => n_265);
delay_150: DELAY
    PORT MAP ( Y => n_265, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_151: DELAY
    PORT MAP ( Y => n_266, IN1 => n_267);
xor2_152: XOR2
    PORT MAP ( Y => n_267, IN1 => n_268, IN2 => n_272);
or1_153: OR1
    PORT MAP ( Y => n_268, IN1 => n_269);
and1_154: AND1
    PORT MAP ( Y => n_269, IN1 => n_270);
inv_155: INV 
    PORT MAP ( Y => n_270, IN1 => O_dup_793_aOUT);
and1_156: AND1
    PORT MAP ( Y => n_272, IN1 => gnd);
and1_157: AND1
    PORT MAP ( Y => ix1531_aOE, IN1 => n_274);
delay_158: DELAY
    PORT MAP ( Y => n_274, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_159: DELAY
    PORT MAP ( Y => n_275, IN1 => n_276);
xor2_160: XOR2
    PORT MAP ( Y => n_276, IN1 => n_277, IN2 => n_281);
or1_161: OR1
    PORT MAP ( Y => n_277, IN1 => n_278);
and1_162: AND1
    PORT MAP ( Y => n_278, IN1 => n_279);
inv_163: INV 
    PORT MAP ( Y => n_279, IN1 => O_dup_790_aOUT);
and1_164: AND1
    PORT MAP ( Y => n_281, IN1 => gnd);
and1_165: AND1
    PORT MAP ( Y => ix1529_aOE, IN1 => n_283);
delay_166: DELAY
    PORT MAP ( Y => n_283, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_167: DELAY
    PORT MAP ( Y => n_284, IN1 => n_285);
xor2_168: XOR2
    PORT MAP ( Y => n_285, IN1 => n_286, IN2 => n_290);
or1_169: OR1
    PORT MAP ( Y => n_286, IN1 => n_287);
and1_170: AND1
    PORT MAP ( Y => n_287, IN1 => n_288);
inv_171: INV 
    PORT MAP ( Y => n_288, IN1 => O_dup_787_aOUT);
and1_172: AND1
    PORT MAP ( Y => n_290, IN1 => gnd);
and1_173: AND1
    PORT MAP ( Y => ix1527_aOE, IN1 => n_292);
delay_174: DELAY
    PORT MAP ( Y => n_292, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_175: DELAY
    PORT MAP ( Y => n_293, IN1 => n_294);
xor2_176: XOR2
    PORT MAP ( Y => n_294, IN1 => n_295, IN2 => n_299);
or1_177: OR1
    PORT MAP ( Y => n_295, IN1 => n_296);
and1_178: AND1
    PORT MAP ( Y => n_296, IN1 => n_297);
inv_179: INV 
    PORT MAP ( Y => n_297, IN1 => O_dup_784_aOUT);
and1_180: AND1
    PORT MAP ( Y => n_299, IN1 => gnd);
and1_181: AND1
    PORT MAP ( Y => ix1525_aOE, IN1 => n_301);
delay_182: DELAY
    PORT MAP ( Y => n_301, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_183: DELAY
    PORT MAP ( Y => n_302, IN1 => n_303);
xor2_184: XOR2
    PORT MAP ( Y => n_303, IN1 => n_304, IN2 => n_308);
or1_185: OR1
    PORT MAP ( Y => n_304, IN1 => n_305);
and1_186: AND1
    PORT MAP ( Y => n_305, IN1 => n_306);
inv_187: INV 
    PORT MAP ( Y => n_306, IN1 => O_dup_781_aOUT);
and1_188: AND1
    PORT MAP ( Y => n_308, IN1 => gnd);
and1_189: AND1
    PORT MAP ( Y => ix1523_aOE, IN1 => n_310);
delay_190: DELAY
    PORT MAP ( Y => n_310, IN1 => a_as_or3_aix1786_a_a32_aOUT);
delay_191: DELAY
    PORT MAP ( Y => n_311, IN1 => n_312);
xor2_192: XOR2
    PORT MAP ( Y => n_312, IN1 => n_313, IN2 => n_317);
or1_193: OR1
    PORT MAP ( Y => n_313, IN1 => n_314);
and1_194: AND1
    PORT MAP ( Y => n_314, IN1 => n_315);
inv_195: INV 
    PORT MAP ( Y => n_315, IN1 => O_dup_778_aOUT);
and1_196: AND1
    PORT MAP ( Y => n_317, IN1 => gnd);
delay_197: DELAY
    PORT MAP ( Y => n_318, IN1 => n_319);
xor2_198: XOR2
    PORT MAP ( Y => n_319, IN1 => n_320, IN2 => n_324);
or1_199: OR1
    PORT MAP ( Y => n_320, IN1 => n_321);
and1_200: AND1
    PORT MAP ( Y => n_321, IN1 => n_322);
inv_201: INV 
    PORT MAP ( Y => n_322, IN1 => O_aOUT);
and1_202: AND1
    PORT MAP ( Y => n_324, IN1 => gnd);
delay_203: DELAY
    PORT MAP ( Y => n_325, IN1 => n_326);
xor2_204: XOR2
    PORT MAP ( Y => n_326, IN1 => n_327, IN2 => n_331);
or1_205: OR1
    PORT MAP ( Y => n_327, IN1 => n_328);
and1_206: AND1
    PORT MAP ( Y => n_328, IN1 => n_329);
delay_207: DELAY
    PORT MAP ( Y => n_329, IN1 => rw_dup0_Q);
and1_208: AND1
    PORT MAP ( Y => n_331, IN1 => gnd);
delay_209: DELAY
    PORT MAP ( Y => n_332, IN1 => n_333);
xor2_210: XOR2
    PORT MAP ( Y => n_333, IN1 => n_334, IN2 => n_338);
or1_211: OR1
    PORT MAP ( Y => n_334, IN1 => n_335);
and1_212: AND1
    PORT MAP ( Y => n_335, IN1 => n_336);
delay_213: DELAY
    PORT MAP ( Y => n_336, IN1 => addr_dup00_Q);
and1_214: AND1
    PORT MAP ( Y => n_338, IN1 => gnd);
delay_215: DELAY
    PORT MAP ( Y => n_339, IN1 => n_340);
xor2_216: XOR2
    PORT MAP ( Y => n_340, IN1 => n_341, IN2 => n_345);
or1_217: OR1
    PORT MAP ( Y => n_341, IN1 => n_342);
and1_218: AND1
    PORT MAP ( Y => n_342, IN1 => n_343);
delay_219: DELAY
    PORT MAP ( Y => n_343, IN1 => addr_dup01_Q);
and1_220: AND1
    PORT MAP ( Y => n_345, IN1 => gnd);
delay_221: DELAY
    PORT MAP ( Y => n_346, IN1 => n_347);
xor2_222: XOR2
    PORT MAP ( Y => n_347, IN1 => n_348, IN2 => n_352);
or1_223: OR1
    PORT MAP ( Y => n_348, IN1 => n_349);
and1_224: AND1
    PORT MAP ( Y => n_349, IN1 => n_350);
delay_225: DELAY
    PORT MAP ( Y => n_350, IN1 => addr_dup02_Q);
and1_226: AND1
    PORT MAP ( Y => n_352, IN1 => gnd);
delay_227: DELAY
    PORT MAP ( Y => n_353, IN1 => n_354);
xor2_228: XOR2
    PORT MAP ( Y => n_354, IN1 => n_355, IN2 => n_359);
or1_229: OR1
    PORT MAP ( Y => n_355, IN1 => n_356);
and1_230: AND1
    PORT MAP ( Y => n_356, IN1 => n_357);
delay_231: DELAY
    PORT MAP ( Y => n_357, IN1 => addr_dup03_Q);
and1_232: AND1
    PORT MAP ( Y => n_359, IN1 => gnd);
delay_233: DELAY
    PORT MAP ( Y => n_360, IN1 => n_361);
xor2_234: XOR2
    PORT MAP ( Y => n_361, IN1 => n_362, IN2 => n_366);
or1_235: OR1
    PORT MAP ( Y => n_362, IN1 => n_363);
and1_236: AND1
    PORT MAP ( Y => n_363, IN1 => n_364);
delay_237: DELAY
    PORT MAP ( Y => n_364, IN1 => addr_dup04_Q);
and1_238: AND1
    PORT MAP ( Y => n_366, IN1 => gnd);
delay_239: DELAY
    PORT MAP ( Y => n_367, IN1 => n_368);
xor2_240: XOR2
    PORT MAP ( Y => n_368, IN1 => n_369, IN2 => n_373);
or1_241: OR1
    PORT MAP ( Y => n_369, IN1 => n_370);
and1_242: AND1
    PORT MAP ( Y => n_370, IN1 => n_371);
delay_243: DELAY
    PORT MAP ( Y => n_371, IN1 => addr_dup05_Q);
and1_244: AND1
    PORT MAP ( Y => n_373, IN1 => gnd);
delay_245: DELAY
    PORT MAP ( Y => n_374, IN1 => n_375);
xor2_246: XOR2
    PORT MAP ( Y => n_375, IN1 => n_376, IN2 => n_380);
or1_247: OR1
    PORT MAP ( Y => n_376, IN1 => n_377);
and1_248: AND1
    PORT MAP ( Y => n_377, IN1 => n_378);
delay_249: DELAY
    PORT MAP ( Y => n_378, IN1 => addr_dup06_Q);
and1_250: AND1
    PORT MAP ( Y => n_380, IN1 => gnd);
delay_251: DELAY
    PORT MAP ( Y => n_381, IN1 => n_382);
xor2_252: XOR2
    PORT MAP ( Y => n_382, IN1 => n_383, IN2 => n_387);
or1_253: OR1
    PORT MAP ( Y => n_383, IN1 => n_384);
and1_254: AND1
    PORT MAP ( Y => n_384, IN1 => n_385);
delay_255: DELAY
    PORT MAP ( Y => n_385, IN1 => addr_dup07_Q);
and1_256: AND1
    PORT MAP ( Y => n_387, IN1 => gnd);
delay_257: DELAY
    PORT MAP ( Y => n_388, IN1 => n_389);
xor2_258: XOR2
    PORT MAP ( Y => n_389, IN1 => n_390, IN2 => n_394);
or1_259: OR1
    PORT MAP ( Y => n_390, IN1 => n_391);
and1_260: AND1
    PORT MAP ( Y => n_391, IN1 => n_392);
delay_261: DELAY
    PORT MAP ( Y => n_392, IN1 => addr_dup08_Q);
and1_262: AND1
    PORT MAP ( Y => n_394, IN1 => gnd);
delay_263: DELAY
    PORT MAP ( Y => n_395, IN1 => n_396);
xor2_264: XOR2
    PORT MAP ( Y => n_396, IN1 => n_397, IN2 => n_401);
or1_265: OR1
    PORT MAP ( Y => n_397, IN1 => n_398);
and1_266: AND1
    PORT MAP ( Y => n_398, IN1 => n_399);
delay_267: DELAY
    PORT MAP ( Y => n_399, IN1 => addr_dup09_Q);
and1_268: AND1
    PORT MAP ( Y => n_401, IN1 => gnd);
delay_269: DELAY
    PORT MAP ( Y => n_402, IN1 => n_403);
xor2_270: XOR2
    PORT MAP ( Y => n_403, IN1 => n_404, IN2 => n_408);
or1_271: OR1
    PORT MAP ( Y => n_404, IN1 => n_405);
and1_272: AND1
    PORT MAP ( Y => n_405, IN1 => n_406);
delay_273: DELAY
    PORT MAP ( Y => n_406, IN1 => addr_dup010_Q);
and1_274: AND1
    PORT MAP ( Y => n_408, IN1 => gnd);
delay_275: DELAY
    PORT MAP ( Y => n_409, IN1 => n_410);
xor2_276: XOR2
    PORT MAP ( Y => n_410, IN1 => n_411, IN2 => n_415);
or1_277: OR1
    PORT MAP ( Y => n_411, IN1 => n_412);
and1_278: AND1
    PORT MAP ( Y => n_412, IN1 => n_413);
delay_279: DELAY
    PORT MAP ( Y => n_413, IN1 => addr_dup011_Q);
and1_280: AND1
    PORT MAP ( Y => n_415, IN1 => gnd);
delay_281: DELAY
    PORT MAP ( Y => n_416, IN1 => n_417);
xor2_282: XOR2
    PORT MAP ( Y => n_417, IN1 => n_418, IN2 => n_422);
or1_283: OR1
    PORT MAP ( Y => n_418, IN1 => n_419);
and1_284: AND1
    PORT MAP ( Y => n_419, IN1 => n_420);
delay_285: DELAY
    PORT MAP ( Y => n_420, IN1 => addr_dup012_Q);
and1_286: AND1
    PORT MAP ( Y => n_422, IN1 => gnd);
delay_287: DELAY
    PORT MAP ( Y => n_423, IN1 => n_424);
xor2_288: XOR2
    PORT MAP ( Y => n_424, IN1 => n_425, IN2 => n_429);
or1_289: OR1
    PORT MAP ( Y => n_425, IN1 => n_426);
and1_290: AND1
    PORT MAP ( Y => n_426, IN1 => n_427);
delay_291: DELAY
    PORT MAP ( Y => n_427, IN1 => addr_dup013_Q);
and1_292: AND1
    PORT MAP ( Y => n_429, IN1 => gnd);
delay_293: DELAY
    PORT MAP ( Y => n_430, IN1 => n_431);
xor2_294: XOR2
    PORT MAP ( Y => n_431, IN1 => n_432, IN2 => n_436);
or1_295: OR1
    PORT MAP ( Y => n_432, IN1 => n_433);
and1_296: AND1
    PORT MAP ( Y => n_433, IN1 => n_434);
delay_297: DELAY
    PORT MAP ( Y => n_434, IN1 => addr_dup014_Q);
and1_298: AND1
    PORT MAP ( Y => n_436, IN1 => gnd);
delay_299: DELAY
    PORT MAP ( Y => n_437, IN1 => n_438);
xor2_300: XOR2
    PORT MAP ( Y => n_438, IN1 => n_439, IN2 => n_443);
or1_301: OR1
    PORT MAP ( Y => n_439, IN1 => n_440);
and1_302: AND1
    PORT MAP ( Y => n_440, IN1 => n_441);
delay_303: DELAY
    PORT MAP ( Y => n_441, IN1 => addr_dup015_Q);
and1_304: AND1
    PORT MAP ( Y => n_443, IN1 => gnd);
delay_305: DELAY
    PORT MAP ( Y => O_dup_876_aOUT, IN1 => O_dup_876_aIN);
xor2_306: XOR2
    PORT MAP ( Y => O_dup_876_aIN, IN1 => n_446, IN2 => n_452);
or1_307: OR1
    PORT MAP ( Y => n_446, IN1 => n_447);
and2_308: AND2
    PORT MAP ( Y => n_447, IN1 => n_448, IN2 => n_450);
delay_309: DELAY
    PORT MAP ( Y => n_448, IN1 => I2_dup_823_aOUT);
delay_310: DELAY
    PORT MAP ( Y => n_450, IN1 => ix484_nx43_aOUT);
and1_311: AND1
    PORT MAP ( Y => n_452, IN1 => gnd);
delay_312: DELAY
    PORT MAP ( Y => ix484_nx40_aOUT, IN1 => ix484_nx40_aIN);
xor2_313: XOR2
    PORT MAP ( Y => ix484_nx40_aIN, IN1 => n_455, IN2 => n_463);
or1_314: OR1
    PORT MAP ( Y => n_455, IN1 => n_456);
and3_315: AND3
    PORT MAP ( Y => n_456, IN1 => n_457, IN2 => n_459, IN3 => n_461);
inv_316: INV 
    PORT MAP ( Y => n_457, IN1 => I1_dup_755_aOUT);
delay_317: DELAY
    PORT MAP ( Y => n_459, IN1 => regsel0_aOUT);
delay_318: DELAY
    PORT MAP ( Y => n_461, IN1 => I2_dup_756_aOUT);
and1_319: AND1
    PORT MAP ( Y => n_463, IN1 => gnd);
delay_320: DELAY
    PORT MAP ( Y => O_dup_885_aOUT, IN1 => O_dup_885_aIN);
xor2_321: XOR2
    PORT MAP ( Y => O_dup_885_aIN, IN1 => n_466, IN2 => n_470);
or1_322: OR1
    PORT MAP ( Y => n_466, IN1 => n_467);
and2_323: AND2
    PORT MAP ( Y => n_467, IN1 => n_468, IN2 => n_469);
delay_324: DELAY
    PORT MAP ( Y => n_468, IN1 => I2_dup_823_aOUT);
delay_325: DELAY
    PORT MAP ( Y => n_469, IN1 => ix484_nx40_aOUT);
and1_326: AND1
    PORT MAP ( Y => n_470, IN1 => gnd);
delay_327: DELAY
    PORT MAP ( Y => I1_dup_767_aOUT, IN1 => I1_dup_767_aIN);
xor2_328: XOR2
    PORT MAP ( Y => I1_dup_767_aIN, IN1 => n_473, IN2 => n_478);
or1_329: OR1
    PORT MAP ( Y => n_473, IN1 => n_474);
and2_330: AND2
    PORT MAP ( Y => n_474, IN1 => n_475, IN2 => n_477);
inv_331: INV 
    PORT MAP ( Y => n_475, IN1 => O_dup_1034_aOUT);
delay_332: DELAY
    PORT MAP ( Y => n_477, IN1 => regsel0_aOUT);
and1_333: AND1
    PORT MAP ( Y => n_478, IN1 => gnd);
delay_334: DELAY
    PORT MAP ( Y => ix484_nx44_aOUT, IN1 => ix484_nx44_aIN);
xor2_335: XOR2
    PORT MAP ( Y => ix484_nx44_aIN, IN1 => n_481, IN2 => n_486);
or1_336: OR1
    PORT MAP ( Y => n_481, IN1 => n_482);
and2_337: AND2
    PORT MAP ( Y => n_482, IN1 => n_483, IN2 => n_485);
delay_338: DELAY
    PORT MAP ( Y => n_483, IN1 => I0_dup_770_aOUT);
delay_339: DELAY
    PORT MAP ( Y => n_485, IN1 => I1_dup_767_aOUT);
and1_340: AND1
    PORT MAP ( Y => n_486, IN1 => gnd);
delay_341: DELAY
    PORT MAP ( Y => O_dup_882_aOUT, IN1 => O_dup_882_aIN);
xor2_342: XOR2
    PORT MAP ( Y => O_dup_882_aIN, IN1 => n_489, IN2 => n_493);
or1_343: OR1
    PORT MAP ( Y => n_489, IN1 => n_490);
and2_344: AND2
    PORT MAP ( Y => n_490, IN1 => n_491, IN2 => n_492);
delay_345: DELAY
    PORT MAP ( Y => n_491, IN1 => I2_dup_823_aOUT);
delay_346: DELAY
    PORT MAP ( Y => n_492, IN1 => ix484_nx44_aOUT);
and1_347: AND1
    PORT MAP ( Y => n_493, IN1 => gnd);
delay_348: DELAY
    PORT MAP ( Y => ix484_nx39_aOUT, IN1 => ix484_nx39_aIN);
xor2_349: XOR2
    PORT MAP ( Y => ix484_nx39_aIN, IN1 => n_496, IN2 => n_501);
or1_350: OR1
    PORT MAP ( Y => n_496, IN1 => n_497);
and3_351: AND3
    PORT MAP ( Y => n_497, IN1 => n_498, IN2 => n_499, IN3 => n_500);
inv_352: INV 
    PORT MAP ( Y => n_498, IN1 => regsel0_aOUT);
delay_353: DELAY
    PORT MAP ( Y => n_499, IN1 => I1_dup_755_aOUT);
delay_354: DELAY
    PORT MAP ( Y => n_500, IN1 => I2_dup_756_aOUT);
and1_355: AND1
    PORT MAP ( Y => n_501, IN1 => gnd);
delay_356: DELAY
    PORT MAP ( Y => O_dup_891_aOUT, IN1 => O_dup_891_aIN);
xor2_357: XOR2
    PORT MAP ( Y => O_dup_891_aIN, IN1 => n_504, IN2 => n_508);
or1_358: OR1
    PORT MAP ( Y => n_504, IN1 => n_505);
and2_359: AND2
    PORT MAP ( Y => n_505, IN1 => n_506, IN2 => n_507);
delay_360: DELAY
    PORT MAP ( Y => n_506, IN1 => I2_dup_823_aOUT);
delay_361: DELAY
    PORT MAP ( Y => n_507, IN1 => ix484_nx39_aOUT);
and1_362: AND1
    PORT MAP ( Y => n_508, IN1 => gnd);
delay_363: DELAY
    PORT MAP ( Y => ix484_nx42_aOUT, IN1 => ix484_nx42_aIN);
xor2_364: XOR2
    PORT MAP ( Y => ix484_nx42_aIN, IN1 => n_511, IN2 => n_516);
or1_365: OR1
    PORT MAP ( Y => n_511, IN1 => n_512);
and2_366: AND2
    PORT MAP ( Y => n_512, IN1 => n_513, IN2 => n_515);
delay_367: DELAY
    PORT MAP ( Y => n_513, IN1 => I0_dup_766_aOUT);
delay_368: DELAY
    PORT MAP ( Y => n_515, IN1 => I1_dup_767_aOUT);
and1_369: AND1
    PORT MAP ( Y => n_516, IN1 => gnd);
delay_370: DELAY
    PORT MAP ( Y => O_dup_888_aOUT, IN1 => O_dup_888_aIN);
xor2_371: XOR2
    PORT MAP ( Y => O_dup_888_aIN, IN1 => n_519, IN2 => n_523);
or1_372: OR1
    PORT MAP ( Y => n_519, IN1 => n_520);
and2_373: AND2
    PORT MAP ( Y => n_520, IN1 => n_521, IN2 => n_522);
delay_374: DELAY
    PORT MAP ( Y => n_521, IN1 => I2_dup_823_aOUT);
delay_375: DELAY
    PORT MAP ( Y => n_522, IN1 => ix484_nx42_aOUT);
and1_376: AND1
    PORT MAP ( Y => n_523, IN1 => gnd);
delay_377: DELAY
    PORT MAP ( Y => I0_dup_1373_aOUT, IN1 => I0_dup_1373_aIN);
xor2_378: XOR2
    PORT MAP ( Y => I0_dup_1373_aIN, IN1 => n_526, IN2 => n_541);
or4_379: OR4
    PORT MAP ( Y => n_526, IN1 => n_527, IN2 => n_530, IN3 => n_534, IN4 => n_538);
and2_380: AND2
    PORT MAP ( Y => n_527, IN1 => n_528, IN2 => n_529);
inv_381: INV 
    PORT MAP ( Y => n_528, IN1 => O_dup_888_aOUT);
inv_382: INV 
    PORT MAP ( Y => n_529, IN1 => O_dup_891_aOUT);
and2_383: AND2
    PORT MAP ( Y => n_530, IN1 => n_531, IN2 => n_533);
inv_384: INV 
    PORT MAP ( Y => n_531, IN1 => ix484_a3_dup_619_Q);
inv_385: INV 
    PORT MAP ( Y => n_533, IN1 => O_dup_891_aOUT);
and2_386: AND2
    PORT MAP ( Y => n_534, IN1 => n_535, IN2 => n_537);
inv_387: INV 
    PORT MAP ( Y => n_535, IN1 => ix484_a6_dup_616_Q);
inv_388: INV 
    PORT MAP ( Y => n_537, IN1 => ix484_a3_dup_619_Q);
and2_389: AND2
    PORT MAP ( Y => n_538, IN1 => n_539, IN2 => n_540);
inv_390: INV 
    PORT MAP ( Y => n_539, IN1 => ix484_a6_dup_616_Q);
inv_391: INV 
    PORT MAP ( Y => n_540, IN1 => O_dup_888_aOUT);
and1_392: AND1
    PORT MAP ( Y => n_541, IN1 => gnd);
delay_393: DELAY
    PORT MAP ( Y => O_dup_1375_aOUT, IN1 => O_dup_1375_aIN);
and2_394: AND2
    PORT MAP ( Y => O_dup_1375_aIN, IN1 => n_544, IN2 => n_559);
or4_395: OR4
    PORT MAP ( Y => n_544, IN1 => n_545, IN2 => n_548, IN3 => n_552, IN4 => n_556);
and2_396: AND2
    PORT MAP ( Y => n_545, IN1 => n_546, IN2 => n_547);
inv_397: INV 
    PORT MAP ( Y => n_546, IN1 => O_dup_882_aOUT);
inv_398: INV 
    PORT MAP ( Y => n_547, IN1 => O_dup_885_aOUT);
and2_399: AND2
    PORT MAP ( Y => n_548, IN1 => n_549, IN2 => n_551);
inv_400: INV 
    PORT MAP ( Y => n_549, IN1 => ix484_a1_dup_621_Q);
inv_401: INV 
    PORT MAP ( Y => n_551, IN1 => O_dup_885_aOUT);
and2_402: AND2
    PORT MAP ( Y => n_552, IN1 => n_553, IN2 => n_555);
inv_403: INV 
    PORT MAP ( Y => n_553, IN1 => ix484_a5_dup_617_Q);
inv_404: INV 
    PORT MAP ( Y => n_555, IN1 => ix484_a1_dup_621_Q);
and2_405: AND2
    PORT MAP ( Y => n_556, IN1 => n_557, IN2 => n_558);
inv_406: INV 
    PORT MAP ( Y => n_557, IN1 => ix484_a5_dup_617_Q);
inv_407: INV 
    PORT MAP ( Y => n_558, IN1 => O_dup_882_aOUT);
delay_408: DELAY
    PORT MAP ( Y => n_559, IN1 => I0_dup_1373_aIN);
delay_409: DELAY
    PORT MAP ( Y => O_dup_1697_aOUT, IN1 => O_dup_1697_aIN);
and2_410: AND2
    PORT MAP ( Y => O_dup_1697_aIN, IN1 => n_562, IN2 => n_579);
or4_411: OR4
    PORT MAP ( Y => n_562, IN1 => n_563, IN2 => n_568, IN3 => n_573, IN4 => n_576);
and2_412: AND2
    PORT MAP ( Y => n_563, IN1 => n_564, IN2 => n_566);
inv_413: INV 
    PORT MAP ( Y => n_564, IN1 => outregrd_aOUT);
delay_414: DELAY
    PORT MAP ( Y => n_566, IN1 => n3_aOUT);
and2_415: AND2
    PORT MAP ( Y => n_568, IN1 => n_569, IN2 => n_571);
inv_416: INV 
    PORT MAP ( Y => n_569, IN1 => outreg_val4_Q);
inv_417: INV 
    PORT MAP ( Y => n_571, IN1 => progcntr_val4_Q);
and2_418: AND2
    PORT MAP ( Y => n_573, IN1 => n_574, IN2 => n_575);
inv_419: INV 
    PORT MAP ( Y => n_574, IN1 => progcntr_val4_Q);
inv_420: INV 
    PORT MAP ( Y => n_575, IN1 => outregrd_aOUT);
and2_421: AND2
    PORT MAP ( Y => n_576, IN1 => n_577, IN2 => n_578);
inv_422: INV 
    PORT MAP ( Y => n_577, IN1 => outreg_val4_Q);
delay_423: DELAY
    PORT MAP ( Y => n_578, IN1 => n3_aOUT);
delay_424: DELAY
    PORT MAP ( Y => n_579, IN1 => O_dup_1375_aIN);
delay_425: DELAY
    PORT MAP ( Y => I1_dup_810_aOUT, IN1 => I1_dup_810_aIN);
and2_426: AND2
    PORT MAP ( Y => I1_dup_810_aIN, IN1 => n_582, IN2 => n_598);
or4_427: OR4
    PORT MAP ( Y => n_582, IN1 => n_583, IN2 => n_587, IN3 => n_591, IN4 => n_595);
and2_428: AND2
    PORT MAP ( Y => n_583, IN1 => n_584, IN2 => n_585);
inv_429: INV 
    PORT MAP ( Y => n_584, IN1 => O_dup_876_aOUT);
inv_430: INV 
    PORT MAP ( Y => n_585, IN1 => O_dup_879_aOUT);
and2_431: AND2
    PORT MAP ( Y => n_587, IN1 => n_588, IN2 => n_590);
inv_432: INV 
    PORT MAP ( Y => n_588, IN1 => ix484_a2_dup_620_Q);
inv_433: INV 
    PORT MAP ( Y => n_590, IN1 => O_dup_879_aOUT);
and2_434: AND2
    PORT MAP ( Y => n_591, IN1 => n_592, IN2 => n_594);
inv_435: INV 
    PORT MAP ( Y => n_592, IN1 => ix484_a7_dup_615_Q);
inv_436: INV 
    PORT MAP ( Y => n_594, IN1 => ix484_a2_dup_620_Q);
and2_437: AND2
    PORT MAP ( Y => n_595, IN1 => n_596, IN2 => n_597);
inv_438: INV 
    PORT MAP ( Y => n_596, IN1 => ix484_a7_dup_615_Q);
inv_439: INV 
    PORT MAP ( Y => n_597, IN1 => O_dup_876_aOUT);
delay_440: DELAY
    PORT MAP ( Y => n_598, IN1 => O_dup_1697_aIN);
delay_441: DELAY
    PORT MAP ( Y => O_dup_811_aOUT, IN1 => O_dup_811_aIN1);
and2_442: AND2
    PORT MAP ( Y => O_dup_811_aIN1, IN1 => n_600, IN2 => n_617);
or4_443: OR4
    PORT MAP ( Y => n_600, IN1 => n_601, IN2 => n_606, IN3 => n_610, IN4 => n_614);
and2_444: AND2
    PORT MAP ( Y => n_601, IN1 => n_602, IN2 => n_604);
inv_445: INV 
    PORT MAP ( Y => n_602, IN1 => O_dup_870_aOUT);
inv_446: INV 
    PORT MAP ( Y => n_604, IN1 => O_dup_873_aOUT);
and2_447: AND2
    PORT MAP ( Y => n_606, IN1 => n_607, IN2 => n_609);
inv_448: INV 
    PORT MAP ( Y => n_607, IN1 => ix484_a4_dup_618_Q);
inv_449: INV 
    PORT MAP ( Y => n_609, IN1 => O_dup_873_aOUT);
and2_450: AND2
    PORT MAP ( Y => n_610, IN1 => n_611, IN2 => n_613);
inv_451: INV 
    PORT MAP ( Y => n_611, IN1 => ix484_a0_dup_622_Q);
inv_452: INV 
    PORT MAP ( Y => n_613, IN1 => ix484_a4_dup_618_Q);
and2_453: AND2
    PORT MAP ( Y => n_614, IN1 => n_615, IN2 => n_616);
inv_454: INV 
    PORT MAP ( Y => n_615, IN1 => ix484_a0_dup_622_Q);
inv_455: INV 
    PORT MAP ( Y => n_616, IN1 => O_dup_870_aOUT);
delay_456: DELAY
    PORT MAP ( Y => n_617, IN1 => I1_dup_810_aIN);
dff_457: DFF
    PORT MAP ( D => instrregout4_aD, CLK => instrregout4_aCLK, CLRN => vcc,
          PRN => vcc, Q => instrregout4_Q);
xor2_458: XOR2
    PORT MAP ( Y => instrregout4_aD, IN1 => n_624, IN2 => n_627);
or1_459: OR1
    PORT MAP ( Y => n_624, IN1 => n_625);
and1_460: AND1
    PORT MAP ( Y => n_625, IN1 => n_626);
delay_461: DELAY
    PORT MAP ( Y => n_626, IN1 => data(4));
and1_462: AND1
    PORT MAP ( Y => n_627, IN1 => gnd);
and1_463: AND1
    PORT MAP ( Y => n_628, IN1 => n_629);
delay_464: DELAY
    PORT MAP ( Y => n_629, IN1 => a_as_or3_aix1644_a_a32_aOUT);
delay_465: DELAY
    PORT MAP ( Y => instrregout4_aCLK, IN1 => n_628);
delay_466: DELAY
    PORT MAP ( Y => I0_dup_1401_aOUT, IN1 => I0_dup_1401_aIN);
xor2_467: XOR2
    PORT MAP ( Y => I0_dup_1401_aIN, IN1 => n_634, IN2 => n_649);
or4_468: OR4
    PORT MAP ( Y => n_634, IN1 => n_635, IN2 => n_638, IN3 => n_642, IN4 => n_646);
and2_469: AND2
    PORT MAP ( Y => n_635, IN1 => n_636, IN2 => n_637);
inv_470: INV 
    PORT MAP ( Y => n_636, IN1 => O_dup_888_aOUT);
inv_471: INV 
    PORT MAP ( Y => n_637, IN1 => O_dup_891_aOUT);
and2_472: AND2
    PORT MAP ( Y => n_638, IN1 => n_639, IN2 => n_641);
inv_473: INV 
    PORT MAP ( Y => n_639, IN1 => ix484_a3_dup_627_Q);
inv_474: INV 
    PORT MAP ( Y => n_641, IN1 => O_dup_891_aOUT);
and2_475: AND2
    PORT MAP ( Y => n_642, IN1 => n_643, IN2 => n_645);
inv_476: INV 
    PORT MAP ( Y => n_643, IN1 => ix484_a6_dup_624_Q);
inv_477: INV 
    PORT MAP ( Y => n_645, IN1 => ix484_a3_dup_627_Q);
and2_478: AND2
    PORT MAP ( Y => n_646, IN1 => n_647, IN2 => n_648);
inv_479: INV 
    PORT MAP ( Y => n_647, IN1 => ix484_a6_dup_624_Q);
inv_480: INV 
    PORT MAP ( Y => n_648, IN1 => O_dup_888_aOUT);
and1_481: AND1
    PORT MAP ( Y => n_649, IN1 => gnd);
delay_482: DELAY
    PORT MAP ( Y => O_dup_1403_aOUT, IN1 => O_dup_1403_aIN);
and2_483: AND2
    PORT MAP ( Y => O_dup_1403_aIN, IN1 => n_652, IN2 => n_667);
or4_484: OR4
    PORT MAP ( Y => n_652, IN1 => n_653, IN2 => n_656, IN3 => n_660, IN4 => n_664);
and2_485: AND2
    PORT MAP ( Y => n_653, IN1 => n_654, IN2 => n_655);
inv_486: INV 
    PORT MAP ( Y => n_654, IN1 => O_dup_882_aOUT);
inv_487: INV 
    PORT MAP ( Y => n_655, IN1 => O_dup_885_aOUT);
and2_488: AND2
    PORT MAP ( Y => n_656, IN1 => n_657, IN2 => n_659);
inv_489: INV 
    PORT MAP ( Y => n_657, IN1 => ix484_a1_dup_629_Q);
inv_490: INV 
    PORT MAP ( Y => n_659, IN1 => O_dup_885_aOUT);
and2_491: AND2
    PORT MAP ( Y => n_660, IN1 => n_661, IN2 => n_663);
inv_492: INV 
    PORT MAP ( Y => n_661, IN1 => ix484_a5_dup_625_Q);
inv_493: INV 
    PORT MAP ( Y => n_663, IN1 => ix484_a1_dup_629_Q);
and2_494: AND2
    PORT MAP ( Y => n_664, IN1 => n_665, IN2 => n_666);
inv_495: INV 
    PORT MAP ( Y => n_665, IN1 => ix484_a5_dup_625_Q);
inv_496: INV 
    PORT MAP ( Y => n_666, IN1 => O_dup_882_aOUT);
delay_497: DELAY
    PORT MAP ( Y => n_667, IN1 => I0_dup_1401_aIN);
delay_498: DELAY
    PORT MAP ( Y => O_dup_1705_aOUT, IN1 => O_dup_1705_aIN);
and2_499: AND2
    PORT MAP ( Y => O_dup_1705_aIN, IN1 => n_670, IN2 => n_685);
or4_500: OR4
    PORT MAP ( Y => n_670, IN1 => n_671, IN2 => n_674, IN3 => n_679, IN4 => n_682);
and2_501: AND2
    PORT MAP ( Y => n_671, IN1 => n_672, IN2 => n_673);
inv_502: INV 
    PORT MAP ( Y => n_672, IN1 => outregrd_aOUT);
delay_503: DELAY
    PORT MAP ( Y => n_673, IN1 => n3_aOUT);
and2_504: AND2
    PORT MAP ( Y => n_674, IN1 => n_675, IN2 => n_677);
inv_505: INV 
    PORT MAP ( Y => n_675, IN1 => outreg_val3_Q);
inv_506: INV 
    PORT MAP ( Y => n_677, IN1 => progcntr_val3_Q);
and2_507: AND2
    PORT MAP ( Y => n_679, IN1 => n_680, IN2 => n_681);
inv_508: INV 
    PORT MAP ( Y => n_680, IN1 => progcntr_val3_Q);
inv_509: INV 
    PORT MAP ( Y => n_681, IN1 => outregrd_aOUT);
and2_510: AND2
    PORT MAP ( Y => n_682, IN1 => n_683, IN2 => n_684);
inv_511: INV 
    PORT MAP ( Y => n_683, IN1 => outreg_val3_Q);
delay_512: DELAY
    PORT MAP ( Y => n_684, IN1 => n3_aOUT);
delay_513: DELAY
    PORT MAP ( Y => n_685, IN1 => O_dup_1403_aIN);
delay_514: DELAY
    PORT MAP ( Y => I1_dup_813_aOUT, IN1 => I1_dup_813_aIN);
and2_515: AND2
    PORT MAP ( Y => I1_dup_813_aIN, IN1 => n_688, IN2 => n_703);
or4_516: OR4
    PORT MAP ( Y => n_688, IN1 => n_689, IN2 => n_692, IN3 => n_696, IN4 => n_700);
and2_517: AND2
    PORT MAP ( Y => n_689, IN1 => n_690, IN2 => n_691);
inv_518: INV 
    PORT MAP ( Y => n_690, IN1 => O_dup_876_aOUT);
inv_519: INV 
    PORT MAP ( Y => n_691, IN1 => O_dup_879_aOUT);
and2_520: AND2
    PORT MAP ( Y => n_692, IN1 => n_693, IN2 => n_695);
inv_521: INV 
    PORT MAP ( Y => n_693, IN1 => ix484_a2_dup_628_Q);
inv_522: INV 
    PORT MAP ( Y => n_695, IN1 => O_dup_879_aOUT);
and2_523: AND2
    PORT MAP ( Y => n_696, IN1 => n_697, IN2 => n_699);
inv_524: INV 
    PORT MAP ( Y => n_697, IN1 => ix484_a7_dup_623_Q);
inv_525: INV 
    PORT MAP ( Y => n_699, IN1 => ix484_a2_dup_628_Q);
and2_526: AND2
    PORT MAP ( Y => n_700, IN1 => n_701, IN2 => n_702);
inv_527: INV 
    PORT MAP ( Y => n_701, IN1 => ix484_a7_dup_623_Q);
inv_528: INV 
    PORT MAP ( Y => n_702, IN1 => O_dup_876_aOUT);
delay_529: DELAY
    PORT MAP ( Y => n_703, IN1 => O_dup_1705_aIN);
delay_530: DELAY
    PORT MAP ( Y => O_dup_814_aOUT, IN1 => O_dup_814_aIN1);
and2_531: AND2
    PORT MAP ( Y => O_dup_814_aIN1, IN1 => n_705, IN2 => n_720);
or4_532: OR4
    PORT MAP ( Y => n_705, IN1 => n_706, IN2 => n_709, IN3 => n_713, IN4 => n_717);
and2_533: AND2
    PORT MAP ( Y => n_706, IN1 => n_707, IN2 => n_708);
inv_534: INV 
    PORT MAP ( Y => n_707, IN1 => O_dup_870_aOUT);
inv_535: INV 
    PORT MAP ( Y => n_708, IN1 => O_dup_873_aOUT);
and2_536: AND2
    PORT MAP ( Y => n_709, IN1 => n_710, IN2 => n_712);
inv_537: INV 
    PORT MAP ( Y => n_710, IN1 => ix484_a4_dup_626_Q);
inv_538: INV 
    PORT MAP ( Y => n_712, IN1 => O_dup_873_aOUT);
and2_539: AND2
    PORT MAP ( Y => n_713, IN1 => n_714, IN2 => n_716);
inv_540: INV 
    PORT MAP ( Y => n_714, IN1 => ix484_a0_dup_630_Q);
inv_541: INV 
    PORT MAP ( Y => n_716, IN1 => ix484_a4_dup_626_Q);
and2_542: AND2
    PORT MAP ( Y => n_717, IN1 => n_718, IN2 => n_719);
inv_543: INV 
    PORT MAP ( Y => n_718, IN1 => ix484_a0_dup_630_Q);
inv_544: INV 
    PORT MAP ( Y => n_719, IN1 => O_dup_870_aOUT);
delay_545: DELAY
    PORT MAP ( Y => n_720, IN1 => I1_dup_813_aIN);
dff_546: DFF
    PORT MAP ( D => instrregout3_aD, CLK => instrregout3_aCLK, CLRN => vcc,
          PRN => vcc, Q => instrregout3_Q);
xor2_547: XOR2
    PORT MAP ( Y => instrregout3_aD, IN1 => n_727, IN2 => n_730);
or1_548: OR1
    PORT MAP ( Y => n_727, IN1 => n_728);
and1_549: AND1
    PORT MAP ( Y => n_728, IN1 => n_729);
delay_550: DELAY
    PORT MAP ( Y => n_729, IN1 => data(3));
and1_551: AND1
    PORT MAP ( Y => n_730, IN1 => gnd);
and1_552: AND1
    PORT MAP ( Y => n_731, IN1 => n_732);
delay_553: DELAY
    PORT MAP ( Y => n_732, IN1 => a_as_or3_aix1644_a_a32_aOUT);
delay_554: DELAY
    PORT MAP ( Y => instrregout3_aCLK, IN1 => n_731);
delay_555: DELAY
    PORT MAP ( Y => I0_dup_1429_aOUT, IN1 => I0_dup_1429_aIN);
xor2_556: XOR2
    PORT MAP ( Y => I0_dup_1429_aIN, IN1 => n_736, IN2 => n_751);
or4_557: OR4
    PORT MAP ( Y => n_736, IN1 => n_737, IN2 => n_740, IN3 => n_744, IN4 => n_748);
and2_558: AND2
    PORT MAP ( Y => n_737, IN1 => n_738, IN2 => n_739);
inv_559: INV 
    PORT MAP ( Y => n_738, IN1 => O_dup_888_aOUT);
inv_560: INV 
    PORT MAP ( Y => n_739, IN1 => O_dup_891_aOUT);
and2_561: AND2
    PORT MAP ( Y => n_740, IN1 => n_741, IN2 => n_743);
inv_562: INV 
    PORT MAP ( Y => n_741, IN1 => ix484_a3_dup_635_Q);
inv_563: INV 
    PORT MAP ( Y => n_743, IN1 => O_dup_891_aOUT);
and2_564: AND2
    PORT MAP ( Y => n_744, IN1 => n_745, IN2 => n_747);
inv_565: INV 
    PORT MAP ( Y => n_745, IN1 => ix484_a6_dup_632_Q);
inv_566: INV 
    PORT MAP ( Y => n_747, IN1 => ix484_a3_dup_635_Q);
and2_567: AND2
    PORT MAP ( Y => n_748, IN1 => n_749, IN2 => n_750);
inv_568: INV 
    PORT MAP ( Y => n_749, IN1 => ix484_a6_dup_632_Q);
inv_569: INV 
    PORT MAP ( Y => n_750, IN1 => O_dup_888_aOUT);
and1_570: AND1
    PORT MAP ( Y => n_751, IN1 => gnd);
delay_571: DELAY
    PORT MAP ( Y => O_dup_1431_aOUT, IN1 => O_dup_1431_aIN);
and2_572: AND2
    PORT MAP ( Y => O_dup_1431_aIN, IN1 => n_754, IN2 => n_769);
or4_573: OR4
    PORT MAP ( Y => n_754, IN1 => n_755, IN2 => n_758, IN3 => n_762, IN4 => n_766);
and2_574: AND2
    PORT MAP ( Y => n_755, IN1 => n_756, IN2 => n_757);
inv_575: INV 
    PORT MAP ( Y => n_756, IN1 => O_dup_882_aOUT);
inv_576: INV 
    PORT MAP ( Y => n_757, IN1 => O_dup_885_aOUT);
and2_577: AND2
    PORT MAP ( Y => n_758, IN1 => n_759, IN2 => n_761);
inv_578: INV 
    PORT MAP ( Y => n_759, IN1 => ix484_a1_dup_637_Q);
inv_579: INV 
    PORT MAP ( Y => n_761, IN1 => O_dup_885_aOUT);
and2_580: AND2
    PORT MAP ( Y => n_762, IN1 => n_763, IN2 => n_765);
inv_581: INV 
    PORT MAP ( Y => n_763, IN1 => ix484_a5_dup_633_Q);
inv_582: INV 
    PORT MAP ( Y => n_765, IN1 => ix484_a1_dup_637_Q);
and2_583: AND2
    PORT MAP ( Y => n_766, IN1 => n_767, IN2 => n_768);
inv_584: INV 
    PORT MAP ( Y => n_767, IN1 => ix484_a5_dup_633_Q);
inv_585: INV 
    PORT MAP ( Y => n_768, IN1 => O_dup_882_aOUT);
delay_586: DELAY
    PORT MAP ( Y => n_769, IN1 => I0_dup_1429_aIN);
delay_587: DELAY
    PORT MAP ( Y => O_dup_1713_aOUT, IN1 => O_dup_1713_aIN);
and2_588: AND2
    PORT MAP ( Y => O_dup_1713_aIN, IN1 => n_772, IN2 => n_787);
or4_589: OR4
    PORT MAP ( Y => n_772, IN1 => n_773, IN2 => n_776, IN3 => n_781, IN4 => n_784);
and2_590: AND2
    PORT MAP ( Y => n_773, IN1 => n_774, IN2 => n_775);
inv_591: INV 
    PORT MAP ( Y => n_774, IN1 => outregrd_aOUT);
delay_592: DELAY
    PORT MAP ( Y => n_775, IN1 => n3_aOUT);
and2_593: AND2
    PORT MAP ( Y => n_776, IN1 => n_777, IN2 => n_779);
inv_594: INV 
    PORT MAP ( Y => n_777, IN1 => outreg_val2_Q);
inv_595: INV 
    PORT MAP ( Y => n_779, IN1 => progcntr_val2_Q);
and2_596: AND2
    PORT MAP ( Y => n_781, IN1 => n_782, IN2 => n_783);
inv_597: INV 
    PORT MAP ( Y => n_782, IN1 => progcntr_val2_Q);
inv_598: INV 
    PORT MAP ( Y => n_783, IN1 => outregrd_aOUT);
and2_599: AND2
    PORT MAP ( Y => n_784, IN1 => n_785, IN2 => n_786);
inv_600: INV 
    PORT MAP ( Y => n_785, IN1 => outreg_val2_Q);
delay_601: DELAY
    PORT MAP ( Y => n_786, IN1 => n3_aOUT);
delay_602: DELAY
    PORT MAP ( Y => n_787, IN1 => O_dup_1431_aIN);
delay_603: DELAY
    PORT MAP ( Y => I1_dup_816_aOUT, IN1 => I1_dup_816_aIN);
and2_604: AND2
    PORT MAP ( Y => I1_dup_816_aIN, IN1 => n_790, IN2 => n_805);
or4_605: OR4
    PORT MAP ( Y => n_790, IN1 => n_791, IN2 => n_794, IN3 => n_798, IN4 => n_802);
and2_606: AND2
    PORT MAP ( Y => n_791, IN1 => n_792, IN2 => n_793);
inv_607: INV 
    PORT MAP ( Y => n_792, IN1 => O_dup_876_aOUT);
inv_608: INV 
    PORT MAP ( Y => n_793, IN1 => O_dup_879_aOUT);
and2_609: AND2
    PORT MAP ( Y => n_794, IN1 => n_795, IN2 => n_797);
inv_610: INV 
    PORT MAP ( Y => n_795, IN1 => ix484_a2_dup_636_Q);
inv_611: INV 
    PORT MAP ( Y => n_797, IN1 => O_dup_879_aOUT);
and2_612: AND2
    PORT MAP ( Y => n_798, IN1 => n_799, IN2 => n_801);
inv_613: INV 
    PORT MAP ( Y => n_799, IN1 => ix484_a7_dup_631_Q);
inv_614: INV 
    PORT MAP ( Y => n_801, IN1 => ix484_a2_dup_636_Q);
and2_615: AND2
    PORT MAP ( Y => n_802, IN1 => n_803, IN2 => n_804);
inv_616: INV 
    PORT MAP ( Y => n_803, IN1 => ix484_a7_dup_631_Q);
inv_617: INV 
    PORT MAP ( Y => n_804, IN1 => O_dup_876_aOUT);
delay_618: DELAY
    PORT MAP ( Y => n_805, IN1 => O_dup_1713_aIN);
delay_619: DELAY
    PORT MAP ( Y => O_dup_817_aOUT, IN1 => O_dup_817_aIN1);
and2_620: AND2
    PORT MAP ( Y => O_dup_817_aIN1, IN1 => n_807, IN2 => n_822);
or4_621: OR4
    PORT MAP ( Y => n_807, IN1 => n_808, IN2 => n_811, IN3 => n_815, IN4 => n_819);
and2_622: AND2
    PORT MAP ( Y => n_808, IN1 => n_809, IN2 => n_810);
inv_623: INV 
    PORT MAP ( Y => n_809, IN1 => O_dup_870_aOUT);
inv_624: INV 
    PORT MAP ( Y => n_810, IN1 => O_dup_873_aOUT);
and2_625: AND2
    PORT MAP ( Y => n_811, IN1 => n_812, IN2 => n_814);
inv_626: INV 
    PORT MAP ( Y => n_812, IN1 => ix484_a4_dup_634_Q);
inv_627: INV 
    PORT MAP ( Y => n_814, IN1 => O_dup_873_aOUT);
and2_628: AND2
    PORT MAP ( Y => n_815, IN1 => n_816, IN2 => n_818);
inv_629: INV 
    PORT MAP ( Y => n_816, IN1 => ix484_a0_dup_638_Q);
inv_630: INV 
    PORT MAP ( Y => n_818, IN1 => ix484_a4_dup_634_Q);
and2_631: AND2
    PORT MAP ( Y => n_819, IN1 => n_820, IN2 => n_821);
inv_632: INV 
    PORT MAP ( Y => n_820, IN1 => ix484_a0_dup_638_Q);
inv_633: INV 
    PORT MAP ( Y => n_821, IN1 => O_dup_870_aOUT);
delay_634: DELAY
    PORT MAP ( Y => n_822, IN1 => I1_dup_816_aIN);
dff_635: DFF
    PORT MAP ( D => instrregout2_aD, CLK => instrregout2_aCLK, CLRN => vcc,
          PRN => vcc, Q => instrregout2_Q);
xor2_636: XOR2
    PORT MAP ( Y => instrregout2_aD, IN1 => n_829, IN2 => n_832);
or1_637: OR1
    PORT MAP ( Y => n_829, IN1 => n_830);
and1_638: AND1
    PORT MAP ( Y => n_830, IN1 => n_831);
delay_639: DELAY
    PORT MAP ( Y => n_831, IN1 => data(2));
and1_640: AND1
    PORT MAP ( Y => n_832, IN1 => gnd);
and1_641: AND1
    PORT MAP ( Y => n_833, IN1 => n_834);
delay_642: DELAY
    PORT MAP ( Y => n_834, IN1 => a_as_or3_aix1644_a_a32_aOUT);
delay_643: DELAY
    PORT MAP ( Y => instrregout2_aCLK, IN1 => n_833);
delay_644: DELAY
    PORT MAP ( Y => I0_dup_1345_aOUT, IN1 => I0_dup_1345_aIN);
xor2_645: XOR2
    PORT MAP ( Y => I0_dup_1345_aIN, IN1 => n_838, IN2 => n_853);
or4_646: OR4
    PORT MAP ( Y => n_838, IN1 => n_839, IN2 => n_842, IN3 => n_846, IN4 => n_850);
and2_647: AND2
    PORT MAP ( Y => n_839, IN1 => n_840, IN2 => n_841);
inv_648: INV 
    PORT MAP ( Y => n_840, IN1 => O_dup_888_aOUT);
inv_649: INV 
    PORT MAP ( Y => n_841, IN1 => O_dup_891_aOUT);
and2_650: AND2
    PORT MAP ( Y => n_842, IN1 => n_843, IN2 => n_845);
inv_651: INV 
    PORT MAP ( Y => n_843, IN1 => ix484_a3_dup_611_Q);
inv_652: INV 
    PORT MAP ( Y => n_845, IN1 => O_dup_891_aOUT);
and2_653: AND2
    PORT MAP ( Y => n_846, IN1 => n_847, IN2 => n_849);
inv_654: INV 
    PORT MAP ( Y => n_847, IN1 => ix484_a6_dup_608_Q);
inv_655: INV 
    PORT MAP ( Y => n_849, IN1 => ix484_a3_dup_611_Q);
and2_656: AND2
    PORT MAP ( Y => n_850, IN1 => n_851, IN2 => n_852);
inv_657: INV 
    PORT MAP ( Y => n_851, IN1 => ix484_a6_dup_608_Q);
inv_658: INV 
    PORT MAP ( Y => n_852, IN1 => O_dup_888_aOUT);
and1_659: AND1
    PORT MAP ( Y => n_853, IN1 => gnd);
delay_660: DELAY
    PORT MAP ( Y => O_dup_1347_aOUT, IN1 => O_dup_1347_aIN);
and2_661: AND2
    PORT MAP ( Y => O_dup_1347_aIN, IN1 => n_856, IN2 => n_871);
or4_662: OR4
    PORT MAP ( Y => n_856, IN1 => n_857, IN2 => n_860, IN3 => n_864, IN4 => n_868);
and2_663: AND2
    PORT MAP ( Y => n_857, IN1 => n_858, IN2 => n_859);
inv_664: INV 
    PORT MAP ( Y => n_858, IN1 => O_dup_882_aOUT);
inv_665: INV 
    PORT MAP ( Y => n_859, IN1 => O_dup_885_aOUT);
and2_666: AND2
    PORT MAP ( Y => n_860, IN1 => n_861, IN2 => n_863);
inv_667: INV 
    PORT MAP ( Y => n_861, IN1 => ix484_a1_dup_613_Q);
inv_668: INV 
    PORT MAP ( Y => n_863, IN1 => O_dup_885_aOUT);
and2_669: AND2
    PORT MAP ( Y => n_864, IN1 => n_865, IN2 => n_867);
inv_670: INV 
    PORT MAP ( Y => n_865, IN1 => ix484_a5_dup_609_Q);
inv_671: INV 
    PORT MAP ( Y => n_867, IN1 => ix484_a1_dup_613_Q);
and2_672: AND2
    PORT MAP ( Y => n_868, IN1 => n_869, IN2 => n_870);
inv_673: INV 
    PORT MAP ( Y => n_869, IN1 => ix484_a5_dup_609_Q);
inv_674: INV 
    PORT MAP ( Y => n_870, IN1 => O_dup_882_aOUT);
delay_675: DELAY
    PORT MAP ( Y => n_871, IN1 => I0_dup_1345_aIN);
delay_676: DELAY
    PORT MAP ( Y => O_dup_1689_aOUT, IN1 => O_dup_1689_aIN);
and2_677: AND2
    PORT MAP ( Y => O_dup_1689_aIN, IN1 => n_874, IN2 => n_889);
or4_678: OR4
    PORT MAP ( Y => n_874, IN1 => n_875, IN2 => n_878, IN3 => n_883, IN4 => n_886);
and2_679: AND2
    PORT MAP ( Y => n_875, IN1 => n_876, IN2 => n_877);
inv_680: INV 
    PORT MAP ( Y => n_876, IN1 => outregrd_aOUT);
delay_681: DELAY
    PORT MAP ( Y => n_877, IN1 => n3_aOUT);
and2_682: AND2
    PORT MAP ( Y => n_878, IN1 => n_879, IN2 => n_881);
inv_683: INV 
    PORT MAP ( Y => n_879, IN1 => outreg_val5_Q);
inv_684: INV 
    PORT MAP ( Y => n_881, IN1 => progcntr_val5_Q);
and2_685: AND2
    PORT MAP ( Y => n_883, IN1 => n_884, IN2 => n_885);
inv_686: INV 
    PORT MAP ( Y => n_884, IN1 => progcntr_val5_Q);
inv_687: INV 
    PORT MAP ( Y => n_885, IN1 => outregrd_aOUT);
and2_688: AND2
    PORT MAP ( Y => n_886, IN1 => n_887, IN2 => n_888);
inv_689: INV 
    PORT MAP ( Y => n_887, IN1 => outreg_val5_Q);
delay_690: DELAY
    PORT MAP ( Y => n_888, IN1 => n3_aOUT);
delay_691: DELAY
    PORT MAP ( Y => n_889, IN1 => O_dup_1347_aIN);
delay_692: DELAY
    PORT MAP ( Y => I1_dup_807_aOUT, IN1 => I1_dup_807_aIN);
and2_693: AND2
    PORT MAP ( Y => I1_dup_807_aIN, IN1 => n_892, IN2 => n_907);
or4_694: OR4
    PORT MAP ( Y => n_892, IN1 => n_893, IN2 => n_896, IN3 => n_900, IN4 => n_904);
and2_695: AND2
    PORT MAP ( Y => n_893, IN1 => n_894, IN2 => n_895);
inv_696: INV 
    PORT MAP ( Y => n_894, IN1 => O_dup_876_aOUT);
inv_697: INV 
    PORT MAP ( Y => n_895, IN1 => O_dup_879_aOUT);
and2_698: AND2
    PORT MAP ( Y => n_896, IN1 => n_897, IN2 => n_899);
inv_699: INV 
    PORT MAP ( Y => n_897, IN1 => ix484_a2_dup_612_Q);
inv_700: INV 
    PORT MAP ( Y => n_899, IN1 => O_dup_879_aOUT);
and2_701: AND2
    PORT MAP ( Y => n_900, IN1 => n_901, IN2 => n_903);
inv_702: INV 
    PORT MAP ( Y => n_901, IN1 => ix484_a7_dup_607_Q);
inv_703: INV 
    PORT MAP ( Y => n_903, IN1 => ix484_a2_dup_612_Q);
and2_704: AND2
    PORT MAP ( Y => n_904, IN1 => n_905, IN2 => n_906);
inv_705: INV 
    PORT MAP ( Y => n_905, IN1 => ix484_a7_dup_607_Q);
inv_706: INV 
    PORT MAP ( Y => n_906, IN1 => O_dup_876_aOUT);
delay_707: DELAY
    PORT MAP ( Y => n_907, IN1 => O_dup_1689_aIN);
delay_708: DELAY
    PORT MAP ( Y => O_dup_808_aOUT, IN1 => O_dup_808_aIN1);
and2_709: AND2
    PORT MAP ( Y => O_dup_808_aIN1, IN1 => n_909, IN2 => n_924);
or4_710: OR4
    PORT MAP ( Y => n_909, IN1 => n_910, IN2 => n_913, IN3 => n_917, IN4 => n_921);
and2_711: AND2
    PORT MAP ( Y => n_910, IN1 => n_911, IN2 => n_912);
inv_712: INV 
    PORT MAP ( Y => n_911, IN1 => O_dup_870_aOUT);
inv_713: INV 
    PORT MAP ( Y => n_912, IN1 => O_dup_873_aOUT);
and2_714: AND2
    PORT MAP ( Y => n_913, IN1 => n_914, IN2 => n_916);
inv_715: INV 
    PORT MAP ( Y => n_914, IN1 => ix484_a4_dup_610_Q);
inv_716: INV 
    PORT MAP ( Y => n_916, IN1 => O_dup_873_aOUT);
and2_717: AND2
    PORT MAP ( Y => n_917, IN1 => n_918, IN2 => n_920);
inv_718: INV 
    PORT MAP ( Y => n_918, IN1 => ix484_a0_dup_614_Q);
inv_719: INV 
    PORT MAP ( Y => n_920, IN1 => ix484_a4_dup_610_Q);
and2_720: AND2
    PORT MAP ( Y => n_921, IN1 => n_922, IN2 => n_923);
inv_721: INV 
    PORT MAP ( Y => n_922, IN1 => ix484_a0_dup_614_Q);
inv_722: INV 
    PORT MAP ( Y => n_923, IN1 => O_dup_870_aOUT);
delay_723: DELAY
    PORT MAP ( Y => n_924, IN1 => I1_dup_807_aIN);
dff_724: DFF
    PORT MAP ( D => instrregout5_aD, CLK => instrregout5_aCLK, CLRN => vcc,
          PRN => vcc, Q => instrregout5_Q);
xor2_725: XOR2
    PORT MAP ( Y => instrregout5_aD, IN1 => n_931, IN2 => n_934);
or1_726: OR1
    PORT MAP ( Y => n_931, IN1 => n_932);
and1_727: AND1
    PORT MAP ( Y => n_932, IN1 => n_933);
delay_728: DELAY
    PORT MAP ( Y => n_933, IN1 => data(5));
and1_729: AND1
    PORT MAP ( Y => n_934, IN1 => gnd);
and1_730: AND1
    PORT MAP ( Y => n_935, IN1 => n_936);
delay_731: DELAY
    PORT MAP ( Y => n_936, IN1 => a_as_or3_aix1644_a_a32_aOUT);
delay_732: DELAY
    PORT MAP ( Y => instrregout5_aCLK, IN1 => n_935);
dff_733: DFF
    PORT MAP ( D => con1_current_state31_aD, CLK => con1_current_state31_aCLK,
          CLRN => con1_current_state31_aCLRN, PRN => vcc, Q => con1_current_state31_Q);
inv_734: INV 
    PORT MAP ( Y => con1_current_state31_aCLRN, IN1 => reset);
xor2_735: XOR2
    PORT MAP ( Y => con1_current_state31_aD, IN1 => n_946, IN2 => n_950);
or1_736: OR1
    PORT MAP ( Y => n_946, IN1 => n_947);
and1_737: AND1
    PORT MAP ( Y => n_947, IN1 => n_948);
delay_738: DELAY
    PORT MAP ( Y => n_948, IN1 => opregwr_Q);
and1_739: AND1
    PORT MAP ( Y => n_950, IN1 => gnd);
delay_740: DELAY
    PORT MAP ( Y => con1_current_state31_aCLK, IN1 => clock);
dff_741: DFF
    PORT MAP ( D => con1_current_state32_aD, CLK => con1_current_state32_aCLK,
          CLRN => con1_current_state32_aCLRN, PRN => vcc, Q => con1_current_state32_Q);
inv_742: INV 
    PORT MAP ( Y => con1_current_state32_aCLRN, IN1 => reset);
xor2_743: XOR2
    PORT MAP ( Y => con1_current_state32_aD, IN1 => n_960, IN2 => n_963);
or1_744: OR1
    PORT MAP ( Y => n_960, IN1 => n_961);
and1_745: AND1
    PORT MAP ( Y => n_961, IN1 => n_962);
delay_746: DELAY
    PORT MAP ( Y => n_962, IN1 => con1_current_state31_Q);
and1_747: AND1
    PORT MAP ( Y => n_963, IN1 => gnd);
delay_748: DELAY
    PORT MAP ( Y => con1_current_state32_aCLK, IN1 => clock);
delay_749: DELAY
    PORT MAP ( Y => con1_modgen_63_nx10_aOUT, IN1 => con1_modgen_63_nx10_aIN);
xor2_750: XOR2
    PORT MAP ( Y => con1_modgen_63_nx10_aIN, IN1 => n_967, IN2 => n_974);
or2_751: OR2
    PORT MAP ( Y => n_967, IN1 => n_968, IN2 => n_971);
and1_752: AND1
    PORT MAP ( Y => n_968, IN1 => n_969);
inv_753: INV 
    PORT MAP ( Y => n_969, IN1 => instrregout12_Q);
and1_754: AND1
    PORT MAP ( Y => n_971, IN1 => n_972);
inv_755: INV 
    PORT MAP ( Y => n_972, IN1 => instrregout11_Q);
and1_756: AND1
    PORT MAP ( Y => n_974, IN1 => gnd);
dff_757: DFF
    PORT MAP ( D => con1_current_state17_aD, CLK => con1_current_state17_aCLK,
          CLRN => con1_current_state17_aCLRN, PRN => vcc, Q => con1_current_state17_Q);
inv_758: INV 
    PORT MAP ( Y => con1_current_state17_aCLRN, IN1 => reset);
xor2_759: XOR2
    PORT MAP ( Y => con1_current_state17_aD, IN1 => n_982, IN2 => n_991);
or1_760: OR1
    PORT MAP ( Y => n_982, IN1 => n_983);
and4_761: AND4
    PORT MAP ( Y => n_983, IN1 => n_984, IN2 => n_986, IN3 => n_987, IN4 => n_989);
inv_762: INV 
    PORT MAP ( Y => n_984, IN1 => instrregout15_Q);
inv_763: INV 
    PORT MAP ( Y => n_986, IN1 => con1_modgen_63_nx10_aOUT);
inv_764: INV 
    PORT MAP ( Y => n_987, IN1 => con1_modgen_61_nx12_aOUT);
delay_765: DELAY
    PORT MAP ( Y => n_989, IN1 => con1_current_state6_Q);
and1_766: AND1
    PORT MAP ( Y => n_991, IN1 => gnd);
delay_767: DELAY
    PORT MAP ( Y => con1_current_state17_aCLK, IN1 => clock);
delay_768: DELAY
    PORT MAP ( Y => I0_dup_1457_aOUT, IN1 => I0_dup_1457_aIN);
xor2_769: XOR2
    PORT MAP ( Y => I0_dup_1457_aIN, IN1 => n_995, IN2 => n_1010);
or4_770: OR4
    PORT MAP ( Y => n_995, IN1 => n_996, IN2 => n_999, IN3 => n_1003, IN4 => n_1007);
and2_771: AND2
    PORT MAP ( Y => n_996, IN1 => n_997, IN2 => n_998);
inv_772: INV 
    PORT MAP ( Y => n_997, IN1 => O_dup_888_aOUT);
inv_773: INV 
    PORT MAP ( Y => n_998, IN1 => O_dup_891_aOUT);
and2_774: AND2
    PORT MAP ( Y => n_999, IN1 => n_1000, IN2 => n_1002);
inv_775: INV 
    PORT MAP ( Y => n_1000, IN1 => ix484_a3_dup_643_Q);
inv_776: INV 
    PORT MAP ( Y => n_1002, IN1 => O_dup_891_aOUT);
and2_777: AND2
    PORT MAP ( Y => n_1003, IN1 => n_1004, IN2 => n_1006);
inv_778: INV 
    PORT MAP ( Y => n_1004, IN1 => ix484_a6_dup_640_Q);
inv_779: INV 
    PORT MAP ( Y => n_1006, IN1 => ix484_a3_dup_643_Q);
and2_780: AND2
    PORT MAP ( Y => n_1007, IN1 => n_1008, IN2 => n_1009);
inv_781: INV 
    PORT MAP ( Y => n_1008, IN1 => ix484_a6_dup_640_Q);
inv_782: INV 
    PORT MAP ( Y => n_1009, IN1 => O_dup_888_aOUT);
and1_783: AND1
    PORT MAP ( Y => n_1010, IN1 => gnd);
delay_784: DELAY
    PORT MAP ( Y => O_dup_1459_aOUT, IN1 => O_dup_1459_aIN);
and2_785: AND2
    PORT MAP ( Y => O_dup_1459_aIN, IN1 => n_1013, IN2 => n_1028);
or4_786: OR4
    PORT MAP ( Y => n_1013, IN1 => n_1014, IN2 => n_1017, IN3 => n_1021, IN4 => n_1025);
and2_787: AND2
    PORT MAP ( Y => n_1014, IN1 => n_1015, IN2 => n_1016);
inv_788: INV 
    PORT MAP ( Y => n_1015, IN1 => O_dup_882_aOUT);
inv_789: INV 
    PORT MAP ( Y => n_1016, IN1 => O_dup_885_aOUT);
and2_790: AND2
    PORT MAP ( Y => n_1017, IN1 => n_1018, IN2 => n_1020);
inv_791: INV 
    PORT MAP ( Y => n_1018, IN1 => ix484_a1_dup_645_Q);
inv_792: INV 
    PORT MAP ( Y => n_1020, IN1 => O_dup_885_aOUT);
and2_793: AND2
    PORT MAP ( Y => n_1021, IN1 => n_1022, IN2 => n_1024);
inv_794: INV 
    PORT MAP ( Y => n_1022, IN1 => ix484_a5_dup_641_Q);
inv_795: INV 
    PORT MAP ( Y => n_1024, IN1 => ix484_a1_dup_645_Q);
and2_796: AND2
    PORT MAP ( Y => n_1025, IN1 => n_1026, IN2 => n_1027);
inv_797: INV 
    PORT MAP ( Y => n_1026, IN1 => ix484_a5_dup_641_Q);
inv_798: INV 
    PORT MAP ( Y => n_1027, IN1 => O_dup_882_aOUT);
delay_799: DELAY
    PORT MAP ( Y => n_1028, IN1 => I0_dup_1457_aIN);
delay_800: DELAY
    PORT MAP ( Y => O_dup_1721_aOUT, IN1 => O_dup_1721_aIN);
and2_801: AND2
    PORT MAP ( Y => O_dup_1721_aIN, IN1 => n_1031, IN2 => n_1046);
or4_802: OR4
    PORT MAP ( Y => n_1031, IN1 => n_1032, IN2 => n_1035, IN3 => n_1040, IN4 => n_1043);
and2_803: AND2
    PORT MAP ( Y => n_1032, IN1 => n_1033, IN2 => n_1034);
inv_804: INV 
    PORT MAP ( Y => n_1033, IN1 => outregrd_aOUT);
delay_805: DELAY
    PORT MAP ( Y => n_1034, IN1 => n3_aOUT);
and2_806: AND2
    PORT MAP ( Y => n_1035, IN1 => n_1036, IN2 => n_1038);
inv_807: INV 
    PORT MAP ( Y => n_1036, IN1 => outreg_val1_Q);
inv_808: INV 
    PORT MAP ( Y => n_1038, IN1 => progcntr_val1_Q);
and2_809: AND2
    PORT MAP ( Y => n_1040, IN1 => n_1041, IN2 => n_1042);
inv_810: INV 
    PORT MAP ( Y => n_1041, IN1 => progcntr_val1_Q);
inv_811: INV 
    PORT MAP ( Y => n_1042, IN1 => outregrd_aOUT);
and2_812: AND2
    PORT MAP ( Y => n_1043, IN1 => n_1044, IN2 => n_1045);
inv_813: INV 
    PORT MAP ( Y => n_1044, IN1 => outreg_val1_Q);
delay_814: DELAY
    PORT MAP ( Y => n_1045, IN1 => n3_aOUT);
delay_815: DELAY
    PORT MAP ( Y => n_1046, IN1 => O_dup_1459_aIN);
delay_816: DELAY
    PORT MAP ( Y => I1_dup_819_aOUT, IN1 => I1_dup_819_aIN);
and2_817: AND2
    PORT MAP ( Y => I1_dup_819_aIN, IN1 => n_1049, IN2 => n_1064);
or4_818: OR4
    PORT MAP ( Y => n_1049, IN1 => n_1050, IN2 => n_1053, IN3 => n_1057, IN4 => n_1061);
and2_819: AND2
    PORT MAP ( Y => n_1050, IN1 => n_1051, IN2 => n_1052);
inv_820: INV 
    PORT MAP ( Y => n_1051, IN1 => O_dup_876_aOUT);
inv_821: INV 
    PORT MAP ( Y => n_1052, IN1 => O_dup_879_aOUT);
and2_822: AND2
    PORT MAP ( Y => n_1053, IN1 => n_1054, IN2 => n_1056);
inv_823: INV 
    PORT MAP ( Y => n_1054, IN1 => ix484_a2_dup_644_Q);
inv_824: INV 
    PORT MAP ( Y => n_1056, IN1 => O_dup_879_aOUT);
and2_825: AND2
    PORT MAP ( Y => n_1057, IN1 => n_1058, IN2 => n_1060);
inv_826: INV 
    PORT MAP ( Y => n_1058, IN1 => ix484_a7_dup_639_Q);
inv_827: INV 
    PORT MAP ( Y => n_1060, IN1 => ix484_a2_dup_644_Q);
and2_828: AND2
    PORT MAP ( Y => n_1061, IN1 => n_1062, IN2 => n_1063);
inv_829: INV 
    PORT MAP ( Y => n_1062, IN1 => ix484_a7_dup_639_Q);
inv_830: INV 
    PORT MAP ( Y => n_1063, IN1 => O_dup_876_aOUT);
delay_831: DELAY
    PORT MAP ( Y => n_1064, IN1 => O_dup_1721_aIN);
delay_832: DELAY
    PORT MAP ( Y => O_dup_820_aOUT, IN1 => O_dup_820_aIN1);
and2_833: AND2
    PORT MAP ( Y => O_dup_820_aIN1, IN1 => n_1066, IN2 => n_1081);
or4_834: OR4
    PORT MAP ( Y => n_1066, IN1 => n_1067, IN2 => n_1070, IN3 => n_1074, IN4 => n_1078);
and2_835: AND2
    PORT MAP ( Y => n_1067, IN1 => n_1068, IN2 => n_1069);
inv_836: INV 
    PORT MAP ( Y => n_1068, IN1 => O_dup_870_aOUT);
inv_837: INV 
    PORT MAP ( Y => n_1069, IN1 => O_dup_873_aOUT);
and2_838: AND2
    PORT MAP ( Y => n_1070, IN1 => n_1071, IN2 => n_1073);
inv_839: INV 
    PORT MAP ( Y => n_1071, IN1 => ix484_a4_dup_642_Q);
inv_840: INV 
    PORT MAP ( Y => n_1073, IN1 => O_dup_873_aOUT);
and2_841: AND2
    PORT MAP ( Y => n_1074, IN1 => n_1075, IN2 => n_1077);
inv_842: INV 
    PORT MAP ( Y => n_1075, IN1 => ix484_a0_dup_646_Q);
inv_843: INV 
    PORT MAP ( Y => n_1077, IN1 => ix484_a4_dup_642_Q);
and2_844: AND2
    PORT MAP ( Y => n_1078, IN1 => n_1079, IN2 => n_1080);
inv_845: INV 
    PORT MAP ( Y => n_1079, IN1 => ix484_a0_dup_646_Q);
inv_846: INV 
    PORT MAP ( Y => n_1080, IN1 => O_dup_870_aOUT);
delay_847: DELAY
    PORT MAP ( Y => n_1081, IN1 => I1_dup_819_aIN);
dff_848: DFF
    PORT MAP ( D => instrregout1_aD, CLK => instrregout1_aCLK, CLRN => vcc,
          PRN => vcc, Q => instrregout1_Q);
xor2_849: XOR2
    PORT MAP ( Y => instrregout1_aD, IN1 => n_1088, IN2 => n_1091);
or1_850: OR1
    PORT MAP ( Y => n_1088, IN1 => n_1089);
and1_851: AND1
    PORT MAP ( Y => n_1089, IN1 => n_1090);
delay_852: DELAY
    PORT MAP ( Y => n_1090, IN1 => data(1));
and1_853: AND1
    PORT MAP ( Y => n_1091, IN1 => gnd);
and1_854: AND1
    PORT MAP ( Y => n_1092, IN1 => n_1093);
delay_855: DELAY
    PORT MAP ( Y => n_1093, IN1 => a_as_or3_aix1644_a_a32_aOUT);
delay_856: DELAY
    PORT MAP ( Y => instrregout1_aCLK, IN1 => n_1092);
delay_857: DELAY
    PORT MAP ( Y => I0_dup_1485_aOUT, IN1 => I0_dup_1485_aIN);
xor2_858: XOR2
    PORT MAP ( Y => I0_dup_1485_aIN, IN1 => n_1097, IN2 => n_1112);
or4_859: OR4
    PORT MAP ( Y => n_1097, IN1 => n_1098, IN2 => n_1101, IN3 => n_1105, IN4 => n_1109);
and2_860: AND2
    PORT MAP ( Y => n_1098, IN1 => n_1099, IN2 => n_1100);
inv_861: INV 
    PORT MAP ( Y => n_1099, IN1 => O_dup_888_aOUT);
inv_862: INV 
    PORT MAP ( Y => n_1100, IN1 => O_dup_891_aOUT);
and2_863: AND2
    PORT MAP ( Y => n_1101, IN1 => n_1102, IN2 => n_1104);
inv_864: INV 
    PORT MAP ( Y => n_1102, IN1 => ix484_a3_dup_651_Q);
inv_865: INV 
    PORT MAP ( Y => n_1104, IN1 => O_dup_891_aOUT);
and2_866: AND2
    PORT MAP ( Y => n_1105, IN1 => n_1106, IN2 => n_1108);
inv_867: INV 
    PORT MAP ( Y => n_1106, IN1 => ix484_a6_dup_648_Q);
inv_868: INV 
    PORT MAP ( Y => n_1108, IN1 => ix484_a3_dup_651_Q);
and2_869: AND2
    PORT MAP ( Y => n_1109, IN1 => n_1110, IN2 => n_1111);
inv_870: INV 
    PORT MAP ( Y => n_1110, IN1 => ix484_a6_dup_648_Q);
inv_871: INV 
    PORT MAP ( Y => n_1111, IN1 => O_dup_888_aOUT);
and1_872: AND1
    PORT MAP ( Y => n_1112, IN1 => gnd);
delay_873: DELAY
    PORT MAP ( Y => O_dup_1487_aOUT, IN1 => O_dup_1487_aIN);
and2_874: AND2
    PORT MAP ( Y => O_dup_1487_aIN, IN1 => n_1115, IN2 => n_1130);
or4_875: OR4
    PORT MAP ( Y => n_1115, IN1 => n_1116, IN2 => n_1119, IN3 => n_1123, IN4 => n_1127);
and2_876: AND2
    PORT MAP ( Y => n_1116, IN1 => n_1117, IN2 => n_1118);
inv_877: INV 
    PORT MAP ( Y => n_1117, IN1 => O_dup_882_aOUT);
inv_878: INV 
    PORT MAP ( Y => n_1118, IN1 => O_dup_885_aOUT);
and2_879: AND2
    PORT MAP ( Y => n_1119, IN1 => n_1120, IN2 => n_1122);
inv_880: INV 
    PORT MAP ( Y => n_1120, IN1 => ix484_a1_dup_653_Q);
inv_881: INV 
    PORT MAP ( Y => n_1122, IN1 => O_dup_885_aOUT);
and2_882: AND2
    PORT MAP ( Y => n_1123, IN1 => n_1124, IN2 => n_1126);
inv_883: INV 
    PORT MAP ( Y => n_1124, IN1 => ix484_a5_dup_649_Q);
inv_884: INV 
    PORT MAP ( Y => n_1126, IN1 => ix484_a1_dup_653_Q);
and2_885: AND2
    PORT MAP ( Y => n_1127, IN1 => n_1128, IN2 => n_1129);
inv_886: INV 
    PORT MAP ( Y => n_1128, IN1 => ix484_a5_dup_649_Q);
inv_887: INV 
    PORT MAP ( Y => n_1129, IN1 => O_dup_882_aOUT);
delay_888: DELAY
    PORT MAP ( Y => n_1130, IN1 => I0_dup_1485_aIN);
delay_889: DELAY
    PORT MAP ( Y => O_dup_1729_aOUT, IN1 => O_dup_1729_aIN);
and2_890: AND2
    PORT MAP ( Y => O_dup_1729_aIN, IN1 => n_1133, IN2 => n_1148);
or4_891: OR4
    PORT MAP ( Y => n_1133, IN1 => n_1134, IN2 => n_1137, IN3 => n_1142, IN4 => n_1145);
and2_892: AND2
    PORT MAP ( Y => n_1134, IN1 => n_1135, IN2 => n_1136);
inv_893: INV 
    PORT MAP ( Y => n_1135, IN1 => outregrd_aOUT);
delay_894: DELAY
    PORT MAP ( Y => n_1136, IN1 => n3_aOUT);
and2_895: AND2
    PORT MAP ( Y => n_1137, IN1 => n_1138, IN2 => n_1140);
inv_896: INV 
    PORT MAP ( Y => n_1138, IN1 => outreg_val0_Q);
inv_897: INV 
    PORT MAP ( Y => n_1140, IN1 => progcntr_val0_Q);
and2_898: AND2
    PORT MAP ( Y => n_1142, IN1 => n_1143, IN2 => n_1144);
inv_899: INV 
    PORT MAP ( Y => n_1143, IN1 => progcntr_val0_Q);
inv_900: INV 
    PORT MAP ( Y => n_1144, IN1 => outregrd_aOUT);
and2_901: AND2
    PORT MAP ( Y => n_1145, IN1 => n_1146, IN2 => n_1147);
inv_902: INV 
    PORT MAP ( Y => n_1146, IN1 => outreg_val0_Q);
delay_903: DELAY
    PORT MAP ( Y => n_1147, IN1 => n3_aOUT);
delay_904: DELAY
    PORT MAP ( Y => n_1148, IN1 => O_dup_1487_aIN);
delay_905: DELAY
    PORT MAP ( Y => I1_dup_826_aOUT, IN1 => I1_dup_826_aIN);
and2_906: AND2
    PORT MAP ( Y => I1_dup_826_aIN, IN1 => n_1151, IN2 => n_1166);
or4_907: OR4
    PORT MAP ( Y => n_1151, IN1 => n_1152, IN2 => n_1155, IN3 => n_1159, IN4 => n_1163);
and2_908: AND2
    PORT MAP ( Y => n_1152, IN1 => n_1153, IN2 => n_1154);
inv_909: INV 
    PORT MAP ( Y => n_1153, IN1 => O_dup_876_aOUT);
inv_910: INV 
    PORT MAP ( Y => n_1154, IN1 => O_dup_879_aOUT);
and2_911: AND2
    PORT MAP ( Y => n_1155, IN1 => n_1156, IN2 => n_1158);
inv_912: INV 
    PORT MAP ( Y => n_1156, IN1 => ix484_a2_dup_652_Q);
inv_913: INV 
    PORT MAP ( Y => n_1158, IN1 => O_dup_879_aOUT);
and2_914: AND2
    PORT MAP ( Y => n_1159, IN1 => n_1160, IN2 => n_1162);
inv_915: INV 
    PORT MAP ( Y => n_1160, IN1 => ix484_a7_dup_647_Q);
inv_916: INV 
    PORT MAP ( Y => n_1162, IN1 => ix484_a2_dup_652_Q);
and2_917: AND2
    PORT MAP ( Y => n_1163, IN1 => n_1164, IN2 => n_1165);
inv_918: INV 
    PORT MAP ( Y => n_1164, IN1 => ix484_a7_dup_647_Q);
inv_919: INV 
    PORT MAP ( Y => n_1165, IN1 => O_dup_876_aOUT);
delay_920: DELAY
    PORT MAP ( Y => n_1166, IN1 => O_dup_1729_aIN);
delay_921: DELAY
    PORT MAP ( Y => O_dup_827_aOUT, IN1 => O_dup_827_aIN1);
and2_922: AND2
    PORT MAP ( Y => O_dup_827_aIN1, IN1 => n_1168, IN2 => n_1183);
or4_923: OR4
    PORT MAP ( Y => n_1168, IN1 => n_1169, IN2 => n_1172, IN3 => n_1176, IN4 => n_1180);
and2_924: AND2
    PORT MAP ( Y => n_1169, IN1 => n_1170, IN2 => n_1171);
inv_925: INV 
    PORT MAP ( Y => n_1170, IN1 => O_dup_870_aOUT);
inv_926: INV 
    PORT MAP ( Y => n_1171, IN1 => O_dup_873_aOUT);
and2_927: AND2
    PORT MAP ( Y => n_1172, IN1 => n_1173, IN2 => n_1175);
inv_928: INV 
    PORT MAP ( Y => n_1173, IN1 => ix484_a4_dup_650_Q);
inv_929: INV 
    PORT MAP ( Y => n_1175, IN1 => O_dup_873_aOUT);
and2_930: AND2
    PORT MAP ( Y => n_1176, IN1 => n_1177, IN2 => n_1179);
inv_931: INV 
    PORT MAP ( Y => n_1177, IN1 => ix484_a0_dup_654_Q);
inv_932: INV 
    PORT MAP ( Y => n_1179, IN1 => ix484_a4_dup_650_Q);
and2_933: AND2
    PORT MAP ( Y => n_1180, IN1 => n_1181, IN2 => n_1182);
inv_934: INV 
    PORT MAP ( Y => n_1181, IN1 => ix484_a0_dup_654_Q);
inv_935: INV 
    PORT MAP ( Y => n_1182, IN1 => O_dup_870_aOUT);
delay_936: DELAY
    PORT MAP ( Y => n_1183, IN1 => I1_dup_826_aIN);
dff_937: DFF
    PORT MAP ( D => instrregout0_aD, CLK => instrregout0_aCLK, CLRN => vcc,
          PRN => vcc, Q => instrregout0_Q);
xor2_938: XOR2
    PORT MAP ( Y => instrregout0_aD, IN1 => n_1190, IN2 => n_1193);
or1_939: OR1
    PORT MAP ( Y => n_1190, IN1 => n_1191);
and1_940: AND1
    PORT MAP ( Y => n_1191, IN1 => n_1192);
delay_941: DELAY
    PORT MAP ( Y => n_1192, IN1 => data(0));
and1_942: AND1
    PORT MAP ( Y => n_1193, IN1 => gnd);
and1_943: AND1
    PORT MAP ( Y => n_1194, IN1 => n_1195);
delay_944: DELAY
    PORT MAP ( Y => n_1195, IN1 => a_as_or3_aix1644_a_a32_aOUT);
delay_945: DELAY
    PORT MAP ( Y => instrregout0_aCLK, IN1 => n_1194);
delay_946: DELAY
    PORT MAP ( Y => I3_dup_673_aOUT, IN1 => I3_dup_673_aIN);
xor2_947: XOR2
    PORT MAP ( Y => I3_dup_673_aIN, IN1 => n_1199, IN2 => n_1206);
or2_948: OR2
    PORT MAP ( Y => n_1199, IN1 => n_1200, IN2 => n_1203);
and1_949: AND1
    PORT MAP ( Y => n_1200, IN1 => n_1201);
delay_950: DELAY
    PORT MAP ( Y => n_1201, IN1 => con1_current_state51_Q);
and1_951: AND1
    PORT MAP ( Y => n_1203, IN1 => n_1204);
delay_952: DELAY
    PORT MAP ( Y => n_1204, IN1 => con1_current_state19_Q);
and1_953: AND1
    PORT MAP ( Y => n_1206, IN1 => gnd);
delay_954: DELAY
    PORT MAP ( Y => a_as_or3_aix1635_a_a32_aOUT, IN1 => a_as_or3_aix1635_a_a32_aIN1);
xor2_955: XOR2
    PORT MAP ( Y => a_as_or3_aix1635_a_a32_aIN1, IN1 => n_1209, IN2 => n_1220);
or3_956: OR3
    PORT MAP ( Y => n_1209, IN1 => n_1210, IN2 => n_1213, IN3 => n_1215);
and1_957: AND1
    PORT MAP ( Y => n_1210, IN1 => n_1211);
delay_958: DELAY
    PORT MAP ( Y => n_1211, IN1 => con1_current_state13_Q);
and1_959: AND1
    PORT MAP ( Y => n_1213, IN1 => n_1214);
delay_960: DELAY
    PORT MAP ( Y => n_1214, IN1 => I3_dup_673_aOUT);
and2_961: AND2
    PORT MAP ( Y => n_1215, IN1 => n_1216, IN2 => n_1218);
delay_962: DELAY
    PORT MAP ( Y => n_1216, IN1 => ready);
delay_963: DELAY
    PORT MAP ( Y => n_1218, IN1 => con1_current_state48_Q);
and1_964: AND1
    PORT MAP ( Y => n_1220, IN1 => gnd);
dffe_965: DFFE
    PORT MAP ( D => ix484_a3_dup_651_aD, CLK => ix484_a3_dup_651_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_651_aENA, Q => ix484_a3_dup_651_Q);
xor2_966: XOR2
    PORT MAP ( Y => ix484_a3_dup_651_aD, IN1 => n_1227, IN2 => n_1230);
or1_967: OR1
    PORT MAP ( Y => n_1227, IN1 => n_1228);
and1_968: AND1
    PORT MAP ( Y => n_1228, IN1 => n_1229);
delay_969: DELAY
    PORT MAP ( Y => n_1229, IN1 => data(0));
and1_970: AND1
    PORT MAP ( Y => n_1230, IN1 => gnd);
and1_971: AND1
    PORT MAP ( Y => n_1231, IN1 => n_1232);
delay_972: DELAY
    PORT MAP ( Y => n_1232, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_973: DELAY
    PORT MAP ( Y => ix484_a3_dup_651_aCLK, IN1 => n_1231);
and1_974: AND1
    PORT MAP ( Y => ix484_a3_dup_651_aENA, IN1 => n_1235);
delay_975: DELAY
    PORT MAP ( Y => n_1235, IN1 => ix484_nx42_aOUT);
dffe_976: DFFE
    PORT MAP ( D => ix484_a6_dup_648_aD, CLK => ix484_a6_dup_648_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_648_aENA, Q => ix484_a6_dup_648_Q);
xor2_977: XOR2
    PORT MAP ( Y => ix484_a6_dup_648_aD, IN1 => n_1242, IN2 => n_1245);
or1_978: OR1
    PORT MAP ( Y => n_1242, IN1 => n_1243);
and1_979: AND1
    PORT MAP ( Y => n_1243, IN1 => n_1244);
delay_980: DELAY
    PORT MAP ( Y => n_1244, IN1 => data(0));
and1_981: AND1
    PORT MAP ( Y => n_1245, IN1 => gnd);
and1_982: AND1
    PORT MAP ( Y => n_1246, IN1 => n_1247);
delay_983: DELAY
    PORT MAP ( Y => n_1247, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_984: DELAY
    PORT MAP ( Y => ix484_a6_dup_648_aCLK, IN1 => n_1246);
and1_985: AND1
    PORT MAP ( Y => ix484_a6_dup_648_aENA, IN1 => n_1250);
delay_986: DELAY
    PORT MAP ( Y => n_1250, IN1 => ix484_nx39_aOUT);
dffe_987: DFFE
    PORT MAP ( D => ix484_a3_dup_643_aD, CLK => ix484_a3_dup_643_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_643_aENA, Q => ix484_a3_dup_643_Q);
xor2_988: XOR2
    PORT MAP ( Y => ix484_a3_dup_643_aD, IN1 => n_1257, IN2 => n_1260);
or1_989: OR1
    PORT MAP ( Y => n_1257, IN1 => n_1258);
and1_990: AND1
    PORT MAP ( Y => n_1258, IN1 => n_1259);
delay_991: DELAY
    PORT MAP ( Y => n_1259, IN1 => data(1));
and1_992: AND1
    PORT MAP ( Y => n_1260, IN1 => gnd);
and1_993: AND1
    PORT MAP ( Y => n_1261, IN1 => n_1262);
delay_994: DELAY
    PORT MAP ( Y => n_1262, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_995: DELAY
    PORT MAP ( Y => ix484_a3_dup_643_aCLK, IN1 => n_1261);
and1_996: AND1
    PORT MAP ( Y => ix484_a3_dup_643_aENA, IN1 => n_1265);
delay_997: DELAY
    PORT MAP ( Y => n_1265, IN1 => ix484_nx42_aOUT);
dffe_998: DFFE
    PORT MAP ( D => ix484_a6_dup_640_aD, CLK => ix484_a6_dup_640_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_640_aENA, Q => ix484_a6_dup_640_Q);
xor2_999: XOR2
    PORT MAP ( Y => ix484_a6_dup_640_aD, IN1 => n_1272, IN2 => n_1275);
or1_1000: OR1
    PORT MAP ( Y => n_1272, IN1 => n_1273);
and1_1001: AND1
    PORT MAP ( Y => n_1273, IN1 => n_1274);
delay_1002: DELAY
    PORT MAP ( Y => n_1274, IN1 => data(1));
and1_1003: AND1
    PORT MAP ( Y => n_1275, IN1 => gnd);
and1_1004: AND1
    PORT MAP ( Y => n_1276, IN1 => n_1277);
delay_1005: DELAY
    PORT MAP ( Y => n_1277, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1006: DELAY
    PORT MAP ( Y => ix484_a6_dup_640_aCLK, IN1 => n_1276);
and1_1007: AND1
    PORT MAP ( Y => ix484_a6_dup_640_aENA, IN1 => n_1280);
delay_1008: DELAY
    PORT MAP ( Y => n_1280, IN1 => ix484_nx39_aOUT);
dffe_1009: DFFE
    PORT MAP ( D => ix484_a3_dup_635_aD, CLK => ix484_a3_dup_635_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_635_aENA, Q => ix484_a3_dup_635_Q);
xor2_1010: XOR2
    PORT MAP ( Y => ix484_a3_dup_635_aD, IN1 => n_1287, IN2 => n_1290);
or1_1011: OR1
    PORT MAP ( Y => n_1287, IN1 => n_1288);
and1_1012: AND1
    PORT MAP ( Y => n_1288, IN1 => n_1289);
delay_1013: DELAY
    PORT MAP ( Y => n_1289, IN1 => data(2));
and1_1014: AND1
    PORT MAP ( Y => n_1290, IN1 => gnd);
and1_1015: AND1
    PORT MAP ( Y => n_1291, IN1 => n_1292);
delay_1016: DELAY
    PORT MAP ( Y => n_1292, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1017: DELAY
    PORT MAP ( Y => ix484_a3_dup_635_aCLK, IN1 => n_1291);
and1_1018: AND1
    PORT MAP ( Y => ix484_a3_dup_635_aENA, IN1 => n_1295);
delay_1019: DELAY
    PORT MAP ( Y => n_1295, IN1 => ix484_nx42_aOUT);
dffe_1020: DFFE
    PORT MAP ( D => ix484_a6_dup_632_aD, CLK => ix484_a6_dup_632_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_632_aENA, Q => ix484_a6_dup_632_Q);
xor2_1021: XOR2
    PORT MAP ( Y => ix484_a6_dup_632_aD, IN1 => n_1302, IN2 => n_1305);
or1_1022: OR1
    PORT MAP ( Y => n_1302, IN1 => n_1303);
and1_1023: AND1
    PORT MAP ( Y => n_1303, IN1 => n_1304);
delay_1024: DELAY
    PORT MAP ( Y => n_1304, IN1 => data(2));
and1_1025: AND1
    PORT MAP ( Y => n_1305, IN1 => gnd);
and1_1026: AND1
    PORT MAP ( Y => n_1306, IN1 => n_1307);
delay_1027: DELAY
    PORT MAP ( Y => n_1307, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1028: DELAY
    PORT MAP ( Y => ix484_a6_dup_632_aCLK, IN1 => n_1306);
and1_1029: AND1
    PORT MAP ( Y => ix484_a6_dup_632_aENA, IN1 => n_1310);
delay_1030: DELAY
    PORT MAP ( Y => n_1310, IN1 => ix484_nx39_aOUT);
dffe_1031: DFFE
    PORT MAP ( D => ix484_a3_dup_627_aD, CLK => ix484_a3_dup_627_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_627_aENA, Q => ix484_a3_dup_627_Q);
xor2_1032: XOR2
    PORT MAP ( Y => ix484_a3_dup_627_aD, IN1 => n_1317, IN2 => n_1320);
or1_1033: OR1
    PORT MAP ( Y => n_1317, IN1 => n_1318);
and1_1034: AND1
    PORT MAP ( Y => n_1318, IN1 => n_1319);
delay_1035: DELAY
    PORT MAP ( Y => n_1319, IN1 => data(3));
and1_1036: AND1
    PORT MAP ( Y => n_1320, IN1 => gnd);
and1_1037: AND1
    PORT MAP ( Y => n_1321, IN1 => n_1322);
delay_1038: DELAY
    PORT MAP ( Y => n_1322, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1039: DELAY
    PORT MAP ( Y => ix484_a3_dup_627_aCLK, IN1 => n_1321);
and1_1040: AND1
    PORT MAP ( Y => ix484_a3_dup_627_aENA, IN1 => n_1325);
delay_1041: DELAY
    PORT MAP ( Y => n_1325, IN1 => ix484_nx42_aOUT);
dffe_1042: DFFE
    PORT MAP ( D => ix484_a6_dup_624_aD, CLK => ix484_a6_dup_624_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_624_aENA, Q => ix484_a6_dup_624_Q);
xor2_1043: XOR2
    PORT MAP ( Y => ix484_a6_dup_624_aD, IN1 => n_1332, IN2 => n_1335);
or1_1044: OR1
    PORT MAP ( Y => n_1332, IN1 => n_1333);
and1_1045: AND1
    PORT MAP ( Y => n_1333, IN1 => n_1334);
delay_1046: DELAY
    PORT MAP ( Y => n_1334, IN1 => data(3));
and1_1047: AND1
    PORT MAP ( Y => n_1335, IN1 => gnd);
and1_1048: AND1
    PORT MAP ( Y => n_1336, IN1 => n_1337);
delay_1049: DELAY
    PORT MAP ( Y => n_1337, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1050: DELAY
    PORT MAP ( Y => ix484_a6_dup_624_aCLK, IN1 => n_1336);
and1_1051: AND1
    PORT MAP ( Y => ix484_a6_dup_624_aENA, IN1 => n_1340);
delay_1052: DELAY
    PORT MAP ( Y => n_1340, IN1 => ix484_nx39_aOUT);
dffe_1053: DFFE
    PORT MAP ( D => ix484_a3_dup_619_aD, CLK => ix484_a3_dup_619_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_619_aENA, Q => ix484_a3_dup_619_Q);
xor2_1054: XOR2
    PORT MAP ( Y => ix484_a3_dup_619_aD, IN1 => n_1347, IN2 => n_1350);
or1_1055: OR1
    PORT MAP ( Y => n_1347, IN1 => n_1348);
and1_1056: AND1
    PORT MAP ( Y => n_1348, IN1 => n_1349);
delay_1057: DELAY
    PORT MAP ( Y => n_1349, IN1 => data(4));
and1_1058: AND1
    PORT MAP ( Y => n_1350, IN1 => gnd);
and1_1059: AND1
    PORT MAP ( Y => n_1351, IN1 => n_1352);
delay_1060: DELAY
    PORT MAP ( Y => n_1352, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1061: DELAY
    PORT MAP ( Y => ix484_a3_dup_619_aCLK, IN1 => n_1351);
and1_1062: AND1
    PORT MAP ( Y => ix484_a3_dup_619_aENA, IN1 => n_1355);
delay_1063: DELAY
    PORT MAP ( Y => n_1355, IN1 => ix484_nx42_aOUT);
dffe_1064: DFFE
    PORT MAP ( D => ix484_a6_dup_616_aD, CLK => ix484_a6_dup_616_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_616_aENA, Q => ix484_a6_dup_616_Q);
xor2_1065: XOR2
    PORT MAP ( Y => ix484_a6_dup_616_aD, IN1 => n_1362, IN2 => n_1365);
or1_1066: OR1
    PORT MAP ( Y => n_1362, IN1 => n_1363);
and1_1067: AND1
    PORT MAP ( Y => n_1363, IN1 => n_1364);
delay_1068: DELAY
    PORT MAP ( Y => n_1364, IN1 => data(4));
and1_1069: AND1
    PORT MAP ( Y => n_1365, IN1 => gnd);
and1_1070: AND1
    PORT MAP ( Y => n_1366, IN1 => n_1367);
delay_1071: DELAY
    PORT MAP ( Y => n_1367, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1072: DELAY
    PORT MAP ( Y => ix484_a6_dup_616_aCLK, IN1 => n_1366);
and1_1073: AND1
    PORT MAP ( Y => ix484_a6_dup_616_aENA, IN1 => n_1370);
delay_1074: DELAY
    PORT MAP ( Y => n_1370, IN1 => ix484_nx39_aOUT);
dffe_1075: DFFE
    PORT MAP ( D => ix484_a3_dup_611_aD, CLK => ix484_a3_dup_611_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_611_aENA, Q => ix484_a3_dup_611_Q);
xor2_1076: XOR2
    PORT MAP ( Y => ix484_a3_dup_611_aD, IN1 => n_1377, IN2 => n_1380);
or1_1077: OR1
    PORT MAP ( Y => n_1377, IN1 => n_1378);
and1_1078: AND1
    PORT MAP ( Y => n_1378, IN1 => n_1379);
delay_1079: DELAY
    PORT MAP ( Y => n_1379, IN1 => data(5));
and1_1080: AND1
    PORT MAP ( Y => n_1380, IN1 => gnd);
and1_1081: AND1
    PORT MAP ( Y => n_1381, IN1 => n_1382);
delay_1082: DELAY
    PORT MAP ( Y => n_1382, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1083: DELAY
    PORT MAP ( Y => ix484_a3_dup_611_aCLK, IN1 => n_1381);
and1_1084: AND1
    PORT MAP ( Y => ix484_a3_dup_611_aENA, IN1 => n_1385);
delay_1085: DELAY
    PORT MAP ( Y => n_1385, IN1 => ix484_nx42_aOUT);
dffe_1086: DFFE
    PORT MAP ( D => ix484_a6_dup_608_aD, CLK => ix484_a6_dup_608_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_608_aENA, Q => ix484_a6_dup_608_Q);
xor2_1087: XOR2
    PORT MAP ( Y => ix484_a6_dup_608_aD, IN1 => n_1392, IN2 => n_1395);
or1_1088: OR1
    PORT MAP ( Y => n_1392, IN1 => n_1393);
and1_1089: AND1
    PORT MAP ( Y => n_1393, IN1 => n_1394);
delay_1090: DELAY
    PORT MAP ( Y => n_1394, IN1 => data(5));
and1_1091: AND1
    PORT MAP ( Y => n_1395, IN1 => gnd);
and1_1092: AND1
    PORT MAP ( Y => n_1396, IN1 => n_1397);
delay_1093: DELAY
    PORT MAP ( Y => n_1397, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1094: DELAY
    PORT MAP ( Y => ix484_a6_dup_608_aCLK, IN1 => n_1396);
and1_1095: AND1
    PORT MAP ( Y => ix484_a6_dup_608_aENA, IN1 => n_1400);
delay_1096: DELAY
    PORT MAP ( Y => n_1400, IN1 => ix484_nx39_aOUT);
delay_1097: DELAY
    PORT MAP ( Y => I0_dup_1317_aOUT, IN1 => I0_dup_1317_aIN);
xor2_1098: XOR2
    PORT MAP ( Y => I0_dup_1317_aIN, IN1 => n_1403, IN2 => n_1418);
or4_1099: OR4
    PORT MAP ( Y => n_1403, IN1 => n_1404, IN2 => n_1407, IN3 => n_1411, IN4 => n_1415);
and2_1100: AND2
    PORT MAP ( Y => n_1404, IN1 => n_1405, IN2 => n_1406);
inv_1101: INV 
    PORT MAP ( Y => n_1405, IN1 => O_dup_888_aOUT);
inv_1102: INV 
    PORT MAP ( Y => n_1406, IN1 => O_dup_891_aOUT);
and2_1103: AND2
    PORT MAP ( Y => n_1407, IN1 => n_1408, IN2 => n_1410);
inv_1104: INV 
    PORT MAP ( Y => n_1408, IN1 => ix484_a3_dup_603_Q);
inv_1105: INV 
    PORT MAP ( Y => n_1410, IN1 => O_dup_891_aOUT);
and2_1106: AND2
    PORT MAP ( Y => n_1411, IN1 => n_1412, IN2 => n_1414);
inv_1107: INV 
    PORT MAP ( Y => n_1412, IN1 => ix484_a6_dup_600_Q);
inv_1108: INV 
    PORT MAP ( Y => n_1414, IN1 => ix484_a3_dup_603_Q);
and2_1109: AND2
    PORT MAP ( Y => n_1415, IN1 => n_1416, IN2 => n_1417);
inv_1110: INV 
    PORT MAP ( Y => n_1416, IN1 => ix484_a6_dup_600_Q);
inv_1111: INV 
    PORT MAP ( Y => n_1417, IN1 => O_dup_888_aOUT);
and1_1112: AND1
    PORT MAP ( Y => n_1418, IN1 => gnd);
delay_1113: DELAY
    PORT MAP ( Y => O_dup_1319_aOUT, IN1 => O_dup_1319_aIN);
and2_1114: AND2
    PORT MAP ( Y => O_dup_1319_aIN, IN1 => n_1421, IN2 => n_1436);
or4_1115: OR4
    PORT MAP ( Y => n_1421, IN1 => n_1422, IN2 => n_1425, IN3 => n_1429, IN4 => n_1433);
and2_1116: AND2
    PORT MAP ( Y => n_1422, IN1 => n_1423, IN2 => n_1424);
inv_1117: INV 
    PORT MAP ( Y => n_1423, IN1 => O_dup_882_aOUT);
inv_1118: INV 
    PORT MAP ( Y => n_1424, IN1 => O_dup_885_aOUT);
and2_1119: AND2
    PORT MAP ( Y => n_1425, IN1 => n_1426, IN2 => n_1428);
inv_1120: INV 
    PORT MAP ( Y => n_1426, IN1 => ix484_a1_dup_605_Q);
inv_1121: INV 
    PORT MAP ( Y => n_1428, IN1 => O_dup_885_aOUT);
and2_1122: AND2
    PORT MAP ( Y => n_1429, IN1 => n_1430, IN2 => n_1432);
inv_1123: INV 
    PORT MAP ( Y => n_1430, IN1 => ix484_a5_dup_601_Q);
inv_1124: INV 
    PORT MAP ( Y => n_1432, IN1 => ix484_a1_dup_605_Q);
and2_1125: AND2
    PORT MAP ( Y => n_1433, IN1 => n_1434, IN2 => n_1435);
inv_1126: INV 
    PORT MAP ( Y => n_1434, IN1 => ix484_a5_dup_601_Q);
inv_1127: INV 
    PORT MAP ( Y => n_1435, IN1 => O_dup_882_aOUT);
delay_1128: DELAY
    PORT MAP ( Y => n_1436, IN1 => I0_dup_1317_aIN);
delay_1129: DELAY
    PORT MAP ( Y => O_dup_1681_aOUT, IN1 => O_dup_1681_aIN);
and2_1130: AND2
    PORT MAP ( Y => O_dup_1681_aIN, IN1 => n_1439, IN2 => n_1454);
or4_1131: OR4
    PORT MAP ( Y => n_1439, IN1 => n_1440, IN2 => n_1443, IN3 => n_1448, IN4 => n_1451);
and2_1132: AND2
    PORT MAP ( Y => n_1440, IN1 => n_1441, IN2 => n_1442);
inv_1133: INV 
    PORT MAP ( Y => n_1441, IN1 => outregrd_aOUT);
delay_1134: DELAY
    PORT MAP ( Y => n_1442, IN1 => n3_aOUT);
and2_1135: AND2
    PORT MAP ( Y => n_1443, IN1 => n_1444, IN2 => n_1446);
inv_1136: INV 
    PORT MAP ( Y => n_1444, IN1 => outreg_val6_Q);
inv_1137: INV 
    PORT MAP ( Y => n_1446, IN1 => progcntr_val6_Q);
and2_1138: AND2
    PORT MAP ( Y => n_1448, IN1 => n_1449, IN2 => n_1450);
inv_1139: INV 
    PORT MAP ( Y => n_1449, IN1 => progcntr_val6_Q);
inv_1140: INV 
    PORT MAP ( Y => n_1450, IN1 => outregrd_aOUT);
and2_1141: AND2
    PORT MAP ( Y => n_1451, IN1 => n_1452, IN2 => n_1453);
inv_1142: INV 
    PORT MAP ( Y => n_1452, IN1 => outreg_val6_Q);
delay_1143: DELAY
    PORT MAP ( Y => n_1453, IN1 => n3_aOUT);
delay_1144: DELAY
    PORT MAP ( Y => n_1454, IN1 => O_dup_1319_aIN);
delay_1145: DELAY
    PORT MAP ( Y => I1_dup_804_aOUT, IN1 => I1_dup_804_aIN);
and2_1146: AND2
    PORT MAP ( Y => I1_dup_804_aIN, IN1 => n_1457, IN2 => n_1472);
or4_1147: OR4
    PORT MAP ( Y => n_1457, IN1 => n_1458, IN2 => n_1461, IN3 => n_1465, IN4 => n_1469);
and2_1148: AND2
    PORT MAP ( Y => n_1458, IN1 => n_1459, IN2 => n_1460);
inv_1149: INV 
    PORT MAP ( Y => n_1459, IN1 => O_dup_876_aOUT);
inv_1150: INV 
    PORT MAP ( Y => n_1460, IN1 => O_dup_879_aOUT);
and2_1151: AND2
    PORT MAP ( Y => n_1461, IN1 => n_1462, IN2 => n_1464);
inv_1152: INV 
    PORT MAP ( Y => n_1462, IN1 => ix484_a2_dup_604_Q);
inv_1153: INV 
    PORT MAP ( Y => n_1464, IN1 => O_dup_879_aOUT);
and2_1154: AND2
    PORT MAP ( Y => n_1465, IN1 => n_1466, IN2 => n_1468);
inv_1155: INV 
    PORT MAP ( Y => n_1466, IN1 => ix484_a7_dup_599_Q);
inv_1156: INV 
    PORT MAP ( Y => n_1468, IN1 => ix484_a2_dup_604_Q);
and2_1157: AND2
    PORT MAP ( Y => n_1469, IN1 => n_1470, IN2 => n_1471);
inv_1158: INV 
    PORT MAP ( Y => n_1470, IN1 => ix484_a7_dup_599_Q);
inv_1159: INV 
    PORT MAP ( Y => n_1471, IN1 => O_dup_876_aOUT);
delay_1160: DELAY
    PORT MAP ( Y => n_1472, IN1 => O_dup_1681_aIN);
delay_1161: DELAY
    PORT MAP ( Y => O_dup_805_aOUT, IN1 => O_dup_805_aIN1);
and2_1162: AND2
    PORT MAP ( Y => O_dup_805_aIN1, IN1 => n_1474, IN2 => n_1489);
or4_1163: OR4
    PORT MAP ( Y => n_1474, IN1 => n_1475, IN2 => n_1478, IN3 => n_1482, IN4 => n_1486);
and2_1164: AND2
    PORT MAP ( Y => n_1475, IN1 => n_1476, IN2 => n_1477);
inv_1165: INV 
    PORT MAP ( Y => n_1476, IN1 => O_dup_870_aOUT);
inv_1166: INV 
    PORT MAP ( Y => n_1477, IN1 => O_dup_873_aOUT);
and2_1167: AND2
    PORT MAP ( Y => n_1478, IN1 => n_1479, IN2 => n_1481);
inv_1168: INV 
    PORT MAP ( Y => n_1479, IN1 => ix484_a4_dup_602_Q);
inv_1169: INV 
    PORT MAP ( Y => n_1481, IN1 => O_dup_873_aOUT);
and2_1170: AND2
    PORT MAP ( Y => n_1482, IN1 => n_1483, IN2 => n_1485);
inv_1171: INV 
    PORT MAP ( Y => n_1483, IN1 => ix484_a0_dup_606_Q);
inv_1172: INV 
    PORT MAP ( Y => n_1485, IN1 => ix484_a4_dup_602_Q);
and2_1173: AND2
    PORT MAP ( Y => n_1486, IN1 => n_1487, IN2 => n_1488);
inv_1174: INV 
    PORT MAP ( Y => n_1487, IN1 => ix484_a0_dup_606_Q);
inv_1175: INV 
    PORT MAP ( Y => n_1488, IN1 => O_dup_870_aOUT);
delay_1176: DELAY
    PORT MAP ( Y => n_1489, IN1 => I1_dup_804_aIN);
dffe_1177: DFFE
    PORT MAP ( D => ix484_a3_dup_603_aD, CLK => ix484_a3_dup_603_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_603_aENA, Q => ix484_a3_dup_603_Q);
xor2_1178: XOR2
    PORT MAP ( Y => ix484_a3_dup_603_aD, IN1 => n_1496, IN2 => n_1499);
or1_1179: OR1
    PORT MAP ( Y => n_1496, IN1 => n_1497);
and1_1180: AND1
    PORT MAP ( Y => n_1497, IN1 => n_1498);
delay_1181: DELAY
    PORT MAP ( Y => n_1498, IN1 => data(6));
and1_1182: AND1
    PORT MAP ( Y => n_1499, IN1 => gnd);
and1_1183: AND1
    PORT MAP ( Y => n_1500, IN1 => n_1501);
delay_1184: DELAY
    PORT MAP ( Y => n_1501, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1185: DELAY
    PORT MAP ( Y => ix484_a3_dup_603_aCLK, IN1 => n_1500);
and1_1186: AND1
    PORT MAP ( Y => ix484_a3_dup_603_aENA, IN1 => n_1504);
delay_1187: DELAY
    PORT MAP ( Y => n_1504, IN1 => ix484_nx42_aOUT);
dffe_1188: DFFE
    PORT MAP ( D => ix484_a6_dup_600_aD, CLK => ix484_a6_dup_600_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_600_aENA, Q => ix484_a6_dup_600_Q);
xor2_1189: XOR2
    PORT MAP ( Y => ix484_a6_dup_600_aD, IN1 => n_1511, IN2 => n_1514);
or1_1190: OR1
    PORT MAP ( Y => n_1511, IN1 => n_1512);
and1_1191: AND1
    PORT MAP ( Y => n_1512, IN1 => n_1513);
delay_1192: DELAY
    PORT MAP ( Y => n_1513, IN1 => data(6));
and1_1193: AND1
    PORT MAP ( Y => n_1514, IN1 => gnd);
and1_1194: AND1
    PORT MAP ( Y => n_1515, IN1 => n_1516);
delay_1195: DELAY
    PORT MAP ( Y => n_1516, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1196: DELAY
    PORT MAP ( Y => ix484_a6_dup_600_aCLK, IN1 => n_1515);
and1_1197: AND1
    PORT MAP ( Y => ix484_a6_dup_600_aENA, IN1 => n_1519);
delay_1198: DELAY
    PORT MAP ( Y => n_1519, IN1 => ix484_nx39_aOUT);
delay_1199: DELAY
    PORT MAP ( Y => I0_dup_1289_aOUT, IN1 => I0_dup_1289_aIN);
xor2_1200: XOR2
    PORT MAP ( Y => I0_dup_1289_aIN, IN1 => n_1522, IN2 => n_1537);
or4_1201: OR4
    PORT MAP ( Y => n_1522, IN1 => n_1523, IN2 => n_1526, IN3 => n_1530, IN4 => n_1534);
and2_1202: AND2
    PORT MAP ( Y => n_1523, IN1 => n_1524, IN2 => n_1525);
inv_1203: INV 
    PORT MAP ( Y => n_1524, IN1 => O_dup_888_aOUT);
inv_1204: INV 
    PORT MAP ( Y => n_1525, IN1 => O_dup_891_aOUT);
and2_1205: AND2
    PORT MAP ( Y => n_1526, IN1 => n_1527, IN2 => n_1529);
inv_1206: INV 
    PORT MAP ( Y => n_1527, IN1 => ix484_a3_dup_595_Q);
inv_1207: INV 
    PORT MAP ( Y => n_1529, IN1 => O_dup_891_aOUT);
and2_1208: AND2
    PORT MAP ( Y => n_1530, IN1 => n_1531, IN2 => n_1533);
inv_1209: INV 
    PORT MAP ( Y => n_1531, IN1 => ix484_a6_dup_592_Q);
inv_1210: INV 
    PORT MAP ( Y => n_1533, IN1 => ix484_a3_dup_595_Q);
and2_1211: AND2
    PORT MAP ( Y => n_1534, IN1 => n_1535, IN2 => n_1536);
inv_1212: INV 
    PORT MAP ( Y => n_1535, IN1 => ix484_a6_dup_592_Q);
inv_1213: INV 
    PORT MAP ( Y => n_1536, IN1 => O_dup_888_aOUT);
and1_1214: AND1
    PORT MAP ( Y => n_1537, IN1 => gnd);
delay_1215: DELAY
    PORT MAP ( Y => O_dup_1291_aOUT, IN1 => O_dup_1291_aIN);
and2_1216: AND2
    PORT MAP ( Y => O_dup_1291_aIN, IN1 => n_1540, IN2 => n_1555);
or4_1217: OR4
    PORT MAP ( Y => n_1540, IN1 => n_1541, IN2 => n_1544, IN3 => n_1548, IN4 => n_1552);
and2_1218: AND2
    PORT MAP ( Y => n_1541, IN1 => n_1542, IN2 => n_1543);
inv_1219: INV 
    PORT MAP ( Y => n_1542, IN1 => O_dup_882_aOUT);
inv_1220: INV 
    PORT MAP ( Y => n_1543, IN1 => O_dup_885_aOUT);
and2_1221: AND2
    PORT MAP ( Y => n_1544, IN1 => n_1545, IN2 => n_1547);
inv_1222: INV 
    PORT MAP ( Y => n_1545, IN1 => ix484_a1_dup_597_Q);
inv_1223: INV 
    PORT MAP ( Y => n_1547, IN1 => O_dup_885_aOUT);
and2_1224: AND2
    PORT MAP ( Y => n_1548, IN1 => n_1549, IN2 => n_1551);
inv_1225: INV 
    PORT MAP ( Y => n_1549, IN1 => ix484_a5_dup_593_Q);
inv_1226: INV 
    PORT MAP ( Y => n_1551, IN1 => ix484_a1_dup_597_Q);
and2_1227: AND2
    PORT MAP ( Y => n_1552, IN1 => n_1553, IN2 => n_1554);
inv_1228: INV 
    PORT MAP ( Y => n_1553, IN1 => ix484_a5_dup_593_Q);
inv_1229: INV 
    PORT MAP ( Y => n_1554, IN1 => O_dup_882_aOUT);
delay_1230: DELAY
    PORT MAP ( Y => n_1555, IN1 => I0_dup_1289_aIN);
delay_1231: DELAY
    PORT MAP ( Y => O_dup_1673_aOUT, IN1 => O_dup_1673_aIN);
and2_1232: AND2
    PORT MAP ( Y => O_dup_1673_aIN, IN1 => n_1558, IN2 => n_1573);
or4_1233: OR4
    PORT MAP ( Y => n_1558, IN1 => n_1559, IN2 => n_1562, IN3 => n_1567, IN4 => n_1570);
and2_1234: AND2
    PORT MAP ( Y => n_1559, IN1 => n_1560, IN2 => n_1561);
inv_1235: INV 
    PORT MAP ( Y => n_1560, IN1 => outregrd_aOUT);
delay_1236: DELAY
    PORT MAP ( Y => n_1561, IN1 => n3_aOUT);
and2_1237: AND2
    PORT MAP ( Y => n_1562, IN1 => n_1563, IN2 => n_1565);
inv_1238: INV 
    PORT MAP ( Y => n_1563, IN1 => outreg_val7_Q);
inv_1239: INV 
    PORT MAP ( Y => n_1565, IN1 => progcntr_val7_Q);
and2_1240: AND2
    PORT MAP ( Y => n_1567, IN1 => n_1568, IN2 => n_1569);
inv_1241: INV 
    PORT MAP ( Y => n_1568, IN1 => progcntr_val7_Q);
inv_1242: INV 
    PORT MAP ( Y => n_1569, IN1 => outregrd_aOUT);
and2_1243: AND2
    PORT MAP ( Y => n_1570, IN1 => n_1571, IN2 => n_1572);
inv_1244: INV 
    PORT MAP ( Y => n_1571, IN1 => outreg_val7_Q);
delay_1245: DELAY
    PORT MAP ( Y => n_1572, IN1 => n3_aOUT);
delay_1246: DELAY
    PORT MAP ( Y => n_1573, IN1 => O_dup_1291_aIN);
delay_1247: DELAY
    PORT MAP ( Y => I1_dup_801_aOUT, IN1 => I1_dup_801_aIN);
and2_1248: AND2
    PORT MAP ( Y => I1_dup_801_aIN, IN1 => n_1576, IN2 => n_1591);
or4_1249: OR4
    PORT MAP ( Y => n_1576, IN1 => n_1577, IN2 => n_1580, IN3 => n_1584, IN4 => n_1588);
and2_1250: AND2
    PORT MAP ( Y => n_1577, IN1 => n_1578, IN2 => n_1579);
inv_1251: INV 
    PORT MAP ( Y => n_1578, IN1 => O_dup_876_aOUT);
inv_1252: INV 
    PORT MAP ( Y => n_1579, IN1 => O_dup_879_aOUT);
and2_1253: AND2
    PORT MAP ( Y => n_1580, IN1 => n_1581, IN2 => n_1583);
inv_1254: INV 
    PORT MAP ( Y => n_1581, IN1 => ix484_a2_dup_596_Q);
inv_1255: INV 
    PORT MAP ( Y => n_1583, IN1 => O_dup_879_aOUT);
and2_1256: AND2
    PORT MAP ( Y => n_1584, IN1 => n_1585, IN2 => n_1587);
inv_1257: INV 
    PORT MAP ( Y => n_1585, IN1 => ix484_a7_dup_591_Q);
inv_1258: INV 
    PORT MAP ( Y => n_1587, IN1 => ix484_a2_dup_596_Q);
and2_1259: AND2
    PORT MAP ( Y => n_1588, IN1 => n_1589, IN2 => n_1590);
inv_1260: INV 
    PORT MAP ( Y => n_1589, IN1 => ix484_a7_dup_591_Q);
inv_1261: INV 
    PORT MAP ( Y => n_1590, IN1 => O_dup_876_aOUT);
delay_1262: DELAY
    PORT MAP ( Y => n_1591, IN1 => O_dup_1673_aIN);
delay_1263: DELAY
    PORT MAP ( Y => O_dup_802_aOUT, IN1 => O_dup_802_aIN1);
and2_1264: AND2
    PORT MAP ( Y => O_dup_802_aIN1, IN1 => n_1593, IN2 => n_1608);
or4_1265: OR4
    PORT MAP ( Y => n_1593, IN1 => n_1594, IN2 => n_1597, IN3 => n_1601, IN4 => n_1605);
and2_1266: AND2
    PORT MAP ( Y => n_1594, IN1 => n_1595, IN2 => n_1596);
inv_1267: INV 
    PORT MAP ( Y => n_1595, IN1 => O_dup_870_aOUT);
inv_1268: INV 
    PORT MAP ( Y => n_1596, IN1 => O_dup_873_aOUT);
and2_1269: AND2
    PORT MAP ( Y => n_1597, IN1 => n_1598, IN2 => n_1600);
inv_1270: INV 
    PORT MAP ( Y => n_1598, IN1 => ix484_a4_dup_594_Q);
inv_1271: INV 
    PORT MAP ( Y => n_1600, IN1 => O_dup_873_aOUT);
and2_1272: AND2
    PORT MAP ( Y => n_1601, IN1 => n_1602, IN2 => n_1604);
inv_1273: INV 
    PORT MAP ( Y => n_1602, IN1 => ix484_a0_dup_598_Q);
inv_1274: INV 
    PORT MAP ( Y => n_1604, IN1 => ix484_a4_dup_594_Q);
and2_1275: AND2
    PORT MAP ( Y => n_1605, IN1 => n_1606, IN2 => n_1607);
inv_1276: INV 
    PORT MAP ( Y => n_1606, IN1 => ix484_a0_dup_598_Q);
inv_1277: INV 
    PORT MAP ( Y => n_1607, IN1 => O_dup_870_aOUT);
delay_1278: DELAY
    PORT MAP ( Y => n_1608, IN1 => I1_dup_801_aIN);
dffe_1279: DFFE
    PORT MAP ( D => ix484_a3_dup_595_aD, CLK => ix484_a3_dup_595_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_595_aENA, Q => ix484_a3_dup_595_Q);
xor2_1280: XOR2
    PORT MAP ( Y => ix484_a3_dup_595_aD, IN1 => n_1615, IN2 => n_1618);
or1_1281: OR1
    PORT MAP ( Y => n_1615, IN1 => n_1616);
and1_1282: AND1
    PORT MAP ( Y => n_1616, IN1 => n_1617);
delay_1283: DELAY
    PORT MAP ( Y => n_1617, IN1 => data(7));
and1_1284: AND1
    PORT MAP ( Y => n_1618, IN1 => gnd);
and1_1285: AND1
    PORT MAP ( Y => n_1619, IN1 => n_1620);
delay_1286: DELAY
    PORT MAP ( Y => n_1620, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1287: DELAY
    PORT MAP ( Y => ix484_a3_dup_595_aCLK, IN1 => n_1619);
and1_1288: AND1
    PORT MAP ( Y => ix484_a3_dup_595_aENA, IN1 => n_1623);
delay_1289: DELAY
    PORT MAP ( Y => n_1623, IN1 => ix484_nx42_aOUT);
dffe_1290: DFFE
    PORT MAP ( D => ix484_a6_dup_592_aD, CLK => ix484_a6_dup_592_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_592_aENA, Q => ix484_a6_dup_592_Q);
xor2_1291: XOR2
    PORT MAP ( Y => ix484_a6_dup_592_aD, IN1 => n_1630, IN2 => n_1633);
or1_1292: OR1
    PORT MAP ( Y => n_1630, IN1 => n_1631);
and1_1293: AND1
    PORT MAP ( Y => n_1631, IN1 => n_1632);
delay_1294: DELAY
    PORT MAP ( Y => n_1632, IN1 => data(7));
and1_1295: AND1
    PORT MAP ( Y => n_1633, IN1 => gnd);
and1_1296: AND1
    PORT MAP ( Y => n_1634, IN1 => n_1635);
delay_1297: DELAY
    PORT MAP ( Y => n_1635, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1298: DELAY
    PORT MAP ( Y => ix484_a6_dup_592_aCLK, IN1 => n_1634);
and1_1299: AND1
    PORT MAP ( Y => ix484_a6_dup_592_aENA, IN1 => n_1638);
delay_1300: DELAY
    PORT MAP ( Y => n_1638, IN1 => ix484_nx39_aOUT);
delay_1301: DELAY
    PORT MAP ( Y => I0_dup_1261_aOUT, IN1 => I0_dup_1261_aIN);
xor2_1302: XOR2
    PORT MAP ( Y => I0_dup_1261_aIN, IN1 => n_1641, IN2 => n_1656);
or4_1303: OR4
    PORT MAP ( Y => n_1641, IN1 => n_1642, IN2 => n_1645, IN3 => n_1649, IN4 => n_1653);
and2_1304: AND2
    PORT MAP ( Y => n_1642, IN1 => n_1643, IN2 => n_1644);
inv_1305: INV 
    PORT MAP ( Y => n_1643, IN1 => O_dup_888_aOUT);
inv_1306: INV 
    PORT MAP ( Y => n_1644, IN1 => O_dup_891_aOUT);
and2_1307: AND2
    PORT MAP ( Y => n_1645, IN1 => n_1646, IN2 => n_1648);
inv_1308: INV 
    PORT MAP ( Y => n_1646, IN1 => ix484_a3_dup_587_Q);
inv_1309: INV 
    PORT MAP ( Y => n_1648, IN1 => O_dup_891_aOUT);
and2_1310: AND2
    PORT MAP ( Y => n_1649, IN1 => n_1650, IN2 => n_1652);
inv_1311: INV 
    PORT MAP ( Y => n_1650, IN1 => ix484_a6_dup_584_Q);
inv_1312: INV 
    PORT MAP ( Y => n_1652, IN1 => ix484_a3_dup_587_Q);
and2_1313: AND2
    PORT MAP ( Y => n_1653, IN1 => n_1654, IN2 => n_1655);
inv_1314: INV 
    PORT MAP ( Y => n_1654, IN1 => ix484_a6_dup_584_Q);
inv_1315: INV 
    PORT MAP ( Y => n_1655, IN1 => O_dup_888_aOUT);
and1_1316: AND1
    PORT MAP ( Y => n_1656, IN1 => gnd);
delay_1317: DELAY
    PORT MAP ( Y => O_dup_1263_aOUT, IN1 => O_dup_1263_aIN);
and2_1318: AND2
    PORT MAP ( Y => O_dup_1263_aIN, IN1 => n_1659, IN2 => n_1674);
or4_1319: OR4
    PORT MAP ( Y => n_1659, IN1 => n_1660, IN2 => n_1663, IN3 => n_1667, IN4 => n_1671);
and2_1320: AND2
    PORT MAP ( Y => n_1660, IN1 => n_1661, IN2 => n_1662);
inv_1321: INV 
    PORT MAP ( Y => n_1661, IN1 => O_dup_882_aOUT);
inv_1322: INV 
    PORT MAP ( Y => n_1662, IN1 => O_dup_885_aOUT);
and2_1323: AND2
    PORT MAP ( Y => n_1663, IN1 => n_1664, IN2 => n_1666);
inv_1324: INV 
    PORT MAP ( Y => n_1664, IN1 => ix484_a1_dup_589_Q);
inv_1325: INV 
    PORT MAP ( Y => n_1666, IN1 => O_dup_885_aOUT);
and2_1326: AND2
    PORT MAP ( Y => n_1667, IN1 => n_1668, IN2 => n_1670);
inv_1327: INV 
    PORT MAP ( Y => n_1668, IN1 => ix484_a5_dup_585_Q);
inv_1328: INV 
    PORT MAP ( Y => n_1670, IN1 => ix484_a1_dup_589_Q);
and2_1329: AND2
    PORT MAP ( Y => n_1671, IN1 => n_1672, IN2 => n_1673);
inv_1330: INV 
    PORT MAP ( Y => n_1672, IN1 => ix484_a5_dup_585_Q);
inv_1331: INV 
    PORT MAP ( Y => n_1673, IN1 => O_dup_882_aOUT);
delay_1332: DELAY
    PORT MAP ( Y => n_1674, IN1 => I0_dup_1261_aIN);
delay_1333: DELAY
    PORT MAP ( Y => O_dup_1665_aOUT, IN1 => O_dup_1665_aIN);
and2_1334: AND2
    PORT MAP ( Y => O_dup_1665_aIN, IN1 => n_1677, IN2 => n_1692);
or4_1335: OR4
    PORT MAP ( Y => n_1677, IN1 => n_1678, IN2 => n_1681, IN3 => n_1686, IN4 => n_1689);
and2_1336: AND2
    PORT MAP ( Y => n_1678, IN1 => n_1679, IN2 => n_1680);
inv_1337: INV 
    PORT MAP ( Y => n_1679, IN1 => outregrd_aOUT);
delay_1338: DELAY
    PORT MAP ( Y => n_1680, IN1 => n3_aOUT);
and2_1339: AND2
    PORT MAP ( Y => n_1681, IN1 => n_1682, IN2 => n_1684);
inv_1340: INV 
    PORT MAP ( Y => n_1682, IN1 => outreg_val8_Q);
inv_1341: INV 
    PORT MAP ( Y => n_1684, IN1 => progcntr_val8_Q);
and2_1342: AND2
    PORT MAP ( Y => n_1686, IN1 => n_1687, IN2 => n_1688);
inv_1343: INV 
    PORT MAP ( Y => n_1687, IN1 => progcntr_val8_Q);
inv_1344: INV 
    PORT MAP ( Y => n_1688, IN1 => outregrd_aOUT);
and2_1345: AND2
    PORT MAP ( Y => n_1689, IN1 => n_1690, IN2 => n_1691);
inv_1346: INV 
    PORT MAP ( Y => n_1690, IN1 => outreg_val8_Q);
delay_1347: DELAY
    PORT MAP ( Y => n_1691, IN1 => n3_aOUT);
delay_1348: DELAY
    PORT MAP ( Y => n_1692, IN1 => O_dup_1263_aIN);
delay_1349: DELAY
    PORT MAP ( Y => I1_dup_798_aOUT, IN1 => I1_dup_798_aIN);
and2_1350: AND2
    PORT MAP ( Y => I1_dup_798_aIN, IN1 => n_1695, IN2 => n_1710);
or4_1351: OR4
    PORT MAP ( Y => n_1695, IN1 => n_1696, IN2 => n_1699, IN3 => n_1703, IN4 => n_1707);
and2_1352: AND2
    PORT MAP ( Y => n_1696, IN1 => n_1697, IN2 => n_1698);
inv_1353: INV 
    PORT MAP ( Y => n_1697, IN1 => O_dup_876_aOUT);
inv_1354: INV 
    PORT MAP ( Y => n_1698, IN1 => O_dup_879_aOUT);
and2_1355: AND2
    PORT MAP ( Y => n_1699, IN1 => n_1700, IN2 => n_1702);
inv_1356: INV 
    PORT MAP ( Y => n_1700, IN1 => ix484_a2_dup_588_Q);
inv_1357: INV 
    PORT MAP ( Y => n_1702, IN1 => O_dup_879_aOUT);
and2_1358: AND2
    PORT MAP ( Y => n_1703, IN1 => n_1704, IN2 => n_1706);
inv_1359: INV 
    PORT MAP ( Y => n_1704, IN1 => ix484_a7_dup_583_Q);
inv_1360: INV 
    PORT MAP ( Y => n_1706, IN1 => ix484_a2_dup_588_Q);
and2_1361: AND2
    PORT MAP ( Y => n_1707, IN1 => n_1708, IN2 => n_1709);
inv_1362: INV 
    PORT MAP ( Y => n_1708, IN1 => ix484_a7_dup_583_Q);
inv_1363: INV 
    PORT MAP ( Y => n_1709, IN1 => O_dup_876_aOUT);
delay_1364: DELAY
    PORT MAP ( Y => n_1710, IN1 => O_dup_1665_aIN);
delay_1365: DELAY
    PORT MAP ( Y => O_dup_799_aOUT, IN1 => O_dup_799_aIN1);
and2_1366: AND2
    PORT MAP ( Y => O_dup_799_aIN1, IN1 => n_1712, IN2 => n_1727);
or4_1367: OR4
    PORT MAP ( Y => n_1712, IN1 => n_1713, IN2 => n_1716, IN3 => n_1720, IN4 => n_1724);
and2_1368: AND2
    PORT MAP ( Y => n_1713, IN1 => n_1714, IN2 => n_1715);
inv_1369: INV 
    PORT MAP ( Y => n_1714, IN1 => O_dup_870_aOUT);
inv_1370: INV 
    PORT MAP ( Y => n_1715, IN1 => O_dup_873_aOUT);
and2_1371: AND2
    PORT MAP ( Y => n_1716, IN1 => n_1717, IN2 => n_1719);
inv_1372: INV 
    PORT MAP ( Y => n_1717, IN1 => ix484_a4_dup_586_Q);
inv_1373: INV 
    PORT MAP ( Y => n_1719, IN1 => O_dup_873_aOUT);
and2_1374: AND2
    PORT MAP ( Y => n_1720, IN1 => n_1721, IN2 => n_1723);
inv_1375: INV 
    PORT MAP ( Y => n_1721, IN1 => ix484_a0_dup_590_Q);
inv_1376: INV 
    PORT MAP ( Y => n_1723, IN1 => ix484_a4_dup_586_Q);
and2_1377: AND2
    PORT MAP ( Y => n_1724, IN1 => n_1725, IN2 => n_1726);
inv_1378: INV 
    PORT MAP ( Y => n_1725, IN1 => ix484_a0_dup_590_Q);
inv_1379: INV 
    PORT MAP ( Y => n_1726, IN1 => O_dup_870_aOUT);
delay_1380: DELAY
    PORT MAP ( Y => n_1727, IN1 => I1_dup_798_aIN);
dffe_1381: DFFE
    PORT MAP ( D => ix484_a3_dup_587_aD, CLK => ix484_a3_dup_587_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_587_aENA, Q => ix484_a3_dup_587_Q);
xor2_1382: XOR2
    PORT MAP ( Y => ix484_a3_dup_587_aD, IN1 => n_1734, IN2 => n_1737);
or1_1383: OR1
    PORT MAP ( Y => n_1734, IN1 => n_1735);
and1_1384: AND1
    PORT MAP ( Y => n_1735, IN1 => n_1736);
delay_1385: DELAY
    PORT MAP ( Y => n_1736, IN1 => data(8));
and1_1386: AND1
    PORT MAP ( Y => n_1737, IN1 => gnd);
and1_1387: AND1
    PORT MAP ( Y => n_1738, IN1 => n_1739);
delay_1388: DELAY
    PORT MAP ( Y => n_1739, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1389: DELAY
    PORT MAP ( Y => ix484_a3_dup_587_aCLK, IN1 => n_1738);
and1_1390: AND1
    PORT MAP ( Y => ix484_a3_dup_587_aENA, IN1 => n_1742);
delay_1391: DELAY
    PORT MAP ( Y => n_1742, IN1 => ix484_nx42_aOUT);
dffe_1392: DFFE
    PORT MAP ( D => ix484_a6_dup_584_aD, CLK => ix484_a6_dup_584_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_584_aENA, Q => ix484_a6_dup_584_Q);
xor2_1393: XOR2
    PORT MAP ( Y => ix484_a6_dup_584_aD, IN1 => n_1749, IN2 => n_1752);
or1_1394: OR1
    PORT MAP ( Y => n_1749, IN1 => n_1750);
and1_1395: AND1
    PORT MAP ( Y => n_1750, IN1 => n_1751);
delay_1396: DELAY
    PORT MAP ( Y => n_1751, IN1 => data(8));
and1_1397: AND1
    PORT MAP ( Y => n_1752, IN1 => gnd);
and1_1398: AND1
    PORT MAP ( Y => n_1753, IN1 => n_1754);
delay_1399: DELAY
    PORT MAP ( Y => n_1754, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1400: DELAY
    PORT MAP ( Y => ix484_a6_dup_584_aCLK, IN1 => n_1753);
and1_1401: AND1
    PORT MAP ( Y => ix484_a6_dup_584_aENA, IN1 => n_1757);
delay_1402: DELAY
    PORT MAP ( Y => n_1757, IN1 => ix484_nx39_aOUT);
delay_1403: DELAY
    PORT MAP ( Y => I0_dup_1233_aOUT, IN1 => I0_dup_1233_aIN);
xor2_1404: XOR2
    PORT MAP ( Y => I0_dup_1233_aIN, IN1 => n_1760, IN2 => n_1775);
or4_1405: OR4
    PORT MAP ( Y => n_1760, IN1 => n_1761, IN2 => n_1764, IN3 => n_1768, IN4 => n_1772);
and2_1406: AND2
    PORT MAP ( Y => n_1761, IN1 => n_1762, IN2 => n_1763);
inv_1407: INV 
    PORT MAP ( Y => n_1762, IN1 => O_dup_888_aOUT);
inv_1408: INV 
    PORT MAP ( Y => n_1763, IN1 => O_dup_891_aOUT);
and2_1409: AND2
    PORT MAP ( Y => n_1764, IN1 => n_1765, IN2 => n_1767);
inv_1410: INV 
    PORT MAP ( Y => n_1765, IN1 => ix484_a3_dup_579_Q);
inv_1411: INV 
    PORT MAP ( Y => n_1767, IN1 => O_dup_891_aOUT);
and2_1412: AND2
    PORT MAP ( Y => n_1768, IN1 => n_1769, IN2 => n_1771);
inv_1413: INV 
    PORT MAP ( Y => n_1769, IN1 => ix484_a6_dup_576_Q);
inv_1414: INV 
    PORT MAP ( Y => n_1771, IN1 => ix484_a3_dup_579_Q);
and2_1415: AND2
    PORT MAP ( Y => n_1772, IN1 => n_1773, IN2 => n_1774);
inv_1416: INV 
    PORT MAP ( Y => n_1773, IN1 => ix484_a6_dup_576_Q);
inv_1417: INV 
    PORT MAP ( Y => n_1774, IN1 => O_dup_888_aOUT);
and1_1418: AND1
    PORT MAP ( Y => n_1775, IN1 => gnd);
delay_1419: DELAY
    PORT MAP ( Y => O_dup_1235_aOUT, IN1 => O_dup_1235_aIN);
and2_1420: AND2
    PORT MAP ( Y => O_dup_1235_aIN, IN1 => n_1778, IN2 => n_1793);
or4_1421: OR4
    PORT MAP ( Y => n_1778, IN1 => n_1779, IN2 => n_1782, IN3 => n_1786, IN4 => n_1790);
and2_1422: AND2
    PORT MAP ( Y => n_1779, IN1 => n_1780, IN2 => n_1781);
inv_1423: INV 
    PORT MAP ( Y => n_1780, IN1 => O_dup_882_aOUT);
inv_1424: INV 
    PORT MAP ( Y => n_1781, IN1 => O_dup_885_aOUT);
and2_1425: AND2
    PORT MAP ( Y => n_1782, IN1 => n_1783, IN2 => n_1785);
inv_1426: INV 
    PORT MAP ( Y => n_1783, IN1 => ix484_a1_dup_581_Q);
inv_1427: INV 
    PORT MAP ( Y => n_1785, IN1 => O_dup_885_aOUT);
and2_1428: AND2
    PORT MAP ( Y => n_1786, IN1 => n_1787, IN2 => n_1789);
inv_1429: INV 
    PORT MAP ( Y => n_1787, IN1 => ix484_a5_dup_577_Q);
inv_1430: INV 
    PORT MAP ( Y => n_1789, IN1 => ix484_a1_dup_581_Q);
and2_1431: AND2
    PORT MAP ( Y => n_1790, IN1 => n_1791, IN2 => n_1792);
inv_1432: INV 
    PORT MAP ( Y => n_1791, IN1 => ix484_a5_dup_577_Q);
inv_1433: INV 
    PORT MAP ( Y => n_1792, IN1 => O_dup_882_aOUT);
delay_1434: DELAY
    PORT MAP ( Y => n_1793, IN1 => I0_dup_1233_aIN);
delay_1435: DELAY
    PORT MAP ( Y => O_dup_1657_aOUT, IN1 => O_dup_1657_aIN);
and2_1436: AND2
    PORT MAP ( Y => O_dup_1657_aIN, IN1 => n_1796, IN2 => n_1811);
or4_1437: OR4
    PORT MAP ( Y => n_1796, IN1 => n_1797, IN2 => n_1800, IN3 => n_1805, IN4 => n_1808);
and2_1438: AND2
    PORT MAP ( Y => n_1797, IN1 => n_1798, IN2 => n_1799);
inv_1439: INV 
    PORT MAP ( Y => n_1798, IN1 => outregrd_aOUT);
delay_1440: DELAY
    PORT MAP ( Y => n_1799, IN1 => n3_aOUT);
and2_1441: AND2
    PORT MAP ( Y => n_1800, IN1 => n_1801, IN2 => n_1803);
inv_1442: INV 
    PORT MAP ( Y => n_1801, IN1 => outreg_val9_Q);
inv_1443: INV 
    PORT MAP ( Y => n_1803, IN1 => progcntr_val9_Q);
and2_1444: AND2
    PORT MAP ( Y => n_1805, IN1 => n_1806, IN2 => n_1807);
inv_1445: INV 
    PORT MAP ( Y => n_1806, IN1 => progcntr_val9_Q);
inv_1446: INV 
    PORT MAP ( Y => n_1807, IN1 => outregrd_aOUT);
and2_1447: AND2
    PORT MAP ( Y => n_1808, IN1 => n_1809, IN2 => n_1810);
inv_1448: INV 
    PORT MAP ( Y => n_1809, IN1 => outreg_val9_Q);
delay_1449: DELAY
    PORT MAP ( Y => n_1810, IN1 => n3_aOUT);
delay_1450: DELAY
    PORT MAP ( Y => n_1811, IN1 => O_dup_1235_aIN);
delay_1451: DELAY
    PORT MAP ( Y => I1_dup_795_aOUT, IN1 => I1_dup_795_aIN);
and2_1452: AND2
    PORT MAP ( Y => I1_dup_795_aIN, IN1 => n_1814, IN2 => n_1829);
or4_1453: OR4
    PORT MAP ( Y => n_1814, IN1 => n_1815, IN2 => n_1818, IN3 => n_1822, IN4 => n_1826);
and2_1454: AND2
    PORT MAP ( Y => n_1815, IN1 => n_1816, IN2 => n_1817);
inv_1455: INV 
    PORT MAP ( Y => n_1816, IN1 => O_dup_876_aOUT);
inv_1456: INV 
    PORT MAP ( Y => n_1817, IN1 => O_dup_879_aOUT);
and2_1457: AND2
    PORT MAP ( Y => n_1818, IN1 => n_1819, IN2 => n_1821);
inv_1458: INV 
    PORT MAP ( Y => n_1819, IN1 => ix484_a2_dup_580_Q);
inv_1459: INV 
    PORT MAP ( Y => n_1821, IN1 => O_dup_879_aOUT);
and2_1460: AND2
    PORT MAP ( Y => n_1822, IN1 => n_1823, IN2 => n_1825);
inv_1461: INV 
    PORT MAP ( Y => n_1823, IN1 => ix484_a7_dup_575_Q);
inv_1462: INV 
    PORT MAP ( Y => n_1825, IN1 => ix484_a2_dup_580_Q);
and2_1463: AND2
    PORT MAP ( Y => n_1826, IN1 => n_1827, IN2 => n_1828);
inv_1464: INV 
    PORT MAP ( Y => n_1827, IN1 => ix484_a7_dup_575_Q);
inv_1465: INV 
    PORT MAP ( Y => n_1828, IN1 => O_dup_876_aOUT);
delay_1466: DELAY
    PORT MAP ( Y => n_1829, IN1 => O_dup_1657_aIN);
delay_1467: DELAY
    PORT MAP ( Y => O_dup_796_aOUT, IN1 => O_dup_796_aIN1);
and2_1468: AND2
    PORT MAP ( Y => O_dup_796_aIN1, IN1 => n_1831, IN2 => n_1846);
or4_1469: OR4
    PORT MAP ( Y => n_1831, IN1 => n_1832, IN2 => n_1835, IN3 => n_1839, IN4 => n_1843);
and2_1470: AND2
    PORT MAP ( Y => n_1832, IN1 => n_1833, IN2 => n_1834);
inv_1471: INV 
    PORT MAP ( Y => n_1833, IN1 => O_dup_870_aOUT);
inv_1472: INV 
    PORT MAP ( Y => n_1834, IN1 => O_dup_873_aOUT);
and2_1473: AND2
    PORT MAP ( Y => n_1835, IN1 => n_1836, IN2 => n_1838);
inv_1474: INV 
    PORT MAP ( Y => n_1836, IN1 => ix484_a4_dup_578_Q);
inv_1475: INV 
    PORT MAP ( Y => n_1838, IN1 => O_dup_873_aOUT);
and2_1476: AND2
    PORT MAP ( Y => n_1839, IN1 => n_1840, IN2 => n_1842);
inv_1477: INV 
    PORT MAP ( Y => n_1840, IN1 => ix484_a0_dup_582_Q);
inv_1478: INV 
    PORT MAP ( Y => n_1842, IN1 => ix484_a4_dup_578_Q);
and2_1479: AND2
    PORT MAP ( Y => n_1843, IN1 => n_1844, IN2 => n_1845);
inv_1480: INV 
    PORT MAP ( Y => n_1844, IN1 => ix484_a0_dup_582_Q);
inv_1481: INV 
    PORT MAP ( Y => n_1845, IN1 => O_dup_870_aOUT);
delay_1482: DELAY
    PORT MAP ( Y => n_1846, IN1 => I1_dup_795_aIN);
dffe_1483: DFFE
    PORT MAP ( D => ix484_a3_dup_579_aD, CLK => ix484_a3_dup_579_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_579_aENA, Q => ix484_a3_dup_579_Q);
xor2_1484: XOR2
    PORT MAP ( Y => ix484_a3_dup_579_aD, IN1 => n_1853, IN2 => n_1856);
or1_1485: OR1
    PORT MAP ( Y => n_1853, IN1 => n_1854);
and1_1486: AND1
    PORT MAP ( Y => n_1854, IN1 => n_1855);
delay_1487: DELAY
    PORT MAP ( Y => n_1855, IN1 => data(9));
and1_1488: AND1
    PORT MAP ( Y => n_1856, IN1 => gnd);
and1_1489: AND1
    PORT MAP ( Y => n_1857, IN1 => n_1858);
delay_1490: DELAY
    PORT MAP ( Y => n_1858, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1491: DELAY
    PORT MAP ( Y => ix484_a3_dup_579_aCLK, IN1 => n_1857);
and1_1492: AND1
    PORT MAP ( Y => ix484_a3_dup_579_aENA, IN1 => n_1861);
delay_1493: DELAY
    PORT MAP ( Y => n_1861, IN1 => ix484_nx42_aOUT);
dffe_1494: DFFE
    PORT MAP ( D => ix484_a6_dup_576_aD, CLK => ix484_a6_dup_576_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_576_aENA, Q => ix484_a6_dup_576_Q);
xor2_1495: XOR2
    PORT MAP ( Y => ix484_a6_dup_576_aD, IN1 => n_1868, IN2 => n_1871);
or1_1496: OR1
    PORT MAP ( Y => n_1868, IN1 => n_1869);
and1_1497: AND1
    PORT MAP ( Y => n_1869, IN1 => n_1870);
delay_1498: DELAY
    PORT MAP ( Y => n_1870, IN1 => data(9));
and1_1499: AND1
    PORT MAP ( Y => n_1871, IN1 => gnd);
and1_1500: AND1
    PORT MAP ( Y => n_1872, IN1 => n_1873);
delay_1501: DELAY
    PORT MAP ( Y => n_1873, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1502: DELAY
    PORT MAP ( Y => ix484_a6_dup_576_aCLK, IN1 => n_1872);
and1_1503: AND1
    PORT MAP ( Y => ix484_a6_dup_576_aENA, IN1 => n_1876);
delay_1504: DELAY
    PORT MAP ( Y => n_1876, IN1 => ix484_nx39_aOUT);
delay_1505: DELAY
    PORT MAP ( Y => I0_dup_1205_aOUT, IN1 => I0_dup_1205_aIN);
xor2_1506: XOR2
    PORT MAP ( Y => I0_dup_1205_aIN, IN1 => n_1879, IN2 => n_1894);
or4_1507: OR4
    PORT MAP ( Y => n_1879, IN1 => n_1880, IN2 => n_1883, IN3 => n_1887, IN4 => n_1891);
and2_1508: AND2
    PORT MAP ( Y => n_1880, IN1 => n_1881, IN2 => n_1882);
inv_1509: INV 
    PORT MAP ( Y => n_1881, IN1 => O_dup_888_aOUT);
inv_1510: INV 
    PORT MAP ( Y => n_1882, IN1 => O_dup_891_aOUT);
and2_1511: AND2
    PORT MAP ( Y => n_1883, IN1 => n_1884, IN2 => n_1886);
inv_1512: INV 
    PORT MAP ( Y => n_1884, IN1 => ix484_a3_dup_571_Q);
inv_1513: INV 
    PORT MAP ( Y => n_1886, IN1 => O_dup_891_aOUT);
and2_1514: AND2
    PORT MAP ( Y => n_1887, IN1 => n_1888, IN2 => n_1890);
inv_1515: INV 
    PORT MAP ( Y => n_1888, IN1 => ix484_a6_dup_568_Q);
inv_1516: INV 
    PORT MAP ( Y => n_1890, IN1 => ix484_a3_dup_571_Q);
and2_1517: AND2
    PORT MAP ( Y => n_1891, IN1 => n_1892, IN2 => n_1893);
inv_1518: INV 
    PORT MAP ( Y => n_1892, IN1 => ix484_a6_dup_568_Q);
inv_1519: INV 
    PORT MAP ( Y => n_1893, IN1 => O_dup_888_aOUT);
and1_1520: AND1
    PORT MAP ( Y => n_1894, IN1 => gnd);
delay_1521: DELAY
    PORT MAP ( Y => O_dup_1207_aOUT, IN1 => O_dup_1207_aIN);
and2_1522: AND2
    PORT MAP ( Y => O_dup_1207_aIN, IN1 => n_1897, IN2 => n_1912);
or4_1523: OR4
    PORT MAP ( Y => n_1897, IN1 => n_1898, IN2 => n_1901, IN3 => n_1905, IN4 => n_1909);
and2_1524: AND2
    PORT MAP ( Y => n_1898, IN1 => n_1899, IN2 => n_1900);
inv_1525: INV 
    PORT MAP ( Y => n_1899, IN1 => O_dup_882_aOUT);
inv_1526: INV 
    PORT MAP ( Y => n_1900, IN1 => O_dup_885_aOUT);
and2_1527: AND2
    PORT MAP ( Y => n_1901, IN1 => n_1902, IN2 => n_1904);
inv_1528: INV 
    PORT MAP ( Y => n_1902, IN1 => ix484_a1_dup_573_Q);
inv_1529: INV 
    PORT MAP ( Y => n_1904, IN1 => O_dup_885_aOUT);
and2_1530: AND2
    PORT MAP ( Y => n_1905, IN1 => n_1906, IN2 => n_1908);
inv_1531: INV 
    PORT MAP ( Y => n_1906, IN1 => ix484_a5_dup_569_Q);
inv_1532: INV 
    PORT MAP ( Y => n_1908, IN1 => ix484_a1_dup_573_Q);
and2_1533: AND2
    PORT MAP ( Y => n_1909, IN1 => n_1910, IN2 => n_1911);
inv_1534: INV 
    PORT MAP ( Y => n_1910, IN1 => ix484_a5_dup_569_Q);
inv_1535: INV 
    PORT MAP ( Y => n_1911, IN1 => O_dup_882_aOUT);
delay_1536: DELAY
    PORT MAP ( Y => n_1912, IN1 => I0_dup_1205_aIN);
delay_1537: DELAY
    PORT MAP ( Y => O_dup_1649_aOUT, IN1 => O_dup_1649_aIN);
and2_1538: AND2
    PORT MAP ( Y => O_dup_1649_aIN, IN1 => n_1915, IN2 => n_1930);
or4_1539: OR4
    PORT MAP ( Y => n_1915, IN1 => n_1916, IN2 => n_1919, IN3 => n_1924, IN4 => n_1927);
and2_1540: AND2
    PORT MAP ( Y => n_1916, IN1 => n_1917, IN2 => n_1918);
inv_1541: INV 
    PORT MAP ( Y => n_1917, IN1 => outregrd_aOUT);
delay_1542: DELAY
    PORT MAP ( Y => n_1918, IN1 => n3_aOUT);
and2_1543: AND2
    PORT MAP ( Y => n_1919, IN1 => n_1920, IN2 => n_1922);
inv_1544: INV 
    PORT MAP ( Y => n_1920, IN1 => outreg_val10_Q);
inv_1545: INV 
    PORT MAP ( Y => n_1922, IN1 => progcntr_val10_Q);
and2_1546: AND2
    PORT MAP ( Y => n_1924, IN1 => n_1925, IN2 => n_1926);
inv_1547: INV 
    PORT MAP ( Y => n_1925, IN1 => progcntr_val10_Q);
inv_1548: INV 
    PORT MAP ( Y => n_1926, IN1 => outregrd_aOUT);
and2_1549: AND2
    PORT MAP ( Y => n_1927, IN1 => n_1928, IN2 => n_1929);
inv_1550: INV 
    PORT MAP ( Y => n_1928, IN1 => outreg_val10_Q);
delay_1551: DELAY
    PORT MAP ( Y => n_1929, IN1 => n3_aOUT);
delay_1552: DELAY
    PORT MAP ( Y => n_1930, IN1 => O_dup_1207_aIN);
delay_1553: DELAY
    PORT MAP ( Y => I1_dup_792_aOUT, IN1 => I1_dup_792_aIN);
and2_1554: AND2
    PORT MAP ( Y => I1_dup_792_aIN, IN1 => n_1933, IN2 => n_1948);
or4_1555: OR4
    PORT MAP ( Y => n_1933, IN1 => n_1934, IN2 => n_1937, IN3 => n_1941, IN4 => n_1945);
and2_1556: AND2
    PORT MAP ( Y => n_1934, IN1 => n_1935, IN2 => n_1936);
inv_1557: INV 
    PORT MAP ( Y => n_1935, IN1 => O_dup_876_aOUT);
inv_1558: INV 
    PORT MAP ( Y => n_1936, IN1 => O_dup_879_aOUT);
and2_1559: AND2
    PORT MAP ( Y => n_1937, IN1 => n_1938, IN2 => n_1940);
inv_1560: INV 
    PORT MAP ( Y => n_1938, IN1 => ix484_a2_dup_572_Q);
inv_1561: INV 
    PORT MAP ( Y => n_1940, IN1 => O_dup_879_aOUT);
and2_1562: AND2
    PORT MAP ( Y => n_1941, IN1 => n_1942, IN2 => n_1944);
inv_1563: INV 
    PORT MAP ( Y => n_1942, IN1 => ix484_a7_dup_567_Q);
inv_1564: INV 
    PORT MAP ( Y => n_1944, IN1 => ix484_a2_dup_572_Q);
and2_1565: AND2
    PORT MAP ( Y => n_1945, IN1 => n_1946, IN2 => n_1947);
inv_1566: INV 
    PORT MAP ( Y => n_1946, IN1 => ix484_a7_dup_567_Q);
inv_1567: INV 
    PORT MAP ( Y => n_1947, IN1 => O_dup_876_aOUT);
delay_1568: DELAY
    PORT MAP ( Y => n_1948, IN1 => O_dup_1649_aIN);
delay_1569: DELAY
    PORT MAP ( Y => O_dup_793_aOUT, IN1 => O_dup_793_aIN1);
and2_1570: AND2
    PORT MAP ( Y => O_dup_793_aIN1, IN1 => n_1950, IN2 => n_1965);
or4_1571: OR4
    PORT MAP ( Y => n_1950, IN1 => n_1951, IN2 => n_1954, IN3 => n_1958, IN4 => n_1962);
and2_1572: AND2
    PORT MAP ( Y => n_1951, IN1 => n_1952, IN2 => n_1953);
inv_1573: INV 
    PORT MAP ( Y => n_1952, IN1 => O_dup_870_aOUT);
inv_1574: INV 
    PORT MAP ( Y => n_1953, IN1 => O_dup_873_aOUT);
and2_1575: AND2
    PORT MAP ( Y => n_1954, IN1 => n_1955, IN2 => n_1957);
inv_1576: INV 
    PORT MAP ( Y => n_1955, IN1 => ix484_a4_dup_570_Q);
inv_1577: INV 
    PORT MAP ( Y => n_1957, IN1 => O_dup_873_aOUT);
and2_1578: AND2
    PORT MAP ( Y => n_1958, IN1 => n_1959, IN2 => n_1961);
inv_1579: INV 
    PORT MAP ( Y => n_1959, IN1 => ix484_a0_dup_574_Q);
inv_1580: INV 
    PORT MAP ( Y => n_1961, IN1 => ix484_a4_dup_570_Q);
and2_1581: AND2
    PORT MAP ( Y => n_1962, IN1 => n_1963, IN2 => n_1964);
inv_1582: INV 
    PORT MAP ( Y => n_1963, IN1 => ix484_a0_dup_574_Q);
inv_1583: INV 
    PORT MAP ( Y => n_1964, IN1 => O_dup_870_aOUT);
delay_1584: DELAY
    PORT MAP ( Y => n_1965, IN1 => I1_dup_792_aIN);
dffe_1585: DFFE
    PORT MAP ( D => ix484_a3_dup_571_aD, CLK => ix484_a3_dup_571_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_571_aENA, Q => ix484_a3_dup_571_Q);
xor2_1586: XOR2
    PORT MAP ( Y => ix484_a3_dup_571_aD, IN1 => n_1972, IN2 => n_1975);
or1_1587: OR1
    PORT MAP ( Y => n_1972, IN1 => n_1973);
and1_1588: AND1
    PORT MAP ( Y => n_1973, IN1 => n_1974);
delay_1589: DELAY
    PORT MAP ( Y => n_1974, IN1 => data(10));
and1_1590: AND1
    PORT MAP ( Y => n_1975, IN1 => gnd);
and1_1591: AND1
    PORT MAP ( Y => n_1976, IN1 => n_1977);
delay_1592: DELAY
    PORT MAP ( Y => n_1977, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1593: DELAY
    PORT MAP ( Y => ix484_a3_dup_571_aCLK, IN1 => n_1976);
and1_1594: AND1
    PORT MAP ( Y => ix484_a3_dup_571_aENA, IN1 => n_1980);
delay_1595: DELAY
    PORT MAP ( Y => n_1980, IN1 => ix484_nx42_aOUT);
dffe_1596: DFFE
    PORT MAP ( D => ix484_a6_dup_568_aD, CLK => ix484_a6_dup_568_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_568_aENA, Q => ix484_a6_dup_568_Q);
xor2_1597: XOR2
    PORT MAP ( Y => ix484_a6_dup_568_aD, IN1 => n_1987, IN2 => n_1990);
or1_1598: OR1
    PORT MAP ( Y => n_1987, IN1 => n_1988);
and1_1599: AND1
    PORT MAP ( Y => n_1988, IN1 => n_1989);
delay_1600: DELAY
    PORT MAP ( Y => n_1989, IN1 => data(10));
and1_1601: AND1
    PORT MAP ( Y => n_1990, IN1 => gnd);
and1_1602: AND1
    PORT MAP ( Y => n_1991, IN1 => n_1992);
delay_1603: DELAY
    PORT MAP ( Y => n_1992, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1604: DELAY
    PORT MAP ( Y => ix484_a6_dup_568_aCLK, IN1 => n_1991);
and1_1605: AND1
    PORT MAP ( Y => ix484_a6_dup_568_aENA, IN1 => n_1995);
delay_1606: DELAY
    PORT MAP ( Y => n_1995, IN1 => ix484_nx39_aOUT);
delay_1607: DELAY
    PORT MAP ( Y => I0_dup_1177_aOUT, IN1 => I0_dup_1177_aIN);
xor2_1608: XOR2
    PORT MAP ( Y => I0_dup_1177_aIN, IN1 => n_1998, IN2 => n_2013);
or4_1609: OR4
    PORT MAP ( Y => n_1998, IN1 => n_1999, IN2 => n_2002, IN3 => n_2006, IN4 => n_2010);
and2_1610: AND2
    PORT MAP ( Y => n_1999, IN1 => n_2000, IN2 => n_2001);
inv_1611: INV 
    PORT MAP ( Y => n_2000, IN1 => O_dup_888_aOUT);
inv_1612: INV 
    PORT MAP ( Y => n_2001, IN1 => O_dup_891_aOUT);
and2_1613: AND2
    PORT MAP ( Y => n_2002, IN1 => n_2003, IN2 => n_2005);
inv_1614: INV 
    PORT MAP ( Y => n_2003, IN1 => ix484_a3_dup_563_Q);
inv_1615: INV 
    PORT MAP ( Y => n_2005, IN1 => O_dup_891_aOUT);
and2_1616: AND2
    PORT MAP ( Y => n_2006, IN1 => n_2007, IN2 => n_2009);
inv_1617: INV 
    PORT MAP ( Y => n_2007, IN1 => ix484_a6_dup_560_Q);
inv_1618: INV 
    PORT MAP ( Y => n_2009, IN1 => ix484_a3_dup_563_Q);
and2_1619: AND2
    PORT MAP ( Y => n_2010, IN1 => n_2011, IN2 => n_2012);
inv_1620: INV 
    PORT MAP ( Y => n_2011, IN1 => ix484_a6_dup_560_Q);
inv_1621: INV 
    PORT MAP ( Y => n_2012, IN1 => O_dup_888_aOUT);
and1_1622: AND1
    PORT MAP ( Y => n_2013, IN1 => gnd);
delay_1623: DELAY
    PORT MAP ( Y => O_dup_1179_aOUT, IN1 => O_dup_1179_aIN);
and2_1624: AND2
    PORT MAP ( Y => O_dup_1179_aIN, IN1 => n_2016, IN2 => n_2031);
or4_1625: OR4
    PORT MAP ( Y => n_2016, IN1 => n_2017, IN2 => n_2020, IN3 => n_2024, IN4 => n_2028);
and2_1626: AND2
    PORT MAP ( Y => n_2017, IN1 => n_2018, IN2 => n_2019);
inv_1627: INV 
    PORT MAP ( Y => n_2018, IN1 => O_dup_882_aOUT);
inv_1628: INV 
    PORT MAP ( Y => n_2019, IN1 => O_dup_885_aOUT);
and2_1629: AND2
    PORT MAP ( Y => n_2020, IN1 => n_2021, IN2 => n_2023);
inv_1630: INV 
    PORT MAP ( Y => n_2021, IN1 => ix484_a1_dup_565_Q);
inv_1631: INV 
    PORT MAP ( Y => n_2023, IN1 => O_dup_885_aOUT);
and2_1632: AND2
    PORT MAP ( Y => n_2024, IN1 => n_2025, IN2 => n_2027);
inv_1633: INV 
    PORT MAP ( Y => n_2025, IN1 => ix484_a5_dup_561_Q);
inv_1634: INV 
    PORT MAP ( Y => n_2027, IN1 => ix484_a1_dup_565_Q);
and2_1635: AND2
    PORT MAP ( Y => n_2028, IN1 => n_2029, IN2 => n_2030);
inv_1636: INV 
    PORT MAP ( Y => n_2029, IN1 => ix484_a5_dup_561_Q);
inv_1637: INV 
    PORT MAP ( Y => n_2030, IN1 => O_dup_882_aOUT);
delay_1638: DELAY
    PORT MAP ( Y => n_2031, IN1 => I0_dup_1177_aIN);
delay_1639: DELAY
    PORT MAP ( Y => O_dup_1641_aOUT, IN1 => O_dup_1641_aIN);
and2_1640: AND2
    PORT MAP ( Y => O_dup_1641_aIN, IN1 => n_2034, IN2 => n_2049);
or4_1641: OR4
    PORT MAP ( Y => n_2034, IN1 => n_2035, IN2 => n_2038, IN3 => n_2043, IN4 => n_2046);
and2_1642: AND2
    PORT MAP ( Y => n_2035, IN1 => n_2036, IN2 => n_2037);
inv_1643: INV 
    PORT MAP ( Y => n_2036, IN1 => outregrd_aOUT);
delay_1644: DELAY
    PORT MAP ( Y => n_2037, IN1 => n3_aOUT);
and2_1645: AND2
    PORT MAP ( Y => n_2038, IN1 => n_2039, IN2 => n_2041);
inv_1646: INV 
    PORT MAP ( Y => n_2039, IN1 => outreg_val11_Q);
inv_1647: INV 
    PORT MAP ( Y => n_2041, IN1 => progcntr_val11_Q);
and2_1648: AND2
    PORT MAP ( Y => n_2043, IN1 => n_2044, IN2 => n_2045);
inv_1649: INV 
    PORT MAP ( Y => n_2044, IN1 => progcntr_val11_Q);
inv_1650: INV 
    PORT MAP ( Y => n_2045, IN1 => outregrd_aOUT);
and2_1651: AND2
    PORT MAP ( Y => n_2046, IN1 => n_2047, IN2 => n_2048);
inv_1652: INV 
    PORT MAP ( Y => n_2047, IN1 => outreg_val11_Q);
delay_1653: DELAY
    PORT MAP ( Y => n_2048, IN1 => n3_aOUT);
delay_1654: DELAY
    PORT MAP ( Y => n_2049, IN1 => O_dup_1179_aIN);
delay_1655: DELAY
    PORT MAP ( Y => I1_dup_789_aOUT, IN1 => I1_dup_789_aIN);
and2_1656: AND2
    PORT MAP ( Y => I1_dup_789_aIN, IN1 => n_2052, IN2 => n_2067);
or4_1657: OR4
    PORT MAP ( Y => n_2052, IN1 => n_2053, IN2 => n_2056, IN3 => n_2060, IN4 => n_2064);
and2_1658: AND2
    PORT MAP ( Y => n_2053, IN1 => n_2054, IN2 => n_2055);
inv_1659: INV 
    PORT MAP ( Y => n_2054, IN1 => O_dup_876_aOUT);
inv_1660: INV 
    PORT MAP ( Y => n_2055, IN1 => O_dup_879_aOUT);
and2_1661: AND2
    PORT MAP ( Y => n_2056, IN1 => n_2057, IN2 => n_2059);
inv_1662: INV 
    PORT MAP ( Y => n_2057, IN1 => ix484_a2_dup_564_Q);
inv_1663: INV 
    PORT MAP ( Y => n_2059, IN1 => O_dup_879_aOUT);
and2_1664: AND2
    PORT MAP ( Y => n_2060, IN1 => n_2061, IN2 => n_2063);
inv_1665: INV 
    PORT MAP ( Y => n_2061, IN1 => ix484_a7_dup_559_Q);
inv_1666: INV 
    PORT MAP ( Y => n_2063, IN1 => ix484_a2_dup_564_Q);
and2_1667: AND2
    PORT MAP ( Y => n_2064, IN1 => n_2065, IN2 => n_2066);
inv_1668: INV 
    PORT MAP ( Y => n_2065, IN1 => ix484_a7_dup_559_Q);
inv_1669: INV 
    PORT MAP ( Y => n_2066, IN1 => O_dup_876_aOUT);
delay_1670: DELAY
    PORT MAP ( Y => n_2067, IN1 => O_dup_1641_aIN);
delay_1671: DELAY
    PORT MAP ( Y => O_dup_790_aOUT, IN1 => O_dup_790_aIN1);
and2_1672: AND2
    PORT MAP ( Y => O_dup_790_aIN1, IN1 => n_2069, IN2 => n_2084);
or4_1673: OR4
    PORT MAP ( Y => n_2069, IN1 => n_2070, IN2 => n_2073, IN3 => n_2077, IN4 => n_2081);
and2_1674: AND2
    PORT MAP ( Y => n_2070, IN1 => n_2071, IN2 => n_2072);
inv_1675: INV 
    PORT MAP ( Y => n_2071, IN1 => O_dup_870_aOUT);
inv_1676: INV 
    PORT MAP ( Y => n_2072, IN1 => O_dup_873_aOUT);
and2_1677: AND2
    PORT MAP ( Y => n_2073, IN1 => n_2074, IN2 => n_2076);
inv_1678: INV 
    PORT MAP ( Y => n_2074, IN1 => ix484_a4_dup_562_Q);
inv_1679: INV 
    PORT MAP ( Y => n_2076, IN1 => O_dup_873_aOUT);
and2_1680: AND2
    PORT MAP ( Y => n_2077, IN1 => n_2078, IN2 => n_2080);
inv_1681: INV 
    PORT MAP ( Y => n_2078, IN1 => ix484_a0_dup_566_Q);
inv_1682: INV 
    PORT MAP ( Y => n_2080, IN1 => ix484_a4_dup_562_Q);
and2_1683: AND2
    PORT MAP ( Y => n_2081, IN1 => n_2082, IN2 => n_2083);
inv_1684: INV 
    PORT MAP ( Y => n_2082, IN1 => ix484_a0_dup_566_Q);
inv_1685: INV 
    PORT MAP ( Y => n_2083, IN1 => O_dup_870_aOUT);
delay_1686: DELAY
    PORT MAP ( Y => n_2084, IN1 => I1_dup_789_aIN);
dffe_1687: DFFE
    PORT MAP ( D => ix484_a3_dup_563_aD, CLK => ix484_a3_dup_563_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_563_aENA, Q => ix484_a3_dup_563_Q);
xor2_1688: XOR2
    PORT MAP ( Y => ix484_a3_dup_563_aD, IN1 => n_2091, IN2 => n_2094);
or1_1689: OR1
    PORT MAP ( Y => n_2091, IN1 => n_2092);
and1_1690: AND1
    PORT MAP ( Y => n_2092, IN1 => n_2093);
delay_1691: DELAY
    PORT MAP ( Y => n_2093, IN1 => data(11));
and1_1692: AND1
    PORT MAP ( Y => n_2094, IN1 => gnd);
and1_1693: AND1
    PORT MAP ( Y => n_2095, IN1 => n_2096);
delay_1694: DELAY
    PORT MAP ( Y => n_2096, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1695: DELAY
    PORT MAP ( Y => ix484_a3_dup_563_aCLK, IN1 => n_2095);
and1_1696: AND1
    PORT MAP ( Y => ix484_a3_dup_563_aENA, IN1 => n_2099);
delay_1697: DELAY
    PORT MAP ( Y => n_2099, IN1 => ix484_nx42_aOUT);
dffe_1698: DFFE
    PORT MAP ( D => ix484_a6_dup_560_aD, CLK => ix484_a6_dup_560_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_560_aENA, Q => ix484_a6_dup_560_Q);
xor2_1699: XOR2
    PORT MAP ( Y => ix484_a6_dup_560_aD, IN1 => n_2106, IN2 => n_2109);
or1_1700: OR1
    PORT MAP ( Y => n_2106, IN1 => n_2107);
and1_1701: AND1
    PORT MAP ( Y => n_2107, IN1 => n_2108);
delay_1702: DELAY
    PORT MAP ( Y => n_2108, IN1 => data(11));
and1_1703: AND1
    PORT MAP ( Y => n_2109, IN1 => gnd);
and1_1704: AND1
    PORT MAP ( Y => n_2110, IN1 => n_2111);
delay_1705: DELAY
    PORT MAP ( Y => n_2111, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1706: DELAY
    PORT MAP ( Y => ix484_a6_dup_560_aCLK, IN1 => n_2110);
and1_1707: AND1
    PORT MAP ( Y => ix484_a6_dup_560_aENA, IN1 => n_2114);
delay_1708: DELAY
    PORT MAP ( Y => n_2114, IN1 => ix484_nx39_aOUT);
delay_1709: DELAY
    PORT MAP ( Y => I0_dup_1149_aOUT, IN1 => I0_dup_1149_aIN);
xor2_1710: XOR2
    PORT MAP ( Y => I0_dup_1149_aIN, IN1 => n_2117, IN2 => n_2132);
or4_1711: OR4
    PORT MAP ( Y => n_2117, IN1 => n_2118, IN2 => n_2121, IN3 => n_2125, IN4 => n_2129);
and2_1712: AND2
    PORT MAP ( Y => n_2118, IN1 => n_2119, IN2 => n_2120);
inv_1713: INV 
    PORT MAP ( Y => n_2119, IN1 => O_dup_888_aOUT);
inv_1714: INV 
    PORT MAP ( Y => n_2120, IN1 => O_dup_891_aOUT);
and2_1715: AND2
    PORT MAP ( Y => n_2121, IN1 => n_2122, IN2 => n_2124);
inv_1716: INV 
    PORT MAP ( Y => n_2122, IN1 => ix484_a3_dup_555_Q);
inv_1717: INV 
    PORT MAP ( Y => n_2124, IN1 => O_dup_891_aOUT);
and2_1718: AND2
    PORT MAP ( Y => n_2125, IN1 => n_2126, IN2 => n_2128);
inv_1719: INV 
    PORT MAP ( Y => n_2126, IN1 => ix484_a6_dup_552_Q);
inv_1720: INV 
    PORT MAP ( Y => n_2128, IN1 => ix484_a3_dup_555_Q);
and2_1721: AND2
    PORT MAP ( Y => n_2129, IN1 => n_2130, IN2 => n_2131);
inv_1722: INV 
    PORT MAP ( Y => n_2130, IN1 => ix484_a6_dup_552_Q);
inv_1723: INV 
    PORT MAP ( Y => n_2131, IN1 => O_dup_888_aOUT);
and1_1724: AND1
    PORT MAP ( Y => n_2132, IN1 => gnd);
delay_1725: DELAY
    PORT MAP ( Y => O_dup_1151_aOUT, IN1 => O_dup_1151_aIN);
and2_1726: AND2
    PORT MAP ( Y => O_dup_1151_aIN, IN1 => n_2135, IN2 => n_2150);
or4_1727: OR4
    PORT MAP ( Y => n_2135, IN1 => n_2136, IN2 => n_2139, IN3 => n_2143, IN4 => n_2147);
and2_1728: AND2
    PORT MAP ( Y => n_2136, IN1 => n_2137, IN2 => n_2138);
inv_1729: INV 
    PORT MAP ( Y => n_2137, IN1 => O_dup_882_aOUT);
inv_1730: INV 
    PORT MAP ( Y => n_2138, IN1 => O_dup_885_aOUT);
and2_1731: AND2
    PORT MAP ( Y => n_2139, IN1 => n_2140, IN2 => n_2142);
inv_1732: INV 
    PORT MAP ( Y => n_2140, IN1 => ix484_a1_dup_557_Q);
inv_1733: INV 
    PORT MAP ( Y => n_2142, IN1 => O_dup_885_aOUT);
and2_1734: AND2
    PORT MAP ( Y => n_2143, IN1 => n_2144, IN2 => n_2146);
inv_1735: INV 
    PORT MAP ( Y => n_2144, IN1 => ix484_a5_dup_553_Q);
inv_1736: INV 
    PORT MAP ( Y => n_2146, IN1 => ix484_a1_dup_557_Q);
and2_1737: AND2
    PORT MAP ( Y => n_2147, IN1 => n_2148, IN2 => n_2149);
inv_1738: INV 
    PORT MAP ( Y => n_2148, IN1 => ix484_a5_dup_553_Q);
inv_1739: INV 
    PORT MAP ( Y => n_2149, IN1 => O_dup_882_aOUT);
delay_1740: DELAY
    PORT MAP ( Y => n_2150, IN1 => I0_dup_1149_aIN);
delay_1741: DELAY
    PORT MAP ( Y => O_dup_1633_aOUT, IN1 => O_dup_1633_aIN);
and2_1742: AND2
    PORT MAP ( Y => O_dup_1633_aIN, IN1 => n_2153, IN2 => n_2168);
or4_1743: OR4
    PORT MAP ( Y => n_2153, IN1 => n_2154, IN2 => n_2157, IN3 => n_2162, IN4 => n_2165);
and2_1744: AND2
    PORT MAP ( Y => n_2154, IN1 => n_2155, IN2 => n_2156);
inv_1745: INV 
    PORT MAP ( Y => n_2155, IN1 => outregrd_aOUT);
delay_1746: DELAY
    PORT MAP ( Y => n_2156, IN1 => n3_aOUT);
and2_1747: AND2
    PORT MAP ( Y => n_2157, IN1 => n_2158, IN2 => n_2160);
inv_1748: INV 
    PORT MAP ( Y => n_2158, IN1 => outreg_val12_Q);
inv_1749: INV 
    PORT MAP ( Y => n_2160, IN1 => progcntr_val12_Q);
and2_1750: AND2
    PORT MAP ( Y => n_2162, IN1 => n_2163, IN2 => n_2164);
inv_1751: INV 
    PORT MAP ( Y => n_2163, IN1 => progcntr_val12_Q);
inv_1752: INV 
    PORT MAP ( Y => n_2164, IN1 => outregrd_aOUT);
and2_1753: AND2
    PORT MAP ( Y => n_2165, IN1 => n_2166, IN2 => n_2167);
inv_1754: INV 
    PORT MAP ( Y => n_2166, IN1 => outreg_val12_Q);
delay_1755: DELAY
    PORT MAP ( Y => n_2167, IN1 => n3_aOUT);
delay_1756: DELAY
    PORT MAP ( Y => n_2168, IN1 => O_dup_1151_aIN);
delay_1757: DELAY
    PORT MAP ( Y => I1_dup_786_aOUT, IN1 => I1_dup_786_aIN);
and2_1758: AND2
    PORT MAP ( Y => I1_dup_786_aIN, IN1 => n_2171, IN2 => n_2186);
or4_1759: OR4
    PORT MAP ( Y => n_2171, IN1 => n_2172, IN2 => n_2175, IN3 => n_2179, IN4 => n_2183);
and2_1760: AND2
    PORT MAP ( Y => n_2172, IN1 => n_2173, IN2 => n_2174);
inv_1761: INV 
    PORT MAP ( Y => n_2173, IN1 => O_dup_876_aOUT);
inv_1762: INV 
    PORT MAP ( Y => n_2174, IN1 => O_dup_879_aOUT);
and2_1763: AND2
    PORT MAP ( Y => n_2175, IN1 => n_2176, IN2 => n_2178);
inv_1764: INV 
    PORT MAP ( Y => n_2176, IN1 => ix484_a2_dup_556_Q);
inv_1765: INV 
    PORT MAP ( Y => n_2178, IN1 => O_dup_879_aOUT);
and2_1766: AND2
    PORT MAP ( Y => n_2179, IN1 => n_2180, IN2 => n_2182);
inv_1767: INV 
    PORT MAP ( Y => n_2180, IN1 => ix484_a7_dup_551_Q);
inv_1768: INV 
    PORT MAP ( Y => n_2182, IN1 => ix484_a2_dup_556_Q);
and2_1769: AND2
    PORT MAP ( Y => n_2183, IN1 => n_2184, IN2 => n_2185);
inv_1770: INV 
    PORT MAP ( Y => n_2184, IN1 => ix484_a7_dup_551_Q);
inv_1771: INV 
    PORT MAP ( Y => n_2185, IN1 => O_dup_876_aOUT);
delay_1772: DELAY
    PORT MAP ( Y => n_2186, IN1 => O_dup_1633_aIN);
delay_1773: DELAY
    PORT MAP ( Y => O_dup_787_aOUT, IN1 => O_dup_787_aIN1);
and2_1774: AND2
    PORT MAP ( Y => O_dup_787_aIN1, IN1 => n_2188, IN2 => n_2203);
or4_1775: OR4
    PORT MAP ( Y => n_2188, IN1 => n_2189, IN2 => n_2192, IN3 => n_2196, IN4 => n_2200);
and2_1776: AND2
    PORT MAP ( Y => n_2189, IN1 => n_2190, IN2 => n_2191);
inv_1777: INV 
    PORT MAP ( Y => n_2190, IN1 => O_dup_870_aOUT);
inv_1778: INV 
    PORT MAP ( Y => n_2191, IN1 => O_dup_873_aOUT);
and2_1779: AND2
    PORT MAP ( Y => n_2192, IN1 => n_2193, IN2 => n_2195);
inv_1780: INV 
    PORT MAP ( Y => n_2193, IN1 => ix484_a4_dup_554_Q);
inv_1781: INV 
    PORT MAP ( Y => n_2195, IN1 => O_dup_873_aOUT);
and2_1782: AND2
    PORT MAP ( Y => n_2196, IN1 => n_2197, IN2 => n_2199);
inv_1783: INV 
    PORT MAP ( Y => n_2197, IN1 => ix484_a0_dup_558_Q);
inv_1784: INV 
    PORT MAP ( Y => n_2199, IN1 => ix484_a4_dup_554_Q);
and2_1785: AND2
    PORT MAP ( Y => n_2200, IN1 => n_2201, IN2 => n_2202);
inv_1786: INV 
    PORT MAP ( Y => n_2201, IN1 => ix484_a0_dup_558_Q);
inv_1787: INV 
    PORT MAP ( Y => n_2202, IN1 => O_dup_870_aOUT);
delay_1788: DELAY
    PORT MAP ( Y => n_2203, IN1 => I1_dup_786_aIN);
dffe_1789: DFFE
    PORT MAP ( D => ix484_a3_dup_555_aD, CLK => ix484_a3_dup_555_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_555_aENA, Q => ix484_a3_dup_555_Q);
xor2_1790: XOR2
    PORT MAP ( Y => ix484_a3_dup_555_aD, IN1 => n_2210, IN2 => n_2213);
or1_1791: OR1
    PORT MAP ( Y => n_2210, IN1 => n_2211);
and1_1792: AND1
    PORT MAP ( Y => n_2211, IN1 => n_2212);
delay_1793: DELAY
    PORT MAP ( Y => n_2212, IN1 => data(12));
and1_1794: AND1
    PORT MAP ( Y => n_2213, IN1 => gnd);
and1_1795: AND1
    PORT MAP ( Y => n_2214, IN1 => n_2215);
delay_1796: DELAY
    PORT MAP ( Y => n_2215, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1797: DELAY
    PORT MAP ( Y => ix484_a3_dup_555_aCLK, IN1 => n_2214);
and1_1798: AND1
    PORT MAP ( Y => ix484_a3_dup_555_aENA, IN1 => n_2218);
delay_1799: DELAY
    PORT MAP ( Y => n_2218, IN1 => ix484_nx42_aOUT);
dffe_1800: DFFE
    PORT MAP ( D => ix484_a6_dup_552_aD, CLK => ix484_a6_dup_552_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_552_aENA, Q => ix484_a6_dup_552_Q);
xor2_1801: XOR2
    PORT MAP ( Y => ix484_a6_dup_552_aD, IN1 => n_2225, IN2 => n_2228);
or1_1802: OR1
    PORT MAP ( Y => n_2225, IN1 => n_2226);
and1_1803: AND1
    PORT MAP ( Y => n_2226, IN1 => n_2227);
delay_1804: DELAY
    PORT MAP ( Y => n_2227, IN1 => data(12));
and1_1805: AND1
    PORT MAP ( Y => n_2228, IN1 => gnd);
and1_1806: AND1
    PORT MAP ( Y => n_2229, IN1 => n_2230);
delay_1807: DELAY
    PORT MAP ( Y => n_2230, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1808: DELAY
    PORT MAP ( Y => ix484_a6_dup_552_aCLK, IN1 => n_2229);
and1_1809: AND1
    PORT MAP ( Y => ix484_a6_dup_552_aENA, IN1 => n_2233);
delay_1810: DELAY
    PORT MAP ( Y => n_2233, IN1 => ix484_nx39_aOUT);
delay_1811: DELAY
    PORT MAP ( Y => I0_dup_1121_aOUT, IN1 => I0_dup_1121_aIN);
xor2_1812: XOR2
    PORT MAP ( Y => I0_dup_1121_aIN, IN1 => n_2236, IN2 => n_2251);
or4_1813: OR4
    PORT MAP ( Y => n_2236, IN1 => n_2237, IN2 => n_2240, IN3 => n_2244, IN4 => n_2248);
and2_1814: AND2
    PORT MAP ( Y => n_2237, IN1 => n_2238, IN2 => n_2239);
inv_1815: INV 
    PORT MAP ( Y => n_2238, IN1 => O_dup_888_aOUT);
inv_1816: INV 
    PORT MAP ( Y => n_2239, IN1 => O_dup_891_aOUT);
and2_1817: AND2
    PORT MAP ( Y => n_2240, IN1 => n_2241, IN2 => n_2243);
inv_1818: INV 
    PORT MAP ( Y => n_2241, IN1 => ix484_a3_dup_547_Q);
inv_1819: INV 
    PORT MAP ( Y => n_2243, IN1 => O_dup_891_aOUT);
and2_1820: AND2
    PORT MAP ( Y => n_2244, IN1 => n_2245, IN2 => n_2247);
inv_1821: INV 
    PORT MAP ( Y => n_2245, IN1 => ix484_a6_dup_544_Q);
inv_1822: INV 
    PORT MAP ( Y => n_2247, IN1 => ix484_a3_dup_547_Q);
and2_1823: AND2
    PORT MAP ( Y => n_2248, IN1 => n_2249, IN2 => n_2250);
inv_1824: INV 
    PORT MAP ( Y => n_2249, IN1 => ix484_a6_dup_544_Q);
inv_1825: INV 
    PORT MAP ( Y => n_2250, IN1 => O_dup_888_aOUT);
and1_1826: AND1
    PORT MAP ( Y => n_2251, IN1 => gnd);
delay_1827: DELAY
    PORT MAP ( Y => O_dup_1123_aOUT, IN1 => O_dup_1123_aIN);
and2_1828: AND2
    PORT MAP ( Y => O_dup_1123_aIN, IN1 => n_2254, IN2 => n_2269);
or4_1829: OR4
    PORT MAP ( Y => n_2254, IN1 => n_2255, IN2 => n_2258, IN3 => n_2262, IN4 => n_2266);
and2_1830: AND2
    PORT MAP ( Y => n_2255, IN1 => n_2256, IN2 => n_2257);
inv_1831: INV 
    PORT MAP ( Y => n_2256, IN1 => O_dup_882_aOUT);
inv_1832: INV 
    PORT MAP ( Y => n_2257, IN1 => O_dup_885_aOUT);
and2_1833: AND2
    PORT MAP ( Y => n_2258, IN1 => n_2259, IN2 => n_2261);
inv_1834: INV 
    PORT MAP ( Y => n_2259, IN1 => ix484_a1_dup_549_Q);
inv_1835: INV 
    PORT MAP ( Y => n_2261, IN1 => O_dup_885_aOUT);
and2_1836: AND2
    PORT MAP ( Y => n_2262, IN1 => n_2263, IN2 => n_2265);
inv_1837: INV 
    PORT MAP ( Y => n_2263, IN1 => ix484_a5_dup_545_Q);
inv_1838: INV 
    PORT MAP ( Y => n_2265, IN1 => ix484_a1_dup_549_Q);
and2_1839: AND2
    PORT MAP ( Y => n_2266, IN1 => n_2267, IN2 => n_2268);
inv_1840: INV 
    PORT MAP ( Y => n_2267, IN1 => ix484_a5_dup_545_Q);
inv_1841: INV 
    PORT MAP ( Y => n_2268, IN1 => O_dup_882_aOUT);
delay_1842: DELAY
    PORT MAP ( Y => n_2269, IN1 => I0_dup_1121_aIN);
delay_1843: DELAY
    PORT MAP ( Y => O_dup_1625_aOUT, IN1 => O_dup_1625_aIN);
and2_1844: AND2
    PORT MAP ( Y => O_dup_1625_aIN, IN1 => n_2272, IN2 => n_2287);
or4_1845: OR4
    PORT MAP ( Y => n_2272, IN1 => n_2273, IN2 => n_2276, IN3 => n_2281, IN4 => n_2284);
and2_1846: AND2
    PORT MAP ( Y => n_2273, IN1 => n_2274, IN2 => n_2275);
inv_1847: INV 
    PORT MAP ( Y => n_2274, IN1 => outregrd_aOUT);
delay_1848: DELAY
    PORT MAP ( Y => n_2275, IN1 => n3_aOUT);
and2_1849: AND2
    PORT MAP ( Y => n_2276, IN1 => n_2277, IN2 => n_2279);
inv_1850: INV 
    PORT MAP ( Y => n_2277, IN1 => outreg_val13_Q);
inv_1851: INV 
    PORT MAP ( Y => n_2279, IN1 => progcntr_val13_Q);
and2_1852: AND2
    PORT MAP ( Y => n_2281, IN1 => n_2282, IN2 => n_2283);
inv_1853: INV 
    PORT MAP ( Y => n_2282, IN1 => progcntr_val13_Q);
inv_1854: INV 
    PORT MAP ( Y => n_2283, IN1 => outregrd_aOUT);
and2_1855: AND2
    PORT MAP ( Y => n_2284, IN1 => n_2285, IN2 => n_2286);
inv_1856: INV 
    PORT MAP ( Y => n_2285, IN1 => outreg_val13_Q);
delay_1857: DELAY
    PORT MAP ( Y => n_2286, IN1 => n3_aOUT);
delay_1858: DELAY
    PORT MAP ( Y => n_2287, IN1 => O_dup_1123_aIN);
delay_1859: DELAY
    PORT MAP ( Y => I1_dup_783_aOUT, IN1 => I1_dup_783_aIN);
and2_1860: AND2
    PORT MAP ( Y => I1_dup_783_aIN, IN1 => n_2290, IN2 => n_2305);
or4_1861: OR4
    PORT MAP ( Y => n_2290, IN1 => n_2291, IN2 => n_2294, IN3 => n_2298, IN4 => n_2302);
and2_1862: AND2
    PORT MAP ( Y => n_2291, IN1 => n_2292, IN2 => n_2293);
inv_1863: INV 
    PORT MAP ( Y => n_2292, IN1 => O_dup_876_aOUT);
inv_1864: INV 
    PORT MAP ( Y => n_2293, IN1 => O_dup_879_aOUT);
and2_1865: AND2
    PORT MAP ( Y => n_2294, IN1 => n_2295, IN2 => n_2297);
inv_1866: INV 
    PORT MAP ( Y => n_2295, IN1 => ix484_a2_dup_548_Q);
inv_1867: INV 
    PORT MAP ( Y => n_2297, IN1 => O_dup_879_aOUT);
and2_1868: AND2
    PORT MAP ( Y => n_2298, IN1 => n_2299, IN2 => n_2301);
inv_1869: INV 
    PORT MAP ( Y => n_2299, IN1 => ix484_a7_dup_543_Q);
inv_1870: INV 
    PORT MAP ( Y => n_2301, IN1 => ix484_a2_dup_548_Q);
and2_1871: AND2
    PORT MAP ( Y => n_2302, IN1 => n_2303, IN2 => n_2304);
inv_1872: INV 
    PORT MAP ( Y => n_2303, IN1 => ix484_a7_dup_543_Q);
inv_1873: INV 
    PORT MAP ( Y => n_2304, IN1 => O_dup_876_aOUT);
delay_1874: DELAY
    PORT MAP ( Y => n_2305, IN1 => O_dup_1625_aIN);
delay_1875: DELAY
    PORT MAP ( Y => O_dup_784_aOUT, IN1 => O_dup_784_aIN1);
and2_1876: AND2
    PORT MAP ( Y => O_dup_784_aIN1, IN1 => n_2307, IN2 => n_2322);
or4_1877: OR4
    PORT MAP ( Y => n_2307, IN1 => n_2308, IN2 => n_2311, IN3 => n_2315, IN4 => n_2319);
and2_1878: AND2
    PORT MAP ( Y => n_2308, IN1 => n_2309, IN2 => n_2310);
inv_1879: INV 
    PORT MAP ( Y => n_2309, IN1 => O_dup_870_aOUT);
inv_1880: INV 
    PORT MAP ( Y => n_2310, IN1 => O_dup_873_aOUT);
and2_1881: AND2
    PORT MAP ( Y => n_2311, IN1 => n_2312, IN2 => n_2314);
inv_1882: INV 
    PORT MAP ( Y => n_2312, IN1 => ix484_a4_dup_546_Q);
inv_1883: INV 
    PORT MAP ( Y => n_2314, IN1 => O_dup_873_aOUT);
and2_1884: AND2
    PORT MAP ( Y => n_2315, IN1 => n_2316, IN2 => n_2318);
inv_1885: INV 
    PORT MAP ( Y => n_2316, IN1 => ix484_a0_dup_550_Q);
inv_1886: INV 
    PORT MAP ( Y => n_2318, IN1 => ix484_a4_dup_546_Q);
and2_1887: AND2
    PORT MAP ( Y => n_2319, IN1 => n_2320, IN2 => n_2321);
inv_1888: INV 
    PORT MAP ( Y => n_2320, IN1 => ix484_a0_dup_550_Q);
inv_1889: INV 
    PORT MAP ( Y => n_2321, IN1 => O_dup_870_aOUT);
delay_1890: DELAY
    PORT MAP ( Y => n_2322, IN1 => I1_dup_783_aIN);
dffe_1891: DFFE
    PORT MAP ( D => ix484_a3_dup_547_aD, CLK => ix484_a3_dup_547_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_547_aENA, Q => ix484_a3_dup_547_Q);
xor2_1892: XOR2
    PORT MAP ( Y => ix484_a3_dup_547_aD, IN1 => n_2329, IN2 => n_2332);
or1_1893: OR1
    PORT MAP ( Y => n_2329, IN1 => n_2330);
and1_1894: AND1
    PORT MAP ( Y => n_2330, IN1 => n_2331);
delay_1895: DELAY
    PORT MAP ( Y => n_2331, IN1 => data(13));
and1_1896: AND1
    PORT MAP ( Y => n_2332, IN1 => gnd);
and1_1897: AND1
    PORT MAP ( Y => n_2333, IN1 => n_2334);
delay_1898: DELAY
    PORT MAP ( Y => n_2334, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1899: DELAY
    PORT MAP ( Y => ix484_a3_dup_547_aCLK, IN1 => n_2333);
and1_1900: AND1
    PORT MAP ( Y => ix484_a3_dup_547_aENA, IN1 => n_2337);
delay_1901: DELAY
    PORT MAP ( Y => n_2337, IN1 => ix484_nx42_aOUT);
dffe_1902: DFFE
    PORT MAP ( D => ix484_a6_dup_544_aD, CLK => ix484_a6_dup_544_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_544_aENA, Q => ix484_a6_dup_544_Q);
xor2_1903: XOR2
    PORT MAP ( Y => ix484_a6_dup_544_aD, IN1 => n_2344, IN2 => n_2347);
or1_1904: OR1
    PORT MAP ( Y => n_2344, IN1 => n_2345);
and1_1905: AND1
    PORT MAP ( Y => n_2345, IN1 => n_2346);
delay_1906: DELAY
    PORT MAP ( Y => n_2346, IN1 => data(13));
and1_1907: AND1
    PORT MAP ( Y => n_2347, IN1 => gnd);
and1_1908: AND1
    PORT MAP ( Y => n_2348, IN1 => n_2349);
delay_1909: DELAY
    PORT MAP ( Y => n_2349, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_1910: DELAY
    PORT MAP ( Y => ix484_a6_dup_544_aCLK, IN1 => n_2348);
and1_1911: AND1
    PORT MAP ( Y => ix484_a6_dup_544_aENA, IN1 => n_2352);
delay_1912: DELAY
    PORT MAP ( Y => n_2352, IN1 => ix484_nx39_aOUT);
delay_1913: DELAY
    PORT MAP ( Y => I0_dup_1093_aOUT, IN1 => I0_dup_1093_aIN);
xor2_1914: XOR2
    PORT MAP ( Y => I0_dup_1093_aIN, IN1 => n_2355, IN2 => n_2370);
or4_1915: OR4
    PORT MAP ( Y => n_2355, IN1 => n_2356, IN2 => n_2359, IN3 => n_2363, IN4 => n_2367);
and2_1916: AND2
    PORT MAP ( Y => n_2356, IN1 => n_2357, IN2 => n_2358);
inv_1917: INV 
    PORT MAP ( Y => n_2357, IN1 => O_dup_888_aOUT);
inv_1918: INV 
    PORT MAP ( Y => n_2358, IN1 => O_dup_891_aOUT);
and2_1919: AND2
    PORT MAP ( Y => n_2359, IN1 => n_2360, IN2 => n_2362);
inv_1920: INV 
    PORT MAP ( Y => n_2360, IN1 => ix484_a3_dup_539_Q);
inv_1921: INV 
    PORT MAP ( Y => n_2362, IN1 => O_dup_891_aOUT);
and2_1922: AND2
    PORT MAP ( Y => n_2363, IN1 => n_2364, IN2 => n_2366);
inv_1923: INV 
    PORT MAP ( Y => n_2364, IN1 => ix484_a6_dup_536_Q);
inv_1924: INV 
    PORT MAP ( Y => n_2366, IN1 => ix484_a3_dup_539_Q);
and2_1925: AND2
    PORT MAP ( Y => n_2367, IN1 => n_2368, IN2 => n_2369);
inv_1926: INV 
    PORT MAP ( Y => n_2368, IN1 => ix484_a6_dup_536_Q);
inv_1927: INV 
    PORT MAP ( Y => n_2369, IN1 => O_dup_888_aOUT);
and1_1928: AND1
    PORT MAP ( Y => n_2370, IN1 => gnd);
delay_1929: DELAY
    PORT MAP ( Y => O_dup_1095_aOUT, IN1 => O_dup_1095_aIN);
and2_1930: AND2
    PORT MAP ( Y => O_dup_1095_aIN, IN1 => n_2373, IN2 => n_2388);
or4_1931: OR4
    PORT MAP ( Y => n_2373, IN1 => n_2374, IN2 => n_2377, IN3 => n_2381, IN4 => n_2385);
and2_1932: AND2
    PORT MAP ( Y => n_2374, IN1 => n_2375, IN2 => n_2376);
inv_1933: INV 
    PORT MAP ( Y => n_2375, IN1 => O_dup_882_aOUT);
inv_1934: INV 
    PORT MAP ( Y => n_2376, IN1 => O_dup_885_aOUT);
and2_1935: AND2
    PORT MAP ( Y => n_2377, IN1 => n_2378, IN2 => n_2380);
inv_1936: INV 
    PORT MAP ( Y => n_2378, IN1 => ix484_a1_dup_541_Q);
inv_1937: INV 
    PORT MAP ( Y => n_2380, IN1 => O_dup_885_aOUT);
and2_1938: AND2
    PORT MAP ( Y => n_2381, IN1 => n_2382, IN2 => n_2384);
inv_1939: INV 
    PORT MAP ( Y => n_2382, IN1 => ix484_a5_dup_537_Q);
inv_1940: INV 
    PORT MAP ( Y => n_2384, IN1 => ix484_a1_dup_541_Q);
and2_1941: AND2
    PORT MAP ( Y => n_2385, IN1 => n_2386, IN2 => n_2387);
inv_1942: INV 
    PORT MAP ( Y => n_2386, IN1 => ix484_a5_dup_537_Q);
inv_1943: INV 
    PORT MAP ( Y => n_2387, IN1 => O_dup_882_aOUT);
delay_1944: DELAY
    PORT MAP ( Y => n_2388, IN1 => I0_dup_1093_aIN);
delay_1945: DELAY
    PORT MAP ( Y => O_dup_1617_aOUT, IN1 => O_dup_1617_aIN);
and2_1946: AND2
    PORT MAP ( Y => O_dup_1617_aIN, IN1 => n_2391, IN2 => n_2406);
or4_1947: OR4
    PORT MAP ( Y => n_2391, IN1 => n_2392, IN2 => n_2395, IN3 => n_2400, IN4 => n_2403);
and2_1948: AND2
    PORT MAP ( Y => n_2392, IN1 => n_2393, IN2 => n_2394);
inv_1949: INV 
    PORT MAP ( Y => n_2393, IN1 => outregrd_aOUT);
delay_1950: DELAY
    PORT MAP ( Y => n_2394, IN1 => n3_aOUT);
and2_1951: AND2
    PORT MAP ( Y => n_2395, IN1 => n_2396, IN2 => n_2398);
inv_1952: INV 
    PORT MAP ( Y => n_2396, IN1 => outreg_val14_Q);
inv_1953: INV 
    PORT MAP ( Y => n_2398, IN1 => progcntr_val14_Q);
and2_1954: AND2
    PORT MAP ( Y => n_2400, IN1 => n_2401, IN2 => n_2402);
inv_1955: INV 
    PORT MAP ( Y => n_2401, IN1 => progcntr_val14_Q);
inv_1956: INV 
    PORT MAP ( Y => n_2402, IN1 => outregrd_aOUT);
and2_1957: AND2
    PORT MAP ( Y => n_2403, IN1 => n_2404, IN2 => n_2405);
inv_1958: INV 
    PORT MAP ( Y => n_2404, IN1 => outreg_val14_Q);
delay_1959: DELAY
    PORT MAP ( Y => n_2405, IN1 => n3_aOUT);
delay_1960: DELAY
    PORT MAP ( Y => n_2406, IN1 => O_dup_1095_aIN);
delay_1961: DELAY
    PORT MAP ( Y => I1_dup_780_aOUT, IN1 => I1_dup_780_aIN);
and2_1962: AND2
    PORT MAP ( Y => I1_dup_780_aIN, IN1 => n_2409, IN2 => n_2424);
or4_1963: OR4
    PORT MAP ( Y => n_2409, IN1 => n_2410, IN2 => n_2413, IN3 => n_2417, IN4 => n_2421);
and2_1964: AND2
    PORT MAP ( Y => n_2410, IN1 => n_2411, IN2 => n_2412);
inv_1965: INV 
    PORT MAP ( Y => n_2411, IN1 => O_dup_876_aOUT);
inv_1966: INV 
    PORT MAP ( Y => n_2412, IN1 => O_dup_879_aOUT);
and2_1967: AND2
    PORT MAP ( Y => n_2413, IN1 => n_2414, IN2 => n_2416);
inv_1968: INV 
    PORT MAP ( Y => n_2414, IN1 => ix484_a2_dup_540_Q);
inv_1969: INV 
    PORT MAP ( Y => n_2416, IN1 => O_dup_879_aOUT);
and2_1970: AND2
    PORT MAP ( Y => n_2417, IN1 => n_2418, IN2 => n_2420);
inv_1971: INV 
    PORT MAP ( Y => n_2418, IN1 => ix484_a7_dup_535_Q);
inv_1972: INV 
    PORT MAP ( Y => n_2420, IN1 => ix484_a2_dup_540_Q);
and2_1973: AND2
    PORT MAP ( Y => n_2421, IN1 => n_2422, IN2 => n_2423);
inv_1974: INV 
    PORT MAP ( Y => n_2422, IN1 => ix484_a7_dup_535_Q);
inv_1975: INV 
    PORT MAP ( Y => n_2423, IN1 => O_dup_876_aOUT);
delay_1976: DELAY
    PORT MAP ( Y => n_2424, IN1 => O_dup_1617_aIN);
delay_1977: DELAY
    PORT MAP ( Y => O_dup_781_aOUT, IN1 => O_dup_781_aIN1);
and2_1978: AND2
    PORT MAP ( Y => O_dup_781_aIN1, IN1 => n_2426, IN2 => n_2441);
or4_1979: OR4
    PORT MAP ( Y => n_2426, IN1 => n_2427, IN2 => n_2430, IN3 => n_2434, IN4 => n_2438);
and2_1980: AND2
    PORT MAP ( Y => n_2427, IN1 => n_2428, IN2 => n_2429);
inv_1981: INV 
    PORT MAP ( Y => n_2428, IN1 => O_dup_870_aOUT);
inv_1982: INV 
    PORT MAP ( Y => n_2429, IN1 => O_dup_873_aOUT);
and2_1983: AND2
    PORT MAP ( Y => n_2430, IN1 => n_2431, IN2 => n_2433);
inv_1984: INV 
    PORT MAP ( Y => n_2431, IN1 => ix484_a4_dup_538_Q);
inv_1985: INV 
    PORT MAP ( Y => n_2433, IN1 => O_dup_873_aOUT);
and2_1986: AND2
    PORT MAP ( Y => n_2434, IN1 => n_2435, IN2 => n_2437);
inv_1987: INV 
    PORT MAP ( Y => n_2435, IN1 => ix484_a0_dup_542_Q);
inv_1988: INV 
    PORT MAP ( Y => n_2437, IN1 => ix484_a4_dup_538_Q);
and2_1989: AND2
    PORT MAP ( Y => n_2438, IN1 => n_2439, IN2 => n_2440);
inv_1990: INV 
    PORT MAP ( Y => n_2439, IN1 => ix484_a0_dup_542_Q);
inv_1991: INV 
    PORT MAP ( Y => n_2440, IN1 => O_dup_870_aOUT);
delay_1992: DELAY
    PORT MAP ( Y => n_2441, IN1 => I1_dup_780_aIN);
dffe_1993: DFFE
    PORT MAP ( D => ix484_a3_dup_539_aD, CLK => ix484_a3_dup_539_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a3_dup_539_aENA, Q => ix484_a3_dup_539_Q);
xor2_1994: XOR2
    PORT MAP ( Y => ix484_a3_dup_539_aD, IN1 => n_2448, IN2 => n_2451);
or1_1995: OR1
    PORT MAP ( Y => n_2448, IN1 => n_2449);
and1_1996: AND1
    PORT MAP ( Y => n_2449, IN1 => n_2450);
delay_1997: DELAY
    PORT MAP ( Y => n_2450, IN1 => data(14));
and1_1998: AND1
    PORT MAP ( Y => n_2451, IN1 => gnd);
and1_1999: AND1
    PORT MAP ( Y => n_2452, IN1 => n_2453);
delay_2000: DELAY
    PORT MAP ( Y => n_2453, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2001: DELAY
    PORT MAP ( Y => ix484_a3_dup_539_aCLK, IN1 => n_2452);
and1_2002: AND1
    PORT MAP ( Y => ix484_a3_dup_539_aENA, IN1 => n_2456);
delay_2003: DELAY
    PORT MAP ( Y => n_2456, IN1 => ix484_nx42_aOUT);
dffe_2004: DFFE
    PORT MAP ( D => ix484_a6_dup_536_aD, CLK => ix484_a6_dup_536_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a6_dup_536_aENA, Q => ix484_a6_dup_536_Q);
xor2_2005: XOR2
    PORT MAP ( Y => ix484_a6_dup_536_aD, IN1 => n_2463, IN2 => n_2466);
or1_2006: OR1
    PORT MAP ( Y => n_2463, IN1 => n_2464);
and1_2007: AND1
    PORT MAP ( Y => n_2464, IN1 => n_2465);
delay_2008: DELAY
    PORT MAP ( Y => n_2465, IN1 => data(14));
and1_2009: AND1
    PORT MAP ( Y => n_2466, IN1 => gnd);
and1_2010: AND1
    PORT MAP ( Y => n_2467, IN1 => n_2468);
delay_2011: DELAY
    PORT MAP ( Y => n_2468, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2012: DELAY
    PORT MAP ( Y => ix484_a6_dup_536_aCLK, IN1 => n_2467);
and1_2013: AND1
    PORT MAP ( Y => ix484_a6_dup_536_aENA, IN1 => n_2471);
delay_2014: DELAY
    PORT MAP ( Y => n_2471, IN1 => ix484_nx39_aOUT);
dff_2015: DFF
    PORT MAP ( D => instrregout13_aD, CLK => instrregout13_aCLK, CLRN => vcc,
          PRN => vcc, Q => instrregout13_Q);
xor2_2016: XOR2
    PORT MAP ( Y => instrregout13_aD, IN1 => n_2478, IN2 => n_2481);
or1_2017: OR1
    PORT MAP ( Y => n_2478, IN1 => n_2479);
and1_2018: AND1
    PORT MAP ( Y => n_2479, IN1 => n_2480);
delay_2019: DELAY
    PORT MAP ( Y => n_2480, IN1 => data(13));
and1_2020: AND1
    PORT MAP ( Y => n_2481, IN1 => gnd);
and1_2021: AND1
    PORT MAP ( Y => n_2482, IN1 => n_2483);
delay_2022: DELAY
    PORT MAP ( Y => n_2483, IN1 => a_as_or3_aix1644_a_a32_aOUT);
delay_2023: DELAY
    PORT MAP ( Y => instrregout13_aCLK, IN1 => n_2482);
dff_2024: DFF
    PORT MAP ( D => instrregout14_aD, CLK => instrregout14_aCLK, CLRN => vcc,
          PRN => vcc, Q => instrregout14_Q);
xor2_2025: XOR2
    PORT MAP ( Y => instrregout14_aD, IN1 => n_2491, IN2 => n_2494);
or1_2026: OR1
    PORT MAP ( Y => n_2491, IN1 => n_2492);
and1_2027: AND1
    PORT MAP ( Y => n_2492, IN1 => n_2493);
delay_2028: DELAY
    PORT MAP ( Y => n_2493, IN1 => data(14));
and1_2029: AND1
    PORT MAP ( Y => n_2494, IN1 => gnd);
and1_2030: AND1
    PORT MAP ( Y => n_2495, IN1 => n_2496);
delay_2031: DELAY
    PORT MAP ( Y => n_2496, IN1 => a_as_or3_aix1644_a_a32_aOUT);
delay_2032: DELAY
    PORT MAP ( Y => instrregout14_aCLK, IN1 => n_2495);
dff_2033: DFF
    PORT MAP ( D => con1_current_state18_aD, CLK => con1_current_state18_aCLK,
          CLRN => con1_current_state18_aCLRN, PRN => vcc, Q => con1_current_state18_Q);
inv_2034: INV 
    PORT MAP ( Y => con1_current_state18_aCLRN, IN1 => reset);
xor2_2035: XOR2
    PORT MAP ( Y => con1_current_state18_aD, IN1 => n_2505, IN2 => n_2508);
or1_2036: OR1
    PORT MAP ( Y => n_2505, IN1 => n_2506);
and1_2037: AND1
    PORT MAP ( Y => n_2506, IN1 => n_2507);
delay_2038: DELAY
    PORT MAP ( Y => n_2507, IN1 => con1_current_state17_Q);
and1_2039: AND1
    PORT MAP ( Y => n_2508, IN1 => gnd);
delay_2040: DELAY
    PORT MAP ( Y => con1_current_state18_aCLK, IN1 => clock);
delay_2041: DELAY
    PORT MAP ( Y => I0_dup_1065_aOUT, IN1 => I0_dup_1065_aIN);
xor2_2042: XOR2
    PORT MAP ( Y => I0_dup_1065_aIN, IN1 => n_2512, IN2 => n_2527);
or4_2043: OR4
    PORT MAP ( Y => n_2512, IN1 => n_2513, IN2 => n_2516, IN3 => n_2520, IN4 => n_2524);
and2_2044: AND2
    PORT MAP ( Y => n_2513, IN1 => n_2514, IN2 => n_2515);
inv_2045: INV 
    PORT MAP ( Y => n_2514, IN1 => O_dup_888_aOUT);
inv_2046: INV 
    PORT MAP ( Y => n_2515, IN1 => O_dup_891_aOUT);
and2_2047: AND2
    PORT MAP ( Y => n_2516, IN1 => n_2517, IN2 => n_2519);
inv_2048: INV 
    PORT MAP ( Y => n_2517, IN1 => ix484_a3_Q);
inv_2049: INV 
    PORT MAP ( Y => n_2519, IN1 => O_dup_891_aOUT);
and2_2050: AND2
    PORT MAP ( Y => n_2520, IN1 => n_2521, IN2 => n_2523);
inv_2051: INV 
    PORT MAP ( Y => n_2521, IN1 => ix484_a6_Q);
inv_2052: INV 
    PORT MAP ( Y => n_2523, IN1 => ix484_a3_Q);
and2_2053: AND2
    PORT MAP ( Y => n_2524, IN1 => n_2525, IN2 => n_2526);
inv_2054: INV 
    PORT MAP ( Y => n_2525, IN1 => ix484_a6_Q);
inv_2055: INV 
    PORT MAP ( Y => n_2526, IN1 => O_dup_888_aOUT);
and1_2056: AND1
    PORT MAP ( Y => n_2527, IN1 => gnd);
delay_2057: DELAY
    PORT MAP ( Y => O_dup_1067_aOUT, IN1 => O_dup_1067_aIN);
and2_2058: AND2
    PORT MAP ( Y => O_dup_1067_aIN, IN1 => n_2530, IN2 => n_2545);
or4_2059: OR4
    PORT MAP ( Y => n_2530, IN1 => n_2531, IN2 => n_2534, IN3 => n_2538, IN4 => n_2542);
and2_2060: AND2
    PORT MAP ( Y => n_2531, IN1 => n_2532, IN2 => n_2533);
inv_2061: INV 
    PORT MAP ( Y => n_2532, IN1 => O_dup_882_aOUT);
inv_2062: INV 
    PORT MAP ( Y => n_2533, IN1 => O_dup_885_aOUT);
and2_2063: AND2
    PORT MAP ( Y => n_2534, IN1 => n_2535, IN2 => n_2537);
inv_2064: INV 
    PORT MAP ( Y => n_2535, IN1 => ix484_a1_dup_533_Q);
inv_2065: INV 
    PORT MAP ( Y => n_2537, IN1 => O_dup_885_aOUT);
and2_2066: AND2
    PORT MAP ( Y => n_2538, IN1 => n_2539, IN2 => n_2541);
inv_2067: INV 
    PORT MAP ( Y => n_2539, IN1 => ix484_a5_Q);
inv_2068: INV 
    PORT MAP ( Y => n_2541, IN1 => ix484_a1_dup_533_Q);
and2_2069: AND2
    PORT MAP ( Y => n_2542, IN1 => n_2543, IN2 => n_2544);
inv_2070: INV 
    PORT MAP ( Y => n_2543, IN1 => ix484_a5_Q);
inv_2071: INV 
    PORT MAP ( Y => n_2544, IN1 => O_dup_882_aOUT);
delay_2072: DELAY
    PORT MAP ( Y => n_2545, IN1 => I0_dup_1065_aIN);
delay_2073: DELAY
    PORT MAP ( Y => O_dup_1609_aOUT, IN1 => O_dup_1609_aIN);
and2_2074: AND2
    PORT MAP ( Y => O_dup_1609_aIN, IN1 => n_2548, IN2 => n_2563);
or4_2075: OR4
    PORT MAP ( Y => n_2548, IN1 => n_2549, IN2 => n_2552, IN3 => n_2557, IN4 => n_2560);
and2_2076: AND2
    PORT MAP ( Y => n_2549, IN1 => n_2550, IN2 => n_2551);
inv_2077: INV 
    PORT MAP ( Y => n_2550, IN1 => outregrd_aOUT);
delay_2078: DELAY
    PORT MAP ( Y => n_2551, IN1 => n3_aOUT);
and2_2079: AND2
    PORT MAP ( Y => n_2552, IN1 => n_2553, IN2 => n_2555);
inv_2080: INV 
    PORT MAP ( Y => n_2553, IN1 => outreg_val15_Q);
inv_2081: INV 
    PORT MAP ( Y => n_2555, IN1 => progcntr_val15_Q);
and2_2082: AND2
    PORT MAP ( Y => n_2557, IN1 => n_2558, IN2 => n_2559);
inv_2083: INV 
    PORT MAP ( Y => n_2558, IN1 => progcntr_val15_Q);
inv_2084: INV 
    PORT MAP ( Y => n_2559, IN1 => outregrd_aOUT);
and2_2085: AND2
    PORT MAP ( Y => n_2560, IN1 => n_2561, IN2 => n_2562);
inv_2086: INV 
    PORT MAP ( Y => n_2561, IN1 => outreg_val15_Q);
delay_2087: DELAY
    PORT MAP ( Y => n_2562, IN1 => n3_aOUT);
delay_2088: DELAY
    PORT MAP ( Y => n_2563, IN1 => O_dup_1067_aIN);
delay_2089: DELAY
    PORT MAP ( Y => I1_dup_777_aOUT, IN1 => I1_dup_777_aIN);
and2_2090: AND2
    PORT MAP ( Y => I1_dup_777_aIN, IN1 => n_2566, IN2 => n_2581);
or4_2091: OR4
    PORT MAP ( Y => n_2566, IN1 => n_2567, IN2 => n_2570, IN3 => n_2574, IN4 => n_2578);
and2_2092: AND2
    PORT MAP ( Y => n_2567, IN1 => n_2568, IN2 => n_2569);
inv_2093: INV 
    PORT MAP ( Y => n_2568, IN1 => O_dup_876_aOUT);
inv_2094: INV 
    PORT MAP ( Y => n_2569, IN1 => O_dup_879_aOUT);
and2_2095: AND2
    PORT MAP ( Y => n_2570, IN1 => n_2571, IN2 => n_2573);
inv_2096: INV 
    PORT MAP ( Y => n_2571, IN1 => ix484_a2_dup_532_Q);
inv_2097: INV 
    PORT MAP ( Y => n_2573, IN1 => O_dup_879_aOUT);
and2_2098: AND2
    PORT MAP ( Y => n_2574, IN1 => n_2575, IN2 => n_2577);
inv_2099: INV 
    PORT MAP ( Y => n_2575, IN1 => ix484_a7_Q);
inv_2100: INV 
    PORT MAP ( Y => n_2577, IN1 => ix484_a2_dup_532_Q);
and2_2101: AND2
    PORT MAP ( Y => n_2578, IN1 => n_2579, IN2 => n_2580);
inv_2102: INV 
    PORT MAP ( Y => n_2579, IN1 => ix484_a7_Q);
inv_2103: INV 
    PORT MAP ( Y => n_2580, IN1 => O_dup_876_aOUT);
delay_2104: DELAY
    PORT MAP ( Y => n_2581, IN1 => O_dup_1609_aIN);
delay_2105: DELAY
    PORT MAP ( Y => O_dup_778_aOUT, IN1 => O_dup_778_aIN1);
and2_2106: AND2
    PORT MAP ( Y => O_dup_778_aIN1, IN1 => n_2583, IN2 => n_2598);
or4_2107: OR4
    PORT MAP ( Y => n_2583, IN1 => n_2584, IN2 => n_2587, IN3 => n_2591, IN4 => n_2595);
and2_2108: AND2
    PORT MAP ( Y => n_2584, IN1 => n_2585, IN2 => n_2586);
inv_2109: INV 
    PORT MAP ( Y => n_2585, IN1 => O_dup_870_aOUT);
inv_2110: INV 
    PORT MAP ( Y => n_2586, IN1 => O_dup_873_aOUT);
and2_2111: AND2
    PORT MAP ( Y => n_2587, IN1 => n_2588, IN2 => n_2590);
inv_2112: INV 
    PORT MAP ( Y => n_2588, IN1 => ix484_a4_Q);
inv_2113: INV 
    PORT MAP ( Y => n_2590, IN1 => O_dup_873_aOUT);
and2_2114: AND2
    PORT MAP ( Y => n_2591, IN1 => n_2592, IN2 => n_2594);
inv_2115: INV 
    PORT MAP ( Y => n_2592, IN1 => ix484_a0_dup_534_Q);
inv_2116: INV 
    PORT MAP ( Y => n_2594, IN1 => ix484_a4_Q);
and2_2117: AND2
    PORT MAP ( Y => n_2595, IN1 => n_2596, IN2 => n_2597);
inv_2118: INV 
    PORT MAP ( Y => n_2596, IN1 => ix484_a0_dup_534_Q);
inv_2119: INV 
    PORT MAP ( Y => n_2597, IN1 => O_dup_870_aOUT);
delay_2120: DELAY
    PORT MAP ( Y => n_2598, IN1 => I1_dup_777_aIN);
dffe_2121: DFFE
    PORT MAP ( D => ix484_a3_aD, CLK => ix484_a3_aCLK, CLRN => vcc, PRN => vcc,
          ENA => ix484_a3_aENA, Q => ix484_a3_Q);
xor2_2122: XOR2
    PORT MAP ( Y => ix484_a3_aD, IN1 => n_2605, IN2 => n_2608);
or1_2123: OR1
    PORT MAP ( Y => n_2605, IN1 => n_2606);
and1_2124: AND1
    PORT MAP ( Y => n_2606, IN1 => n_2607);
delay_2125: DELAY
    PORT MAP ( Y => n_2607, IN1 => data(15));
and1_2126: AND1
    PORT MAP ( Y => n_2608, IN1 => gnd);
and1_2127: AND1
    PORT MAP ( Y => n_2609, IN1 => n_2610);
delay_2128: DELAY
    PORT MAP ( Y => n_2610, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2129: DELAY
    PORT MAP ( Y => ix484_a3_aCLK, IN1 => n_2609);
and1_2130: AND1
    PORT MAP ( Y => ix484_a3_aENA, IN1 => n_2613);
delay_2131: DELAY
    PORT MAP ( Y => n_2613, IN1 => ix484_nx42_aOUT);
dffe_2132: DFFE
    PORT MAP ( D => ix484_a6_aD, CLK => ix484_a6_aCLK, CLRN => vcc, PRN => vcc,
          ENA => ix484_a6_aENA, Q => ix484_a6_Q);
xor2_2133: XOR2
    PORT MAP ( Y => ix484_a6_aD, IN1 => n_2620, IN2 => n_2623);
or1_2134: OR1
    PORT MAP ( Y => n_2620, IN1 => n_2621);
and1_2135: AND1
    PORT MAP ( Y => n_2621, IN1 => n_2622);
delay_2136: DELAY
    PORT MAP ( Y => n_2622, IN1 => data(15));
and1_2137: AND1
    PORT MAP ( Y => n_2623, IN1 => gnd);
and1_2138: AND1
    PORT MAP ( Y => n_2624, IN1 => n_2625);
delay_2139: DELAY
    PORT MAP ( Y => n_2625, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2140: DELAY
    PORT MAP ( Y => ix484_a6_aCLK, IN1 => n_2624);
and1_2141: AND1
    PORT MAP ( Y => ix484_a6_aENA, IN1 => n_2628);
delay_2142: DELAY
    PORT MAP ( Y => n_2628, IN1 => ix484_nx39_aOUT);
dff_2143: DFF
    PORT MAP ( D => opreg_val0_aD, CLK => opreg_val0_aCLK, CLRN => vcc, PRN => vcc,
          Q => opreg_val0_Q);
xor2_2144: XOR2
    PORT MAP ( Y => opreg_val0_aD, IN1 => n_2635, IN2 => n_2638);
or1_2145: OR1
    PORT MAP ( Y => n_2635, IN1 => n_2636);
and1_2146: AND1
    PORT MAP ( Y => n_2636, IN1 => n_2637);
delay_2147: DELAY
    PORT MAP ( Y => n_2637, IN1 => data(0));
and1_2148: AND1
    PORT MAP ( Y => n_2638, IN1 => gnd);
and1_2149: AND1
    PORT MAP ( Y => n_2639, IN1 => n_2640);
delay_2150: DELAY
    PORT MAP ( Y => n_2640, IN1 => opregwr_Q);
delay_2151: DELAY
    PORT MAP ( Y => opreg_val0_aCLK, IN1 => n_2639);
delay_2152: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int1_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int1_aIN);
xor2_2153: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int1_aIN, IN1 => n_2644, IN2 => n_2649);
or2_2154: OR2
    PORT MAP ( Y => n_2644, IN1 => n_2645, IN2 => n_2647);
and1_2155: AND1
    PORT MAP ( Y => n_2645, IN1 => n_2646);
inv_2156: INV 
    PORT MAP ( Y => n_2646, IN1 => opreg_val0_Q);
and1_2157: AND1
    PORT MAP ( Y => n_2647, IN1 => n_2648);
delay_2158: DELAY
    PORT MAP ( Y => n_2648, IN1 => data(0));
and1_2159: AND1
    PORT MAP ( Y => n_2649, IN1 => gnd);
dff_2160: DFF
    PORT MAP ( D => opreg_val1_aD, CLK => opreg_val1_aCLK, CLRN => vcc, PRN => vcc,
          Q => opreg_val1_Q);
xor2_2161: XOR2
    PORT MAP ( Y => opreg_val1_aD, IN1 => n_2656, IN2 => n_2659);
or1_2162: OR1
    PORT MAP ( Y => n_2656, IN1 => n_2657);
and1_2163: AND1
    PORT MAP ( Y => n_2657, IN1 => n_2658);
delay_2164: DELAY
    PORT MAP ( Y => n_2658, IN1 => data(1));
and1_2165: AND1
    PORT MAP ( Y => n_2659, IN1 => gnd);
and1_2166: AND1
    PORT MAP ( Y => n_2660, IN1 => n_2661);
delay_2167: DELAY
    PORT MAP ( Y => n_2661, IN1 => opregwr_Q);
delay_2168: DELAY
    PORT MAP ( Y => opreg_val1_aCLK, IN1 => n_2660);
delay_2169: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int2_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int2_aIN);
xor2_2170: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int2_aIN, IN1 => n_2665, IN2 => n_2675);
or3_2171: OR3
    PORT MAP ( Y => n_2665, IN1 => n_2666, IN2 => n_2669, IN3 => n_2672);
and2_2172: AND2
    PORT MAP ( Y => n_2666, IN1 => n_2667, IN2 => n_2668);
delay_2173: DELAY
    PORT MAP ( Y => n_2667, IN1 => comp1_modgen_56_l1_l0_c_int1_aOUT);
delay_2174: DELAY
    PORT MAP ( Y => n_2668, IN1 => data(1));
and2_2175: AND2
    PORT MAP ( Y => n_2669, IN1 => n_2670, IN2 => n_2671);
inv_2176: INV 
    PORT MAP ( Y => n_2670, IN1 => opreg_val1_Q);
delay_2177: DELAY
    PORT MAP ( Y => n_2671, IN1 => data(1));
and2_2178: AND2
    PORT MAP ( Y => n_2672, IN1 => n_2673, IN2 => n_2674);
inv_2179: INV 
    PORT MAP ( Y => n_2673, IN1 => opreg_val1_Q);
delay_2180: DELAY
    PORT MAP ( Y => n_2674, IN1 => comp1_modgen_56_l1_l0_c_int1_aOUT);
and1_2181: AND1
    PORT MAP ( Y => n_2675, IN1 => gnd);
dff_2182: DFF
    PORT MAP ( D => opreg_val2_aD, CLK => opreg_val2_aCLK, CLRN => vcc, PRN => vcc,
          Q => opreg_val2_Q);
xor2_2183: XOR2
    PORT MAP ( Y => opreg_val2_aD, IN1 => n_2682, IN2 => n_2685);
or1_2184: OR1
    PORT MAP ( Y => n_2682, IN1 => n_2683);
and1_2185: AND1
    PORT MAP ( Y => n_2683, IN1 => n_2684);
delay_2186: DELAY
    PORT MAP ( Y => n_2684, IN1 => data(2));
and1_2187: AND1
    PORT MAP ( Y => n_2685, IN1 => gnd);
and1_2188: AND1
    PORT MAP ( Y => n_2686, IN1 => n_2687);
delay_2189: DELAY
    PORT MAP ( Y => n_2687, IN1 => opregwr_Q);
delay_2190: DELAY
    PORT MAP ( Y => opreg_val2_aCLK, IN1 => n_2686);
delay_2191: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int3_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int3_aIN);
xor2_2192: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int3_aIN, IN1 => n_2691, IN2 => n_2701);
or3_2193: OR3
    PORT MAP ( Y => n_2691, IN1 => n_2692, IN2 => n_2695, IN3 => n_2698);
and2_2194: AND2
    PORT MAP ( Y => n_2692, IN1 => n_2693, IN2 => n_2694);
delay_2195: DELAY
    PORT MAP ( Y => n_2693, IN1 => comp1_modgen_56_l1_l0_c_int2_aOUT);
delay_2196: DELAY
    PORT MAP ( Y => n_2694, IN1 => data(2));
and2_2197: AND2
    PORT MAP ( Y => n_2695, IN1 => n_2696, IN2 => n_2697);
inv_2198: INV 
    PORT MAP ( Y => n_2696, IN1 => opreg_val2_Q);
delay_2199: DELAY
    PORT MAP ( Y => n_2697, IN1 => data(2));
and2_2200: AND2
    PORT MAP ( Y => n_2698, IN1 => n_2699, IN2 => n_2700);
inv_2201: INV 
    PORT MAP ( Y => n_2699, IN1 => opreg_val2_Q);
delay_2202: DELAY
    PORT MAP ( Y => n_2700, IN1 => comp1_modgen_56_l1_l0_c_int2_aOUT);
and1_2203: AND1
    PORT MAP ( Y => n_2701, IN1 => gnd);
dff_2204: DFF
    PORT MAP ( D => opreg_val3_aD, CLK => opreg_val3_aCLK, CLRN => vcc, PRN => vcc,
          Q => opreg_val3_Q);
xor2_2205: XOR2
    PORT MAP ( Y => opreg_val3_aD, IN1 => n_2708, IN2 => n_2711);
or1_2206: OR1
    PORT MAP ( Y => n_2708, IN1 => n_2709);
and1_2207: AND1
    PORT MAP ( Y => n_2709, IN1 => n_2710);
delay_2208: DELAY
    PORT MAP ( Y => n_2710, IN1 => data(3));
and1_2209: AND1
    PORT MAP ( Y => n_2711, IN1 => gnd);
and1_2210: AND1
    PORT MAP ( Y => n_2712, IN1 => n_2713);
delay_2211: DELAY
    PORT MAP ( Y => n_2713, IN1 => opregwr_Q);
delay_2212: DELAY
    PORT MAP ( Y => opreg_val3_aCLK, IN1 => n_2712);
delay_2213: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int4_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int4_aIN);
xor2_2214: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int4_aIN, IN1 => n_2717, IN2 => n_2727);
or3_2215: OR3
    PORT MAP ( Y => n_2717, IN1 => n_2718, IN2 => n_2721, IN3 => n_2724);
and2_2216: AND2
    PORT MAP ( Y => n_2718, IN1 => n_2719, IN2 => n_2720);
delay_2217: DELAY
    PORT MAP ( Y => n_2719, IN1 => comp1_modgen_56_l1_l0_c_int3_aOUT);
delay_2218: DELAY
    PORT MAP ( Y => n_2720, IN1 => data(3));
and2_2219: AND2
    PORT MAP ( Y => n_2721, IN1 => n_2722, IN2 => n_2723);
inv_2220: INV 
    PORT MAP ( Y => n_2722, IN1 => opreg_val3_Q);
delay_2221: DELAY
    PORT MAP ( Y => n_2723, IN1 => data(3));
and2_2222: AND2
    PORT MAP ( Y => n_2724, IN1 => n_2725, IN2 => n_2726);
inv_2223: INV 
    PORT MAP ( Y => n_2725, IN1 => opreg_val3_Q);
delay_2224: DELAY
    PORT MAP ( Y => n_2726, IN1 => comp1_modgen_56_l1_l0_c_int3_aOUT);
and1_2225: AND1
    PORT MAP ( Y => n_2727, IN1 => gnd);
dff_2226: DFF
    PORT MAP ( D => opreg_val4_aD, CLK => opreg_val4_aCLK, CLRN => vcc, PRN => vcc,
          Q => opreg_val4_Q);
xor2_2227: XOR2
    PORT MAP ( Y => opreg_val4_aD, IN1 => n_2734, IN2 => n_2737);
or1_2228: OR1
    PORT MAP ( Y => n_2734, IN1 => n_2735);
and1_2229: AND1
    PORT MAP ( Y => n_2735, IN1 => n_2736);
delay_2230: DELAY
    PORT MAP ( Y => n_2736, IN1 => data(4));
and1_2231: AND1
    PORT MAP ( Y => n_2737, IN1 => gnd);
and1_2232: AND1
    PORT MAP ( Y => n_2738, IN1 => n_2739);
delay_2233: DELAY
    PORT MAP ( Y => n_2739, IN1 => opregwr_Q);
delay_2234: DELAY
    PORT MAP ( Y => opreg_val4_aCLK, IN1 => n_2738);
delay_2235: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int5_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int5_aIN);
xor2_2236: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int5_aIN, IN1 => n_2743, IN2 => n_2753);
or3_2237: OR3
    PORT MAP ( Y => n_2743, IN1 => n_2744, IN2 => n_2747, IN3 => n_2750);
and2_2238: AND2
    PORT MAP ( Y => n_2744, IN1 => n_2745, IN2 => n_2746);
delay_2239: DELAY
    PORT MAP ( Y => n_2745, IN1 => comp1_modgen_56_l1_l0_c_int4_aOUT);
delay_2240: DELAY
    PORT MAP ( Y => n_2746, IN1 => data(4));
and2_2241: AND2
    PORT MAP ( Y => n_2747, IN1 => n_2748, IN2 => n_2749);
inv_2242: INV 
    PORT MAP ( Y => n_2748, IN1 => opreg_val4_Q);
delay_2243: DELAY
    PORT MAP ( Y => n_2749, IN1 => data(4));
and2_2244: AND2
    PORT MAP ( Y => n_2750, IN1 => n_2751, IN2 => n_2752);
inv_2245: INV 
    PORT MAP ( Y => n_2751, IN1 => opreg_val4_Q);
delay_2246: DELAY
    PORT MAP ( Y => n_2752, IN1 => comp1_modgen_56_l1_l0_c_int4_aOUT);
and1_2247: AND1
    PORT MAP ( Y => n_2753, IN1 => gnd);
dff_2248: DFF
    PORT MAP ( D => opreg_val5_aD, CLK => opreg_val5_aCLK, CLRN => vcc, PRN => vcc,
          Q => opreg_val5_Q);
xor2_2249: XOR2
    PORT MAP ( Y => opreg_val5_aD, IN1 => n_2760, IN2 => n_2763);
or1_2250: OR1
    PORT MAP ( Y => n_2760, IN1 => n_2761);
and1_2251: AND1
    PORT MAP ( Y => n_2761, IN1 => n_2762);
delay_2252: DELAY
    PORT MAP ( Y => n_2762, IN1 => data(5));
and1_2253: AND1
    PORT MAP ( Y => n_2763, IN1 => gnd);
and1_2254: AND1
    PORT MAP ( Y => n_2764, IN1 => n_2765);
delay_2255: DELAY
    PORT MAP ( Y => n_2765, IN1 => opregwr_Q);
delay_2256: DELAY
    PORT MAP ( Y => opreg_val5_aCLK, IN1 => n_2764);
delay_2257: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int6_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int6_aIN);
xor2_2258: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int6_aIN, IN1 => n_2769, IN2 => n_2779);
or3_2259: OR3
    PORT MAP ( Y => n_2769, IN1 => n_2770, IN2 => n_2773, IN3 => n_2776);
and2_2260: AND2
    PORT MAP ( Y => n_2770, IN1 => n_2771, IN2 => n_2772);
delay_2261: DELAY
    PORT MAP ( Y => n_2771, IN1 => comp1_modgen_56_l1_l0_c_int5_aOUT);
delay_2262: DELAY
    PORT MAP ( Y => n_2772, IN1 => data(5));
and2_2263: AND2
    PORT MAP ( Y => n_2773, IN1 => n_2774, IN2 => n_2775);
inv_2264: INV 
    PORT MAP ( Y => n_2774, IN1 => opreg_val5_Q);
delay_2265: DELAY
    PORT MAP ( Y => n_2775, IN1 => data(5));
and2_2266: AND2
    PORT MAP ( Y => n_2776, IN1 => n_2777, IN2 => n_2778);
inv_2267: INV 
    PORT MAP ( Y => n_2777, IN1 => opreg_val5_Q);
delay_2268: DELAY
    PORT MAP ( Y => n_2778, IN1 => comp1_modgen_56_l1_l0_c_int5_aOUT);
and1_2269: AND1
    PORT MAP ( Y => n_2779, IN1 => gnd);
dff_2270: DFF
    PORT MAP ( D => opreg_val6_aD, CLK => opreg_val6_aCLK, CLRN => vcc, PRN => vcc,
          Q => opreg_val6_Q);
xor2_2271: XOR2
    PORT MAP ( Y => opreg_val6_aD, IN1 => n_2786, IN2 => n_2789);
or1_2272: OR1
    PORT MAP ( Y => n_2786, IN1 => n_2787);
and1_2273: AND1
    PORT MAP ( Y => n_2787, IN1 => n_2788);
delay_2274: DELAY
    PORT MAP ( Y => n_2788, IN1 => data(6));
and1_2275: AND1
    PORT MAP ( Y => n_2789, IN1 => gnd);
and1_2276: AND1
    PORT MAP ( Y => n_2790, IN1 => n_2791);
delay_2277: DELAY
    PORT MAP ( Y => n_2791, IN1 => opregwr_Q);
delay_2278: DELAY
    PORT MAP ( Y => opreg_val6_aCLK, IN1 => n_2790);
delay_2279: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int7_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int7_aIN);
xor2_2280: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int7_aIN, IN1 => n_2795, IN2 => n_2805);
or3_2281: OR3
    PORT MAP ( Y => n_2795, IN1 => n_2796, IN2 => n_2799, IN3 => n_2802);
and2_2282: AND2
    PORT MAP ( Y => n_2796, IN1 => n_2797, IN2 => n_2798);
delay_2283: DELAY
    PORT MAP ( Y => n_2797, IN1 => comp1_modgen_56_l1_l0_c_int6_aOUT);
delay_2284: DELAY
    PORT MAP ( Y => n_2798, IN1 => data(6));
and2_2285: AND2
    PORT MAP ( Y => n_2799, IN1 => n_2800, IN2 => n_2801);
inv_2286: INV 
    PORT MAP ( Y => n_2800, IN1 => opreg_val6_Q);
delay_2287: DELAY
    PORT MAP ( Y => n_2801, IN1 => data(6));
and2_2288: AND2
    PORT MAP ( Y => n_2802, IN1 => n_2803, IN2 => n_2804);
inv_2289: INV 
    PORT MAP ( Y => n_2803, IN1 => opreg_val6_Q);
delay_2290: DELAY
    PORT MAP ( Y => n_2804, IN1 => comp1_modgen_56_l1_l0_c_int6_aOUT);
and1_2291: AND1
    PORT MAP ( Y => n_2805, IN1 => gnd);
dff_2292: DFF
    PORT MAP ( D => opreg_val7_aD, CLK => opreg_val7_aCLK, CLRN => vcc, PRN => vcc,
          Q => opreg_val7_Q);
xor2_2293: XOR2
    PORT MAP ( Y => opreg_val7_aD, IN1 => n_2812, IN2 => n_2815);
or1_2294: OR1
    PORT MAP ( Y => n_2812, IN1 => n_2813);
and1_2295: AND1
    PORT MAP ( Y => n_2813, IN1 => n_2814);
delay_2296: DELAY
    PORT MAP ( Y => n_2814, IN1 => data(7));
and1_2297: AND1
    PORT MAP ( Y => n_2815, IN1 => gnd);
and1_2298: AND1
    PORT MAP ( Y => n_2816, IN1 => n_2817);
delay_2299: DELAY
    PORT MAP ( Y => n_2817, IN1 => opregwr_Q);
delay_2300: DELAY
    PORT MAP ( Y => opreg_val7_aCLK, IN1 => n_2816);
delay_2301: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int8_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int8_aIN);
xor2_2302: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int8_aIN, IN1 => n_2821, IN2 => n_2831);
or3_2303: OR3
    PORT MAP ( Y => n_2821, IN1 => n_2822, IN2 => n_2825, IN3 => n_2828);
and2_2304: AND2
    PORT MAP ( Y => n_2822, IN1 => n_2823, IN2 => n_2824);
delay_2305: DELAY
    PORT MAP ( Y => n_2823, IN1 => comp1_modgen_56_l1_l0_c_int7_aOUT);
delay_2306: DELAY
    PORT MAP ( Y => n_2824, IN1 => data(7));
and2_2307: AND2
    PORT MAP ( Y => n_2825, IN1 => n_2826, IN2 => n_2827);
inv_2308: INV 
    PORT MAP ( Y => n_2826, IN1 => opreg_val7_Q);
delay_2309: DELAY
    PORT MAP ( Y => n_2827, IN1 => data(7));
and2_2310: AND2
    PORT MAP ( Y => n_2828, IN1 => n_2829, IN2 => n_2830);
inv_2311: INV 
    PORT MAP ( Y => n_2829, IN1 => opreg_val7_Q);
delay_2312: DELAY
    PORT MAP ( Y => n_2830, IN1 => comp1_modgen_56_l1_l0_c_int7_aOUT);
and1_2313: AND1
    PORT MAP ( Y => n_2831, IN1 => gnd);
dff_2314: DFF
    PORT MAP ( D => opreg_val8_aD, CLK => opreg_val8_aCLK, CLRN => vcc, PRN => vcc,
          Q => opreg_val8_Q);
xor2_2315: XOR2
    PORT MAP ( Y => opreg_val8_aD, IN1 => n_2838, IN2 => n_2841);
or1_2316: OR1
    PORT MAP ( Y => n_2838, IN1 => n_2839);
and1_2317: AND1
    PORT MAP ( Y => n_2839, IN1 => n_2840);
delay_2318: DELAY
    PORT MAP ( Y => n_2840, IN1 => data(8));
and1_2319: AND1
    PORT MAP ( Y => n_2841, IN1 => gnd);
and1_2320: AND1
    PORT MAP ( Y => n_2842, IN1 => n_2843);
delay_2321: DELAY
    PORT MAP ( Y => n_2843, IN1 => opregwr_Q);
delay_2322: DELAY
    PORT MAP ( Y => opreg_val8_aCLK, IN1 => n_2842);
delay_2323: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int9_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int9_aIN);
xor2_2324: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int9_aIN, IN1 => n_2847, IN2 => n_2857);
or3_2325: OR3
    PORT MAP ( Y => n_2847, IN1 => n_2848, IN2 => n_2851, IN3 => n_2854);
and2_2326: AND2
    PORT MAP ( Y => n_2848, IN1 => n_2849, IN2 => n_2850);
delay_2327: DELAY
    PORT MAP ( Y => n_2849, IN1 => comp1_modgen_56_l1_l0_c_int8_aOUT);
delay_2328: DELAY
    PORT MAP ( Y => n_2850, IN1 => data(8));
and2_2329: AND2
    PORT MAP ( Y => n_2851, IN1 => n_2852, IN2 => n_2853);
inv_2330: INV 
    PORT MAP ( Y => n_2852, IN1 => opreg_val8_Q);
delay_2331: DELAY
    PORT MAP ( Y => n_2853, IN1 => data(8));
and2_2332: AND2
    PORT MAP ( Y => n_2854, IN1 => n_2855, IN2 => n_2856);
inv_2333: INV 
    PORT MAP ( Y => n_2855, IN1 => opreg_val8_Q);
delay_2334: DELAY
    PORT MAP ( Y => n_2856, IN1 => comp1_modgen_56_l1_l0_c_int8_aOUT);
and1_2335: AND1
    PORT MAP ( Y => n_2857, IN1 => gnd);
dff_2336: DFF
    PORT MAP ( D => opreg_val9_aD, CLK => opreg_val9_aCLK, CLRN => vcc, PRN => vcc,
          Q => opreg_val9_Q);
xor2_2337: XOR2
    PORT MAP ( Y => opreg_val9_aD, IN1 => n_2864, IN2 => n_2867);
or1_2338: OR1
    PORT MAP ( Y => n_2864, IN1 => n_2865);
and1_2339: AND1
    PORT MAP ( Y => n_2865, IN1 => n_2866);
delay_2340: DELAY
    PORT MAP ( Y => n_2866, IN1 => data(9));
and1_2341: AND1
    PORT MAP ( Y => n_2867, IN1 => gnd);
and1_2342: AND1
    PORT MAP ( Y => n_2868, IN1 => n_2869);
delay_2343: DELAY
    PORT MAP ( Y => n_2869, IN1 => opregwr_Q);
delay_2344: DELAY
    PORT MAP ( Y => opreg_val9_aCLK, IN1 => n_2868);
delay_2345: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int10_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int10_aIN);
xor2_2346: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int10_aIN, IN1 => n_2873, IN2 => n_2883);
or3_2347: OR3
    PORT MAP ( Y => n_2873, IN1 => n_2874, IN2 => n_2877, IN3 => n_2880);
and2_2348: AND2
    PORT MAP ( Y => n_2874, IN1 => n_2875, IN2 => n_2876);
delay_2349: DELAY
    PORT MAP ( Y => n_2875, IN1 => comp1_modgen_56_l1_l0_c_int9_aOUT);
delay_2350: DELAY
    PORT MAP ( Y => n_2876, IN1 => data(9));
and2_2351: AND2
    PORT MAP ( Y => n_2877, IN1 => n_2878, IN2 => n_2879);
inv_2352: INV 
    PORT MAP ( Y => n_2878, IN1 => opreg_val9_Q);
delay_2353: DELAY
    PORT MAP ( Y => n_2879, IN1 => data(9));
and2_2354: AND2
    PORT MAP ( Y => n_2880, IN1 => n_2881, IN2 => n_2882);
inv_2355: INV 
    PORT MAP ( Y => n_2881, IN1 => opreg_val9_Q);
delay_2356: DELAY
    PORT MAP ( Y => n_2882, IN1 => comp1_modgen_56_l1_l0_c_int9_aOUT);
and1_2357: AND1
    PORT MAP ( Y => n_2883, IN1 => gnd);
dff_2358: DFF
    PORT MAP ( D => opreg_val10_aD, CLK => opreg_val10_aCLK, CLRN => vcc,
          PRN => vcc, Q => opreg_val10_Q);
xor2_2359: XOR2
    PORT MAP ( Y => opreg_val10_aD, IN1 => n_2890, IN2 => n_2893);
or1_2360: OR1
    PORT MAP ( Y => n_2890, IN1 => n_2891);
and1_2361: AND1
    PORT MAP ( Y => n_2891, IN1 => n_2892);
delay_2362: DELAY
    PORT MAP ( Y => n_2892, IN1 => data(10));
and1_2363: AND1
    PORT MAP ( Y => n_2893, IN1 => gnd);
and1_2364: AND1
    PORT MAP ( Y => n_2894, IN1 => n_2895);
delay_2365: DELAY
    PORT MAP ( Y => n_2895, IN1 => opregwr_Q);
delay_2366: DELAY
    PORT MAP ( Y => opreg_val10_aCLK, IN1 => n_2894);
delay_2367: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int11_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int11_aIN);
xor2_2368: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int11_aIN, IN1 => n_2899, IN2 => n_2909);
or3_2369: OR3
    PORT MAP ( Y => n_2899, IN1 => n_2900, IN2 => n_2903, IN3 => n_2906);
and2_2370: AND2
    PORT MAP ( Y => n_2900, IN1 => n_2901, IN2 => n_2902);
delay_2371: DELAY
    PORT MAP ( Y => n_2901, IN1 => comp1_modgen_56_l1_l0_c_int10_aOUT);
delay_2372: DELAY
    PORT MAP ( Y => n_2902, IN1 => data(10));
and2_2373: AND2
    PORT MAP ( Y => n_2903, IN1 => n_2904, IN2 => n_2905);
inv_2374: INV 
    PORT MAP ( Y => n_2904, IN1 => opreg_val10_Q);
delay_2375: DELAY
    PORT MAP ( Y => n_2905, IN1 => data(10));
and2_2376: AND2
    PORT MAP ( Y => n_2906, IN1 => n_2907, IN2 => n_2908);
inv_2377: INV 
    PORT MAP ( Y => n_2907, IN1 => opreg_val10_Q);
delay_2378: DELAY
    PORT MAP ( Y => n_2908, IN1 => comp1_modgen_56_l1_l0_c_int10_aOUT);
and1_2379: AND1
    PORT MAP ( Y => n_2909, IN1 => gnd);
dff_2380: DFF
    PORT MAP ( D => opreg_val11_aD, CLK => opreg_val11_aCLK, CLRN => vcc,
          PRN => vcc, Q => opreg_val11_Q);
xor2_2381: XOR2
    PORT MAP ( Y => opreg_val11_aD, IN1 => n_2916, IN2 => n_2919);
or1_2382: OR1
    PORT MAP ( Y => n_2916, IN1 => n_2917);
and1_2383: AND1
    PORT MAP ( Y => n_2917, IN1 => n_2918);
delay_2384: DELAY
    PORT MAP ( Y => n_2918, IN1 => data(11));
and1_2385: AND1
    PORT MAP ( Y => n_2919, IN1 => gnd);
and1_2386: AND1
    PORT MAP ( Y => n_2920, IN1 => n_2921);
delay_2387: DELAY
    PORT MAP ( Y => n_2921, IN1 => opregwr_Q);
delay_2388: DELAY
    PORT MAP ( Y => opreg_val11_aCLK, IN1 => n_2920);
delay_2389: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int12_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int12_aIN);
xor2_2390: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int12_aIN, IN1 => n_2925, IN2 => n_2935);
or3_2391: OR3
    PORT MAP ( Y => n_2925, IN1 => n_2926, IN2 => n_2929, IN3 => n_2932);
and2_2392: AND2
    PORT MAP ( Y => n_2926, IN1 => n_2927, IN2 => n_2928);
delay_2393: DELAY
    PORT MAP ( Y => n_2927, IN1 => comp1_modgen_56_l1_l0_c_int11_aOUT);
delay_2394: DELAY
    PORT MAP ( Y => n_2928, IN1 => data(11));
and2_2395: AND2
    PORT MAP ( Y => n_2929, IN1 => n_2930, IN2 => n_2931);
inv_2396: INV 
    PORT MAP ( Y => n_2930, IN1 => opreg_val11_Q);
delay_2397: DELAY
    PORT MAP ( Y => n_2931, IN1 => data(11));
and2_2398: AND2
    PORT MAP ( Y => n_2932, IN1 => n_2933, IN2 => n_2934);
inv_2399: INV 
    PORT MAP ( Y => n_2933, IN1 => opreg_val11_Q);
delay_2400: DELAY
    PORT MAP ( Y => n_2934, IN1 => comp1_modgen_56_l1_l0_c_int11_aOUT);
and1_2401: AND1
    PORT MAP ( Y => n_2935, IN1 => gnd);
dff_2402: DFF
    PORT MAP ( D => opreg_val12_aD, CLK => opreg_val12_aCLK, CLRN => vcc,
          PRN => vcc, Q => opreg_val12_Q);
xor2_2403: XOR2
    PORT MAP ( Y => opreg_val12_aD, IN1 => n_2942, IN2 => n_2945);
or1_2404: OR1
    PORT MAP ( Y => n_2942, IN1 => n_2943);
and1_2405: AND1
    PORT MAP ( Y => n_2943, IN1 => n_2944);
delay_2406: DELAY
    PORT MAP ( Y => n_2944, IN1 => data(12));
and1_2407: AND1
    PORT MAP ( Y => n_2945, IN1 => gnd);
and1_2408: AND1
    PORT MAP ( Y => n_2946, IN1 => n_2947);
delay_2409: DELAY
    PORT MAP ( Y => n_2947, IN1 => opregwr_Q);
delay_2410: DELAY
    PORT MAP ( Y => opreg_val12_aCLK, IN1 => n_2946);
delay_2411: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int13_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int13_aIN);
xor2_2412: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int13_aIN, IN1 => n_2951, IN2 => n_2961);
or3_2413: OR3
    PORT MAP ( Y => n_2951, IN1 => n_2952, IN2 => n_2955, IN3 => n_2958);
and2_2414: AND2
    PORT MAP ( Y => n_2952, IN1 => n_2953, IN2 => n_2954);
delay_2415: DELAY
    PORT MAP ( Y => n_2953, IN1 => comp1_modgen_56_l1_l0_c_int12_aOUT);
delay_2416: DELAY
    PORT MAP ( Y => n_2954, IN1 => data(12));
and2_2417: AND2
    PORT MAP ( Y => n_2955, IN1 => n_2956, IN2 => n_2957);
inv_2418: INV 
    PORT MAP ( Y => n_2956, IN1 => opreg_val12_Q);
delay_2419: DELAY
    PORT MAP ( Y => n_2957, IN1 => data(12));
and2_2420: AND2
    PORT MAP ( Y => n_2958, IN1 => n_2959, IN2 => n_2960);
inv_2421: INV 
    PORT MAP ( Y => n_2959, IN1 => opreg_val12_Q);
delay_2422: DELAY
    PORT MAP ( Y => n_2960, IN1 => comp1_modgen_56_l1_l0_c_int12_aOUT);
and1_2423: AND1
    PORT MAP ( Y => n_2961, IN1 => gnd);
dff_2424: DFF
    PORT MAP ( D => opreg_val13_aD, CLK => opreg_val13_aCLK, CLRN => vcc,
          PRN => vcc, Q => opreg_val13_Q);
xor2_2425: XOR2
    PORT MAP ( Y => opreg_val13_aD, IN1 => n_2968, IN2 => n_2971);
or1_2426: OR1
    PORT MAP ( Y => n_2968, IN1 => n_2969);
and1_2427: AND1
    PORT MAP ( Y => n_2969, IN1 => n_2970);
delay_2428: DELAY
    PORT MAP ( Y => n_2970, IN1 => data(13));
and1_2429: AND1
    PORT MAP ( Y => n_2971, IN1 => gnd);
and1_2430: AND1
    PORT MAP ( Y => n_2972, IN1 => n_2973);
delay_2431: DELAY
    PORT MAP ( Y => n_2973, IN1 => opregwr_Q);
delay_2432: DELAY
    PORT MAP ( Y => opreg_val13_aCLK, IN1 => n_2972);
delay_2433: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int14_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int14_aIN);
xor2_2434: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int14_aIN, IN1 => n_2977, IN2 => n_2987);
or3_2435: OR3
    PORT MAP ( Y => n_2977, IN1 => n_2978, IN2 => n_2981, IN3 => n_2984);
and2_2436: AND2
    PORT MAP ( Y => n_2978, IN1 => n_2979, IN2 => n_2980);
delay_2437: DELAY
    PORT MAP ( Y => n_2979, IN1 => comp1_modgen_56_l1_l0_c_int13_aOUT);
delay_2438: DELAY
    PORT MAP ( Y => n_2980, IN1 => data(13));
and2_2439: AND2
    PORT MAP ( Y => n_2981, IN1 => n_2982, IN2 => n_2983);
inv_2440: INV 
    PORT MAP ( Y => n_2982, IN1 => opreg_val13_Q);
delay_2441: DELAY
    PORT MAP ( Y => n_2983, IN1 => data(13));
and2_2442: AND2
    PORT MAP ( Y => n_2984, IN1 => n_2985, IN2 => n_2986);
inv_2443: INV 
    PORT MAP ( Y => n_2985, IN1 => opreg_val13_Q);
delay_2444: DELAY
    PORT MAP ( Y => n_2986, IN1 => comp1_modgen_56_l1_l0_c_int13_aOUT);
and1_2445: AND1
    PORT MAP ( Y => n_2987, IN1 => gnd);
dff_2446: DFF
    PORT MAP ( D => opreg_val14_aD, CLK => opreg_val14_aCLK, CLRN => vcc,
          PRN => vcc, Q => opreg_val14_Q);
xor2_2447: XOR2
    PORT MAP ( Y => opreg_val14_aD, IN1 => n_2994, IN2 => n_2997);
or1_2448: OR1
    PORT MAP ( Y => n_2994, IN1 => n_2995);
and1_2449: AND1
    PORT MAP ( Y => n_2995, IN1 => n_2996);
delay_2450: DELAY
    PORT MAP ( Y => n_2996, IN1 => data(14));
and1_2451: AND1
    PORT MAP ( Y => n_2997, IN1 => gnd);
and1_2452: AND1
    PORT MAP ( Y => n_2998, IN1 => n_2999);
delay_2453: DELAY
    PORT MAP ( Y => n_2999, IN1 => opregwr_Q);
delay_2454: DELAY
    PORT MAP ( Y => opreg_val14_aCLK, IN1 => n_2998);
delay_2455: DELAY
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int15_aOUT, IN1 => comp1_modgen_56_l1_l0_c_int15_aIN);
xor2_2456: XOR2
    PORT MAP ( Y => comp1_modgen_56_l1_l0_c_int15_aIN, IN1 => n_3003, IN2 => n_3013);
or3_2457: OR3
    PORT MAP ( Y => n_3003, IN1 => n_3004, IN2 => n_3007, IN3 => n_3010);
and2_2458: AND2
    PORT MAP ( Y => n_3004, IN1 => n_3005, IN2 => n_3006);
delay_2459: DELAY
    PORT MAP ( Y => n_3005, IN1 => comp1_modgen_56_l1_l0_c_int14_aOUT);
delay_2460: DELAY
    PORT MAP ( Y => n_3006, IN1 => data(14));
and2_2461: AND2
    PORT MAP ( Y => n_3007, IN1 => n_3008, IN2 => n_3009);
inv_2462: INV 
    PORT MAP ( Y => n_3008, IN1 => opreg_val14_Q);
delay_2463: DELAY
    PORT MAP ( Y => n_3009, IN1 => data(14));
and2_2464: AND2
    PORT MAP ( Y => n_3010, IN1 => n_3011, IN2 => n_3012);
inv_2465: INV 
    PORT MAP ( Y => n_3011, IN1 => opreg_val14_Q);
delay_2466: DELAY
    PORT MAP ( Y => n_3012, IN1 => comp1_modgen_56_l1_l0_c_int14_aOUT);
and1_2467: AND1
    PORT MAP ( Y => n_3013, IN1 => gnd);
dff_2468: DFF
    PORT MAP ( D => opreg_val15_aD, CLK => opreg_val15_aCLK, CLRN => vcc,
          PRN => vcc, Q => opreg_val15_Q);
xor2_2469: XOR2
    PORT MAP ( Y => opreg_val15_aD, IN1 => n_3020, IN2 => n_3023);
or1_2470: OR1
    PORT MAP ( Y => n_3020, IN1 => n_3021);
and1_2471: AND1
    PORT MAP ( Y => n_3021, IN1 => n_3022);
delay_2472: DELAY
    PORT MAP ( Y => n_3022, IN1 => data(15));
and1_2473: AND1
    PORT MAP ( Y => n_3023, IN1 => gnd);
and1_2474: AND1
    PORT MAP ( Y => n_3024, IN1 => n_3025);
delay_2475: DELAY
    PORT MAP ( Y => n_3025, IN1 => opregwr_Q);
delay_2476: DELAY
    PORT MAP ( Y => opreg_val15_aCLK, IN1 => n_3024);
inv_2477: INV 
    PORT MAP ( Y => a_as_or2_a77_a_a30_aOUT, IN1 => a_as_or2_a77_a_a30_aOUT_aNOT);
delay_2478: DELAY
    PORT MAP ( Y => a_as_or2_a77_a_a30_aOUT_aNOT, IN1 => n_3029);
inv_2479: INV 
    PORT MAP ( Y => a_as_or2_a77_a_a30_aIN1, IN1 => n_3029);
xor2_2480: XOR2
    PORT MAP ( Y => n_3029, IN1 => n_3031, IN2 => n_3041);
or3_2481: OR3
    PORT MAP ( Y => n_3031, IN1 => n_3032, IN2 => n_3035, IN3 => n_3038);
and2_2482: AND2
    PORT MAP ( Y => n_3032, IN1 => n_3033, IN2 => n_3034);
inv_2483: INV 
    PORT MAP ( Y => n_3033, IN1 => comp1_modgen_56_l1_l0_c_int15_aOUT);
delay_2484: DELAY
    PORT MAP ( Y => n_3034, IN1 => opreg_val15_Q);
and2_2485: AND2
    PORT MAP ( Y => n_3035, IN1 => n_3036, IN2 => n_3037);
inv_2486: INV 
    PORT MAP ( Y => n_3036, IN1 => data(15));
inv_2487: INV 
    PORT MAP ( Y => n_3037, IN1 => comp1_modgen_56_l1_l0_c_int15_aOUT);
and2_2488: AND2
    PORT MAP ( Y => n_3038, IN1 => n_3039, IN2 => n_3040);
inv_2489: INV 
    PORT MAP ( Y => n_3039, IN1 => data(15));
delay_2490: DELAY
    PORT MAP ( Y => n_3040, IN1 => opreg_val15_Q);
and1_2491: AND1
    PORT MAP ( Y => n_3041, IN1 => gnd);
delay_2492: DELAY
    PORT MAP ( Y => a_a289_aOUT, IN1 => a_a289_aIN);
xor2_2493: XOR2
    PORT MAP ( Y => a_a289_aIN, IN1 => n_3044, IN2 => n_3065);
or4_2494: OR4
    PORT MAP ( Y => n_3044, IN1 => n_3045, IN2 => n_3050, IN3 => n_3055, IN4 => n_3060);
and4_2495: AND4
    PORT MAP ( Y => n_3045, IN1 => n_3046, IN2 => n_3047, IN3 => n_3048, IN4 => n_3049);
delay_2496: DELAY
    PORT MAP ( Y => n_3046, IN1 => opreg_val8_Q);
delay_2497: DELAY
    PORT MAP ( Y => n_3047, IN1 => opreg_val9_Q);
delay_2498: DELAY
    PORT MAP ( Y => n_3048, IN1 => data(8));
delay_2499: DELAY
    PORT MAP ( Y => n_3049, IN1 => data(9));
and4_2500: AND4
    PORT MAP ( Y => n_3050, IN1 => n_3051, IN2 => n_3052, IN3 => n_3053, IN4 => n_3054);
inv_2501: INV 
    PORT MAP ( Y => n_3051, IN1 => data(8));
inv_2502: INV 
    PORT MAP ( Y => n_3052, IN1 => opreg_val8_Q);
delay_2503: DELAY
    PORT MAP ( Y => n_3053, IN1 => opreg_val9_Q);
delay_2504: DELAY
    PORT MAP ( Y => n_3054, IN1 => data(9));
and4_2505: AND4
    PORT MAP ( Y => n_3055, IN1 => n_3056, IN2 => n_3057, IN3 => n_3058, IN4 => n_3059);
inv_2506: INV 
    PORT MAP ( Y => n_3056, IN1 => data(9));
inv_2507: INV 
    PORT MAP ( Y => n_3057, IN1 => opreg_val9_Q);
delay_2508: DELAY
    PORT MAP ( Y => n_3058, IN1 => opreg_val8_Q);
delay_2509: DELAY
    PORT MAP ( Y => n_3059, IN1 => data(8));
and4_2510: AND4
    PORT MAP ( Y => n_3060, IN1 => n_3061, IN2 => n_3062, IN3 => n_3063, IN4 => n_3064);
inv_2511: INV 
    PORT MAP ( Y => n_3061, IN1 => data(9));
inv_2512: INV 
    PORT MAP ( Y => n_3062, IN1 => data(8));
inv_2513: INV 
    PORT MAP ( Y => n_3063, IN1 => opreg_val9_Q);
inv_2514: INV 
    PORT MAP ( Y => n_3064, IN1 => opreg_val8_Q);
and1_2515: AND1
    PORT MAP ( Y => n_3065, IN1 => gnd);
delay_2516: DELAY
    PORT MAP ( Y => a_a290_aOUT, IN1 => a_a290_aIN);
and2_2517: AND2
    PORT MAP ( Y => a_a290_aIN, IN1 => n_3068, IN2 => n_3089);
or4_2518: OR4
    PORT MAP ( Y => n_3068, IN1 => n_3069, IN2 => n_3074, IN3 => n_3079, IN4 => n_3084);
and4_2519: AND4
    PORT MAP ( Y => n_3069, IN1 => n_3070, IN2 => n_3071, IN3 => n_3072, IN4 => n_3073);
delay_2520: DELAY
    PORT MAP ( Y => n_3070, IN1 => opreg_val10_Q);
delay_2521: DELAY
    PORT MAP ( Y => n_3071, IN1 => opreg_val11_Q);
delay_2522: DELAY
    PORT MAP ( Y => n_3072, IN1 => data(10));
delay_2523: DELAY
    PORT MAP ( Y => n_3073, IN1 => data(11));
and4_2524: AND4
    PORT MAP ( Y => n_3074, IN1 => n_3075, IN2 => n_3076, IN3 => n_3077, IN4 => n_3078);
inv_2525: INV 
    PORT MAP ( Y => n_3075, IN1 => data(11));
inv_2526: INV 
    PORT MAP ( Y => n_3076, IN1 => opreg_val11_Q);
delay_2527: DELAY
    PORT MAP ( Y => n_3077, IN1 => opreg_val10_Q);
delay_2528: DELAY
    PORT MAP ( Y => n_3078, IN1 => data(10));
and4_2529: AND4
    PORT MAP ( Y => n_3079, IN1 => n_3080, IN2 => n_3081, IN3 => n_3082, IN4 => n_3083);
inv_2530: INV 
    PORT MAP ( Y => n_3080, IN1 => data(10));
inv_2531: INV 
    PORT MAP ( Y => n_3081, IN1 => opreg_val10_Q);
delay_2532: DELAY
    PORT MAP ( Y => n_3082, IN1 => opreg_val11_Q);
delay_2533: DELAY
    PORT MAP ( Y => n_3083, IN1 => data(11));
and4_2534: AND4
    PORT MAP ( Y => n_3084, IN1 => n_3085, IN2 => n_3086, IN3 => n_3087, IN4 => n_3088);
inv_2535: INV 
    PORT MAP ( Y => n_3085, IN1 => data(11));
inv_2536: INV 
    PORT MAP ( Y => n_3086, IN1 => data(10));
inv_2537: INV 
    PORT MAP ( Y => n_3087, IN1 => opreg_val11_Q);
inv_2538: INV 
    PORT MAP ( Y => n_3088, IN1 => opreg_val10_Q);
delay_2539: DELAY
    PORT MAP ( Y => n_3089, IN1 => a_a289_aIN);
delay_2540: DELAY
    PORT MAP ( Y => a_a291_aOUT, IN1 => a_a291_aIN);
and2_2541: AND2
    PORT MAP ( Y => a_a291_aIN, IN1 => n_3092, IN2 => n_3113);
or4_2542: OR4
    PORT MAP ( Y => n_3092, IN1 => n_3093, IN2 => n_3098, IN3 => n_3103, IN4 => n_3108);
and4_2543: AND4
    PORT MAP ( Y => n_3093, IN1 => n_3094, IN2 => n_3095, IN3 => n_3096, IN4 => n_3097);
delay_2544: DELAY
    PORT MAP ( Y => n_3094, IN1 => opreg_val12_Q);
delay_2545: DELAY
    PORT MAP ( Y => n_3095, IN1 => opreg_val13_Q);
delay_2546: DELAY
    PORT MAP ( Y => n_3096, IN1 => data(12));
delay_2547: DELAY
    PORT MAP ( Y => n_3097, IN1 => data(13));
and4_2548: AND4
    PORT MAP ( Y => n_3098, IN1 => n_3099, IN2 => n_3100, IN3 => n_3101, IN4 => n_3102);
inv_2549: INV 
    PORT MAP ( Y => n_3099, IN1 => data(12));
inv_2550: INV 
    PORT MAP ( Y => n_3100, IN1 => opreg_val12_Q);
delay_2551: DELAY
    PORT MAP ( Y => n_3101, IN1 => opreg_val13_Q);
delay_2552: DELAY
    PORT MAP ( Y => n_3102, IN1 => data(13));
and4_2553: AND4
    PORT MAP ( Y => n_3103, IN1 => n_3104, IN2 => n_3105, IN3 => n_3106, IN4 => n_3107);
inv_2554: INV 
    PORT MAP ( Y => n_3104, IN1 => data(13));
inv_2555: INV 
    PORT MAP ( Y => n_3105, IN1 => opreg_val13_Q);
delay_2556: DELAY
    PORT MAP ( Y => n_3106, IN1 => opreg_val12_Q);
delay_2557: DELAY
    PORT MAP ( Y => n_3107, IN1 => data(12));
and4_2558: AND4
    PORT MAP ( Y => n_3108, IN1 => n_3109, IN2 => n_3110, IN3 => n_3111, IN4 => n_3112);
inv_2559: INV 
    PORT MAP ( Y => n_3109, IN1 => data(13));
inv_2560: INV 
    PORT MAP ( Y => n_3110, IN1 => data(12));
inv_2561: INV 
    PORT MAP ( Y => n_3111, IN1 => opreg_val13_Q);
inv_2562: INV 
    PORT MAP ( Y => n_3112, IN1 => opreg_val12_Q);
delay_2563: DELAY
    PORT MAP ( Y => n_3113, IN1 => a_a290_aIN);
delay_2564: DELAY
    PORT MAP ( Y => comp1_modgen_54_eqo1_aOUT, IN1 => comp1_modgen_54_eqo1_aIN1);
and2_2565: AND2
    PORT MAP ( Y => comp1_modgen_54_eqo1_aIN1, IN1 => n_3116, IN2 => n_3137);
or4_2566: OR4
    PORT MAP ( Y => n_3116, IN1 => n_3117, IN2 => n_3122, IN3 => n_3127, IN4 => n_3132);
and4_2567: AND4
    PORT MAP ( Y => n_3117, IN1 => n_3118, IN2 => n_3119, IN3 => n_3120, IN4 => n_3121);
delay_2568: DELAY
    PORT MAP ( Y => n_3118, IN1 => opreg_val14_Q);
delay_2569: DELAY
    PORT MAP ( Y => n_3119, IN1 => opreg_val15_Q);
delay_2570: DELAY
    PORT MAP ( Y => n_3120, IN1 => data(14));
delay_2571: DELAY
    PORT MAP ( Y => n_3121, IN1 => data(15));
and4_2572: AND4
    PORT MAP ( Y => n_3122, IN1 => n_3123, IN2 => n_3124, IN3 => n_3125, IN4 => n_3126);
inv_2573: INV 
    PORT MAP ( Y => n_3123, IN1 => data(14));
inv_2574: INV 
    PORT MAP ( Y => n_3124, IN1 => opreg_val14_Q);
delay_2575: DELAY
    PORT MAP ( Y => n_3125, IN1 => opreg_val15_Q);
delay_2576: DELAY
    PORT MAP ( Y => n_3126, IN1 => data(15));
and4_2577: AND4
    PORT MAP ( Y => n_3127, IN1 => n_3128, IN2 => n_3129, IN3 => n_3130, IN4 => n_3131);
inv_2578: INV 
    PORT MAP ( Y => n_3128, IN1 => data(15));
inv_2579: INV 
    PORT MAP ( Y => n_3129, IN1 => opreg_val15_Q);
delay_2580: DELAY
    PORT MAP ( Y => n_3130, IN1 => opreg_val14_Q);
delay_2581: DELAY
    PORT MAP ( Y => n_3131, IN1 => data(14));
and4_2582: AND4
    PORT MAP ( Y => n_3132, IN1 => n_3133, IN2 => n_3134, IN3 => n_3135, IN4 => n_3136);
inv_2583: INV 
    PORT MAP ( Y => n_3133, IN1 => data(15));
inv_2584: INV 
    PORT MAP ( Y => n_3134, IN1 => data(14));
inv_2585: INV 
    PORT MAP ( Y => n_3135, IN1 => opreg_val15_Q);
inv_2586: INV 
    PORT MAP ( Y => n_3136, IN1 => opreg_val14_Q);
delay_2587: DELAY
    PORT MAP ( Y => n_3137, IN1 => a_a291_aIN);
delay_2588: DELAY
    PORT MAP ( Y => a_a286_aOUT, IN1 => a_a286_aIN);
xor2_2589: XOR2
    PORT MAP ( Y => a_a286_aIN, IN1 => n_3140, IN2 => n_3161);
or4_2590: OR4
    PORT MAP ( Y => n_3140, IN1 => n_3141, IN2 => n_3146, IN3 => n_3151, IN4 => n_3156);
and4_2591: AND4
    PORT MAP ( Y => n_3141, IN1 => n_3142, IN2 => n_3143, IN3 => n_3144, IN4 => n_3145);
delay_2592: DELAY
    PORT MAP ( Y => n_3142, IN1 => opreg_val0_Q);
delay_2593: DELAY
    PORT MAP ( Y => n_3143, IN1 => opreg_val1_Q);
delay_2594: DELAY
    PORT MAP ( Y => n_3144, IN1 => data(0));
delay_2595: DELAY
    PORT MAP ( Y => n_3145, IN1 => data(1));
and4_2596: AND4
    PORT MAP ( Y => n_3146, IN1 => n_3147, IN2 => n_3148, IN3 => n_3149, IN4 => n_3150);
inv_2597: INV 
    PORT MAP ( Y => n_3147, IN1 => data(1));
inv_2598: INV 
    PORT MAP ( Y => n_3148, IN1 => opreg_val1_Q);
delay_2599: DELAY
    PORT MAP ( Y => n_3149, IN1 => opreg_val0_Q);
delay_2600: DELAY
    PORT MAP ( Y => n_3150, IN1 => data(0));
and4_2601: AND4
    PORT MAP ( Y => n_3151, IN1 => n_3152, IN2 => n_3153, IN3 => n_3154, IN4 => n_3155);
inv_2602: INV 
    PORT MAP ( Y => n_3152, IN1 => data(0));
inv_2603: INV 
    PORT MAP ( Y => n_3153, IN1 => opreg_val0_Q);
delay_2604: DELAY
    PORT MAP ( Y => n_3154, IN1 => opreg_val1_Q);
delay_2605: DELAY
    PORT MAP ( Y => n_3155, IN1 => data(1));
and4_2606: AND4
    PORT MAP ( Y => n_3156, IN1 => n_3157, IN2 => n_3158, IN3 => n_3159, IN4 => n_3160);
inv_2607: INV 
    PORT MAP ( Y => n_3157, IN1 => data(1));
inv_2608: INV 
    PORT MAP ( Y => n_3158, IN1 => data(0));
inv_2609: INV 
    PORT MAP ( Y => n_3159, IN1 => opreg_val1_Q);
inv_2610: INV 
    PORT MAP ( Y => n_3160, IN1 => opreg_val0_Q);
and1_2611: AND1
    PORT MAP ( Y => n_3161, IN1 => gnd);
delay_2612: DELAY
    PORT MAP ( Y => a_a287_aOUT, IN1 => a_a287_aIN);
and2_2613: AND2
    PORT MAP ( Y => a_a287_aIN, IN1 => n_3164, IN2 => n_3185);
or4_2614: OR4
    PORT MAP ( Y => n_3164, IN1 => n_3165, IN2 => n_3170, IN3 => n_3175, IN4 => n_3180);
and4_2615: AND4
    PORT MAP ( Y => n_3165, IN1 => n_3166, IN2 => n_3167, IN3 => n_3168, IN4 => n_3169);
delay_2616: DELAY
    PORT MAP ( Y => n_3166, IN1 => opreg_val2_Q);
delay_2617: DELAY
    PORT MAP ( Y => n_3167, IN1 => opreg_val3_Q);
delay_2618: DELAY
    PORT MAP ( Y => n_3168, IN1 => data(2));
delay_2619: DELAY
    PORT MAP ( Y => n_3169, IN1 => data(3));
and4_2620: AND4
    PORT MAP ( Y => n_3170, IN1 => n_3171, IN2 => n_3172, IN3 => n_3173, IN4 => n_3174);
inv_2621: INV 
    PORT MAP ( Y => n_3171, IN1 => data(2));
inv_2622: INV 
    PORT MAP ( Y => n_3172, IN1 => opreg_val2_Q);
delay_2623: DELAY
    PORT MAP ( Y => n_3173, IN1 => opreg_val3_Q);
delay_2624: DELAY
    PORT MAP ( Y => n_3174, IN1 => data(3));
and4_2625: AND4
    PORT MAP ( Y => n_3175, IN1 => n_3176, IN2 => n_3177, IN3 => n_3178, IN4 => n_3179);
inv_2626: INV 
    PORT MAP ( Y => n_3176, IN1 => data(3));
inv_2627: INV 
    PORT MAP ( Y => n_3177, IN1 => opreg_val3_Q);
delay_2628: DELAY
    PORT MAP ( Y => n_3178, IN1 => opreg_val2_Q);
delay_2629: DELAY
    PORT MAP ( Y => n_3179, IN1 => data(2));
and4_2630: AND4
    PORT MAP ( Y => n_3180, IN1 => n_3181, IN2 => n_3182, IN3 => n_3183, IN4 => n_3184);
inv_2631: INV 
    PORT MAP ( Y => n_3181, IN1 => data(3));
inv_2632: INV 
    PORT MAP ( Y => n_3182, IN1 => data(2));
inv_2633: INV 
    PORT MAP ( Y => n_3183, IN1 => opreg_val3_Q);
inv_2634: INV 
    PORT MAP ( Y => n_3184, IN1 => opreg_val2_Q);
delay_2635: DELAY
    PORT MAP ( Y => n_3185, IN1 => a_a286_aIN);
delay_2636: DELAY
    PORT MAP ( Y => a_a288_aOUT, IN1 => a_a288_aIN);
and2_2637: AND2
    PORT MAP ( Y => a_a288_aIN, IN1 => n_3188, IN2 => n_3209);
or4_2638: OR4
    PORT MAP ( Y => n_3188, IN1 => n_3189, IN2 => n_3194, IN3 => n_3199, IN4 => n_3204);
and4_2639: AND4
    PORT MAP ( Y => n_3189, IN1 => n_3190, IN2 => n_3191, IN3 => n_3192, IN4 => n_3193);
delay_2640: DELAY
    PORT MAP ( Y => n_3190, IN1 => opreg_val4_Q);
delay_2641: DELAY
    PORT MAP ( Y => n_3191, IN1 => opreg_val5_Q);
delay_2642: DELAY
    PORT MAP ( Y => n_3192, IN1 => data(4));
delay_2643: DELAY
    PORT MAP ( Y => n_3193, IN1 => data(5));
and4_2644: AND4
    PORT MAP ( Y => n_3194, IN1 => n_3195, IN2 => n_3196, IN3 => n_3197, IN4 => n_3198);
inv_2645: INV 
    PORT MAP ( Y => n_3195, IN1 => data(4));
inv_2646: INV 
    PORT MAP ( Y => n_3196, IN1 => opreg_val4_Q);
delay_2647: DELAY
    PORT MAP ( Y => n_3197, IN1 => opreg_val5_Q);
delay_2648: DELAY
    PORT MAP ( Y => n_3198, IN1 => data(5));
and4_2649: AND4
    PORT MAP ( Y => n_3199, IN1 => n_3200, IN2 => n_3201, IN3 => n_3202, IN4 => n_3203);
inv_2650: INV 
    PORT MAP ( Y => n_3200, IN1 => data(5));
inv_2651: INV 
    PORT MAP ( Y => n_3201, IN1 => opreg_val5_Q);
delay_2652: DELAY
    PORT MAP ( Y => n_3202, IN1 => opreg_val4_Q);
delay_2653: DELAY
    PORT MAP ( Y => n_3203, IN1 => data(4));
and4_2654: AND4
    PORT MAP ( Y => n_3204, IN1 => n_3205, IN2 => n_3206, IN3 => n_3207, IN4 => n_3208);
inv_2655: INV 
    PORT MAP ( Y => n_3205, IN1 => data(5));
inv_2656: INV 
    PORT MAP ( Y => n_3206, IN1 => data(4));
inv_2657: INV 
    PORT MAP ( Y => n_3207, IN1 => opreg_val5_Q);
inv_2658: INV 
    PORT MAP ( Y => n_3208, IN1 => opreg_val4_Q);
delay_2659: DELAY
    PORT MAP ( Y => n_3209, IN1 => a_a287_aIN);
delay_2660: DELAY
    PORT MAP ( Y => comp1_modgen_54_eqo0_aOUT, IN1 => comp1_modgen_54_eqo0_aIN1);
and2_2661: AND2
    PORT MAP ( Y => comp1_modgen_54_eqo0_aIN1, IN1 => n_3212, IN2 => n_3233);
or4_2662: OR4
    PORT MAP ( Y => n_3212, IN1 => n_3213, IN2 => n_3218, IN3 => n_3223, IN4 => n_3228);
and4_2663: AND4
    PORT MAP ( Y => n_3213, IN1 => n_3214, IN2 => n_3215, IN3 => n_3216, IN4 => n_3217);
delay_2664: DELAY
    PORT MAP ( Y => n_3214, IN1 => opreg_val6_Q);
delay_2665: DELAY
    PORT MAP ( Y => n_3215, IN1 => opreg_val7_Q);
delay_2666: DELAY
    PORT MAP ( Y => n_3216, IN1 => data(6));
delay_2667: DELAY
    PORT MAP ( Y => n_3217, IN1 => data(7));
and4_2668: AND4
    PORT MAP ( Y => n_3218, IN1 => n_3219, IN2 => n_3220, IN3 => n_3221, IN4 => n_3222);
inv_2669: INV 
    PORT MAP ( Y => n_3219, IN1 => data(6));
inv_2670: INV 
    PORT MAP ( Y => n_3220, IN1 => opreg_val6_Q);
delay_2671: DELAY
    PORT MAP ( Y => n_3221, IN1 => opreg_val7_Q);
delay_2672: DELAY
    PORT MAP ( Y => n_3222, IN1 => data(7));
and4_2673: AND4
    PORT MAP ( Y => n_3223, IN1 => n_3224, IN2 => n_3225, IN3 => n_3226, IN4 => n_3227);
inv_2674: INV 
    PORT MAP ( Y => n_3224, IN1 => data(7));
inv_2675: INV 
    PORT MAP ( Y => n_3225, IN1 => opreg_val7_Q);
delay_2676: DELAY
    PORT MAP ( Y => n_3226, IN1 => opreg_val6_Q);
delay_2677: DELAY
    PORT MAP ( Y => n_3227, IN1 => data(6));
and4_2678: AND4
    PORT MAP ( Y => n_3228, IN1 => n_3229, IN2 => n_3230, IN3 => n_3231, IN4 => n_3232);
inv_2679: INV 
    PORT MAP ( Y => n_3229, IN1 => data(7));
inv_2680: INV 
    PORT MAP ( Y => n_3230, IN1 => data(6));
inv_2681: INV 
    PORT MAP ( Y => n_3231, IN1 => opreg_val7_Q);
inv_2682: INV 
    PORT MAP ( Y => n_3232, IN1 => opreg_val6_Q);
delay_2683: DELAY
    PORT MAP ( Y => n_3233, IN1 => a_a288_aIN);
delay_2684: DELAY
    PORT MAP ( Y => comp1_nx38_aOUT, IN1 => comp1_nx38_aIN);
xor2_2685: XOR2
    PORT MAP ( Y => comp1_nx38_aIN, IN1 => n_3236, IN2 => n_3245);
or2_2686: OR2
    PORT MAP ( Y => n_3236, IN1 => n_3237, IN2 => n_3241);
and2_2687: AND2
    PORT MAP ( Y => n_3237, IN1 => n_3238, IN2 => n_3240);
delay_2688: DELAY
    PORT MAP ( Y => n_3238, IN1 => opregrd_aOUT);
delay_2689: DELAY
    PORT MAP ( Y => n_3240, IN1 => a_as_or2_a77_a_a30_aOUT_aNOT);
and3_2690: AND3
    PORT MAP ( Y => n_3241, IN1 => n_3242, IN2 => n_3243, IN3 => n_3244);
inv_2691: INV 
    PORT MAP ( Y => n_3242, IN1 => opregrd_aOUT);
delay_2692: DELAY
    PORT MAP ( Y => n_3243, IN1 => comp1_modgen_54_eqo1_aOUT);
delay_2693: DELAY
    PORT MAP ( Y => n_3244, IN1 => comp1_modgen_54_eqo0_aOUT);
and1_2694: AND1
    PORT MAP ( Y => n_3245, IN1 => gnd);
dff_2695: DFF
    PORT MAP ( D => con1_current_state33_aD, CLK => con1_current_state33_aCLK,
          CLRN => con1_current_state33_aCLRN, PRN => vcc, Q => con1_current_state33_Q);
inv_2696: INV 
    PORT MAP ( Y => con1_current_state33_aCLRN, IN1 => reset);
xor2_2697: XOR2
    PORT MAP ( Y => con1_current_state33_aD, IN1 => n_3253, IN2 => n_3257);
or1_2698: OR1
    PORT MAP ( Y => n_3253, IN1 => n_3254);
and2_2699: AND2
    PORT MAP ( Y => n_3254, IN1 => n_3255, IN2 => n_3256);
delay_2700: DELAY
    PORT MAP ( Y => n_3255, IN1 => con1_current_state32_Q);
delay_2701: DELAY
    PORT MAP ( Y => n_3256, IN1 => comp1_nx38_aOUT);
and1_2702: AND1
    PORT MAP ( Y => n_3257, IN1 => gnd);
delay_2703: DELAY
    PORT MAP ( Y => con1_current_state33_aCLK, IN1 => clock);
dffe_2704: DFFE
    PORT MAP ( D => ix484_a1_dup_653_aD, CLK => ix484_a1_dup_653_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_653_aENA, Q => ix484_a1_dup_653_Q);
xor2_2705: XOR2
    PORT MAP ( Y => ix484_a1_dup_653_aD, IN1 => n_3265, IN2 => n_3268);
or1_2706: OR1
    PORT MAP ( Y => n_3265, IN1 => n_3266);
and1_2707: AND1
    PORT MAP ( Y => n_3266, IN1 => n_3267);
delay_2708: DELAY
    PORT MAP ( Y => n_3267, IN1 => data(0));
and1_2709: AND1
    PORT MAP ( Y => n_3268, IN1 => gnd);
and1_2710: AND1
    PORT MAP ( Y => n_3269, IN1 => n_3270);
delay_2711: DELAY
    PORT MAP ( Y => n_3270, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2712: DELAY
    PORT MAP ( Y => ix484_a1_dup_653_aCLK, IN1 => n_3269);
and1_2713: AND1
    PORT MAP ( Y => ix484_a1_dup_653_aENA, IN1 => n_3273);
delay_2714: DELAY
    PORT MAP ( Y => n_3273, IN1 => ix484_nx44_aOUT);
dffe_2715: DFFE
    PORT MAP ( D => ix484_a5_dup_649_aD, CLK => ix484_a5_dup_649_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_649_aENA, Q => ix484_a5_dup_649_Q);
xor2_2716: XOR2
    PORT MAP ( Y => ix484_a5_dup_649_aD, IN1 => n_3280, IN2 => n_3283);
or1_2717: OR1
    PORT MAP ( Y => n_3280, IN1 => n_3281);
and1_2718: AND1
    PORT MAP ( Y => n_3281, IN1 => n_3282);
delay_2719: DELAY
    PORT MAP ( Y => n_3282, IN1 => data(0));
and1_2720: AND1
    PORT MAP ( Y => n_3283, IN1 => gnd);
and1_2721: AND1
    PORT MAP ( Y => n_3284, IN1 => n_3285);
delay_2722: DELAY
    PORT MAP ( Y => n_3285, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2723: DELAY
    PORT MAP ( Y => ix484_a5_dup_649_aCLK, IN1 => n_3284);
and1_2724: AND1
    PORT MAP ( Y => ix484_a5_dup_649_aENA, IN1 => n_3288);
delay_2725: DELAY
    PORT MAP ( Y => n_3288, IN1 => ix484_nx40_aOUT);
dffe_2726: DFFE
    PORT MAP ( D => ix484_a1_dup_645_aD, CLK => ix484_a1_dup_645_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_645_aENA, Q => ix484_a1_dup_645_Q);
xor2_2727: XOR2
    PORT MAP ( Y => ix484_a1_dup_645_aD, IN1 => n_3295, IN2 => n_3298);
or1_2728: OR1
    PORT MAP ( Y => n_3295, IN1 => n_3296);
and1_2729: AND1
    PORT MAP ( Y => n_3296, IN1 => n_3297);
delay_2730: DELAY
    PORT MAP ( Y => n_3297, IN1 => data(1));
and1_2731: AND1
    PORT MAP ( Y => n_3298, IN1 => gnd);
and1_2732: AND1
    PORT MAP ( Y => n_3299, IN1 => n_3300);
delay_2733: DELAY
    PORT MAP ( Y => n_3300, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2734: DELAY
    PORT MAP ( Y => ix484_a1_dup_645_aCLK, IN1 => n_3299);
and1_2735: AND1
    PORT MAP ( Y => ix484_a1_dup_645_aENA, IN1 => n_3303);
delay_2736: DELAY
    PORT MAP ( Y => n_3303, IN1 => ix484_nx44_aOUT);
dffe_2737: DFFE
    PORT MAP ( D => ix484_a5_dup_641_aD, CLK => ix484_a5_dup_641_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_641_aENA, Q => ix484_a5_dup_641_Q);
xor2_2738: XOR2
    PORT MAP ( Y => ix484_a5_dup_641_aD, IN1 => n_3310, IN2 => n_3313);
or1_2739: OR1
    PORT MAP ( Y => n_3310, IN1 => n_3311);
and1_2740: AND1
    PORT MAP ( Y => n_3311, IN1 => n_3312);
delay_2741: DELAY
    PORT MAP ( Y => n_3312, IN1 => data(1));
and1_2742: AND1
    PORT MAP ( Y => n_3313, IN1 => gnd);
and1_2743: AND1
    PORT MAP ( Y => n_3314, IN1 => n_3315);
delay_2744: DELAY
    PORT MAP ( Y => n_3315, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2745: DELAY
    PORT MAP ( Y => ix484_a5_dup_641_aCLK, IN1 => n_3314);
and1_2746: AND1
    PORT MAP ( Y => ix484_a5_dup_641_aENA, IN1 => n_3318);
delay_2747: DELAY
    PORT MAP ( Y => n_3318, IN1 => ix484_nx40_aOUT);
dffe_2748: DFFE
    PORT MAP ( D => ix484_a1_dup_637_aD, CLK => ix484_a1_dup_637_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_637_aENA, Q => ix484_a1_dup_637_Q);
xor2_2749: XOR2
    PORT MAP ( Y => ix484_a1_dup_637_aD, IN1 => n_3325, IN2 => n_3328);
or1_2750: OR1
    PORT MAP ( Y => n_3325, IN1 => n_3326);
and1_2751: AND1
    PORT MAP ( Y => n_3326, IN1 => n_3327);
delay_2752: DELAY
    PORT MAP ( Y => n_3327, IN1 => data(2));
and1_2753: AND1
    PORT MAP ( Y => n_3328, IN1 => gnd);
and1_2754: AND1
    PORT MAP ( Y => n_3329, IN1 => n_3330);
delay_2755: DELAY
    PORT MAP ( Y => n_3330, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2756: DELAY
    PORT MAP ( Y => ix484_a1_dup_637_aCLK, IN1 => n_3329);
and1_2757: AND1
    PORT MAP ( Y => ix484_a1_dup_637_aENA, IN1 => n_3333);
delay_2758: DELAY
    PORT MAP ( Y => n_3333, IN1 => ix484_nx44_aOUT);
dffe_2759: DFFE
    PORT MAP ( D => ix484_a5_dup_633_aD, CLK => ix484_a5_dup_633_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_633_aENA, Q => ix484_a5_dup_633_Q);
xor2_2760: XOR2
    PORT MAP ( Y => ix484_a5_dup_633_aD, IN1 => n_3340, IN2 => n_3343);
or1_2761: OR1
    PORT MAP ( Y => n_3340, IN1 => n_3341);
and1_2762: AND1
    PORT MAP ( Y => n_3341, IN1 => n_3342);
delay_2763: DELAY
    PORT MAP ( Y => n_3342, IN1 => data(2));
and1_2764: AND1
    PORT MAP ( Y => n_3343, IN1 => gnd);
and1_2765: AND1
    PORT MAP ( Y => n_3344, IN1 => n_3345);
delay_2766: DELAY
    PORT MAP ( Y => n_3345, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2767: DELAY
    PORT MAP ( Y => ix484_a5_dup_633_aCLK, IN1 => n_3344);
and1_2768: AND1
    PORT MAP ( Y => ix484_a5_dup_633_aENA, IN1 => n_3348);
delay_2769: DELAY
    PORT MAP ( Y => n_3348, IN1 => ix484_nx40_aOUT);
dffe_2770: DFFE
    PORT MAP ( D => ix484_a1_dup_629_aD, CLK => ix484_a1_dup_629_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_629_aENA, Q => ix484_a1_dup_629_Q);
xor2_2771: XOR2
    PORT MAP ( Y => ix484_a1_dup_629_aD, IN1 => n_3355, IN2 => n_3358);
or1_2772: OR1
    PORT MAP ( Y => n_3355, IN1 => n_3356);
and1_2773: AND1
    PORT MAP ( Y => n_3356, IN1 => n_3357);
delay_2774: DELAY
    PORT MAP ( Y => n_3357, IN1 => data(3));
and1_2775: AND1
    PORT MAP ( Y => n_3358, IN1 => gnd);
and1_2776: AND1
    PORT MAP ( Y => n_3359, IN1 => n_3360);
delay_2777: DELAY
    PORT MAP ( Y => n_3360, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2778: DELAY
    PORT MAP ( Y => ix484_a1_dup_629_aCLK, IN1 => n_3359);
and1_2779: AND1
    PORT MAP ( Y => ix484_a1_dup_629_aENA, IN1 => n_3363);
delay_2780: DELAY
    PORT MAP ( Y => n_3363, IN1 => ix484_nx44_aOUT);
dffe_2781: DFFE
    PORT MAP ( D => ix484_a5_dup_625_aD, CLK => ix484_a5_dup_625_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_625_aENA, Q => ix484_a5_dup_625_Q);
xor2_2782: XOR2
    PORT MAP ( Y => ix484_a5_dup_625_aD, IN1 => n_3370, IN2 => n_3373);
or1_2783: OR1
    PORT MAP ( Y => n_3370, IN1 => n_3371);
and1_2784: AND1
    PORT MAP ( Y => n_3371, IN1 => n_3372);
delay_2785: DELAY
    PORT MAP ( Y => n_3372, IN1 => data(3));
and1_2786: AND1
    PORT MAP ( Y => n_3373, IN1 => gnd);
and1_2787: AND1
    PORT MAP ( Y => n_3374, IN1 => n_3375);
delay_2788: DELAY
    PORT MAP ( Y => n_3375, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2789: DELAY
    PORT MAP ( Y => ix484_a5_dup_625_aCLK, IN1 => n_3374);
and1_2790: AND1
    PORT MAP ( Y => ix484_a5_dup_625_aENA, IN1 => n_3378);
delay_2791: DELAY
    PORT MAP ( Y => n_3378, IN1 => ix484_nx40_aOUT);
dffe_2792: DFFE
    PORT MAP ( D => ix484_a1_dup_621_aD, CLK => ix484_a1_dup_621_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_621_aENA, Q => ix484_a1_dup_621_Q);
xor2_2793: XOR2
    PORT MAP ( Y => ix484_a1_dup_621_aD, IN1 => n_3385, IN2 => n_3388);
or1_2794: OR1
    PORT MAP ( Y => n_3385, IN1 => n_3386);
and1_2795: AND1
    PORT MAP ( Y => n_3386, IN1 => n_3387);
delay_2796: DELAY
    PORT MAP ( Y => n_3387, IN1 => data(4));
and1_2797: AND1
    PORT MAP ( Y => n_3388, IN1 => gnd);
and1_2798: AND1
    PORT MAP ( Y => n_3389, IN1 => n_3390);
delay_2799: DELAY
    PORT MAP ( Y => n_3390, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2800: DELAY
    PORT MAP ( Y => ix484_a1_dup_621_aCLK, IN1 => n_3389);
and1_2801: AND1
    PORT MAP ( Y => ix484_a1_dup_621_aENA, IN1 => n_3393);
delay_2802: DELAY
    PORT MAP ( Y => n_3393, IN1 => ix484_nx44_aOUT);
dffe_2803: DFFE
    PORT MAP ( D => ix484_a5_dup_617_aD, CLK => ix484_a5_dup_617_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_617_aENA, Q => ix484_a5_dup_617_Q);
xor2_2804: XOR2
    PORT MAP ( Y => ix484_a5_dup_617_aD, IN1 => n_3400, IN2 => n_3403);
or1_2805: OR1
    PORT MAP ( Y => n_3400, IN1 => n_3401);
and1_2806: AND1
    PORT MAP ( Y => n_3401, IN1 => n_3402);
delay_2807: DELAY
    PORT MAP ( Y => n_3402, IN1 => data(4));
and1_2808: AND1
    PORT MAP ( Y => n_3403, IN1 => gnd);
and1_2809: AND1
    PORT MAP ( Y => n_3404, IN1 => n_3405);
delay_2810: DELAY
    PORT MAP ( Y => n_3405, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2811: DELAY
    PORT MAP ( Y => ix484_a5_dup_617_aCLK, IN1 => n_3404);
and1_2812: AND1
    PORT MAP ( Y => ix484_a5_dup_617_aENA, IN1 => n_3408);
delay_2813: DELAY
    PORT MAP ( Y => n_3408, IN1 => ix484_nx40_aOUT);
dffe_2814: DFFE
    PORT MAP ( D => ix484_a1_dup_613_aD, CLK => ix484_a1_dup_613_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_613_aENA, Q => ix484_a1_dup_613_Q);
xor2_2815: XOR2
    PORT MAP ( Y => ix484_a1_dup_613_aD, IN1 => n_3415, IN2 => n_3418);
or1_2816: OR1
    PORT MAP ( Y => n_3415, IN1 => n_3416);
and1_2817: AND1
    PORT MAP ( Y => n_3416, IN1 => n_3417);
delay_2818: DELAY
    PORT MAP ( Y => n_3417, IN1 => data(5));
and1_2819: AND1
    PORT MAP ( Y => n_3418, IN1 => gnd);
and1_2820: AND1
    PORT MAP ( Y => n_3419, IN1 => n_3420);
delay_2821: DELAY
    PORT MAP ( Y => n_3420, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2822: DELAY
    PORT MAP ( Y => ix484_a1_dup_613_aCLK, IN1 => n_3419);
and1_2823: AND1
    PORT MAP ( Y => ix484_a1_dup_613_aENA, IN1 => n_3423);
delay_2824: DELAY
    PORT MAP ( Y => n_3423, IN1 => ix484_nx44_aOUT);
dffe_2825: DFFE
    PORT MAP ( D => ix484_a5_dup_609_aD, CLK => ix484_a5_dup_609_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_609_aENA, Q => ix484_a5_dup_609_Q);
xor2_2826: XOR2
    PORT MAP ( Y => ix484_a5_dup_609_aD, IN1 => n_3430, IN2 => n_3433);
or1_2827: OR1
    PORT MAP ( Y => n_3430, IN1 => n_3431);
and1_2828: AND1
    PORT MAP ( Y => n_3431, IN1 => n_3432);
delay_2829: DELAY
    PORT MAP ( Y => n_3432, IN1 => data(5));
and1_2830: AND1
    PORT MAP ( Y => n_3433, IN1 => gnd);
and1_2831: AND1
    PORT MAP ( Y => n_3434, IN1 => n_3435);
delay_2832: DELAY
    PORT MAP ( Y => n_3435, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2833: DELAY
    PORT MAP ( Y => ix484_a5_dup_609_aCLK, IN1 => n_3434);
and1_2834: AND1
    PORT MAP ( Y => ix484_a5_dup_609_aENA, IN1 => n_3438);
delay_2835: DELAY
    PORT MAP ( Y => n_3438, IN1 => ix484_nx40_aOUT);
dffe_2836: DFFE
    PORT MAP ( D => ix484_a1_dup_605_aD, CLK => ix484_a1_dup_605_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_605_aENA, Q => ix484_a1_dup_605_Q);
xor2_2837: XOR2
    PORT MAP ( Y => ix484_a1_dup_605_aD, IN1 => n_3445, IN2 => n_3448);
or1_2838: OR1
    PORT MAP ( Y => n_3445, IN1 => n_3446);
and1_2839: AND1
    PORT MAP ( Y => n_3446, IN1 => n_3447);
delay_2840: DELAY
    PORT MAP ( Y => n_3447, IN1 => data(6));
and1_2841: AND1
    PORT MAP ( Y => n_3448, IN1 => gnd);
and1_2842: AND1
    PORT MAP ( Y => n_3449, IN1 => n_3450);
delay_2843: DELAY
    PORT MAP ( Y => n_3450, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2844: DELAY
    PORT MAP ( Y => ix484_a1_dup_605_aCLK, IN1 => n_3449);
and1_2845: AND1
    PORT MAP ( Y => ix484_a1_dup_605_aENA, IN1 => n_3453);
delay_2846: DELAY
    PORT MAP ( Y => n_3453, IN1 => ix484_nx44_aOUT);
dffe_2847: DFFE
    PORT MAP ( D => ix484_a5_dup_601_aD, CLK => ix484_a5_dup_601_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_601_aENA, Q => ix484_a5_dup_601_Q);
xor2_2848: XOR2
    PORT MAP ( Y => ix484_a5_dup_601_aD, IN1 => n_3460, IN2 => n_3463);
or1_2849: OR1
    PORT MAP ( Y => n_3460, IN1 => n_3461);
and1_2850: AND1
    PORT MAP ( Y => n_3461, IN1 => n_3462);
delay_2851: DELAY
    PORT MAP ( Y => n_3462, IN1 => data(6));
and1_2852: AND1
    PORT MAP ( Y => n_3463, IN1 => gnd);
and1_2853: AND1
    PORT MAP ( Y => n_3464, IN1 => n_3465);
delay_2854: DELAY
    PORT MAP ( Y => n_3465, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2855: DELAY
    PORT MAP ( Y => ix484_a5_dup_601_aCLK, IN1 => n_3464);
and1_2856: AND1
    PORT MAP ( Y => ix484_a5_dup_601_aENA, IN1 => n_3468);
delay_2857: DELAY
    PORT MAP ( Y => n_3468, IN1 => ix484_nx40_aOUT);
dffe_2858: DFFE
    PORT MAP ( D => ix484_a1_dup_597_aD, CLK => ix484_a1_dup_597_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_597_aENA, Q => ix484_a1_dup_597_Q);
xor2_2859: XOR2
    PORT MAP ( Y => ix484_a1_dup_597_aD, IN1 => n_3475, IN2 => n_3478);
or1_2860: OR1
    PORT MAP ( Y => n_3475, IN1 => n_3476);
and1_2861: AND1
    PORT MAP ( Y => n_3476, IN1 => n_3477);
delay_2862: DELAY
    PORT MAP ( Y => n_3477, IN1 => data(7));
and1_2863: AND1
    PORT MAP ( Y => n_3478, IN1 => gnd);
and1_2864: AND1
    PORT MAP ( Y => n_3479, IN1 => n_3480);
delay_2865: DELAY
    PORT MAP ( Y => n_3480, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2866: DELAY
    PORT MAP ( Y => ix484_a1_dup_597_aCLK, IN1 => n_3479);
and1_2867: AND1
    PORT MAP ( Y => ix484_a1_dup_597_aENA, IN1 => n_3483);
delay_2868: DELAY
    PORT MAP ( Y => n_3483, IN1 => ix484_nx44_aOUT);
dffe_2869: DFFE
    PORT MAP ( D => ix484_a5_dup_593_aD, CLK => ix484_a5_dup_593_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_593_aENA, Q => ix484_a5_dup_593_Q);
xor2_2870: XOR2
    PORT MAP ( Y => ix484_a5_dup_593_aD, IN1 => n_3490, IN2 => n_3493);
or1_2871: OR1
    PORT MAP ( Y => n_3490, IN1 => n_3491);
and1_2872: AND1
    PORT MAP ( Y => n_3491, IN1 => n_3492);
delay_2873: DELAY
    PORT MAP ( Y => n_3492, IN1 => data(7));
and1_2874: AND1
    PORT MAP ( Y => n_3493, IN1 => gnd);
and1_2875: AND1
    PORT MAP ( Y => n_3494, IN1 => n_3495);
delay_2876: DELAY
    PORT MAP ( Y => n_3495, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2877: DELAY
    PORT MAP ( Y => ix484_a5_dup_593_aCLK, IN1 => n_3494);
and1_2878: AND1
    PORT MAP ( Y => ix484_a5_dup_593_aENA, IN1 => n_3498);
delay_2879: DELAY
    PORT MAP ( Y => n_3498, IN1 => ix484_nx40_aOUT);
dffe_2880: DFFE
    PORT MAP ( D => ix484_a1_dup_589_aD, CLK => ix484_a1_dup_589_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_589_aENA, Q => ix484_a1_dup_589_Q);
xor2_2881: XOR2
    PORT MAP ( Y => ix484_a1_dup_589_aD, IN1 => n_3505, IN2 => n_3508);
or1_2882: OR1
    PORT MAP ( Y => n_3505, IN1 => n_3506);
and1_2883: AND1
    PORT MAP ( Y => n_3506, IN1 => n_3507);
delay_2884: DELAY
    PORT MAP ( Y => n_3507, IN1 => data(8));
and1_2885: AND1
    PORT MAP ( Y => n_3508, IN1 => gnd);
and1_2886: AND1
    PORT MAP ( Y => n_3509, IN1 => n_3510);
delay_2887: DELAY
    PORT MAP ( Y => n_3510, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2888: DELAY
    PORT MAP ( Y => ix484_a1_dup_589_aCLK, IN1 => n_3509);
and1_2889: AND1
    PORT MAP ( Y => ix484_a1_dup_589_aENA, IN1 => n_3513);
delay_2890: DELAY
    PORT MAP ( Y => n_3513, IN1 => ix484_nx44_aOUT);
dffe_2891: DFFE
    PORT MAP ( D => ix484_a5_dup_585_aD, CLK => ix484_a5_dup_585_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_585_aENA, Q => ix484_a5_dup_585_Q);
xor2_2892: XOR2
    PORT MAP ( Y => ix484_a5_dup_585_aD, IN1 => n_3520, IN2 => n_3523);
or1_2893: OR1
    PORT MAP ( Y => n_3520, IN1 => n_3521);
and1_2894: AND1
    PORT MAP ( Y => n_3521, IN1 => n_3522);
delay_2895: DELAY
    PORT MAP ( Y => n_3522, IN1 => data(8));
and1_2896: AND1
    PORT MAP ( Y => n_3523, IN1 => gnd);
and1_2897: AND1
    PORT MAP ( Y => n_3524, IN1 => n_3525);
delay_2898: DELAY
    PORT MAP ( Y => n_3525, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2899: DELAY
    PORT MAP ( Y => ix484_a5_dup_585_aCLK, IN1 => n_3524);
and1_2900: AND1
    PORT MAP ( Y => ix484_a5_dup_585_aENA, IN1 => n_3528);
delay_2901: DELAY
    PORT MAP ( Y => n_3528, IN1 => ix484_nx40_aOUT);
dffe_2902: DFFE
    PORT MAP ( D => ix484_a1_dup_581_aD, CLK => ix484_a1_dup_581_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_581_aENA, Q => ix484_a1_dup_581_Q);
xor2_2903: XOR2
    PORT MAP ( Y => ix484_a1_dup_581_aD, IN1 => n_3535, IN2 => n_3538);
or1_2904: OR1
    PORT MAP ( Y => n_3535, IN1 => n_3536);
and1_2905: AND1
    PORT MAP ( Y => n_3536, IN1 => n_3537);
delay_2906: DELAY
    PORT MAP ( Y => n_3537, IN1 => data(9));
and1_2907: AND1
    PORT MAP ( Y => n_3538, IN1 => gnd);
and1_2908: AND1
    PORT MAP ( Y => n_3539, IN1 => n_3540);
delay_2909: DELAY
    PORT MAP ( Y => n_3540, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2910: DELAY
    PORT MAP ( Y => ix484_a1_dup_581_aCLK, IN1 => n_3539);
and1_2911: AND1
    PORT MAP ( Y => ix484_a1_dup_581_aENA, IN1 => n_3543);
delay_2912: DELAY
    PORT MAP ( Y => n_3543, IN1 => ix484_nx44_aOUT);
dffe_2913: DFFE
    PORT MAP ( D => ix484_a5_dup_577_aD, CLK => ix484_a5_dup_577_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_577_aENA, Q => ix484_a5_dup_577_Q);
xor2_2914: XOR2
    PORT MAP ( Y => ix484_a5_dup_577_aD, IN1 => n_3550, IN2 => n_3553);
or1_2915: OR1
    PORT MAP ( Y => n_3550, IN1 => n_3551);
and1_2916: AND1
    PORT MAP ( Y => n_3551, IN1 => n_3552);
delay_2917: DELAY
    PORT MAP ( Y => n_3552, IN1 => data(9));
and1_2918: AND1
    PORT MAP ( Y => n_3553, IN1 => gnd);
and1_2919: AND1
    PORT MAP ( Y => n_3554, IN1 => n_3555);
delay_2920: DELAY
    PORT MAP ( Y => n_3555, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2921: DELAY
    PORT MAP ( Y => ix484_a5_dup_577_aCLK, IN1 => n_3554);
and1_2922: AND1
    PORT MAP ( Y => ix484_a5_dup_577_aENA, IN1 => n_3558);
delay_2923: DELAY
    PORT MAP ( Y => n_3558, IN1 => ix484_nx40_aOUT);
dffe_2924: DFFE
    PORT MAP ( D => ix484_a1_dup_573_aD, CLK => ix484_a1_dup_573_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_573_aENA, Q => ix484_a1_dup_573_Q);
xor2_2925: XOR2
    PORT MAP ( Y => ix484_a1_dup_573_aD, IN1 => n_3565, IN2 => n_3568);
or1_2926: OR1
    PORT MAP ( Y => n_3565, IN1 => n_3566);
and1_2927: AND1
    PORT MAP ( Y => n_3566, IN1 => n_3567);
delay_2928: DELAY
    PORT MAP ( Y => n_3567, IN1 => data(10));
and1_2929: AND1
    PORT MAP ( Y => n_3568, IN1 => gnd);
and1_2930: AND1
    PORT MAP ( Y => n_3569, IN1 => n_3570);
delay_2931: DELAY
    PORT MAP ( Y => n_3570, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2932: DELAY
    PORT MAP ( Y => ix484_a1_dup_573_aCLK, IN1 => n_3569);
and1_2933: AND1
    PORT MAP ( Y => ix484_a1_dup_573_aENA, IN1 => n_3573);
delay_2934: DELAY
    PORT MAP ( Y => n_3573, IN1 => ix484_nx44_aOUT);
dffe_2935: DFFE
    PORT MAP ( D => ix484_a5_dup_569_aD, CLK => ix484_a5_dup_569_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_569_aENA, Q => ix484_a5_dup_569_Q);
xor2_2936: XOR2
    PORT MAP ( Y => ix484_a5_dup_569_aD, IN1 => n_3580, IN2 => n_3583);
or1_2937: OR1
    PORT MAP ( Y => n_3580, IN1 => n_3581);
and1_2938: AND1
    PORT MAP ( Y => n_3581, IN1 => n_3582);
delay_2939: DELAY
    PORT MAP ( Y => n_3582, IN1 => data(10));
and1_2940: AND1
    PORT MAP ( Y => n_3583, IN1 => gnd);
and1_2941: AND1
    PORT MAP ( Y => n_3584, IN1 => n_3585);
delay_2942: DELAY
    PORT MAP ( Y => n_3585, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2943: DELAY
    PORT MAP ( Y => ix484_a5_dup_569_aCLK, IN1 => n_3584);
and1_2944: AND1
    PORT MAP ( Y => ix484_a5_dup_569_aENA, IN1 => n_3588);
delay_2945: DELAY
    PORT MAP ( Y => n_3588, IN1 => ix484_nx40_aOUT);
dffe_2946: DFFE
    PORT MAP ( D => ix484_a1_dup_565_aD, CLK => ix484_a1_dup_565_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_565_aENA, Q => ix484_a1_dup_565_Q);
xor2_2947: XOR2
    PORT MAP ( Y => ix484_a1_dup_565_aD, IN1 => n_3595, IN2 => n_3598);
or1_2948: OR1
    PORT MAP ( Y => n_3595, IN1 => n_3596);
and1_2949: AND1
    PORT MAP ( Y => n_3596, IN1 => n_3597);
delay_2950: DELAY
    PORT MAP ( Y => n_3597, IN1 => data(11));
and1_2951: AND1
    PORT MAP ( Y => n_3598, IN1 => gnd);
and1_2952: AND1
    PORT MAP ( Y => n_3599, IN1 => n_3600);
delay_2953: DELAY
    PORT MAP ( Y => n_3600, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2954: DELAY
    PORT MAP ( Y => ix484_a1_dup_565_aCLK, IN1 => n_3599);
and1_2955: AND1
    PORT MAP ( Y => ix484_a1_dup_565_aENA, IN1 => n_3603);
delay_2956: DELAY
    PORT MAP ( Y => n_3603, IN1 => ix484_nx44_aOUT);
dffe_2957: DFFE
    PORT MAP ( D => ix484_a5_dup_561_aD, CLK => ix484_a5_dup_561_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_561_aENA, Q => ix484_a5_dup_561_Q);
xor2_2958: XOR2
    PORT MAP ( Y => ix484_a5_dup_561_aD, IN1 => n_3610, IN2 => n_3613);
or1_2959: OR1
    PORT MAP ( Y => n_3610, IN1 => n_3611);
and1_2960: AND1
    PORT MAP ( Y => n_3611, IN1 => n_3612);
delay_2961: DELAY
    PORT MAP ( Y => n_3612, IN1 => data(11));
and1_2962: AND1
    PORT MAP ( Y => n_3613, IN1 => gnd);
and1_2963: AND1
    PORT MAP ( Y => n_3614, IN1 => n_3615);
delay_2964: DELAY
    PORT MAP ( Y => n_3615, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2965: DELAY
    PORT MAP ( Y => ix484_a5_dup_561_aCLK, IN1 => n_3614);
and1_2966: AND1
    PORT MAP ( Y => ix484_a5_dup_561_aENA, IN1 => n_3618);
delay_2967: DELAY
    PORT MAP ( Y => n_3618, IN1 => ix484_nx40_aOUT);
dffe_2968: DFFE
    PORT MAP ( D => ix484_a1_dup_557_aD, CLK => ix484_a1_dup_557_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_557_aENA, Q => ix484_a1_dup_557_Q);
xor2_2969: XOR2
    PORT MAP ( Y => ix484_a1_dup_557_aD, IN1 => n_3625, IN2 => n_3628);
or1_2970: OR1
    PORT MAP ( Y => n_3625, IN1 => n_3626);
and1_2971: AND1
    PORT MAP ( Y => n_3626, IN1 => n_3627);
delay_2972: DELAY
    PORT MAP ( Y => n_3627, IN1 => data(12));
and1_2973: AND1
    PORT MAP ( Y => n_3628, IN1 => gnd);
and1_2974: AND1
    PORT MAP ( Y => n_3629, IN1 => n_3630);
delay_2975: DELAY
    PORT MAP ( Y => n_3630, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2976: DELAY
    PORT MAP ( Y => ix484_a1_dup_557_aCLK, IN1 => n_3629);
and1_2977: AND1
    PORT MAP ( Y => ix484_a1_dup_557_aENA, IN1 => n_3633);
delay_2978: DELAY
    PORT MAP ( Y => n_3633, IN1 => ix484_nx44_aOUT);
dffe_2979: DFFE
    PORT MAP ( D => ix484_a5_dup_553_aD, CLK => ix484_a5_dup_553_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_553_aENA, Q => ix484_a5_dup_553_Q);
xor2_2980: XOR2
    PORT MAP ( Y => ix484_a5_dup_553_aD, IN1 => n_3640, IN2 => n_3643);
or1_2981: OR1
    PORT MAP ( Y => n_3640, IN1 => n_3641);
and1_2982: AND1
    PORT MAP ( Y => n_3641, IN1 => n_3642);
delay_2983: DELAY
    PORT MAP ( Y => n_3642, IN1 => data(12));
and1_2984: AND1
    PORT MAP ( Y => n_3643, IN1 => gnd);
and1_2985: AND1
    PORT MAP ( Y => n_3644, IN1 => n_3645);
delay_2986: DELAY
    PORT MAP ( Y => n_3645, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2987: DELAY
    PORT MAP ( Y => ix484_a5_dup_553_aCLK, IN1 => n_3644);
and1_2988: AND1
    PORT MAP ( Y => ix484_a5_dup_553_aENA, IN1 => n_3648);
delay_2989: DELAY
    PORT MAP ( Y => n_3648, IN1 => ix484_nx40_aOUT);
dffe_2990: DFFE
    PORT MAP ( D => ix484_a1_dup_549_aD, CLK => ix484_a1_dup_549_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_549_aENA, Q => ix484_a1_dup_549_Q);
xor2_2991: XOR2
    PORT MAP ( Y => ix484_a1_dup_549_aD, IN1 => n_3655, IN2 => n_3658);
or1_2992: OR1
    PORT MAP ( Y => n_3655, IN1 => n_3656);
and1_2993: AND1
    PORT MAP ( Y => n_3656, IN1 => n_3657);
delay_2994: DELAY
    PORT MAP ( Y => n_3657, IN1 => data(13));
and1_2995: AND1
    PORT MAP ( Y => n_3658, IN1 => gnd);
and1_2996: AND1
    PORT MAP ( Y => n_3659, IN1 => n_3660);
delay_2997: DELAY
    PORT MAP ( Y => n_3660, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_2998: DELAY
    PORT MAP ( Y => ix484_a1_dup_549_aCLK, IN1 => n_3659);
and1_2999: AND1
    PORT MAP ( Y => ix484_a1_dup_549_aENA, IN1 => n_3663);
delay_3000: DELAY
    PORT MAP ( Y => n_3663, IN1 => ix484_nx44_aOUT);
dffe_3001: DFFE
    PORT MAP ( D => ix484_a5_dup_545_aD, CLK => ix484_a5_dup_545_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_545_aENA, Q => ix484_a5_dup_545_Q);
xor2_3002: XOR2
    PORT MAP ( Y => ix484_a5_dup_545_aD, IN1 => n_3670, IN2 => n_3673);
or1_3003: OR1
    PORT MAP ( Y => n_3670, IN1 => n_3671);
and1_3004: AND1
    PORT MAP ( Y => n_3671, IN1 => n_3672);
delay_3005: DELAY
    PORT MAP ( Y => n_3672, IN1 => data(13));
and1_3006: AND1
    PORT MAP ( Y => n_3673, IN1 => gnd);
and1_3007: AND1
    PORT MAP ( Y => n_3674, IN1 => n_3675);
delay_3008: DELAY
    PORT MAP ( Y => n_3675, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_3009: DELAY
    PORT MAP ( Y => ix484_a5_dup_545_aCLK, IN1 => n_3674);
and1_3010: AND1
    PORT MAP ( Y => ix484_a5_dup_545_aENA, IN1 => n_3678);
delay_3011: DELAY
    PORT MAP ( Y => n_3678, IN1 => ix484_nx40_aOUT);
dffe_3012: DFFE
    PORT MAP ( D => ix484_a1_dup_541_aD, CLK => ix484_a1_dup_541_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_541_aENA, Q => ix484_a1_dup_541_Q);
xor2_3013: XOR2
    PORT MAP ( Y => ix484_a1_dup_541_aD, IN1 => n_3685, IN2 => n_3688);
or1_3014: OR1
    PORT MAP ( Y => n_3685, IN1 => n_3686);
and1_3015: AND1
    PORT MAP ( Y => n_3686, IN1 => n_3687);
delay_3016: DELAY
    PORT MAP ( Y => n_3687, IN1 => data(14));
and1_3017: AND1
    PORT MAP ( Y => n_3688, IN1 => gnd);
and1_3018: AND1
    PORT MAP ( Y => n_3689, IN1 => n_3690);
delay_3019: DELAY
    PORT MAP ( Y => n_3690, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_3020: DELAY
    PORT MAP ( Y => ix484_a1_dup_541_aCLK, IN1 => n_3689);
and1_3021: AND1
    PORT MAP ( Y => ix484_a1_dup_541_aENA, IN1 => n_3693);
delay_3022: DELAY
    PORT MAP ( Y => n_3693, IN1 => ix484_nx44_aOUT);
dffe_3023: DFFE
    PORT MAP ( D => ix484_a5_dup_537_aD, CLK => ix484_a5_dup_537_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a5_dup_537_aENA, Q => ix484_a5_dup_537_Q);
xor2_3024: XOR2
    PORT MAP ( Y => ix484_a5_dup_537_aD, IN1 => n_3700, IN2 => n_3703);
or1_3025: OR1
    PORT MAP ( Y => n_3700, IN1 => n_3701);
and1_3026: AND1
    PORT MAP ( Y => n_3701, IN1 => n_3702);
delay_3027: DELAY
    PORT MAP ( Y => n_3702, IN1 => data(14));
and1_3028: AND1
    PORT MAP ( Y => n_3703, IN1 => gnd);
and1_3029: AND1
    PORT MAP ( Y => n_3704, IN1 => n_3705);
delay_3030: DELAY
    PORT MAP ( Y => n_3705, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_3031: DELAY
    PORT MAP ( Y => ix484_a5_dup_537_aCLK, IN1 => n_3704);
and1_3032: AND1
    PORT MAP ( Y => ix484_a5_dup_537_aENA, IN1 => n_3708);
delay_3033: DELAY
    PORT MAP ( Y => n_3708, IN1 => ix484_nx40_aOUT);
dff_3034: DFF
    PORT MAP ( D => con1_current_state49_aD, CLK => con1_current_state49_aCLK,
          CLRN => con1_current_state49_aCLRN, PRN => vcc, Q => con1_current_state49_Q);
inv_3035: INV 
    PORT MAP ( Y => con1_current_state49_aCLRN, IN1 => reset);
xor2_3036: XOR2
    PORT MAP ( Y => con1_current_state49_aD, IN1 => n_3716, IN2 => n_3723);
or1_3037: OR1
    PORT MAP ( Y => n_3716, IN1 => n_3717);
and4_3038: AND4
    PORT MAP ( Y => n_3717, IN1 => n_3718, IN2 => n_3720, IN3 => n_3721, IN4 => n_3722);
inv_3039: INV 
    PORT MAP ( Y => n_3718, IN1 => I3_dup_732_aOUT);
delay_3040: DELAY
    PORT MAP ( Y => n_3720, IN1 => instrregout11_Q);
delay_3041: DELAY
    PORT MAP ( Y => n_3721, IN1 => instrregout12_Q);
delay_3042: DELAY
    PORT MAP ( Y => n_3722, IN1 => con1_current_state6_Q);
and1_3043: AND1
    PORT MAP ( Y => n_3723, IN1 => gnd);
delay_3044: DELAY
    PORT MAP ( Y => con1_current_state49_aCLK, IN1 => clock);
dff_3045: DFF
    PORT MAP ( D => con1_current_state19_aD, CLK => con1_current_state19_aCLK,
          CLRN => con1_current_state19_aCLRN, PRN => vcc, Q => con1_current_state19_Q);
inv_3046: INV 
    PORT MAP ( Y => con1_current_state19_aCLRN, IN1 => reset);
xor2_3047: XOR2
    PORT MAP ( Y => con1_current_state19_aD, IN1 => n_3731, IN2 => n_3734);
or1_3048: OR1
    PORT MAP ( Y => n_3731, IN1 => n_3732);
and1_3049: AND1
    PORT MAP ( Y => n_3732, IN1 => n_3733);
delay_3050: DELAY
    PORT MAP ( Y => n_3733, IN1 => con1_current_state18_Q);
and1_3051: AND1
    PORT MAP ( Y => n_3734, IN1 => gnd);
delay_3052: DELAY
    PORT MAP ( Y => con1_current_state19_aCLK, IN1 => clock);
dff_3053: DFF
    PORT MAP ( D => con1_current_state51_aD, CLK => con1_current_state51_aCLK,
          CLRN => con1_current_state51_aCLRN, PRN => vcc, Q => con1_current_state51_Q);
inv_3054: INV 
    PORT MAP ( Y => con1_current_state51_aCLRN, IN1 => reset);
xor2_3055: XOR2
    PORT MAP ( Y => con1_current_state51_aD, IN1 => n_3742, IN2 => n_3746);
or1_3056: OR1
    PORT MAP ( Y => n_3742, IN1 => n_3743);
and1_3057: AND1
    PORT MAP ( Y => n_3743, IN1 => n_3744);
delay_3058: DELAY
    PORT MAP ( Y => n_3744, IN1 => con1_current_state50_Q);
and1_3059: AND1
    PORT MAP ( Y => n_3746, IN1 => gnd);
delay_3060: DELAY
    PORT MAP ( Y => con1_current_state51_aCLK, IN1 => clock);
dffe_3061: DFFE
    PORT MAP ( D => ix484_a1_dup_533_aD, CLK => ix484_a1_dup_533_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a1_dup_533_aENA, Q => ix484_a1_dup_533_Q);
xor2_3062: XOR2
    PORT MAP ( Y => ix484_a1_dup_533_aD, IN1 => n_3754, IN2 => n_3757);
or1_3063: OR1
    PORT MAP ( Y => n_3754, IN1 => n_3755);
and1_3064: AND1
    PORT MAP ( Y => n_3755, IN1 => n_3756);
delay_3065: DELAY
    PORT MAP ( Y => n_3756, IN1 => data(15));
and1_3066: AND1
    PORT MAP ( Y => n_3757, IN1 => gnd);
and1_3067: AND1
    PORT MAP ( Y => n_3758, IN1 => n_3759);
delay_3068: DELAY
    PORT MAP ( Y => n_3759, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_3069: DELAY
    PORT MAP ( Y => ix484_a1_dup_533_aCLK, IN1 => n_3758);
and1_3070: AND1
    PORT MAP ( Y => ix484_a1_dup_533_aENA, IN1 => n_3762);
delay_3071: DELAY
    PORT MAP ( Y => n_3762, IN1 => ix484_nx44_aOUT);
dffe_3072: DFFE
    PORT MAP ( D => ix484_a5_aD, CLK => ix484_a5_aCLK, CLRN => vcc, PRN => vcc,
          ENA => ix484_a5_aENA, Q => ix484_a5_Q);
xor2_3073: XOR2
    PORT MAP ( Y => ix484_a5_aD, IN1 => n_3769, IN2 => n_3772);
or1_3074: OR1
    PORT MAP ( Y => n_3769, IN1 => n_3770);
and1_3075: AND1
    PORT MAP ( Y => n_3770, IN1 => n_3771);
delay_3076: DELAY
    PORT MAP ( Y => n_3771, IN1 => data(15));
and1_3077: AND1
    PORT MAP ( Y => n_3772, IN1 => gnd);
and1_3078: AND1
    PORT MAP ( Y => n_3773, IN1 => n_3774);
delay_3079: DELAY
    PORT MAP ( Y => n_3774, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_3080: DELAY
    PORT MAP ( Y => ix484_a5_aCLK, IN1 => n_3773);
and1_3081: AND1
    PORT MAP ( Y => ix484_a5_aENA, IN1 => n_3777);
delay_3082: DELAY
    PORT MAP ( Y => n_3777, IN1 => ix484_nx40_aOUT);
dff_3083: DFF
    PORT MAP ( D => instrregout11_aD, CLK => instrregout11_aCLK, CLRN => vcc,
          PRN => vcc, Q => instrregout11_Q);
xor2_3084: XOR2
    PORT MAP ( Y => instrregout11_aD, IN1 => n_3783, IN2 => n_3786);
or1_3085: OR1
    PORT MAP ( Y => n_3783, IN1 => n_3784);
and1_3086: AND1
    PORT MAP ( Y => n_3784, IN1 => n_3785);
delay_3087: DELAY
    PORT MAP ( Y => n_3785, IN1 => data(11));
and1_3088: AND1
    PORT MAP ( Y => n_3786, IN1 => gnd);
and1_3089: AND1
    PORT MAP ( Y => n_3787, IN1 => n_3788);
delay_3090: DELAY
    PORT MAP ( Y => n_3788, IN1 => a_as_or3_aix1644_a_a32_aOUT);
delay_3091: DELAY
    PORT MAP ( Y => instrregout11_aCLK, IN1 => n_3787);
dff_3092: DFF
    PORT MAP ( D => con1_current_state44_aD, CLK => con1_current_state44_aCLK,
          CLRN => con1_current_state44_aCLRN, PRN => vcc, Q => con1_current_state44_Q);
inv_3093: INV 
    PORT MAP ( Y => con1_current_state44_aCLRN, IN1 => reset);
xor2_3094: XOR2
    PORT MAP ( Y => con1_current_state44_aD, IN1 => n_3797, IN2 => n_3803);
or1_3095: OR1
    PORT MAP ( Y => n_3797, IN1 => n_3798);
and4_3096: AND4
    PORT MAP ( Y => n_3798, IN1 => n_3799, IN2 => n_3800, IN3 => n_3801, IN4 => n_3802);
inv_3097: INV 
    PORT MAP ( Y => n_3799, IN1 => instrregout12_Q);
inv_3098: INV 
    PORT MAP ( Y => n_3800, IN1 => instrregout11_Q);
inv_3099: INV 
    PORT MAP ( Y => n_3801, IN1 => I3_dup_732_aOUT);
delay_3100: DELAY
    PORT MAP ( Y => n_3802, IN1 => con1_current_state6_Q);
and1_3101: AND1
    PORT MAP ( Y => n_3803, IN1 => gnd);
delay_3102: DELAY
    PORT MAP ( Y => con1_current_state44_aCLK, IN1 => clock);
dff_3103: DFF
    PORT MAP ( D => con1_current_state39_aD, CLK => con1_current_state39_aCLK,
          CLRN => con1_current_state39_aCLRN, PRN => vcc, Q => con1_current_state39_Q);
inv_3104: INV 
    PORT MAP ( Y => con1_current_state39_aCLRN, IN1 => reset);
xor2_3105: XOR2
    PORT MAP ( Y => con1_current_state39_aD, IN1 => n_3812, IN2 => n_3818);
or1_3106: OR1
    PORT MAP ( Y => n_3812, IN1 => n_3813);
and4_3107: AND4
    PORT MAP ( Y => n_3813, IN1 => n_3814, IN2 => n_3815, IN3 => n_3816, IN4 => n_3817);
inv_3108: INV 
    PORT MAP ( Y => n_3814, IN1 => instrregout12_Q);
inv_3109: INV 
    PORT MAP ( Y => n_3815, IN1 => I3_dup_732_aOUT);
delay_3110: DELAY
    PORT MAP ( Y => n_3816, IN1 => instrregout11_Q);
delay_3111: DELAY
    PORT MAP ( Y => n_3817, IN1 => con1_current_state6_Q);
and1_3112: AND1
    PORT MAP ( Y => n_3818, IN1 => gnd);
delay_3113: DELAY
    PORT MAP ( Y => con1_current_state39_aCLK, IN1 => clock);
dff_3114: DFF
    PORT MAP ( D => con1_current_state34_aD, CLK => con1_current_state34_aCLK,
          CLRN => con1_current_state34_aCLRN, PRN => vcc, Q => con1_current_state34_Q);
inv_3115: INV 
    PORT MAP ( Y => con1_current_state34_aCLRN, IN1 => reset);
xor2_3116: XOR2
    PORT MAP ( Y => con1_current_state34_aD, IN1 => n_3827, IN2 => n_3830);
or1_3117: OR1
    PORT MAP ( Y => n_3827, IN1 => n_3828);
and1_3118: AND1
    PORT MAP ( Y => n_3828, IN1 => n_3829);
delay_3119: DELAY
    PORT MAP ( Y => n_3829, IN1 => con1_current_state33_Q);
and1_3120: AND1
    PORT MAP ( Y => n_3830, IN1 => gnd);
delay_3121: DELAY
    PORT MAP ( Y => con1_current_state34_aCLK, IN1 => clock);
delay_3122: DELAY
    PORT MAP ( Y => I2_dup_689_aOUT, IN1 => I2_dup_689_aIN);
xor2_3123: XOR2
    PORT MAP ( Y => I2_dup_689_aIN, IN1 => n_3834, IN2 => n_3841);
or2_3124: OR2
    PORT MAP ( Y => n_3834, IN1 => n_3835, IN2 => n_3838);
and1_3125: AND1
    PORT MAP ( Y => n_3835, IN1 => n_3836);
delay_3126: DELAY
    PORT MAP ( Y => n_3836, IN1 => con1_current_state38_Q);
and1_3127: AND1
    PORT MAP ( Y => n_3838, IN1 => n_3839);
delay_3128: DELAY
    PORT MAP ( Y => n_3839, IN1 => con1_current_state43_Q);
and1_3129: AND1
    PORT MAP ( Y => n_3841, IN1 => gnd);
delay_3130: DELAY
    PORT MAP ( Y => a_as_or3_aix1652_a_a32_aOUT, IN1 => a_as_or3_aix1652_a_a32_aIN1);
xor2_3131: XOR2
    PORT MAP ( Y => a_as_or3_aix1652_a_a32_aIN1, IN1 => n_3844, IN2 => n_3854);
or3_3132: OR3
    PORT MAP ( Y => n_3844, IN1 => n_3845, IN2 => n_3848, IN3 => n_3851);
and1_3133: AND1
    PORT MAP ( Y => n_3845, IN1 => n_3846);
delay_3134: DELAY
    PORT MAP ( Y => n_3846, IN1 => con1_current_state23_Q);
and2_3135: AND2
    PORT MAP ( Y => n_3848, IN1 => n_3849, IN2 => n_3850);
delay_3136: DELAY
    PORT MAP ( Y => n_3849, IN1 => I2_dup_689_aOUT);
delay_3137: DELAY
    PORT MAP ( Y => n_3850, IN1 => ready);
and1_3138: AND1
    PORT MAP ( Y => n_3851, IN1 => n_3852);
delay_3139: DELAY
    PORT MAP ( Y => n_3852, IN1 => I2_dup_681_aOUT);
and1_3140: AND1
    PORT MAP ( Y => n_3854, IN1 => gnd);
dff_3141: DFF
    PORT MAP ( D => progcntr_val0_aD, CLK => progcntr_val0_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val0_Q);
xor2_3142: XOR2
    PORT MAP ( Y => progcntr_val0_aD, IN1 => n_3860, IN2 => n_3863);
or1_3143: OR1
    PORT MAP ( Y => n_3860, IN1 => n_3861);
and1_3144: AND1
    PORT MAP ( Y => n_3861, IN1 => n_3862);
delay_3145: DELAY
    PORT MAP ( Y => n_3862, IN1 => data(0));
and1_3146: AND1
    PORT MAP ( Y => n_3863, IN1 => gnd);
and1_3147: AND1
    PORT MAP ( Y => n_3864, IN1 => n_3865);
delay_3148: DELAY
    PORT MAP ( Y => n_3865, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3149: DELAY
    PORT MAP ( Y => progcntr_val0_aCLK, IN1 => n_3864);
delay_3150: DELAY
    PORT MAP ( Y => O_dup_914_aOUT, IN1 => O_dup_914_aIN);
xor2_3151: XOR2
    PORT MAP ( Y => O_dup_914_aIN, IN1 => n_3869, IN2 => n_3875);
or2_3152: OR2
    PORT MAP ( Y => n_3869, IN1 => n_3870, IN2 => n_3873);
and1_3153: AND1
    PORT MAP ( Y => n_3870, IN1 => n_3871);
delay_3154: DELAY
    PORT MAP ( Y => n_3871, IN1 => con1_current_state21_Q);
and1_3155: AND1
    PORT MAP ( Y => n_3873, IN1 => n_3874);
delay_3156: DELAY
    PORT MAP ( Y => n_3874, IN1 => con1_current_state49_Q);
and1_3157: AND1
    PORT MAP ( Y => n_3875, IN1 => gnd);
delay_3158: DELAY
    PORT MAP ( Y => I2_dup_679_aOUT, IN1 => I2_dup_679_aIN);
xor2_3159: XOR2
    PORT MAP ( Y => I2_dup_679_aIN, IN1 => n_3878, IN2 => n_3888);
or4_3160: OR4
    PORT MAP ( Y => n_3878, IN1 => n_3879, IN2 => n_3882, IN3 => n_3884, IN4 => n_3886);
and1_3161: AND1
    PORT MAP ( Y => n_3879, IN1 => n_3880);
delay_3162: DELAY
    PORT MAP ( Y => n_3880, IN1 => con1_current_state1_Q);
and1_3163: AND1
    PORT MAP ( Y => n_3882, IN1 => n_3883);
delay_3164: DELAY
    PORT MAP ( Y => n_3883, IN1 => O_dup_914_aOUT);
and1_3165: AND1
    PORT MAP ( Y => n_3884, IN1 => n_3885);
delay_3166: DELAY
    PORT MAP ( Y => n_3885, IN1 => con1_current_state34_Q);
and1_3167: AND1
    PORT MAP ( Y => n_3886, IN1 => n_3887);
delay_3168: DELAY
    PORT MAP ( Y => n_3887, IN1 => con1_current_state17_Q);
and1_3169: AND1
    PORT MAP ( Y => n_3888, IN1 => gnd);
delay_3170: DELAY
    PORT MAP ( Y => a_as_or3_aix1642_a_a32_aOUT, IN1 => a_as_or3_aix1642_a_a32_aIN1);
xor2_3171: XOR2
    PORT MAP ( Y => a_as_or3_aix1642_a_a32_aIN1, IN1 => n_3891, IN2 => n_3898);
or3_3172: OR3
    PORT MAP ( Y => n_3891, IN1 => n_3892, IN2 => n_3894, IN3 => n_3896);
and1_3173: AND1
    PORT MAP ( Y => n_3892, IN1 => n_3893);
delay_3174: DELAY
    PORT MAP ( Y => n_3893, IN1 => I2_dup_679_aOUT);
and1_3175: AND1
    PORT MAP ( Y => n_3894, IN1 => n_3895);
delay_3176: DELAY
    PORT MAP ( Y => n_3895, IN1 => con1_current_state39_Q);
and1_3177: AND1
    PORT MAP ( Y => n_3896, IN1 => n_3897);
delay_3178: DELAY
    PORT MAP ( Y => n_3897, IN1 => con1_current_state44_Q);
and1_3179: AND1
    PORT MAP ( Y => n_3898, IN1 => gnd);
delay_3180: DELAY
    PORT MAP ( Y => alu1_nx191_aOUT, IN1 => alu1_nx191_aIN);
xor2_3181: XOR2
    PORT MAP ( Y => alu1_nx191_aIN, IN1 => n_3901, IN2 => n_3904);
or1_3182: OR1
    PORT MAP ( Y => n_3901, IN1 => n_3902);
and1_3183: AND1
    PORT MAP ( Y => n_3902, IN1 => n_3903);
inv_3184: INV 
    PORT MAP ( Y => n_3903, IN1 => data(0));
and1_3185: AND1
    PORT MAP ( Y => n_3904, IN1 => gnd);
delay_3186: DELAY
    PORT MAP ( Y => n4_aOUT, IN1 => n4_aIN);
xor2_3187: XOR2
    PORT MAP ( Y => n4_aIN, IN1 => n_3907, IN2 => n_3915);
or3_3188: OR3
    PORT MAP ( Y => n_3907, IN1 => n_3908, IN2 => n_3910, IN3 => n_3913);
and1_3189: AND1
    PORT MAP ( Y => n_3908, IN1 => n_3909);
inv_3190: INV 
    PORT MAP ( Y => n_3909, IN1 => con1_current_state6_Q);
and2_3191: AND2
    PORT MAP ( Y => n_3910, IN1 => n_3911, IN2 => n_3912);
inv_3192: INV 
    PORT MAP ( Y => n_3911, IN1 => instrregout11_Q);
delay_3193: DELAY
    PORT MAP ( Y => n_3912, IN1 => instrregout12_Q);
and1_3194: AND1
    PORT MAP ( Y => n_3913, IN1 => n_3914);
delay_3195: DELAY
    PORT MAP ( Y => n_3914, IN1 => I3_dup_732_aOUT);
and1_3196: AND1
    PORT MAP ( Y => n_3915, IN1 => gnd);
delay_3197: DELAY
    PORT MAP ( Y => alusel2_aOUT, IN1 => alusel2_aIN);
xor2_3198: XOR2
    PORT MAP ( Y => alusel2_aIN, IN1 => n_3918, IN2 => n_3928);
or4_3199: OR4
    PORT MAP ( Y => n_3918, IN1 => n_3919, IN2 => n_3921, IN3 => n_3923, IN4 => n_3926);
and1_3200: AND1
    PORT MAP ( Y => n_3919, IN1 => n_3920);
delay_3201: DELAY
    PORT MAP ( Y => n_3920, IN1 => con1_current_state21_Q);
and1_3202: AND1
    PORT MAP ( Y => n_3921, IN1 => n_3922);
inv_3203: INV 
    PORT MAP ( Y => n_3922, IN1 => n4_aOUT);
and1_3204: AND1
    PORT MAP ( Y => n_3923, IN1 => n_3924);
delay_3205: DELAY
    PORT MAP ( Y => n_3924, IN1 => I3_dup_696_aOUT);
and1_3206: AND1
    PORT MAP ( Y => n_3926, IN1 => n_3927);
delay_3207: DELAY
    PORT MAP ( Y => n_3927, IN1 => con1_current_state49_Q);
and1_3208: AND1
    PORT MAP ( Y => n_3928, IN1 => gnd);
delay_3209: DELAY
    PORT MAP ( Y => O_dup_867_aOUT, IN1 => O_dup_867_aIN);
xor2_3210: XOR2
    PORT MAP ( Y => O_dup_867_aIN, IN1 => n_3931, IN2 => n_3937);
or1_3211: OR1
    PORT MAP ( Y => n_3931, IN1 => n_3932);
and3_3212: AND3
    PORT MAP ( Y => n_3932, IN1 => n_3933, IN2 => n_3934, IN3 => n_3935);
inv_3213: INV 
    PORT MAP ( Y => n_3933, IN1 => con1_current_state1_Q);
delay_3214: DELAY
    PORT MAP ( Y => n_3934, IN1 => alusel2_aOUT);
delay_3215: DELAY
    PORT MAP ( Y => n_3935, IN1 => con1_current_state0_aQ_aNOT);
and1_3216: AND1
    PORT MAP ( Y => n_3937, IN1 => gnd);
delay_3217: DELAY
    PORT MAP ( Y => I1_dup_669_aOUT, IN1 => I1_dup_669_aIN);
xor2_3218: XOR2
    PORT MAP ( Y => I1_dup_669_aIN, IN1 => n_3940, IN2 => n_3944);
or1_3219: OR1
    PORT MAP ( Y => n_3940, IN1 => n_3941);
and2_3220: AND2
    PORT MAP ( Y => n_3941, IN1 => n_3942, IN2 => n_3943);
delay_3221: DELAY
    PORT MAP ( Y => n_3942, IN1 => alu1_nx191_aOUT);
delay_3222: DELAY
    PORT MAP ( Y => n_3943, IN1 => O_dup_867_aOUT);
and1_3223: AND1
    PORT MAP ( Y => n_3944, IN1 => gnd);
delay_3224: DELAY
    PORT MAP ( Y => alusel0_aOUT, IN1 => alusel0_aIN);
xor2_3225: XOR2
    PORT MAP ( Y => alusel0_aIN, IN1 => n_3947, IN2 => n_3954);
or3_3226: OR3
    PORT MAP ( Y => n_3947, IN1 => n_3948, IN2 => n_3950, IN3 => n_3952);
and1_3227: AND1
    PORT MAP ( Y => n_3948, IN1 => n_3949);
delay_3228: DELAY
    PORT MAP ( Y => n_3949, IN1 => con1_current_state1_Q);
and1_3229: AND1
    PORT MAP ( Y => n_3950, IN1 => n_3951);
inv_3230: INV 
    PORT MAP ( Y => n_3951, IN1 => con1_current_state0_aQ_aNOT);
and1_3231: AND1
    PORT MAP ( Y => n_3952, IN1 => n_3953);
delay_3232: DELAY
    PORT MAP ( Y => n_3953, IN1 => alusel2_aOUT);
and1_3233: AND1
    PORT MAP ( Y => n_3954, IN1 => gnd);
dff_3234: DFF
    PORT MAP ( D => outreg_val0_aD, CLK => outreg_val0_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val0_Q);
xor2_3235: XOR2
    PORT MAP ( Y => outreg_val0_aD, IN1 => n_3960, IN2 => n_3966);
or2_3236: OR2
    PORT MAP ( Y => n_3960, IN1 => n_3961, IN2 => n_3963);
and1_3237: AND1
    PORT MAP ( Y => n_3961, IN1 => n_3962);
delay_3238: DELAY
    PORT MAP ( Y => n_3962, IN1 => I1_dup_669_aOUT);
and2_3239: AND2
    PORT MAP ( Y => n_3963, IN1 => n_3964, IN2 => n_3965);
inv_3240: INV 
    PORT MAP ( Y => n_3964, IN1 => alusel0_aOUT);
delay_3241: DELAY
    PORT MAP ( Y => n_3965, IN1 => data(0));
and1_3242: AND1
    PORT MAP ( Y => n_3966, IN1 => gnd);
and1_3243: AND1
    PORT MAP ( Y => n_3967, IN1 => n_3968);
delay_3244: DELAY
    PORT MAP ( Y => n_3968, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3245: DELAY
    PORT MAP ( Y => outreg_val0_aCLK, IN1 => n_3967);
dff_3246: DFF
    PORT MAP ( D => progcntr_val1_aD, CLK => progcntr_val1_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val1_Q);
xor2_3247: XOR2
    PORT MAP ( Y => progcntr_val1_aD, IN1 => n_3975, IN2 => n_3978);
or1_3248: OR1
    PORT MAP ( Y => n_3975, IN1 => n_3976);
and1_3249: AND1
    PORT MAP ( Y => n_3976, IN1 => n_3977);
delay_3250: DELAY
    PORT MAP ( Y => n_3977, IN1 => data(1));
and1_3251: AND1
    PORT MAP ( Y => n_3978, IN1 => gnd);
and1_3252: AND1
    PORT MAP ( Y => n_3979, IN1 => n_3980);
delay_3253: DELAY
    PORT MAP ( Y => n_3980, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3254: DELAY
    PORT MAP ( Y => progcntr_val1_aCLK, IN1 => n_3979);
delay_3255: DELAY
    PORT MAP ( Y => alu1_nx190_aOUT, IN1 => alu1_nx190_aIN);
xor2_3256: XOR2
    PORT MAP ( Y => alu1_nx190_aIN, IN1 => n_3984, IN2 => n_3991);
or2_3257: OR2
    PORT MAP ( Y => n_3984, IN1 => n_3985, IN2 => n_3988);
and2_3258: AND2
    PORT MAP ( Y => n_3985, IN1 => n_3986, IN2 => n_3987);
inv_3259: INV 
    PORT MAP ( Y => n_3986, IN1 => data(1));
delay_3260: DELAY
    PORT MAP ( Y => n_3987, IN1 => data(0));
and2_3261: AND2
    PORT MAP ( Y => n_3988, IN1 => n_3989, IN2 => n_3990);
inv_3262: INV 
    PORT MAP ( Y => n_3989, IN1 => data(0));
delay_3263: DELAY
    PORT MAP ( Y => n_3990, IN1 => data(1));
and1_3264: AND1
    PORT MAP ( Y => n_3991, IN1 => gnd);
delay_3265: DELAY
    PORT MAP ( Y => I1_dup_668_aOUT, IN1 => I1_dup_668_aIN);
xor2_3266: XOR2
    PORT MAP ( Y => I1_dup_668_aIN, IN1 => n_3994, IN2 => n_3998);
or1_3267: OR1
    PORT MAP ( Y => n_3994, IN1 => n_3995);
and2_3268: AND2
    PORT MAP ( Y => n_3995, IN1 => n_3996, IN2 => n_3997);
delay_3269: DELAY
    PORT MAP ( Y => n_3996, IN1 => O_dup_867_aOUT);
delay_3270: DELAY
    PORT MAP ( Y => n_3997, IN1 => alu1_nx190_aOUT);
and1_3271: AND1
    PORT MAP ( Y => n_3998, IN1 => gnd);
dff_3272: DFF
    PORT MAP ( D => outreg_val1_aD, CLK => outreg_val1_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val1_Q);
xor2_3273: XOR2
    PORT MAP ( Y => outreg_val1_aD, IN1 => n_4004, IN2 => n_4010);
or2_3274: OR2
    PORT MAP ( Y => n_4004, IN1 => n_4005, IN2 => n_4007);
and1_3275: AND1
    PORT MAP ( Y => n_4005, IN1 => n_4006);
delay_3276: DELAY
    PORT MAP ( Y => n_4006, IN1 => I1_dup_668_aOUT);
and2_3277: AND2
    PORT MAP ( Y => n_4007, IN1 => n_4008, IN2 => n_4009);
inv_3278: INV 
    PORT MAP ( Y => n_4008, IN1 => alusel0_aOUT);
delay_3279: DELAY
    PORT MAP ( Y => n_4009, IN1 => data(1));
and1_3280: AND1
    PORT MAP ( Y => n_4010, IN1 => gnd);
and1_3281: AND1
    PORT MAP ( Y => n_4011, IN1 => n_4012);
delay_3282: DELAY
    PORT MAP ( Y => n_4012, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3283: DELAY
    PORT MAP ( Y => outreg_val1_aCLK, IN1 => n_4011);
dff_3284: DFF
    PORT MAP ( D => progcntr_val2_aD, CLK => progcntr_val2_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val2_Q);
xor2_3285: XOR2
    PORT MAP ( Y => progcntr_val2_aD, IN1 => n_4019, IN2 => n_4022);
or1_3286: OR1
    PORT MAP ( Y => n_4019, IN1 => n_4020);
and1_3287: AND1
    PORT MAP ( Y => n_4020, IN1 => n_4021);
delay_3288: DELAY
    PORT MAP ( Y => n_4021, IN1 => data(2));
and1_3289: AND1
    PORT MAP ( Y => n_4022, IN1 => gnd);
and1_3290: AND1
    PORT MAP ( Y => n_4023, IN1 => n_4024);
delay_3291: DELAY
    PORT MAP ( Y => n_4024, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3292: DELAY
    PORT MAP ( Y => progcntr_val2_aCLK, IN1 => n_4023);
delay_3293: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int2_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int2_aIN);
xor2_3294: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int2_aIN, IN1 => n_4028, IN2 => n_4032);
or1_3295: OR1
    PORT MAP ( Y => n_4028, IN1 => n_4029);
and2_3296: AND2
    PORT MAP ( Y => n_4029, IN1 => n_4030, IN2 => n_4031);
delay_3297: DELAY
    PORT MAP ( Y => n_4030, IN1 => data(0));
delay_3298: DELAY
    PORT MAP ( Y => n_4031, IN1 => data(1));
and1_3299: AND1
    PORT MAP ( Y => n_4032, IN1 => gnd);
delay_3300: DELAY
    PORT MAP ( Y => alu1_nx189_aOUT, IN1 => alu1_nx189_aIN);
xor2_3301: XOR2
    PORT MAP ( Y => alu1_nx189_aIN, IN1 => n_4035, IN2 => n_4042);
or2_3302: OR2
    PORT MAP ( Y => n_4035, IN1 => n_4036, IN2 => n_4039);
and2_3303: AND2
    PORT MAP ( Y => n_4036, IN1 => n_4037, IN2 => n_4038);
inv_3304: INV 
    PORT MAP ( Y => n_4037, IN1 => data(2));
delay_3305: DELAY
    PORT MAP ( Y => n_4038, IN1 => alu1_modgen_34_l1_l0_c_int2_aOUT);
and2_3306: AND2
    PORT MAP ( Y => n_4039, IN1 => n_4040, IN2 => n_4041);
inv_3307: INV 
    PORT MAP ( Y => n_4040, IN1 => alu1_modgen_34_l1_l0_c_int2_aOUT);
delay_3308: DELAY
    PORT MAP ( Y => n_4041, IN1 => data(2));
and1_3309: AND1
    PORT MAP ( Y => n_4042, IN1 => gnd);
delay_3310: DELAY
    PORT MAP ( Y => I1_dup_667_aOUT, IN1 => I1_dup_667_aIN);
xor2_3311: XOR2
    PORT MAP ( Y => I1_dup_667_aIN, IN1 => n_4045, IN2 => n_4049);
or1_3312: OR1
    PORT MAP ( Y => n_4045, IN1 => n_4046);
and2_3313: AND2
    PORT MAP ( Y => n_4046, IN1 => n_4047, IN2 => n_4048);
delay_3314: DELAY
    PORT MAP ( Y => n_4047, IN1 => O_dup_867_aOUT);
delay_3315: DELAY
    PORT MAP ( Y => n_4048, IN1 => alu1_nx189_aOUT);
and1_3316: AND1
    PORT MAP ( Y => n_4049, IN1 => gnd);
dff_3317: DFF
    PORT MAP ( D => outreg_val2_aD, CLK => outreg_val2_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val2_Q);
xor2_3318: XOR2
    PORT MAP ( Y => outreg_val2_aD, IN1 => n_4055, IN2 => n_4061);
or2_3319: OR2
    PORT MAP ( Y => n_4055, IN1 => n_4056, IN2 => n_4058);
and1_3320: AND1
    PORT MAP ( Y => n_4056, IN1 => n_4057);
delay_3321: DELAY
    PORT MAP ( Y => n_4057, IN1 => I1_dup_667_aOUT);
and2_3322: AND2
    PORT MAP ( Y => n_4058, IN1 => n_4059, IN2 => n_4060);
inv_3323: INV 
    PORT MAP ( Y => n_4059, IN1 => alusel0_aOUT);
delay_3324: DELAY
    PORT MAP ( Y => n_4060, IN1 => data(2));
and1_3325: AND1
    PORT MAP ( Y => n_4061, IN1 => gnd);
and1_3326: AND1
    PORT MAP ( Y => n_4062, IN1 => n_4063);
delay_3327: DELAY
    PORT MAP ( Y => n_4063, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3328: DELAY
    PORT MAP ( Y => outreg_val2_aCLK, IN1 => n_4062);
dff_3329: DFF
    PORT MAP ( D => progcntr_val3_aD, CLK => progcntr_val3_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val3_Q);
xor2_3330: XOR2
    PORT MAP ( Y => progcntr_val3_aD, IN1 => n_4070, IN2 => n_4073);
or1_3331: OR1
    PORT MAP ( Y => n_4070, IN1 => n_4071);
and1_3332: AND1
    PORT MAP ( Y => n_4071, IN1 => n_4072);
delay_3333: DELAY
    PORT MAP ( Y => n_4072, IN1 => data(3));
and1_3334: AND1
    PORT MAP ( Y => n_4073, IN1 => gnd);
and1_3335: AND1
    PORT MAP ( Y => n_4074, IN1 => n_4075);
delay_3336: DELAY
    PORT MAP ( Y => n_4075, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3337: DELAY
    PORT MAP ( Y => progcntr_val3_aCLK, IN1 => n_4074);
delay_3338: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int3_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int3_aIN);
xor2_3339: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int3_aIN, IN1 => n_4079, IN2 => n_4083);
or1_3340: OR1
    PORT MAP ( Y => n_4079, IN1 => n_4080);
and2_3341: AND2
    PORT MAP ( Y => n_4080, IN1 => n_4081, IN2 => n_4082);
delay_3342: DELAY
    PORT MAP ( Y => n_4081, IN1 => alu1_modgen_34_l1_l0_c_int2_aOUT);
delay_3343: DELAY
    PORT MAP ( Y => n_4082, IN1 => data(2));
and1_3344: AND1
    PORT MAP ( Y => n_4083, IN1 => gnd);
delay_3345: DELAY
    PORT MAP ( Y => alu1_nx188_aOUT, IN1 => alu1_nx188_aIN);
xor2_3346: XOR2
    PORT MAP ( Y => alu1_nx188_aIN, IN1 => n_4086, IN2 => n_4093);
or2_3347: OR2
    PORT MAP ( Y => n_4086, IN1 => n_4087, IN2 => n_4090);
and2_3348: AND2
    PORT MAP ( Y => n_4087, IN1 => n_4088, IN2 => n_4089);
inv_3349: INV 
    PORT MAP ( Y => n_4088, IN1 => data(3));
delay_3350: DELAY
    PORT MAP ( Y => n_4089, IN1 => alu1_modgen_34_l1_l0_c_int3_aOUT);
and2_3351: AND2
    PORT MAP ( Y => n_4090, IN1 => n_4091, IN2 => n_4092);
inv_3352: INV 
    PORT MAP ( Y => n_4091, IN1 => alu1_modgen_34_l1_l0_c_int3_aOUT);
delay_3353: DELAY
    PORT MAP ( Y => n_4092, IN1 => data(3));
and1_3354: AND1
    PORT MAP ( Y => n_4093, IN1 => gnd);
delay_3355: DELAY
    PORT MAP ( Y => I1_dup_666_aOUT, IN1 => I1_dup_666_aIN);
xor2_3356: XOR2
    PORT MAP ( Y => I1_dup_666_aIN, IN1 => n_4096, IN2 => n_4100);
or1_3357: OR1
    PORT MAP ( Y => n_4096, IN1 => n_4097);
and2_3358: AND2
    PORT MAP ( Y => n_4097, IN1 => n_4098, IN2 => n_4099);
delay_3359: DELAY
    PORT MAP ( Y => n_4098, IN1 => O_dup_867_aOUT);
delay_3360: DELAY
    PORT MAP ( Y => n_4099, IN1 => alu1_nx188_aOUT);
and1_3361: AND1
    PORT MAP ( Y => n_4100, IN1 => gnd);
dff_3362: DFF
    PORT MAP ( D => outreg_val3_aD, CLK => outreg_val3_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val3_Q);
xor2_3363: XOR2
    PORT MAP ( Y => outreg_val3_aD, IN1 => n_4106, IN2 => n_4112);
or2_3364: OR2
    PORT MAP ( Y => n_4106, IN1 => n_4107, IN2 => n_4109);
and1_3365: AND1
    PORT MAP ( Y => n_4107, IN1 => n_4108);
delay_3366: DELAY
    PORT MAP ( Y => n_4108, IN1 => I1_dup_666_aOUT);
and2_3367: AND2
    PORT MAP ( Y => n_4109, IN1 => n_4110, IN2 => n_4111);
inv_3368: INV 
    PORT MAP ( Y => n_4110, IN1 => alusel0_aOUT);
delay_3369: DELAY
    PORT MAP ( Y => n_4111, IN1 => data(3));
and1_3370: AND1
    PORT MAP ( Y => n_4112, IN1 => gnd);
and1_3371: AND1
    PORT MAP ( Y => n_4113, IN1 => n_4114);
delay_3372: DELAY
    PORT MAP ( Y => n_4114, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3373: DELAY
    PORT MAP ( Y => outreg_val3_aCLK, IN1 => n_4113);
dff_3374: DFF
    PORT MAP ( D => progcntr_val4_aD, CLK => progcntr_val4_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val4_Q);
xor2_3375: XOR2
    PORT MAP ( Y => progcntr_val4_aD, IN1 => n_4121, IN2 => n_4124);
or1_3376: OR1
    PORT MAP ( Y => n_4121, IN1 => n_4122);
and1_3377: AND1
    PORT MAP ( Y => n_4122, IN1 => n_4123);
delay_3378: DELAY
    PORT MAP ( Y => n_4123, IN1 => data(4));
and1_3379: AND1
    PORT MAP ( Y => n_4124, IN1 => gnd);
and1_3380: AND1
    PORT MAP ( Y => n_4125, IN1 => n_4126);
delay_3381: DELAY
    PORT MAP ( Y => n_4126, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3382: DELAY
    PORT MAP ( Y => progcntr_val4_aCLK, IN1 => n_4125);
delay_3383: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int4_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int4_aIN);
xor2_3384: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int4_aIN, IN1 => n_4130, IN2 => n_4134);
or1_3385: OR1
    PORT MAP ( Y => n_4130, IN1 => n_4131);
and2_3386: AND2
    PORT MAP ( Y => n_4131, IN1 => n_4132, IN2 => n_4133);
delay_3387: DELAY
    PORT MAP ( Y => n_4132, IN1 => alu1_modgen_34_l1_l0_c_int3_aOUT);
delay_3388: DELAY
    PORT MAP ( Y => n_4133, IN1 => data(3));
and1_3389: AND1
    PORT MAP ( Y => n_4134, IN1 => gnd);
delay_3390: DELAY
    PORT MAP ( Y => alu1_nx187_aOUT, IN1 => alu1_nx187_aIN);
xor2_3391: XOR2
    PORT MAP ( Y => alu1_nx187_aIN, IN1 => n_4137, IN2 => n_4144);
or2_3392: OR2
    PORT MAP ( Y => n_4137, IN1 => n_4138, IN2 => n_4141);
and2_3393: AND2
    PORT MAP ( Y => n_4138, IN1 => n_4139, IN2 => n_4140);
inv_3394: INV 
    PORT MAP ( Y => n_4139, IN1 => data(4));
delay_3395: DELAY
    PORT MAP ( Y => n_4140, IN1 => alu1_modgen_34_l1_l0_c_int4_aOUT);
and2_3396: AND2
    PORT MAP ( Y => n_4141, IN1 => n_4142, IN2 => n_4143);
inv_3397: INV 
    PORT MAP ( Y => n_4142, IN1 => alu1_modgen_34_l1_l0_c_int4_aOUT);
delay_3398: DELAY
    PORT MAP ( Y => n_4143, IN1 => data(4));
and1_3399: AND1
    PORT MAP ( Y => n_4144, IN1 => gnd);
delay_3400: DELAY
    PORT MAP ( Y => I1_dup_665_aOUT, IN1 => I1_dup_665_aIN);
xor2_3401: XOR2
    PORT MAP ( Y => I1_dup_665_aIN, IN1 => n_4147, IN2 => n_4151);
or1_3402: OR1
    PORT MAP ( Y => n_4147, IN1 => n_4148);
and2_3403: AND2
    PORT MAP ( Y => n_4148, IN1 => n_4149, IN2 => n_4150);
delay_3404: DELAY
    PORT MAP ( Y => n_4149, IN1 => O_dup_867_aOUT);
delay_3405: DELAY
    PORT MAP ( Y => n_4150, IN1 => alu1_nx187_aOUT);
and1_3406: AND1
    PORT MAP ( Y => n_4151, IN1 => gnd);
dff_3407: DFF
    PORT MAP ( D => outreg_val4_aD, CLK => outreg_val4_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val4_Q);
xor2_3408: XOR2
    PORT MAP ( Y => outreg_val4_aD, IN1 => n_4157, IN2 => n_4163);
or2_3409: OR2
    PORT MAP ( Y => n_4157, IN1 => n_4158, IN2 => n_4160);
and1_3410: AND1
    PORT MAP ( Y => n_4158, IN1 => n_4159);
delay_3411: DELAY
    PORT MAP ( Y => n_4159, IN1 => I1_dup_665_aOUT);
and2_3412: AND2
    PORT MAP ( Y => n_4160, IN1 => n_4161, IN2 => n_4162);
inv_3413: INV 
    PORT MAP ( Y => n_4161, IN1 => alusel0_aOUT);
delay_3414: DELAY
    PORT MAP ( Y => n_4162, IN1 => data(4));
and1_3415: AND1
    PORT MAP ( Y => n_4163, IN1 => gnd);
and1_3416: AND1
    PORT MAP ( Y => n_4164, IN1 => n_4165);
delay_3417: DELAY
    PORT MAP ( Y => n_4165, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3418: DELAY
    PORT MAP ( Y => outreg_val4_aCLK, IN1 => n_4164);
dff_3419: DFF
    PORT MAP ( D => progcntr_val5_aD, CLK => progcntr_val5_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val5_Q);
xor2_3420: XOR2
    PORT MAP ( Y => progcntr_val5_aD, IN1 => n_4172, IN2 => n_4175);
or1_3421: OR1
    PORT MAP ( Y => n_4172, IN1 => n_4173);
and1_3422: AND1
    PORT MAP ( Y => n_4173, IN1 => n_4174);
delay_3423: DELAY
    PORT MAP ( Y => n_4174, IN1 => data(5));
and1_3424: AND1
    PORT MAP ( Y => n_4175, IN1 => gnd);
and1_3425: AND1
    PORT MAP ( Y => n_4176, IN1 => n_4177);
delay_3426: DELAY
    PORT MAP ( Y => n_4177, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3427: DELAY
    PORT MAP ( Y => progcntr_val5_aCLK, IN1 => n_4176);
delay_3428: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int5_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int5_aIN);
xor2_3429: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int5_aIN, IN1 => n_4181, IN2 => n_4185);
or1_3430: OR1
    PORT MAP ( Y => n_4181, IN1 => n_4182);
and2_3431: AND2
    PORT MAP ( Y => n_4182, IN1 => n_4183, IN2 => n_4184);
delay_3432: DELAY
    PORT MAP ( Y => n_4183, IN1 => alu1_modgen_34_l1_l0_c_int4_aOUT);
delay_3433: DELAY
    PORT MAP ( Y => n_4184, IN1 => data(4));
and1_3434: AND1
    PORT MAP ( Y => n_4185, IN1 => gnd);
delay_3435: DELAY
    PORT MAP ( Y => alu1_nx186_aOUT, IN1 => alu1_nx186_aIN);
xor2_3436: XOR2
    PORT MAP ( Y => alu1_nx186_aIN, IN1 => n_4188, IN2 => n_4195);
or2_3437: OR2
    PORT MAP ( Y => n_4188, IN1 => n_4189, IN2 => n_4192);
and2_3438: AND2
    PORT MAP ( Y => n_4189, IN1 => n_4190, IN2 => n_4191);
inv_3439: INV 
    PORT MAP ( Y => n_4190, IN1 => data(5));
delay_3440: DELAY
    PORT MAP ( Y => n_4191, IN1 => alu1_modgen_34_l1_l0_c_int5_aOUT);
and2_3441: AND2
    PORT MAP ( Y => n_4192, IN1 => n_4193, IN2 => n_4194);
inv_3442: INV 
    PORT MAP ( Y => n_4193, IN1 => alu1_modgen_34_l1_l0_c_int5_aOUT);
delay_3443: DELAY
    PORT MAP ( Y => n_4194, IN1 => data(5));
and1_3444: AND1
    PORT MAP ( Y => n_4195, IN1 => gnd);
delay_3445: DELAY
    PORT MAP ( Y => I1_dup_664_aOUT, IN1 => I1_dup_664_aIN);
xor2_3446: XOR2
    PORT MAP ( Y => I1_dup_664_aIN, IN1 => n_4198, IN2 => n_4202);
or1_3447: OR1
    PORT MAP ( Y => n_4198, IN1 => n_4199);
and2_3448: AND2
    PORT MAP ( Y => n_4199, IN1 => n_4200, IN2 => n_4201);
delay_3449: DELAY
    PORT MAP ( Y => n_4200, IN1 => O_dup_867_aOUT);
delay_3450: DELAY
    PORT MAP ( Y => n_4201, IN1 => alu1_nx186_aOUT);
and1_3451: AND1
    PORT MAP ( Y => n_4202, IN1 => gnd);
dff_3452: DFF
    PORT MAP ( D => outreg_val5_aD, CLK => outreg_val5_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val5_Q);
xor2_3453: XOR2
    PORT MAP ( Y => outreg_val5_aD, IN1 => n_4208, IN2 => n_4214);
or2_3454: OR2
    PORT MAP ( Y => n_4208, IN1 => n_4209, IN2 => n_4211);
and1_3455: AND1
    PORT MAP ( Y => n_4209, IN1 => n_4210);
delay_3456: DELAY
    PORT MAP ( Y => n_4210, IN1 => I1_dup_664_aOUT);
and2_3457: AND2
    PORT MAP ( Y => n_4211, IN1 => n_4212, IN2 => n_4213);
inv_3458: INV 
    PORT MAP ( Y => n_4212, IN1 => alusel0_aOUT);
delay_3459: DELAY
    PORT MAP ( Y => n_4213, IN1 => data(5));
and1_3460: AND1
    PORT MAP ( Y => n_4214, IN1 => gnd);
and1_3461: AND1
    PORT MAP ( Y => n_4215, IN1 => n_4216);
delay_3462: DELAY
    PORT MAP ( Y => n_4216, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3463: DELAY
    PORT MAP ( Y => outreg_val5_aCLK, IN1 => n_4215);
dff_3464: DFF
    PORT MAP ( D => progcntr_val6_aD, CLK => progcntr_val6_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val6_Q);
xor2_3465: XOR2
    PORT MAP ( Y => progcntr_val6_aD, IN1 => n_4223, IN2 => n_4226);
or1_3466: OR1
    PORT MAP ( Y => n_4223, IN1 => n_4224);
and1_3467: AND1
    PORT MAP ( Y => n_4224, IN1 => n_4225);
delay_3468: DELAY
    PORT MAP ( Y => n_4225, IN1 => data(6));
and1_3469: AND1
    PORT MAP ( Y => n_4226, IN1 => gnd);
and1_3470: AND1
    PORT MAP ( Y => n_4227, IN1 => n_4228);
delay_3471: DELAY
    PORT MAP ( Y => n_4228, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3472: DELAY
    PORT MAP ( Y => progcntr_val6_aCLK, IN1 => n_4227);
delay_3473: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int6_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int6_aIN);
xor2_3474: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int6_aIN, IN1 => n_4232, IN2 => n_4236);
or1_3475: OR1
    PORT MAP ( Y => n_4232, IN1 => n_4233);
and2_3476: AND2
    PORT MAP ( Y => n_4233, IN1 => n_4234, IN2 => n_4235);
delay_3477: DELAY
    PORT MAP ( Y => n_4234, IN1 => alu1_modgen_34_l1_l0_c_int5_aOUT);
delay_3478: DELAY
    PORT MAP ( Y => n_4235, IN1 => data(5));
and1_3479: AND1
    PORT MAP ( Y => n_4236, IN1 => gnd);
delay_3480: DELAY
    PORT MAP ( Y => alu1_nx185_aOUT, IN1 => alu1_nx185_aIN);
xor2_3481: XOR2
    PORT MAP ( Y => alu1_nx185_aIN, IN1 => n_4239, IN2 => n_4246);
or2_3482: OR2
    PORT MAP ( Y => n_4239, IN1 => n_4240, IN2 => n_4243);
and2_3483: AND2
    PORT MAP ( Y => n_4240, IN1 => n_4241, IN2 => n_4242);
inv_3484: INV 
    PORT MAP ( Y => n_4241, IN1 => data(6));
delay_3485: DELAY
    PORT MAP ( Y => n_4242, IN1 => alu1_modgen_34_l1_l0_c_int6_aOUT);
and2_3486: AND2
    PORT MAP ( Y => n_4243, IN1 => n_4244, IN2 => n_4245);
inv_3487: INV 
    PORT MAP ( Y => n_4244, IN1 => alu1_modgen_34_l1_l0_c_int6_aOUT);
delay_3488: DELAY
    PORT MAP ( Y => n_4245, IN1 => data(6));
and1_3489: AND1
    PORT MAP ( Y => n_4246, IN1 => gnd);
delay_3490: DELAY
    PORT MAP ( Y => I1_dup_663_aOUT, IN1 => I1_dup_663_aIN);
xor2_3491: XOR2
    PORT MAP ( Y => I1_dup_663_aIN, IN1 => n_4249, IN2 => n_4253);
or1_3492: OR1
    PORT MAP ( Y => n_4249, IN1 => n_4250);
and2_3493: AND2
    PORT MAP ( Y => n_4250, IN1 => n_4251, IN2 => n_4252);
delay_3494: DELAY
    PORT MAP ( Y => n_4251, IN1 => O_dup_867_aOUT);
delay_3495: DELAY
    PORT MAP ( Y => n_4252, IN1 => alu1_nx185_aOUT);
and1_3496: AND1
    PORT MAP ( Y => n_4253, IN1 => gnd);
dff_3497: DFF
    PORT MAP ( D => outreg_val6_aD, CLK => outreg_val6_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val6_Q);
xor2_3498: XOR2
    PORT MAP ( Y => outreg_val6_aD, IN1 => n_4259, IN2 => n_4265);
or2_3499: OR2
    PORT MAP ( Y => n_4259, IN1 => n_4260, IN2 => n_4262);
and1_3500: AND1
    PORT MAP ( Y => n_4260, IN1 => n_4261);
delay_3501: DELAY
    PORT MAP ( Y => n_4261, IN1 => I1_dup_663_aOUT);
and2_3502: AND2
    PORT MAP ( Y => n_4262, IN1 => n_4263, IN2 => n_4264);
inv_3503: INV 
    PORT MAP ( Y => n_4263, IN1 => alusel0_aOUT);
delay_3504: DELAY
    PORT MAP ( Y => n_4264, IN1 => data(6));
and1_3505: AND1
    PORT MAP ( Y => n_4265, IN1 => gnd);
and1_3506: AND1
    PORT MAP ( Y => n_4266, IN1 => n_4267);
delay_3507: DELAY
    PORT MAP ( Y => n_4267, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3508: DELAY
    PORT MAP ( Y => outreg_val6_aCLK, IN1 => n_4266);
dff_3509: DFF
    PORT MAP ( D => progcntr_val7_aD, CLK => progcntr_val7_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val7_Q);
xor2_3510: XOR2
    PORT MAP ( Y => progcntr_val7_aD, IN1 => n_4274, IN2 => n_4277);
or1_3511: OR1
    PORT MAP ( Y => n_4274, IN1 => n_4275);
and1_3512: AND1
    PORT MAP ( Y => n_4275, IN1 => n_4276);
delay_3513: DELAY
    PORT MAP ( Y => n_4276, IN1 => data(7));
and1_3514: AND1
    PORT MAP ( Y => n_4277, IN1 => gnd);
and1_3515: AND1
    PORT MAP ( Y => n_4278, IN1 => n_4279);
delay_3516: DELAY
    PORT MAP ( Y => n_4279, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3517: DELAY
    PORT MAP ( Y => progcntr_val7_aCLK, IN1 => n_4278);
delay_3518: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int7_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int7_aIN);
xor2_3519: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int7_aIN, IN1 => n_4283, IN2 => n_4287);
or1_3520: OR1
    PORT MAP ( Y => n_4283, IN1 => n_4284);
and2_3521: AND2
    PORT MAP ( Y => n_4284, IN1 => n_4285, IN2 => n_4286);
delay_3522: DELAY
    PORT MAP ( Y => n_4285, IN1 => alu1_modgen_34_l1_l0_c_int6_aOUT);
delay_3523: DELAY
    PORT MAP ( Y => n_4286, IN1 => data(6));
and1_3524: AND1
    PORT MAP ( Y => n_4287, IN1 => gnd);
delay_3525: DELAY
    PORT MAP ( Y => alu1_nx184_aOUT, IN1 => alu1_nx184_aIN);
xor2_3526: XOR2
    PORT MAP ( Y => alu1_nx184_aIN, IN1 => n_4290, IN2 => n_4297);
or2_3527: OR2
    PORT MAP ( Y => n_4290, IN1 => n_4291, IN2 => n_4294);
and2_3528: AND2
    PORT MAP ( Y => n_4291, IN1 => n_4292, IN2 => n_4293);
inv_3529: INV 
    PORT MAP ( Y => n_4292, IN1 => data(7));
delay_3530: DELAY
    PORT MAP ( Y => n_4293, IN1 => alu1_modgen_34_l1_l0_c_int7_aOUT);
and2_3531: AND2
    PORT MAP ( Y => n_4294, IN1 => n_4295, IN2 => n_4296);
inv_3532: INV 
    PORT MAP ( Y => n_4295, IN1 => alu1_modgen_34_l1_l0_c_int7_aOUT);
delay_3533: DELAY
    PORT MAP ( Y => n_4296, IN1 => data(7));
and1_3534: AND1
    PORT MAP ( Y => n_4297, IN1 => gnd);
delay_3535: DELAY
    PORT MAP ( Y => I1_dup_662_aOUT, IN1 => I1_dup_662_aIN);
xor2_3536: XOR2
    PORT MAP ( Y => I1_dup_662_aIN, IN1 => n_4300, IN2 => n_4304);
or1_3537: OR1
    PORT MAP ( Y => n_4300, IN1 => n_4301);
and2_3538: AND2
    PORT MAP ( Y => n_4301, IN1 => n_4302, IN2 => n_4303);
delay_3539: DELAY
    PORT MAP ( Y => n_4302, IN1 => O_dup_867_aOUT);
delay_3540: DELAY
    PORT MAP ( Y => n_4303, IN1 => alu1_nx184_aOUT);
and1_3541: AND1
    PORT MAP ( Y => n_4304, IN1 => gnd);
dff_3542: DFF
    PORT MAP ( D => outreg_val7_aD, CLK => outreg_val7_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val7_Q);
xor2_3543: XOR2
    PORT MAP ( Y => outreg_val7_aD, IN1 => n_4310, IN2 => n_4316);
or2_3544: OR2
    PORT MAP ( Y => n_4310, IN1 => n_4311, IN2 => n_4313);
and1_3545: AND1
    PORT MAP ( Y => n_4311, IN1 => n_4312);
delay_3546: DELAY
    PORT MAP ( Y => n_4312, IN1 => I1_dup_662_aOUT);
and2_3547: AND2
    PORT MAP ( Y => n_4313, IN1 => n_4314, IN2 => n_4315);
inv_3548: INV 
    PORT MAP ( Y => n_4314, IN1 => alusel0_aOUT);
delay_3549: DELAY
    PORT MAP ( Y => n_4315, IN1 => data(7));
and1_3550: AND1
    PORT MAP ( Y => n_4316, IN1 => gnd);
and1_3551: AND1
    PORT MAP ( Y => n_4317, IN1 => n_4318);
delay_3552: DELAY
    PORT MAP ( Y => n_4318, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3553: DELAY
    PORT MAP ( Y => outreg_val7_aCLK, IN1 => n_4317);
dff_3554: DFF
    PORT MAP ( D => progcntr_val8_aD, CLK => progcntr_val8_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val8_Q);
xor2_3555: XOR2
    PORT MAP ( Y => progcntr_val8_aD, IN1 => n_4325, IN2 => n_4328);
or1_3556: OR1
    PORT MAP ( Y => n_4325, IN1 => n_4326);
and1_3557: AND1
    PORT MAP ( Y => n_4326, IN1 => n_4327);
delay_3558: DELAY
    PORT MAP ( Y => n_4327, IN1 => data(8));
and1_3559: AND1
    PORT MAP ( Y => n_4328, IN1 => gnd);
and1_3560: AND1
    PORT MAP ( Y => n_4329, IN1 => n_4330);
delay_3561: DELAY
    PORT MAP ( Y => n_4330, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3562: DELAY
    PORT MAP ( Y => progcntr_val8_aCLK, IN1 => n_4329);
delay_3563: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int8_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int8_aIN);
xor2_3564: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int8_aIN, IN1 => n_4334, IN2 => n_4338);
or1_3565: OR1
    PORT MAP ( Y => n_4334, IN1 => n_4335);
and2_3566: AND2
    PORT MAP ( Y => n_4335, IN1 => n_4336, IN2 => n_4337);
delay_3567: DELAY
    PORT MAP ( Y => n_4336, IN1 => alu1_modgen_34_l1_l0_c_int7_aOUT);
delay_3568: DELAY
    PORT MAP ( Y => n_4337, IN1 => data(7));
and1_3569: AND1
    PORT MAP ( Y => n_4338, IN1 => gnd);
delay_3570: DELAY
    PORT MAP ( Y => alu1_nx183_aOUT, IN1 => alu1_nx183_aIN);
xor2_3571: XOR2
    PORT MAP ( Y => alu1_nx183_aIN, IN1 => n_4341, IN2 => n_4348);
or2_3572: OR2
    PORT MAP ( Y => n_4341, IN1 => n_4342, IN2 => n_4345);
and2_3573: AND2
    PORT MAP ( Y => n_4342, IN1 => n_4343, IN2 => n_4344);
inv_3574: INV 
    PORT MAP ( Y => n_4343, IN1 => data(8));
delay_3575: DELAY
    PORT MAP ( Y => n_4344, IN1 => alu1_modgen_34_l1_l0_c_int8_aOUT);
and2_3576: AND2
    PORT MAP ( Y => n_4345, IN1 => n_4346, IN2 => n_4347);
inv_3577: INV 
    PORT MAP ( Y => n_4346, IN1 => alu1_modgen_34_l1_l0_c_int8_aOUT);
delay_3578: DELAY
    PORT MAP ( Y => n_4347, IN1 => data(8));
and1_3579: AND1
    PORT MAP ( Y => n_4348, IN1 => gnd);
delay_3580: DELAY
    PORT MAP ( Y => I1_dup_661_aOUT, IN1 => I1_dup_661_aIN);
xor2_3581: XOR2
    PORT MAP ( Y => I1_dup_661_aIN, IN1 => n_4351, IN2 => n_4355);
or1_3582: OR1
    PORT MAP ( Y => n_4351, IN1 => n_4352);
and2_3583: AND2
    PORT MAP ( Y => n_4352, IN1 => n_4353, IN2 => n_4354);
delay_3584: DELAY
    PORT MAP ( Y => n_4353, IN1 => O_dup_867_aOUT);
delay_3585: DELAY
    PORT MAP ( Y => n_4354, IN1 => alu1_nx183_aOUT);
and1_3586: AND1
    PORT MAP ( Y => n_4355, IN1 => gnd);
dff_3587: DFF
    PORT MAP ( D => outreg_val8_aD, CLK => outreg_val8_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val8_Q);
xor2_3588: XOR2
    PORT MAP ( Y => outreg_val8_aD, IN1 => n_4361, IN2 => n_4367);
or2_3589: OR2
    PORT MAP ( Y => n_4361, IN1 => n_4362, IN2 => n_4364);
and1_3590: AND1
    PORT MAP ( Y => n_4362, IN1 => n_4363);
delay_3591: DELAY
    PORT MAP ( Y => n_4363, IN1 => I1_dup_661_aOUT);
and2_3592: AND2
    PORT MAP ( Y => n_4364, IN1 => n_4365, IN2 => n_4366);
inv_3593: INV 
    PORT MAP ( Y => n_4365, IN1 => alusel0_aOUT);
delay_3594: DELAY
    PORT MAP ( Y => n_4366, IN1 => data(8));
and1_3595: AND1
    PORT MAP ( Y => n_4367, IN1 => gnd);
and1_3596: AND1
    PORT MAP ( Y => n_4368, IN1 => n_4369);
delay_3597: DELAY
    PORT MAP ( Y => n_4369, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3598: DELAY
    PORT MAP ( Y => outreg_val8_aCLK, IN1 => n_4368);
dff_3599: DFF
    PORT MAP ( D => progcntr_val9_aD, CLK => progcntr_val9_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val9_Q);
xor2_3600: XOR2
    PORT MAP ( Y => progcntr_val9_aD, IN1 => n_4376, IN2 => n_4379);
or1_3601: OR1
    PORT MAP ( Y => n_4376, IN1 => n_4377);
and1_3602: AND1
    PORT MAP ( Y => n_4377, IN1 => n_4378);
delay_3603: DELAY
    PORT MAP ( Y => n_4378, IN1 => data(9));
and1_3604: AND1
    PORT MAP ( Y => n_4379, IN1 => gnd);
and1_3605: AND1
    PORT MAP ( Y => n_4380, IN1 => n_4381);
delay_3606: DELAY
    PORT MAP ( Y => n_4381, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3607: DELAY
    PORT MAP ( Y => progcntr_val9_aCLK, IN1 => n_4380);
delay_3608: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int9_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int9_aIN);
xor2_3609: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int9_aIN, IN1 => n_4385, IN2 => n_4389);
or1_3610: OR1
    PORT MAP ( Y => n_4385, IN1 => n_4386);
and2_3611: AND2
    PORT MAP ( Y => n_4386, IN1 => n_4387, IN2 => n_4388);
delay_3612: DELAY
    PORT MAP ( Y => n_4387, IN1 => alu1_modgen_34_l1_l0_c_int8_aOUT);
delay_3613: DELAY
    PORT MAP ( Y => n_4388, IN1 => data(8));
and1_3614: AND1
    PORT MAP ( Y => n_4389, IN1 => gnd);
delay_3615: DELAY
    PORT MAP ( Y => alu1_nx182_aOUT, IN1 => alu1_nx182_aIN);
xor2_3616: XOR2
    PORT MAP ( Y => alu1_nx182_aIN, IN1 => n_4392, IN2 => n_4399);
or2_3617: OR2
    PORT MAP ( Y => n_4392, IN1 => n_4393, IN2 => n_4396);
and2_3618: AND2
    PORT MAP ( Y => n_4393, IN1 => n_4394, IN2 => n_4395);
inv_3619: INV 
    PORT MAP ( Y => n_4394, IN1 => data(9));
delay_3620: DELAY
    PORT MAP ( Y => n_4395, IN1 => alu1_modgen_34_l1_l0_c_int9_aOUT);
and2_3621: AND2
    PORT MAP ( Y => n_4396, IN1 => n_4397, IN2 => n_4398);
inv_3622: INV 
    PORT MAP ( Y => n_4397, IN1 => alu1_modgen_34_l1_l0_c_int9_aOUT);
delay_3623: DELAY
    PORT MAP ( Y => n_4398, IN1 => data(9));
and1_3624: AND1
    PORT MAP ( Y => n_4399, IN1 => gnd);
delay_3625: DELAY
    PORT MAP ( Y => I1_dup_660_aOUT, IN1 => I1_dup_660_aIN);
xor2_3626: XOR2
    PORT MAP ( Y => I1_dup_660_aIN, IN1 => n_4402, IN2 => n_4406);
or1_3627: OR1
    PORT MAP ( Y => n_4402, IN1 => n_4403);
and2_3628: AND2
    PORT MAP ( Y => n_4403, IN1 => n_4404, IN2 => n_4405);
delay_3629: DELAY
    PORT MAP ( Y => n_4404, IN1 => O_dup_867_aOUT);
delay_3630: DELAY
    PORT MAP ( Y => n_4405, IN1 => alu1_nx182_aOUT);
and1_3631: AND1
    PORT MAP ( Y => n_4406, IN1 => gnd);
dff_3632: DFF
    PORT MAP ( D => outreg_val9_aD, CLK => outreg_val9_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val9_Q);
xor2_3633: XOR2
    PORT MAP ( Y => outreg_val9_aD, IN1 => n_4412, IN2 => n_4418);
or2_3634: OR2
    PORT MAP ( Y => n_4412, IN1 => n_4413, IN2 => n_4415);
and1_3635: AND1
    PORT MAP ( Y => n_4413, IN1 => n_4414);
delay_3636: DELAY
    PORT MAP ( Y => n_4414, IN1 => I1_dup_660_aOUT);
and2_3637: AND2
    PORT MAP ( Y => n_4415, IN1 => n_4416, IN2 => n_4417);
inv_3638: INV 
    PORT MAP ( Y => n_4416, IN1 => alusel0_aOUT);
delay_3639: DELAY
    PORT MAP ( Y => n_4417, IN1 => data(9));
and1_3640: AND1
    PORT MAP ( Y => n_4418, IN1 => gnd);
and1_3641: AND1
    PORT MAP ( Y => n_4419, IN1 => n_4420);
delay_3642: DELAY
    PORT MAP ( Y => n_4420, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3643: DELAY
    PORT MAP ( Y => outreg_val9_aCLK, IN1 => n_4419);
dff_3644: DFF
    PORT MAP ( D => progcntr_val10_aD, CLK => progcntr_val10_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val10_Q);
xor2_3645: XOR2
    PORT MAP ( Y => progcntr_val10_aD, IN1 => n_4427, IN2 => n_4430);
or1_3646: OR1
    PORT MAP ( Y => n_4427, IN1 => n_4428);
and1_3647: AND1
    PORT MAP ( Y => n_4428, IN1 => n_4429);
delay_3648: DELAY
    PORT MAP ( Y => n_4429, IN1 => data(10));
and1_3649: AND1
    PORT MAP ( Y => n_4430, IN1 => gnd);
and1_3650: AND1
    PORT MAP ( Y => n_4431, IN1 => n_4432);
delay_3651: DELAY
    PORT MAP ( Y => n_4432, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3652: DELAY
    PORT MAP ( Y => progcntr_val10_aCLK, IN1 => n_4431);
delay_3653: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int10_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int10_aIN);
xor2_3654: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int10_aIN, IN1 => n_4436, IN2 => n_4440);
or1_3655: OR1
    PORT MAP ( Y => n_4436, IN1 => n_4437);
and2_3656: AND2
    PORT MAP ( Y => n_4437, IN1 => n_4438, IN2 => n_4439);
delay_3657: DELAY
    PORT MAP ( Y => n_4438, IN1 => alu1_modgen_34_l1_l0_c_int9_aOUT);
delay_3658: DELAY
    PORT MAP ( Y => n_4439, IN1 => data(9));
and1_3659: AND1
    PORT MAP ( Y => n_4440, IN1 => gnd);
delay_3660: DELAY
    PORT MAP ( Y => alu1_nx181_aOUT, IN1 => alu1_nx181_aIN);
xor2_3661: XOR2
    PORT MAP ( Y => alu1_nx181_aIN, IN1 => n_4443, IN2 => n_4450);
or2_3662: OR2
    PORT MAP ( Y => n_4443, IN1 => n_4444, IN2 => n_4447);
and2_3663: AND2
    PORT MAP ( Y => n_4444, IN1 => n_4445, IN2 => n_4446);
inv_3664: INV 
    PORT MAP ( Y => n_4445, IN1 => data(10));
delay_3665: DELAY
    PORT MAP ( Y => n_4446, IN1 => alu1_modgen_34_l1_l0_c_int10_aOUT);
and2_3666: AND2
    PORT MAP ( Y => n_4447, IN1 => n_4448, IN2 => n_4449);
inv_3667: INV 
    PORT MAP ( Y => n_4448, IN1 => alu1_modgen_34_l1_l0_c_int10_aOUT);
delay_3668: DELAY
    PORT MAP ( Y => n_4449, IN1 => data(10));
and1_3669: AND1
    PORT MAP ( Y => n_4450, IN1 => gnd);
delay_3670: DELAY
    PORT MAP ( Y => I1_dup_659_aOUT, IN1 => I1_dup_659_aIN);
xor2_3671: XOR2
    PORT MAP ( Y => I1_dup_659_aIN, IN1 => n_4453, IN2 => n_4457);
or1_3672: OR1
    PORT MAP ( Y => n_4453, IN1 => n_4454);
and2_3673: AND2
    PORT MAP ( Y => n_4454, IN1 => n_4455, IN2 => n_4456);
delay_3674: DELAY
    PORT MAP ( Y => n_4455, IN1 => O_dup_867_aOUT);
delay_3675: DELAY
    PORT MAP ( Y => n_4456, IN1 => alu1_nx181_aOUT);
and1_3676: AND1
    PORT MAP ( Y => n_4457, IN1 => gnd);
dff_3677: DFF
    PORT MAP ( D => outreg_val10_aD, CLK => outreg_val10_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val10_Q);
xor2_3678: XOR2
    PORT MAP ( Y => outreg_val10_aD, IN1 => n_4463, IN2 => n_4469);
or2_3679: OR2
    PORT MAP ( Y => n_4463, IN1 => n_4464, IN2 => n_4466);
and1_3680: AND1
    PORT MAP ( Y => n_4464, IN1 => n_4465);
delay_3681: DELAY
    PORT MAP ( Y => n_4465, IN1 => I1_dup_659_aOUT);
and2_3682: AND2
    PORT MAP ( Y => n_4466, IN1 => n_4467, IN2 => n_4468);
inv_3683: INV 
    PORT MAP ( Y => n_4467, IN1 => alusel0_aOUT);
delay_3684: DELAY
    PORT MAP ( Y => n_4468, IN1 => data(10));
and1_3685: AND1
    PORT MAP ( Y => n_4469, IN1 => gnd);
and1_3686: AND1
    PORT MAP ( Y => n_4470, IN1 => n_4471);
delay_3687: DELAY
    PORT MAP ( Y => n_4471, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3688: DELAY
    PORT MAP ( Y => outreg_val10_aCLK, IN1 => n_4470);
dff_3689: DFF
    PORT MAP ( D => progcntr_val11_aD, CLK => progcntr_val11_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val11_Q);
xor2_3690: XOR2
    PORT MAP ( Y => progcntr_val11_aD, IN1 => n_4478, IN2 => n_4481);
or1_3691: OR1
    PORT MAP ( Y => n_4478, IN1 => n_4479);
and1_3692: AND1
    PORT MAP ( Y => n_4479, IN1 => n_4480);
delay_3693: DELAY
    PORT MAP ( Y => n_4480, IN1 => data(11));
and1_3694: AND1
    PORT MAP ( Y => n_4481, IN1 => gnd);
and1_3695: AND1
    PORT MAP ( Y => n_4482, IN1 => n_4483);
delay_3696: DELAY
    PORT MAP ( Y => n_4483, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3697: DELAY
    PORT MAP ( Y => progcntr_val11_aCLK, IN1 => n_4482);
delay_3698: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int11_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int11_aIN);
xor2_3699: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int11_aIN, IN1 => n_4487, IN2 => n_4491);
or1_3700: OR1
    PORT MAP ( Y => n_4487, IN1 => n_4488);
and2_3701: AND2
    PORT MAP ( Y => n_4488, IN1 => n_4489, IN2 => n_4490);
delay_3702: DELAY
    PORT MAP ( Y => n_4489, IN1 => alu1_modgen_34_l1_l0_c_int10_aOUT);
delay_3703: DELAY
    PORT MAP ( Y => n_4490, IN1 => data(10));
and1_3704: AND1
    PORT MAP ( Y => n_4491, IN1 => gnd);
delay_3705: DELAY
    PORT MAP ( Y => alu1_nx180_aOUT, IN1 => alu1_nx180_aIN);
xor2_3706: XOR2
    PORT MAP ( Y => alu1_nx180_aIN, IN1 => n_4494, IN2 => n_4501);
or2_3707: OR2
    PORT MAP ( Y => n_4494, IN1 => n_4495, IN2 => n_4498);
and2_3708: AND2
    PORT MAP ( Y => n_4495, IN1 => n_4496, IN2 => n_4497);
inv_3709: INV 
    PORT MAP ( Y => n_4496, IN1 => data(11));
delay_3710: DELAY
    PORT MAP ( Y => n_4497, IN1 => alu1_modgen_34_l1_l0_c_int11_aOUT);
and2_3711: AND2
    PORT MAP ( Y => n_4498, IN1 => n_4499, IN2 => n_4500);
inv_3712: INV 
    PORT MAP ( Y => n_4499, IN1 => alu1_modgen_34_l1_l0_c_int11_aOUT);
delay_3713: DELAY
    PORT MAP ( Y => n_4500, IN1 => data(11));
and1_3714: AND1
    PORT MAP ( Y => n_4501, IN1 => gnd);
delay_3715: DELAY
    PORT MAP ( Y => I1_dup_658_aOUT, IN1 => I1_dup_658_aIN);
xor2_3716: XOR2
    PORT MAP ( Y => I1_dup_658_aIN, IN1 => n_4504, IN2 => n_4508);
or1_3717: OR1
    PORT MAP ( Y => n_4504, IN1 => n_4505);
and2_3718: AND2
    PORT MAP ( Y => n_4505, IN1 => n_4506, IN2 => n_4507);
delay_3719: DELAY
    PORT MAP ( Y => n_4506, IN1 => O_dup_867_aOUT);
delay_3720: DELAY
    PORT MAP ( Y => n_4507, IN1 => alu1_nx180_aOUT);
and1_3721: AND1
    PORT MAP ( Y => n_4508, IN1 => gnd);
dff_3722: DFF
    PORT MAP ( D => outreg_val11_aD, CLK => outreg_val11_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val11_Q);
xor2_3723: XOR2
    PORT MAP ( Y => outreg_val11_aD, IN1 => n_4514, IN2 => n_4520);
or2_3724: OR2
    PORT MAP ( Y => n_4514, IN1 => n_4515, IN2 => n_4517);
and1_3725: AND1
    PORT MAP ( Y => n_4515, IN1 => n_4516);
delay_3726: DELAY
    PORT MAP ( Y => n_4516, IN1 => I1_dup_658_aOUT);
and2_3727: AND2
    PORT MAP ( Y => n_4517, IN1 => n_4518, IN2 => n_4519);
inv_3728: INV 
    PORT MAP ( Y => n_4518, IN1 => alusel0_aOUT);
delay_3729: DELAY
    PORT MAP ( Y => n_4519, IN1 => data(11));
and1_3730: AND1
    PORT MAP ( Y => n_4520, IN1 => gnd);
and1_3731: AND1
    PORT MAP ( Y => n_4521, IN1 => n_4522);
delay_3732: DELAY
    PORT MAP ( Y => n_4522, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3733: DELAY
    PORT MAP ( Y => outreg_val11_aCLK, IN1 => n_4521);
dff_3734: DFF
    PORT MAP ( D => progcntr_val12_aD, CLK => progcntr_val12_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val12_Q);
xor2_3735: XOR2
    PORT MAP ( Y => progcntr_val12_aD, IN1 => n_4529, IN2 => n_4532);
or1_3736: OR1
    PORT MAP ( Y => n_4529, IN1 => n_4530);
and1_3737: AND1
    PORT MAP ( Y => n_4530, IN1 => n_4531);
delay_3738: DELAY
    PORT MAP ( Y => n_4531, IN1 => data(12));
and1_3739: AND1
    PORT MAP ( Y => n_4532, IN1 => gnd);
and1_3740: AND1
    PORT MAP ( Y => n_4533, IN1 => n_4534);
delay_3741: DELAY
    PORT MAP ( Y => n_4534, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3742: DELAY
    PORT MAP ( Y => progcntr_val12_aCLK, IN1 => n_4533);
delay_3743: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int12_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int12_aIN);
xor2_3744: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int12_aIN, IN1 => n_4538, IN2 => n_4542);
or1_3745: OR1
    PORT MAP ( Y => n_4538, IN1 => n_4539);
and2_3746: AND2
    PORT MAP ( Y => n_4539, IN1 => n_4540, IN2 => n_4541);
delay_3747: DELAY
    PORT MAP ( Y => n_4540, IN1 => alu1_modgen_34_l1_l0_c_int11_aOUT);
delay_3748: DELAY
    PORT MAP ( Y => n_4541, IN1 => data(11));
and1_3749: AND1
    PORT MAP ( Y => n_4542, IN1 => gnd);
delay_3750: DELAY
    PORT MAP ( Y => alu1_nx179_aOUT, IN1 => alu1_nx179_aIN);
xor2_3751: XOR2
    PORT MAP ( Y => alu1_nx179_aIN, IN1 => n_4545, IN2 => n_4552);
or2_3752: OR2
    PORT MAP ( Y => n_4545, IN1 => n_4546, IN2 => n_4549);
and2_3753: AND2
    PORT MAP ( Y => n_4546, IN1 => n_4547, IN2 => n_4548);
inv_3754: INV 
    PORT MAP ( Y => n_4547, IN1 => data(12));
delay_3755: DELAY
    PORT MAP ( Y => n_4548, IN1 => alu1_modgen_34_l1_l0_c_int12_aOUT);
and2_3756: AND2
    PORT MAP ( Y => n_4549, IN1 => n_4550, IN2 => n_4551);
inv_3757: INV 
    PORT MAP ( Y => n_4550, IN1 => alu1_modgen_34_l1_l0_c_int12_aOUT);
delay_3758: DELAY
    PORT MAP ( Y => n_4551, IN1 => data(12));
and1_3759: AND1
    PORT MAP ( Y => n_4552, IN1 => gnd);
delay_3760: DELAY
    PORT MAP ( Y => I1_dup_657_aOUT, IN1 => I1_dup_657_aIN);
xor2_3761: XOR2
    PORT MAP ( Y => I1_dup_657_aIN, IN1 => n_4555, IN2 => n_4559);
or1_3762: OR1
    PORT MAP ( Y => n_4555, IN1 => n_4556);
and2_3763: AND2
    PORT MAP ( Y => n_4556, IN1 => n_4557, IN2 => n_4558);
delay_3764: DELAY
    PORT MAP ( Y => n_4557, IN1 => O_dup_867_aOUT);
delay_3765: DELAY
    PORT MAP ( Y => n_4558, IN1 => alu1_nx179_aOUT);
and1_3766: AND1
    PORT MAP ( Y => n_4559, IN1 => gnd);
dff_3767: DFF
    PORT MAP ( D => outreg_val12_aD, CLK => outreg_val12_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val12_Q);
xor2_3768: XOR2
    PORT MAP ( Y => outreg_val12_aD, IN1 => n_4565, IN2 => n_4571);
or2_3769: OR2
    PORT MAP ( Y => n_4565, IN1 => n_4566, IN2 => n_4568);
and1_3770: AND1
    PORT MAP ( Y => n_4566, IN1 => n_4567);
delay_3771: DELAY
    PORT MAP ( Y => n_4567, IN1 => I1_dup_657_aOUT);
and2_3772: AND2
    PORT MAP ( Y => n_4568, IN1 => n_4569, IN2 => n_4570);
inv_3773: INV 
    PORT MAP ( Y => n_4569, IN1 => alusel0_aOUT);
delay_3774: DELAY
    PORT MAP ( Y => n_4570, IN1 => data(12));
and1_3775: AND1
    PORT MAP ( Y => n_4571, IN1 => gnd);
and1_3776: AND1
    PORT MAP ( Y => n_4572, IN1 => n_4573);
delay_3777: DELAY
    PORT MAP ( Y => n_4573, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3778: DELAY
    PORT MAP ( Y => outreg_val12_aCLK, IN1 => n_4572);
dff_3779: DFF
    PORT MAP ( D => progcntr_val13_aD, CLK => progcntr_val13_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val13_Q);
xor2_3780: XOR2
    PORT MAP ( Y => progcntr_val13_aD, IN1 => n_4580, IN2 => n_4583);
or1_3781: OR1
    PORT MAP ( Y => n_4580, IN1 => n_4581);
and1_3782: AND1
    PORT MAP ( Y => n_4581, IN1 => n_4582);
delay_3783: DELAY
    PORT MAP ( Y => n_4582, IN1 => data(13));
and1_3784: AND1
    PORT MAP ( Y => n_4583, IN1 => gnd);
and1_3785: AND1
    PORT MAP ( Y => n_4584, IN1 => n_4585);
delay_3786: DELAY
    PORT MAP ( Y => n_4585, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3787: DELAY
    PORT MAP ( Y => progcntr_val13_aCLK, IN1 => n_4584);
delay_3788: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int13_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int13_aIN);
xor2_3789: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int13_aIN, IN1 => n_4589, IN2 => n_4593);
or1_3790: OR1
    PORT MAP ( Y => n_4589, IN1 => n_4590);
and2_3791: AND2
    PORT MAP ( Y => n_4590, IN1 => n_4591, IN2 => n_4592);
delay_3792: DELAY
    PORT MAP ( Y => n_4591, IN1 => alu1_modgen_34_l1_l0_c_int12_aOUT);
delay_3793: DELAY
    PORT MAP ( Y => n_4592, IN1 => data(12));
and1_3794: AND1
    PORT MAP ( Y => n_4593, IN1 => gnd);
delay_3795: DELAY
    PORT MAP ( Y => alu1_nx178_aOUT, IN1 => alu1_nx178_aIN);
xor2_3796: XOR2
    PORT MAP ( Y => alu1_nx178_aIN, IN1 => n_4596, IN2 => n_4603);
or2_3797: OR2
    PORT MAP ( Y => n_4596, IN1 => n_4597, IN2 => n_4600);
and2_3798: AND2
    PORT MAP ( Y => n_4597, IN1 => n_4598, IN2 => n_4599);
inv_3799: INV 
    PORT MAP ( Y => n_4598, IN1 => data(13));
delay_3800: DELAY
    PORT MAP ( Y => n_4599, IN1 => alu1_modgen_34_l1_l0_c_int13_aOUT);
and2_3801: AND2
    PORT MAP ( Y => n_4600, IN1 => n_4601, IN2 => n_4602);
inv_3802: INV 
    PORT MAP ( Y => n_4601, IN1 => alu1_modgen_34_l1_l0_c_int13_aOUT);
delay_3803: DELAY
    PORT MAP ( Y => n_4602, IN1 => data(13));
and1_3804: AND1
    PORT MAP ( Y => n_4603, IN1 => gnd);
delay_3805: DELAY
    PORT MAP ( Y => I1_dup_656_aOUT, IN1 => I1_dup_656_aIN);
xor2_3806: XOR2
    PORT MAP ( Y => I1_dup_656_aIN, IN1 => n_4606, IN2 => n_4610);
or1_3807: OR1
    PORT MAP ( Y => n_4606, IN1 => n_4607);
and2_3808: AND2
    PORT MAP ( Y => n_4607, IN1 => n_4608, IN2 => n_4609);
delay_3809: DELAY
    PORT MAP ( Y => n_4608, IN1 => O_dup_867_aOUT);
delay_3810: DELAY
    PORT MAP ( Y => n_4609, IN1 => alu1_nx178_aOUT);
and1_3811: AND1
    PORT MAP ( Y => n_4610, IN1 => gnd);
dff_3812: DFF
    PORT MAP ( D => outreg_val13_aD, CLK => outreg_val13_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val13_Q);
xor2_3813: XOR2
    PORT MAP ( Y => outreg_val13_aD, IN1 => n_4616, IN2 => n_4622);
or2_3814: OR2
    PORT MAP ( Y => n_4616, IN1 => n_4617, IN2 => n_4619);
and1_3815: AND1
    PORT MAP ( Y => n_4617, IN1 => n_4618);
delay_3816: DELAY
    PORT MAP ( Y => n_4618, IN1 => I1_dup_656_aOUT);
and2_3817: AND2
    PORT MAP ( Y => n_4619, IN1 => n_4620, IN2 => n_4621);
inv_3818: INV 
    PORT MAP ( Y => n_4620, IN1 => alusel0_aOUT);
delay_3819: DELAY
    PORT MAP ( Y => n_4621, IN1 => data(13));
and1_3820: AND1
    PORT MAP ( Y => n_4622, IN1 => gnd);
and1_3821: AND1
    PORT MAP ( Y => n_4623, IN1 => n_4624);
delay_3822: DELAY
    PORT MAP ( Y => n_4624, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3823: DELAY
    PORT MAP ( Y => outreg_val13_aCLK, IN1 => n_4623);
dff_3824: DFF
    PORT MAP ( D => progcntr_val14_aD, CLK => progcntr_val14_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val14_Q);
xor2_3825: XOR2
    PORT MAP ( Y => progcntr_val14_aD, IN1 => n_4631, IN2 => n_4634);
or1_3826: OR1
    PORT MAP ( Y => n_4631, IN1 => n_4632);
and1_3827: AND1
    PORT MAP ( Y => n_4632, IN1 => n_4633);
delay_3828: DELAY
    PORT MAP ( Y => n_4633, IN1 => data(14));
and1_3829: AND1
    PORT MAP ( Y => n_4634, IN1 => gnd);
and1_3830: AND1
    PORT MAP ( Y => n_4635, IN1 => n_4636);
delay_3831: DELAY
    PORT MAP ( Y => n_4636, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3832: DELAY
    PORT MAP ( Y => progcntr_val14_aCLK, IN1 => n_4635);
delay_3833: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int14_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int14_aIN);
xor2_3834: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int14_aIN, IN1 => n_4640, IN2 => n_4644);
or1_3835: OR1
    PORT MAP ( Y => n_4640, IN1 => n_4641);
and2_3836: AND2
    PORT MAP ( Y => n_4641, IN1 => n_4642, IN2 => n_4643);
delay_3837: DELAY
    PORT MAP ( Y => n_4642, IN1 => alu1_modgen_34_l1_l0_c_int13_aOUT);
delay_3838: DELAY
    PORT MAP ( Y => n_4643, IN1 => data(13));
and1_3839: AND1
    PORT MAP ( Y => n_4644, IN1 => gnd);
delay_3840: DELAY
    PORT MAP ( Y => alu1_nx177_aOUT, IN1 => alu1_nx177_aIN);
xor2_3841: XOR2
    PORT MAP ( Y => alu1_nx177_aIN, IN1 => n_4647, IN2 => n_4654);
or2_3842: OR2
    PORT MAP ( Y => n_4647, IN1 => n_4648, IN2 => n_4651);
and2_3843: AND2
    PORT MAP ( Y => n_4648, IN1 => n_4649, IN2 => n_4650);
inv_3844: INV 
    PORT MAP ( Y => n_4649, IN1 => data(14));
delay_3845: DELAY
    PORT MAP ( Y => n_4650, IN1 => alu1_modgen_34_l1_l0_c_int14_aOUT);
and2_3846: AND2
    PORT MAP ( Y => n_4651, IN1 => n_4652, IN2 => n_4653);
inv_3847: INV 
    PORT MAP ( Y => n_4652, IN1 => alu1_modgen_34_l1_l0_c_int14_aOUT);
delay_3848: DELAY
    PORT MAP ( Y => n_4653, IN1 => data(14));
and1_3849: AND1
    PORT MAP ( Y => n_4654, IN1 => gnd);
delay_3850: DELAY
    PORT MAP ( Y => I1_dup_655_aOUT, IN1 => I1_dup_655_aIN);
xor2_3851: XOR2
    PORT MAP ( Y => I1_dup_655_aIN, IN1 => n_4657, IN2 => n_4661);
or1_3852: OR1
    PORT MAP ( Y => n_4657, IN1 => n_4658);
and2_3853: AND2
    PORT MAP ( Y => n_4658, IN1 => n_4659, IN2 => n_4660);
delay_3854: DELAY
    PORT MAP ( Y => n_4659, IN1 => O_dup_867_aOUT);
delay_3855: DELAY
    PORT MAP ( Y => n_4660, IN1 => alu1_nx177_aOUT);
and1_3856: AND1
    PORT MAP ( Y => n_4661, IN1 => gnd);
dff_3857: DFF
    PORT MAP ( D => outreg_val14_aD, CLK => outreg_val14_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val14_Q);
xor2_3858: XOR2
    PORT MAP ( Y => outreg_val14_aD, IN1 => n_4667, IN2 => n_4673);
or2_3859: OR2
    PORT MAP ( Y => n_4667, IN1 => n_4668, IN2 => n_4670);
and1_3860: AND1
    PORT MAP ( Y => n_4668, IN1 => n_4669);
delay_3861: DELAY
    PORT MAP ( Y => n_4669, IN1 => I1_dup_655_aOUT);
and2_3862: AND2
    PORT MAP ( Y => n_4670, IN1 => n_4671, IN2 => n_4672);
inv_3863: INV 
    PORT MAP ( Y => n_4671, IN1 => alusel0_aOUT);
delay_3864: DELAY
    PORT MAP ( Y => n_4672, IN1 => data(14));
and1_3865: AND1
    PORT MAP ( Y => n_4673, IN1 => gnd);
and1_3866: AND1
    PORT MAP ( Y => n_4674, IN1 => n_4675);
delay_3867: DELAY
    PORT MAP ( Y => n_4675, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3868: DELAY
    PORT MAP ( Y => outreg_val14_aCLK, IN1 => n_4674);
dff_3869: DFF
    PORT MAP ( D => con1_current_state50_aD, CLK => con1_current_state50_aCLK,
          CLRN => con1_current_state50_aCLRN, PRN => vcc, Q => con1_current_state50_Q);
inv_3870: INV 
    PORT MAP ( Y => con1_current_state50_aCLRN, IN1 => reset);
xor2_3871: XOR2
    PORT MAP ( Y => con1_current_state50_aD, IN1 => n_4683, IN2 => n_4686);
or1_3872: OR1
    PORT MAP ( Y => n_4683, IN1 => n_4684);
and1_3873: AND1
    PORT MAP ( Y => n_4684, IN1 => n_4685);
delay_3874: DELAY
    PORT MAP ( Y => n_4685, IN1 => con1_current_state49_Q);
and1_3875: AND1
    PORT MAP ( Y => n_4686, IN1 => gnd);
delay_3876: DELAY
    PORT MAP ( Y => con1_current_state50_aCLK, IN1 => clock);
dff_3877: DFF
    PORT MAP ( D => progcntr_val15_aD, CLK => progcntr_val15_aCLK, CLRN => vcc,
          PRN => vcc, Q => progcntr_val15_Q);
xor2_3878: XOR2
    PORT MAP ( Y => progcntr_val15_aD, IN1 => n_4693, IN2 => n_4696);
or1_3879: OR1
    PORT MAP ( Y => n_4693, IN1 => n_4694);
and1_3880: AND1
    PORT MAP ( Y => n_4694, IN1 => n_4695);
delay_3881: DELAY
    PORT MAP ( Y => n_4695, IN1 => data(15));
and1_3882: AND1
    PORT MAP ( Y => n_4696, IN1 => gnd);
and1_3883: AND1
    PORT MAP ( Y => n_4697, IN1 => n_4698);
delay_3884: DELAY
    PORT MAP ( Y => n_4698, IN1 => a_as_or3_aix1652_a_a32_aOUT);
delay_3885: DELAY
    PORT MAP ( Y => progcntr_val15_aCLK, IN1 => n_4697);
delay_3886: DELAY
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int15_aOUT, IN1 => alu1_modgen_34_l1_l0_c_int15_aIN);
xor2_3887: XOR2
    PORT MAP ( Y => alu1_modgen_34_l1_l0_c_int15_aIN, IN1 => n_4702, IN2 => n_4706);
or1_3888: OR1
    PORT MAP ( Y => n_4702, IN1 => n_4703);
and2_3889: AND2
    PORT MAP ( Y => n_4703, IN1 => n_4704, IN2 => n_4705);
delay_3890: DELAY
    PORT MAP ( Y => n_4704, IN1 => alu1_modgen_34_l1_l0_c_int14_aOUT);
delay_3891: DELAY
    PORT MAP ( Y => n_4705, IN1 => data(14));
and1_3892: AND1
    PORT MAP ( Y => n_4706, IN1 => gnd);
delay_3893: DELAY
    PORT MAP ( Y => alu1_nx176_aOUT, IN1 => alu1_nx176_aIN);
xor2_3894: XOR2
    PORT MAP ( Y => alu1_nx176_aIN, IN1 => n_4709, IN2 => n_4716);
or2_3895: OR2
    PORT MAP ( Y => n_4709, IN1 => n_4710, IN2 => n_4713);
and2_3896: AND2
    PORT MAP ( Y => n_4710, IN1 => n_4711, IN2 => n_4712);
inv_3897: INV 
    PORT MAP ( Y => n_4711, IN1 => data(15));
delay_3898: DELAY
    PORT MAP ( Y => n_4712, IN1 => alu1_modgen_34_l1_l0_c_int15_aOUT);
and2_3899: AND2
    PORT MAP ( Y => n_4713, IN1 => n_4714, IN2 => n_4715);
inv_3900: INV 
    PORT MAP ( Y => n_4714, IN1 => alu1_modgen_34_l1_l0_c_int15_aOUT);
delay_3901: DELAY
    PORT MAP ( Y => n_4715, IN1 => data(15));
and1_3902: AND1
    PORT MAP ( Y => n_4716, IN1 => gnd);
delay_3903: DELAY
    PORT MAP ( Y => I1_aOUT, IN1 => I1_aIN);
xor2_3904: XOR2
    PORT MAP ( Y => I1_aIN, IN1 => n_4719, IN2 => n_4723);
or1_3905: OR1
    PORT MAP ( Y => n_4719, IN1 => n_4720);
and2_3906: AND2
    PORT MAP ( Y => n_4720, IN1 => n_4721, IN2 => n_4722);
delay_3907: DELAY
    PORT MAP ( Y => n_4721, IN1 => O_dup_867_aOUT);
delay_3908: DELAY
    PORT MAP ( Y => n_4722, IN1 => alu1_nx176_aOUT);
and1_3909: AND1
    PORT MAP ( Y => n_4723, IN1 => gnd);
dff_3910: DFF
    PORT MAP ( D => outreg_val15_aD, CLK => outreg_val15_aCLK, CLRN => vcc,
          PRN => vcc, Q => outreg_val15_Q);
xor2_3911: XOR2
    PORT MAP ( Y => outreg_val15_aD, IN1 => n_4729, IN2 => n_4735);
or2_3912: OR2
    PORT MAP ( Y => n_4729, IN1 => n_4730, IN2 => n_4732);
and1_3913: AND1
    PORT MAP ( Y => n_4730, IN1 => n_4731);
delay_3914: DELAY
    PORT MAP ( Y => n_4731, IN1 => I1_aOUT);
and2_3915: AND2
    PORT MAP ( Y => n_4732, IN1 => n_4733, IN2 => n_4734);
inv_3916: INV 
    PORT MAP ( Y => n_4733, IN1 => alusel0_aOUT);
delay_3917: DELAY
    PORT MAP ( Y => n_4734, IN1 => data(15));
and1_3918: AND1
    PORT MAP ( Y => n_4735, IN1 => gnd);
and1_3919: AND1
    PORT MAP ( Y => n_4736, IN1 => n_4737);
delay_3920: DELAY
    PORT MAP ( Y => n_4737, IN1 => a_as_or3_aix1642_a_a32_aOUT);
delay_3921: DELAY
    PORT MAP ( Y => outreg_val15_aCLK, IN1 => n_4736);
dff_3922: DFF
    PORT MAP ( D => instrregout15_aD, CLK => instrregout15_aCLK, CLRN => vcc,
          PRN => vcc, Q => instrregout15_Q);
xor2_3923: XOR2
    PORT MAP ( Y => instrregout15_aD, IN1 => n_4744, IN2 => n_4747);
or1_3924: OR1
    PORT MAP ( Y => n_4744, IN1 => n_4745);
and1_3925: AND1
    PORT MAP ( Y => n_4745, IN1 => n_4746);
delay_3926: DELAY
    PORT MAP ( Y => n_4746, IN1 => data(15));
and1_3927: AND1
    PORT MAP ( Y => n_4747, IN1 => gnd);
and1_3928: AND1
    PORT MAP ( Y => n_4748, IN1 => n_4749);
delay_3929: DELAY
    PORT MAP ( Y => n_4749, IN1 => a_as_or3_aix1644_a_a32_aOUT);
delay_3930: DELAY
    PORT MAP ( Y => instrregout15_aCLK, IN1 => n_4748);
dff_3931: DFF
    PORT MAP ( D => con1_current_state45_aD, CLK => con1_current_state45_aCLK,
          CLRN => con1_current_state45_aCLRN, PRN => vcc, Q => con1_current_state45_Q);
inv_3932: INV 
    PORT MAP ( Y => con1_current_state45_aCLRN, IN1 => reset);
xor2_3933: XOR2
    PORT MAP ( Y => con1_current_state45_aD, IN1 => n_4758, IN2 => n_4761);
or1_3934: OR1
    PORT MAP ( Y => n_4758, IN1 => n_4759);
and1_3935: AND1
    PORT MAP ( Y => n_4759, IN1 => n_4760);
delay_3936: DELAY
    PORT MAP ( Y => n_4760, IN1 => con1_current_state44_Q);
and1_3937: AND1
    PORT MAP ( Y => n_4761, IN1 => gnd);
delay_3938: DELAY
    PORT MAP ( Y => con1_current_state45_aCLK, IN1 => clock);
dff_3939: DFF
    PORT MAP ( D => con1_current_state40_aD, CLK => con1_current_state40_aCLK,
          CLRN => con1_current_state40_aCLRN, PRN => vcc, Q => con1_current_state40_Q);
inv_3940: INV 
    PORT MAP ( Y => con1_current_state40_aCLRN, IN1 => reset);
xor2_3941: XOR2
    PORT MAP ( Y => con1_current_state40_aD, IN1 => n_4770, IN2 => n_4773);
or1_3942: OR1
    PORT MAP ( Y => n_4770, IN1 => n_4771);
and1_3943: AND1
    PORT MAP ( Y => n_4771, IN1 => n_4772);
delay_3944: DELAY
    PORT MAP ( Y => n_4772, IN1 => con1_current_state39_Q);
and1_3945: AND1
    PORT MAP ( Y => n_4773, IN1 => gnd);
delay_3946: DELAY
    PORT MAP ( Y => con1_current_state40_aCLK, IN1 => clock);
dff_3947: DFF
    PORT MAP ( D => con1_current_state35_aD, CLK => con1_current_state35_aCLK,
          CLRN => con1_current_state35_aCLRN, PRN => vcc, Q => con1_current_state35_Q);
inv_3948: INV 
    PORT MAP ( Y => con1_current_state35_aCLRN, IN1 => reset);
xor2_3949: XOR2
    PORT MAP ( Y => con1_current_state35_aD, IN1 => n_4782, IN2 => n_4785);
or1_3950: OR1
    PORT MAP ( Y => n_4782, IN1 => n_4783);
and1_3951: AND1
    PORT MAP ( Y => n_4783, IN1 => n_4784);
delay_3952: DELAY
    PORT MAP ( Y => n_4784, IN1 => con1_current_state34_Q);
and1_3953: AND1
    PORT MAP ( Y => n_4785, IN1 => gnd);
delay_3954: DELAY
    PORT MAP ( Y => con1_current_state35_aCLK, IN1 => clock);
dffe_3955: DFFE
    PORT MAP ( D => ix484_a2_dup_652_aD, CLK => ix484_a2_dup_652_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_652_aENA, Q => ix484_a2_dup_652_Q);
xor2_3956: XOR2
    PORT MAP ( Y => ix484_a2_dup_652_aD, IN1 => n_4793, IN2 => n_4796);
or1_3957: OR1
    PORT MAP ( Y => n_4793, IN1 => n_4794);
and1_3958: AND1
    PORT MAP ( Y => n_4794, IN1 => n_4795);
delay_3959: DELAY
    PORT MAP ( Y => n_4795, IN1 => data(0));
and1_3960: AND1
    PORT MAP ( Y => n_4796, IN1 => gnd);
and1_3961: AND1
    PORT MAP ( Y => n_4797, IN1 => n_4798);
delay_3962: DELAY
    PORT MAP ( Y => n_4798, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_3963: DELAY
    PORT MAP ( Y => ix484_a2_dup_652_aCLK, IN1 => n_4797);
and1_3964: AND1
    PORT MAP ( Y => ix484_a2_dup_652_aENA, IN1 => n_4801);
delay_3965: DELAY
    PORT MAP ( Y => n_4801, IN1 => ix484_nx43_aOUT);
dffe_3966: DFFE
    PORT MAP ( D => ix484_a7_dup_647_aD, CLK => ix484_a7_dup_647_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_647_aENA, Q => ix484_a7_dup_647_Q);
xor2_3967: XOR2
    PORT MAP ( Y => ix484_a7_dup_647_aD, IN1 => n_4808, IN2 => n_4811);
or1_3968: OR1
    PORT MAP ( Y => n_4808, IN1 => n_4809);
and1_3969: AND1
    PORT MAP ( Y => n_4809, IN1 => n_4810);
delay_3970: DELAY
    PORT MAP ( Y => n_4810, IN1 => data(0));
and1_3971: AND1
    PORT MAP ( Y => n_4811, IN1 => gnd);
and1_3972: AND1
    PORT MAP ( Y => n_4812, IN1 => n_4813);
delay_3973: DELAY
    PORT MAP ( Y => n_4813, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_3974: DELAY
    PORT MAP ( Y => ix484_a7_dup_647_aCLK, IN1 => n_4812);
and1_3975: AND1
    PORT MAP ( Y => ix484_a7_dup_647_aENA, IN1 => n_4816);
delay_3976: DELAY
    PORT MAP ( Y => n_4816, IN1 => ix484_nx38_aOUT);
dffe_3977: DFFE
    PORT MAP ( D => ix484_a2_dup_644_aD, CLK => ix484_a2_dup_644_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_644_aENA, Q => ix484_a2_dup_644_Q);
xor2_3978: XOR2
    PORT MAP ( Y => ix484_a2_dup_644_aD, IN1 => n_4824, IN2 => n_4827);
or1_3979: OR1
    PORT MAP ( Y => n_4824, IN1 => n_4825);
and1_3980: AND1
    PORT MAP ( Y => n_4825, IN1 => n_4826);
delay_3981: DELAY
    PORT MAP ( Y => n_4826, IN1 => data(1));
and1_3982: AND1
    PORT MAP ( Y => n_4827, IN1 => gnd);
and1_3983: AND1
    PORT MAP ( Y => n_4828, IN1 => n_4829);
delay_3984: DELAY
    PORT MAP ( Y => n_4829, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_3985: DELAY
    PORT MAP ( Y => ix484_a2_dup_644_aCLK, IN1 => n_4828);
and1_3986: AND1
    PORT MAP ( Y => ix484_a2_dup_644_aENA, IN1 => n_4832);
delay_3987: DELAY
    PORT MAP ( Y => n_4832, IN1 => ix484_nx43_aOUT);
dffe_3988: DFFE
    PORT MAP ( D => ix484_a7_dup_639_aD, CLK => ix484_a7_dup_639_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_639_aENA, Q => ix484_a7_dup_639_Q);
xor2_3989: XOR2
    PORT MAP ( Y => ix484_a7_dup_639_aD, IN1 => n_4839, IN2 => n_4842);
or1_3990: OR1
    PORT MAP ( Y => n_4839, IN1 => n_4840);
and1_3991: AND1
    PORT MAP ( Y => n_4840, IN1 => n_4841);
delay_3992: DELAY
    PORT MAP ( Y => n_4841, IN1 => data(1));
and1_3993: AND1
    PORT MAP ( Y => n_4842, IN1 => gnd);
and1_3994: AND1
    PORT MAP ( Y => n_4843, IN1 => n_4844);
delay_3995: DELAY
    PORT MAP ( Y => n_4844, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_3996: DELAY
    PORT MAP ( Y => ix484_a7_dup_639_aCLK, IN1 => n_4843);
and1_3997: AND1
    PORT MAP ( Y => ix484_a7_dup_639_aENA, IN1 => n_4847);
delay_3998: DELAY
    PORT MAP ( Y => n_4847, IN1 => ix484_nx38_aOUT);
dffe_3999: DFFE
    PORT MAP ( D => ix484_a2_dup_636_aD, CLK => ix484_a2_dup_636_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_636_aENA, Q => ix484_a2_dup_636_Q);
xor2_4000: XOR2
    PORT MAP ( Y => ix484_a2_dup_636_aD, IN1 => n_4854, IN2 => n_4857);
or1_4001: OR1
    PORT MAP ( Y => n_4854, IN1 => n_4855);
and1_4002: AND1
    PORT MAP ( Y => n_4855, IN1 => n_4856);
delay_4003: DELAY
    PORT MAP ( Y => n_4856, IN1 => data(2));
and1_4004: AND1
    PORT MAP ( Y => n_4857, IN1 => gnd);
and1_4005: AND1
    PORT MAP ( Y => n_4858, IN1 => n_4859);
delay_4006: DELAY
    PORT MAP ( Y => n_4859, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4007: DELAY
    PORT MAP ( Y => ix484_a2_dup_636_aCLK, IN1 => n_4858);
and1_4008: AND1
    PORT MAP ( Y => ix484_a2_dup_636_aENA, IN1 => n_4862);
delay_4009: DELAY
    PORT MAP ( Y => n_4862, IN1 => ix484_nx43_aOUT);
dffe_4010: DFFE
    PORT MAP ( D => ix484_a7_dup_631_aD, CLK => ix484_a7_dup_631_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_631_aENA, Q => ix484_a7_dup_631_Q);
xor2_4011: XOR2
    PORT MAP ( Y => ix484_a7_dup_631_aD, IN1 => n_4869, IN2 => n_4872);
or1_4012: OR1
    PORT MAP ( Y => n_4869, IN1 => n_4870);
and1_4013: AND1
    PORT MAP ( Y => n_4870, IN1 => n_4871);
delay_4014: DELAY
    PORT MAP ( Y => n_4871, IN1 => data(2));
and1_4015: AND1
    PORT MAP ( Y => n_4872, IN1 => gnd);
and1_4016: AND1
    PORT MAP ( Y => n_4873, IN1 => n_4874);
delay_4017: DELAY
    PORT MAP ( Y => n_4874, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4018: DELAY
    PORT MAP ( Y => ix484_a7_dup_631_aCLK, IN1 => n_4873);
and1_4019: AND1
    PORT MAP ( Y => ix484_a7_dup_631_aENA, IN1 => n_4877);
delay_4020: DELAY
    PORT MAP ( Y => n_4877, IN1 => ix484_nx38_aOUT);
dffe_4021: DFFE
    PORT MAP ( D => ix484_a2_dup_628_aD, CLK => ix484_a2_dup_628_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_628_aENA, Q => ix484_a2_dup_628_Q);
xor2_4022: XOR2
    PORT MAP ( Y => ix484_a2_dup_628_aD, IN1 => n_4884, IN2 => n_4887);
or1_4023: OR1
    PORT MAP ( Y => n_4884, IN1 => n_4885);
and1_4024: AND1
    PORT MAP ( Y => n_4885, IN1 => n_4886);
delay_4025: DELAY
    PORT MAP ( Y => n_4886, IN1 => data(3));
and1_4026: AND1
    PORT MAP ( Y => n_4887, IN1 => gnd);
and1_4027: AND1
    PORT MAP ( Y => n_4888, IN1 => n_4889);
delay_4028: DELAY
    PORT MAP ( Y => n_4889, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4029: DELAY
    PORT MAP ( Y => ix484_a2_dup_628_aCLK, IN1 => n_4888);
and1_4030: AND1
    PORT MAP ( Y => ix484_a2_dup_628_aENA, IN1 => n_4892);
delay_4031: DELAY
    PORT MAP ( Y => n_4892, IN1 => ix484_nx43_aOUT);
dffe_4032: DFFE
    PORT MAP ( D => ix484_a7_dup_623_aD, CLK => ix484_a7_dup_623_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_623_aENA, Q => ix484_a7_dup_623_Q);
xor2_4033: XOR2
    PORT MAP ( Y => ix484_a7_dup_623_aD, IN1 => n_4899, IN2 => n_4902);
or1_4034: OR1
    PORT MAP ( Y => n_4899, IN1 => n_4900);
and1_4035: AND1
    PORT MAP ( Y => n_4900, IN1 => n_4901);
delay_4036: DELAY
    PORT MAP ( Y => n_4901, IN1 => data(3));
and1_4037: AND1
    PORT MAP ( Y => n_4902, IN1 => gnd);
and1_4038: AND1
    PORT MAP ( Y => n_4903, IN1 => n_4904);
delay_4039: DELAY
    PORT MAP ( Y => n_4904, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4040: DELAY
    PORT MAP ( Y => ix484_a7_dup_623_aCLK, IN1 => n_4903);
and1_4041: AND1
    PORT MAP ( Y => ix484_a7_dup_623_aENA, IN1 => n_4907);
delay_4042: DELAY
    PORT MAP ( Y => n_4907, IN1 => ix484_nx38_aOUT);
dffe_4043: DFFE
    PORT MAP ( D => ix484_a2_dup_620_aD, CLK => ix484_a2_dup_620_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_620_aENA, Q => ix484_a2_dup_620_Q);
xor2_4044: XOR2
    PORT MAP ( Y => ix484_a2_dup_620_aD, IN1 => n_4914, IN2 => n_4917);
or1_4045: OR1
    PORT MAP ( Y => n_4914, IN1 => n_4915);
and1_4046: AND1
    PORT MAP ( Y => n_4915, IN1 => n_4916);
delay_4047: DELAY
    PORT MAP ( Y => n_4916, IN1 => data(4));
and1_4048: AND1
    PORT MAP ( Y => n_4917, IN1 => gnd);
and1_4049: AND1
    PORT MAP ( Y => n_4918, IN1 => n_4919);
delay_4050: DELAY
    PORT MAP ( Y => n_4919, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4051: DELAY
    PORT MAP ( Y => ix484_a2_dup_620_aCLK, IN1 => n_4918);
and1_4052: AND1
    PORT MAP ( Y => ix484_a2_dup_620_aENA, IN1 => n_4922);
delay_4053: DELAY
    PORT MAP ( Y => n_4922, IN1 => ix484_nx43_aOUT);
dffe_4054: DFFE
    PORT MAP ( D => ix484_a7_dup_615_aD, CLK => ix484_a7_dup_615_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_615_aENA, Q => ix484_a7_dup_615_Q);
xor2_4055: XOR2
    PORT MAP ( Y => ix484_a7_dup_615_aD, IN1 => n_4929, IN2 => n_4932);
or1_4056: OR1
    PORT MAP ( Y => n_4929, IN1 => n_4930);
and1_4057: AND1
    PORT MAP ( Y => n_4930, IN1 => n_4931);
delay_4058: DELAY
    PORT MAP ( Y => n_4931, IN1 => data(4));
and1_4059: AND1
    PORT MAP ( Y => n_4932, IN1 => gnd);
and1_4060: AND1
    PORT MAP ( Y => n_4933, IN1 => n_4934);
delay_4061: DELAY
    PORT MAP ( Y => n_4934, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4062: DELAY
    PORT MAP ( Y => ix484_a7_dup_615_aCLK, IN1 => n_4933);
and1_4063: AND1
    PORT MAP ( Y => ix484_a7_dup_615_aENA, IN1 => n_4937);
delay_4064: DELAY
    PORT MAP ( Y => n_4937, IN1 => ix484_nx38_aOUT);
dffe_4065: DFFE
    PORT MAP ( D => ix484_a2_dup_612_aD, CLK => ix484_a2_dup_612_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_612_aENA, Q => ix484_a2_dup_612_Q);
xor2_4066: XOR2
    PORT MAP ( Y => ix484_a2_dup_612_aD, IN1 => n_4944, IN2 => n_4947);
or1_4067: OR1
    PORT MAP ( Y => n_4944, IN1 => n_4945);
and1_4068: AND1
    PORT MAP ( Y => n_4945, IN1 => n_4946);
delay_4069: DELAY
    PORT MAP ( Y => n_4946, IN1 => data(5));
and1_4070: AND1
    PORT MAP ( Y => n_4947, IN1 => gnd);
and1_4071: AND1
    PORT MAP ( Y => n_4948, IN1 => n_4949);
delay_4072: DELAY
    PORT MAP ( Y => n_4949, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4073: DELAY
    PORT MAP ( Y => ix484_a2_dup_612_aCLK, IN1 => n_4948);
and1_4074: AND1
    PORT MAP ( Y => ix484_a2_dup_612_aENA, IN1 => n_4952);
delay_4075: DELAY
    PORT MAP ( Y => n_4952, IN1 => ix484_nx43_aOUT);
dffe_4076: DFFE
    PORT MAP ( D => ix484_a7_dup_607_aD, CLK => ix484_a7_dup_607_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_607_aENA, Q => ix484_a7_dup_607_Q);
xor2_4077: XOR2
    PORT MAP ( Y => ix484_a7_dup_607_aD, IN1 => n_4959, IN2 => n_4962);
or1_4078: OR1
    PORT MAP ( Y => n_4959, IN1 => n_4960);
and1_4079: AND1
    PORT MAP ( Y => n_4960, IN1 => n_4961);
delay_4080: DELAY
    PORT MAP ( Y => n_4961, IN1 => data(5));
and1_4081: AND1
    PORT MAP ( Y => n_4962, IN1 => gnd);
and1_4082: AND1
    PORT MAP ( Y => n_4963, IN1 => n_4964);
delay_4083: DELAY
    PORT MAP ( Y => n_4964, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4084: DELAY
    PORT MAP ( Y => ix484_a7_dup_607_aCLK, IN1 => n_4963);
and1_4085: AND1
    PORT MAP ( Y => ix484_a7_dup_607_aENA, IN1 => n_4967);
delay_4086: DELAY
    PORT MAP ( Y => n_4967, IN1 => ix484_nx38_aOUT);
dffe_4087: DFFE
    PORT MAP ( D => ix484_a2_dup_604_aD, CLK => ix484_a2_dup_604_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_604_aENA, Q => ix484_a2_dup_604_Q);
xor2_4088: XOR2
    PORT MAP ( Y => ix484_a2_dup_604_aD, IN1 => n_4974, IN2 => n_4977);
or1_4089: OR1
    PORT MAP ( Y => n_4974, IN1 => n_4975);
and1_4090: AND1
    PORT MAP ( Y => n_4975, IN1 => n_4976);
delay_4091: DELAY
    PORT MAP ( Y => n_4976, IN1 => data(6));
and1_4092: AND1
    PORT MAP ( Y => n_4977, IN1 => gnd);
and1_4093: AND1
    PORT MAP ( Y => n_4978, IN1 => n_4979);
delay_4094: DELAY
    PORT MAP ( Y => n_4979, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4095: DELAY
    PORT MAP ( Y => ix484_a2_dup_604_aCLK, IN1 => n_4978);
and1_4096: AND1
    PORT MAP ( Y => ix484_a2_dup_604_aENA, IN1 => n_4982);
delay_4097: DELAY
    PORT MAP ( Y => n_4982, IN1 => ix484_nx43_aOUT);
dffe_4098: DFFE
    PORT MAP ( D => ix484_a7_dup_599_aD, CLK => ix484_a7_dup_599_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_599_aENA, Q => ix484_a7_dup_599_Q);
xor2_4099: XOR2
    PORT MAP ( Y => ix484_a7_dup_599_aD, IN1 => n_4989, IN2 => n_4992);
or1_4100: OR1
    PORT MAP ( Y => n_4989, IN1 => n_4990);
and1_4101: AND1
    PORT MAP ( Y => n_4990, IN1 => n_4991);
delay_4102: DELAY
    PORT MAP ( Y => n_4991, IN1 => data(6));
and1_4103: AND1
    PORT MAP ( Y => n_4992, IN1 => gnd);
and1_4104: AND1
    PORT MAP ( Y => n_4993, IN1 => n_4994);
delay_4105: DELAY
    PORT MAP ( Y => n_4994, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4106: DELAY
    PORT MAP ( Y => ix484_a7_dup_599_aCLK, IN1 => n_4993);
and1_4107: AND1
    PORT MAP ( Y => ix484_a7_dup_599_aENA, IN1 => n_4997);
delay_4108: DELAY
    PORT MAP ( Y => n_4997, IN1 => ix484_nx38_aOUT);
dffe_4109: DFFE
    PORT MAP ( D => ix484_a2_dup_596_aD, CLK => ix484_a2_dup_596_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_596_aENA, Q => ix484_a2_dup_596_Q);
xor2_4110: XOR2
    PORT MAP ( Y => ix484_a2_dup_596_aD, IN1 => n_5004, IN2 => n_5007);
or1_4111: OR1
    PORT MAP ( Y => n_5004, IN1 => n_5005);
and1_4112: AND1
    PORT MAP ( Y => n_5005, IN1 => n_5006);
delay_4113: DELAY
    PORT MAP ( Y => n_5006, IN1 => data(7));
and1_4114: AND1
    PORT MAP ( Y => n_5007, IN1 => gnd);
and1_4115: AND1
    PORT MAP ( Y => n_5008, IN1 => n_5009);
delay_4116: DELAY
    PORT MAP ( Y => n_5009, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4117: DELAY
    PORT MAP ( Y => ix484_a2_dup_596_aCLK, IN1 => n_5008);
and1_4118: AND1
    PORT MAP ( Y => ix484_a2_dup_596_aENA, IN1 => n_5012);
delay_4119: DELAY
    PORT MAP ( Y => n_5012, IN1 => ix484_nx43_aOUT);
dffe_4120: DFFE
    PORT MAP ( D => ix484_a7_dup_591_aD, CLK => ix484_a7_dup_591_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_591_aENA, Q => ix484_a7_dup_591_Q);
xor2_4121: XOR2
    PORT MAP ( Y => ix484_a7_dup_591_aD, IN1 => n_5019, IN2 => n_5022);
or1_4122: OR1
    PORT MAP ( Y => n_5019, IN1 => n_5020);
and1_4123: AND1
    PORT MAP ( Y => n_5020, IN1 => n_5021);
delay_4124: DELAY
    PORT MAP ( Y => n_5021, IN1 => data(7));
and1_4125: AND1
    PORT MAP ( Y => n_5022, IN1 => gnd);
and1_4126: AND1
    PORT MAP ( Y => n_5023, IN1 => n_5024);
delay_4127: DELAY
    PORT MAP ( Y => n_5024, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4128: DELAY
    PORT MAP ( Y => ix484_a7_dup_591_aCLK, IN1 => n_5023);
and1_4129: AND1
    PORT MAP ( Y => ix484_a7_dup_591_aENA, IN1 => n_5027);
delay_4130: DELAY
    PORT MAP ( Y => n_5027, IN1 => ix484_nx38_aOUT);
dffe_4131: DFFE
    PORT MAP ( D => ix484_a2_dup_588_aD, CLK => ix484_a2_dup_588_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_588_aENA, Q => ix484_a2_dup_588_Q);
xor2_4132: XOR2
    PORT MAP ( Y => ix484_a2_dup_588_aD, IN1 => n_5034, IN2 => n_5037);
or1_4133: OR1
    PORT MAP ( Y => n_5034, IN1 => n_5035);
and1_4134: AND1
    PORT MAP ( Y => n_5035, IN1 => n_5036);
delay_4135: DELAY
    PORT MAP ( Y => n_5036, IN1 => data(8));
and1_4136: AND1
    PORT MAP ( Y => n_5037, IN1 => gnd);
and1_4137: AND1
    PORT MAP ( Y => n_5038, IN1 => n_5039);
delay_4138: DELAY
    PORT MAP ( Y => n_5039, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4139: DELAY
    PORT MAP ( Y => ix484_a2_dup_588_aCLK, IN1 => n_5038);
and1_4140: AND1
    PORT MAP ( Y => ix484_a2_dup_588_aENA, IN1 => n_5042);
delay_4141: DELAY
    PORT MAP ( Y => n_5042, IN1 => ix484_nx43_aOUT);
dffe_4142: DFFE
    PORT MAP ( D => ix484_a7_dup_583_aD, CLK => ix484_a7_dup_583_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_583_aENA, Q => ix484_a7_dup_583_Q);
xor2_4143: XOR2
    PORT MAP ( Y => ix484_a7_dup_583_aD, IN1 => n_5049, IN2 => n_5052);
or1_4144: OR1
    PORT MAP ( Y => n_5049, IN1 => n_5050);
and1_4145: AND1
    PORT MAP ( Y => n_5050, IN1 => n_5051);
delay_4146: DELAY
    PORT MAP ( Y => n_5051, IN1 => data(8));
and1_4147: AND1
    PORT MAP ( Y => n_5052, IN1 => gnd);
and1_4148: AND1
    PORT MAP ( Y => n_5053, IN1 => n_5054);
delay_4149: DELAY
    PORT MAP ( Y => n_5054, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4150: DELAY
    PORT MAP ( Y => ix484_a7_dup_583_aCLK, IN1 => n_5053);
and1_4151: AND1
    PORT MAP ( Y => ix484_a7_dup_583_aENA, IN1 => n_5057);
delay_4152: DELAY
    PORT MAP ( Y => n_5057, IN1 => ix484_nx38_aOUT);
dffe_4153: DFFE
    PORT MAP ( D => ix484_a2_dup_580_aD, CLK => ix484_a2_dup_580_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_580_aENA, Q => ix484_a2_dup_580_Q);
xor2_4154: XOR2
    PORT MAP ( Y => ix484_a2_dup_580_aD, IN1 => n_5064, IN2 => n_5067);
or1_4155: OR1
    PORT MAP ( Y => n_5064, IN1 => n_5065);
and1_4156: AND1
    PORT MAP ( Y => n_5065, IN1 => n_5066);
delay_4157: DELAY
    PORT MAP ( Y => n_5066, IN1 => data(9));
and1_4158: AND1
    PORT MAP ( Y => n_5067, IN1 => gnd);
and1_4159: AND1
    PORT MAP ( Y => n_5068, IN1 => n_5069);
delay_4160: DELAY
    PORT MAP ( Y => n_5069, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4161: DELAY
    PORT MAP ( Y => ix484_a2_dup_580_aCLK, IN1 => n_5068);
and1_4162: AND1
    PORT MAP ( Y => ix484_a2_dup_580_aENA, IN1 => n_5072);
delay_4163: DELAY
    PORT MAP ( Y => n_5072, IN1 => ix484_nx43_aOUT);
dffe_4164: DFFE
    PORT MAP ( D => ix484_a7_dup_575_aD, CLK => ix484_a7_dup_575_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_575_aENA, Q => ix484_a7_dup_575_Q);
xor2_4165: XOR2
    PORT MAP ( Y => ix484_a7_dup_575_aD, IN1 => n_5079, IN2 => n_5082);
or1_4166: OR1
    PORT MAP ( Y => n_5079, IN1 => n_5080);
and1_4167: AND1
    PORT MAP ( Y => n_5080, IN1 => n_5081);
delay_4168: DELAY
    PORT MAP ( Y => n_5081, IN1 => data(9));
and1_4169: AND1
    PORT MAP ( Y => n_5082, IN1 => gnd);
and1_4170: AND1
    PORT MAP ( Y => n_5083, IN1 => n_5084);
delay_4171: DELAY
    PORT MAP ( Y => n_5084, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4172: DELAY
    PORT MAP ( Y => ix484_a7_dup_575_aCLK, IN1 => n_5083);
and1_4173: AND1
    PORT MAP ( Y => ix484_a7_dup_575_aENA, IN1 => n_5087);
delay_4174: DELAY
    PORT MAP ( Y => n_5087, IN1 => ix484_nx38_aOUT);
dffe_4175: DFFE
    PORT MAP ( D => ix484_a2_dup_572_aD, CLK => ix484_a2_dup_572_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_572_aENA, Q => ix484_a2_dup_572_Q);
xor2_4176: XOR2
    PORT MAP ( Y => ix484_a2_dup_572_aD, IN1 => n_5094, IN2 => n_5097);
or1_4177: OR1
    PORT MAP ( Y => n_5094, IN1 => n_5095);
and1_4178: AND1
    PORT MAP ( Y => n_5095, IN1 => n_5096);
delay_4179: DELAY
    PORT MAP ( Y => n_5096, IN1 => data(10));
and1_4180: AND1
    PORT MAP ( Y => n_5097, IN1 => gnd);
and1_4181: AND1
    PORT MAP ( Y => n_5098, IN1 => n_5099);
delay_4182: DELAY
    PORT MAP ( Y => n_5099, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4183: DELAY
    PORT MAP ( Y => ix484_a2_dup_572_aCLK, IN1 => n_5098);
and1_4184: AND1
    PORT MAP ( Y => ix484_a2_dup_572_aENA, IN1 => n_5102);
delay_4185: DELAY
    PORT MAP ( Y => n_5102, IN1 => ix484_nx43_aOUT);
dffe_4186: DFFE
    PORT MAP ( D => ix484_a7_dup_567_aD, CLK => ix484_a7_dup_567_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_567_aENA, Q => ix484_a7_dup_567_Q);
xor2_4187: XOR2
    PORT MAP ( Y => ix484_a7_dup_567_aD, IN1 => n_5109, IN2 => n_5112);
or1_4188: OR1
    PORT MAP ( Y => n_5109, IN1 => n_5110);
and1_4189: AND1
    PORT MAP ( Y => n_5110, IN1 => n_5111);
delay_4190: DELAY
    PORT MAP ( Y => n_5111, IN1 => data(10));
and1_4191: AND1
    PORT MAP ( Y => n_5112, IN1 => gnd);
and1_4192: AND1
    PORT MAP ( Y => n_5113, IN1 => n_5114);
delay_4193: DELAY
    PORT MAP ( Y => n_5114, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4194: DELAY
    PORT MAP ( Y => ix484_a7_dup_567_aCLK, IN1 => n_5113);
and1_4195: AND1
    PORT MAP ( Y => ix484_a7_dup_567_aENA, IN1 => n_5117);
delay_4196: DELAY
    PORT MAP ( Y => n_5117, IN1 => ix484_nx38_aOUT);
dffe_4197: DFFE
    PORT MAP ( D => ix484_a2_dup_564_aD, CLK => ix484_a2_dup_564_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_564_aENA, Q => ix484_a2_dup_564_Q);
xor2_4198: XOR2
    PORT MAP ( Y => ix484_a2_dup_564_aD, IN1 => n_5124, IN2 => n_5127);
or1_4199: OR1
    PORT MAP ( Y => n_5124, IN1 => n_5125);
and1_4200: AND1
    PORT MAP ( Y => n_5125, IN1 => n_5126);
delay_4201: DELAY
    PORT MAP ( Y => n_5126, IN1 => data(11));
and1_4202: AND1
    PORT MAP ( Y => n_5127, IN1 => gnd);
and1_4203: AND1
    PORT MAP ( Y => n_5128, IN1 => n_5129);
delay_4204: DELAY
    PORT MAP ( Y => n_5129, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4205: DELAY
    PORT MAP ( Y => ix484_a2_dup_564_aCLK, IN1 => n_5128);
and1_4206: AND1
    PORT MAP ( Y => ix484_a2_dup_564_aENA, IN1 => n_5132);
delay_4207: DELAY
    PORT MAP ( Y => n_5132, IN1 => ix484_nx43_aOUT);
dffe_4208: DFFE
    PORT MAP ( D => ix484_a7_dup_559_aD, CLK => ix484_a7_dup_559_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_559_aENA, Q => ix484_a7_dup_559_Q);
xor2_4209: XOR2
    PORT MAP ( Y => ix484_a7_dup_559_aD, IN1 => n_5139, IN2 => n_5142);
or1_4210: OR1
    PORT MAP ( Y => n_5139, IN1 => n_5140);
and1_4211: AND1
    PORT MAP ( Y => n_5140, IN1 => n_5141);
delay_4212: DELAY
    PORT MAP ( Y => n_5141, IN1 => data(11));
and1_4213: AND1
    PORT MAP ( Y => n_5142, IN1 => gnd);
and1_4214: AND1
    PORT MAP ( Y => n_5143, IN1 => n_5144);
delay_4215: DELAY
    PORT MAP ( Y => n_5144, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4216: DELAY
    PORT MAP ( Y => ix484_a7_dup_559_aCLK, IN1 => n_5143);
and1_4217: AND1
    PORT MAP ( Y => ix484_a7_dup_559_aENA, IN1 => n_5147);
delay_4218: DELAY
    PORT MAP ( Y => n_5147, IN1 => ix484_nx38_aOUT);
dffe_4219: DFFE
    PORT MAP ( D => ix484_a2_dup_556_aD, CLK => ix484_a2_dup_556_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_556_aENA, Q => ix484_a2_dup_556_Q);
xor2_4220: XOR2
    PORT MAP ( Y => ix484_a2_dup_556_aD, IN1 => n_5154, IN2 => n_5157);
or1_4221: OR1
    PORT MAP ( Y => n_5154, IN1 => n_5155);
and1_4222: AND1
    PORT MAP ( Y => n_5155, IN1 => n_5156);
delay_4223: DELAY
    PORT MAP ( Y => n_5156, IN1 => data(12));
and1_4224: AND1
    PORT MAP ( Y => n_5157, IN1 => gnd);
and1_4225: AND1
    PORT MAP ( Y => n_5158, IN1 => n_5159);
delay_4226: DELAY
    PORT MAP ( Y => n_5159, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4227: DELAY
    PORT MAP ( Y => ix484_a2_dup_556_aCLK, IN1 => n_5158);
and1_4228: AND1
    PORT MAP ( Y => ix484_a2_dup_556_aENA, IN1 => n_5162);
delay_4229: DELAY
    PORT MAP ( Y => n_5162, IN1 => ix484_nx43_aOUT);
dffe_4230: DFFE
    PORT MAP ( D => ix484_a7_dup_551_aD, CLK => ix484_a7_dup_551_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_551_aENA, Q => ix484_a7_dup_551_Q);
xor2_4231: XOR2
    PORT MAP ( Y => ix484_a7_dup_551_aD, IN1 => n_5169, IN2 => n_5172);
or1_4232: OR1
    PORT MAP ( Y => n_5169, IN1 => n_5170);
and1_4233: AND1
    PORT MAP ( Y => n_5170, IN1 => n_5171);
delay_4234: DELAY
    PORT MAP ( Y => n_5171, IN1 => data(12));
and1_4235: AND1
    PORT MAP ( Y => n_5172, IN1 => gnd);
and1_4236: AND1
    PORT MAP ( Y => n_5173, IN1 => n_5174);
delay_4237: DELAY
    PORT MAP ( Y => n_5174, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4238: DELAY
    PORT MAP ( Y => ix484_a7_dup_551_aCLK, IN1 => n_5173);
and1_4239: AND1
    PORT MAP ( Y => ix484_a7_dup_551_aENA, IN1 => n_5177);
delay_4240: DELAY
    PORT MAP ( Y => n_5177, IN1 => ix484_nx38_aOUT);
dffe_4241: DFFE
    PORT MAP ( D => ix484_a2_dup_548_aD, CLK => ix484_a2_dup_548_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_548_aENA, Q => ix484_a2_dup_548_Q);
xor2_4242: XOR2
    PORT MAP ( Y => ix484_a2_dup_548_aD, IN1 => n_5184, IN2 => n_5187);
or1_4243: OR1
    PORT MAP ( Y => n_5184, IN1 => n_5185);
and1_4244: AND1
    PORT MAP ( Y => n_5185, IN1 => n_5186);
delay_4245: DELAY
    PORT MAP ( Y => n_5186, IN1 => data(13));
and1_4246: AND1
    PORT MAP ( Y => n_5187, IN1 => gnd);
and1_4247: AND1
    PORT MAP ( Y => n_5188, IN1 => n_5189);
delay_4248: DELAY
    PORT MAP ( Y => n_5189, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4249: DELAY
    PORT MAP ( Y => ix484_a2_dup_548_aCLK, IN1 => n_5188);
and1_4250: AND1
    PORT MAP ( Y => ix484_a2_dup_548_aENA, IN1 => n_5192);
delay_4251: DELAY
    PORT MAP ( Y => n_5192, IN1 => ix484_nx43_aOUT);
dffe_4252: DFFE
    PORT MAP ( D => ix484_a7_dup_543_aD, CLK => ix484_a7_dup_543_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_543_aENA, Q => ix484_a7_dup_543_Q);
xor2_4253: XOR2
    PORT MAP ( Y => ix484_a7_dup_543_aD, IN1 => n_5199, IN2 => n_5202);
or1_4254: OR1
    PORT MAP ( Y => n_5199, IN1 => n_5200);
and1_4255: AND1
    PORT MAP ( Y => n_5200, IN1 => n_5201);
delay_4256: DELAY
    PORT MAP ( Y => n_5201, IN1 => data(13));
and1_4257: AND1
    PORT MAP ( Y => n_5202, IN1 => gnd);
and1_4258: AND1
    PORT MAP ( Y => n_5203, IN1 => n_5204);
delay_4259: DELAY
    PORT MAP ( Y => n_5204, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4260: DELAY
    PORT MAP ( Y => ix484_a7_dup_543_aCLK, IN1 => n_5203);
and1_4261: AND1
    PORT MAP ( Y => ix484_a7_dup_543_aENA, IN1 => n_5207);
delay_4262: DELAY
    PORT MAP ( Y => n_5207, IN1 => ix484_nx38_aOUT);
dffe_4263: DFFE
    PORT MAP ( D => ix484_a2_dup_540_aD, CLK => ix484_a2_dup_540_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_540_aENA, Q => ix484_a2_dup_540_Q);
xor2_4264: XOR2
    PORT MAP ( Y => ix484_a2_dup_540_aD, IN1 => n_5214, IN2 => n_5217);
or1_4265: OR1
    PORT MAP ( Y => n_5214, IN1 => n_5215);
and1_4266: AND1
    PORT MAP ( Y => n_5215, IN1 => n_5216);
delay_4267: DELAY
    PORT MAP ( Y => n_5216, IN1 => data(14));
and1_4268: AND1
    PORT MAP ( Y => n_5217, IN1 => gnd);
and1_4269: AND1
    PORT MAP ( Y => n_5218, IN1 => n_5219);
delay_4270: DELAY
    PORT MAP ( Y => n_5219, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4271: DELAY
    PORT MAP ( Y => ix484_a2_dup_540_aCLK, IN1 => n_5218);
and1_4272: AND1
    PORT MAP ( Y => ix484_a2_dup_540_aENA, IN1 => n_5222);
delay_4273: DELAY
    PORT MAP ( Y => n_5222, IN1 => ix484_nx43_aOUT);
dffe_4274: DFFE
    PORT MAP ( D => ix484_a7_dup_535_aD, CLK => ix484_a7_dup_535_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a7_dup_535_aENA, Q => ix484_a7_dup_535_Q);
xor2_4275: XOR2
    PORT MAP ( Y => ix484_a7_dup_535_aD, IN1 => n_5229, IN2 => n_5232);
or1_4276: OR1
    PORT MAP ( Y => n_5229, IN1 => n_5230);
and1_4277: AND1
    PORT MAP ( Y => n_5230, IN1 => n_5231);
delay_4278: DELAY
    PORT MAP ( Y => n_5231, IN1 => data(14));
and1_4279: AND1
    PORT MAP ( Y => n_5232, IN1 => gnd);
and1_4280: AND1
    PORT MAP ( Y => n_5233, IN1 => n_5234);
delay_4281: DELAY
    PORT MAP ( Y => n_5234, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4282: DELAY
    PORT MAP ( Y => ix484_a7_dup_535_aCLK, IN1 => n_5233);
and1_4283: AND1
    PORT MAP ( Y => ix484_a7_dup_535_aENA, IN1 => n_5237);
delay_4284: DELAY
    PORT MAP ( Y => n_5237, IN1 => ix484_nx38_aOUT);
dff_4285: DFF
    PORT MAP ( D => instrregout12_aD, CLK => instrregout12_aCLK, CLRN => vcc,
          PRN => vcc, Q => instrregout12_Q);
xor2_4286: XOR2
    PORT MAP ( Y => instrregout12_aD, IN1 => n_5243, IN2 => n_5246);
or1_4287: OR1
    PORT MAP ( Y => n_5243, IN1 => n_5244);
and1_4288: AND1
    PORT MAP ( Y => n_5244, IN1 => n_5245);
delay_4289: DELAY
    PORT MAP ( Y => n_5245, IN1 => data(12));
and1_4290: AND1
    PORT MAP ( Y => n_5246, IN1 => gnd);
and1_4291: AND1
    PORT MAP ( Y => n_5247, IN1 => n_5248);
delay_4292: DELAY
    PORT MAP ( Y => n_5248, IN1 => a_as_or3_aix1644_a_a32_aOUT);
delay_4293: DELAY
    PORT MAP ( Y => instrregout12_aCLK, IN1 => n_5247);
dffe_4294: DFFE
    PORT MAP ( D => ix484_a2_dup_532_aD, CLK => ix484_a2_dup_532_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a2_dup_532_aENA, Q => ix484_a2_dup_532_Q);
xor2_4295: XOR2
    PORT MAP ( Y => ix484_a2_dup_532_aD, IN1 => n_5256, IN2 => n_5259);
or1_4296: OR1
    PORT MAP ( Y => n_5256, IN1 => n_5257);
and1_4297: AND1
    PORT MAP ( Y => n_5257, IN1 => n_5258);
delay_4298: DELAY
    PORT MAP ( Y => n_5258, IN1 => data(15));
and1_4299: AND1
    PORT MAP ( Y => n_5259, IN1 => gnd);
and1_4300: AND1
    PORT MAP ( Y => n_5260, IN1 => n_5261);
delay_4301: DELAY
    PORT MAP ( Y => n_5261, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4302: DELAY
    PORT MAP ( Y => ix484_a2_dup_532_aCLK, IN1 => n_5260);
and1_4303: AND1
    PORT MAP ( Y => ix484_a2_dup_532_aENA, IN1 => n_5264);
delay_4304: DELAY
    PORT MAP ( Y => n_5264, IN1 => ix484_nx43_aOUT);
dffe_4305: DFFE
    PORT MAP ( D => ix484_a7_aD, CLK => ix484_a7_aCLK, CLRN => vcc, PRN => vcc,
          ENA => ix484_a7_aENA, Q => ix484_a7_Q);
xor2_4306: XOR2
    PORT MAP ( Y => ix484_a7_aD, IN1 => n_5271, IN2 => n_5274);
or1_4307: OR1
    PORT MAP ( Y => n_5271, IN1 => n_5272);
and1_4308: AND1
    PORT MAP ( Y => n_5272, IN1 => n_5273);
delay_4309: DELAY
    PORT MAP ( Y => n_5273, IN1 => data(15));
and1_4310: AND1
    PORT MAP ( Y => n_5274, IN1 => gnd);
and1_4311: AND1
    PORT MAP ( Y => n_5275, IN1 => n_5276);
delay_4312: DELAY
    PORT MAP ( Y => n_5276, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4313: DELAY
    PORT MAP ( Y => ix484_a7_aCLK, IN1 => n_5275);
and1_4314: AND1
    PORT MAP ( Y => ix484_a7_aENA, IN1 => n_5279);
delay_4315: DELAY
    PORT MAP ( Y => n_5279, IN1 => ix484_nx38_aOUT);
inv_4316: INV 
    PORT MAP ( Y => con1_current_state0_Q, IN1 => con1_current_state0_aQ_aNOT);
dff_4317: DFF
    PORT MAP ( D => n_5286, CLK => con1_current_state0_aCLK, CLRN => con1_current_state0_aPRN,
          PRN => vcc, Q => con1_current_state0_aQ_aNOT);
inv_4318: INV 
    PORT MAP ( Y => con1_current_state0_aPRN, IN1 => reset);
inv_4319: INV 
    PORT MAP ( Y => con1_current_state0_aD, IN1 => n_5286);
xor2_4320: XOR2
    PORT MAP ( Y => n_5286, IN1 => n_5288, IN2 => n_5290);
or1_4321: OR1
    PORT MAP ( Y => n_5288, IN1 => n_5289);
and1_4322: AND1
    PORT MAP ( Y => n_5289, IN1 => vcc);
and1_4323: AND1
    PORT MAP ( Y => n_5290, IN1 => gnd);
delay_4324: DELAY
    PORT MAP ( Y => con1_current_state0_aCLK, IN1 => clock);
delay_4325: DELAY
    PORT MAP ( Y => I1_dup_708_aOUT, IN1 => I1_dup_708_aIN);
xor2_4326: XOR2
    PORT MAP ( Y => I1_dup_708_aIN, IN1 => n_5294, IN2 => n_5302);
or3_4327: OR3
    PORT MAP ( Y => n_5294, IN1 => n_5295, IN2 => n_5297, IN3 => n_5300);
and1_4328: AND1
    PORT MAP ( Y => n_5295, IN1 => n_5296);
delay_4329: DELAY
    PORT MAP ( Y => n_5296, IN1 => rw_dup0_Q);
and2_4330: AND2
    PORT MAP ( Y => n_5297, IN1 => n_5298, IN2 => n_5299);
inv_4331: INV 
    PORT MAP ( Y => n_5298, IN1 => comp1_nx38_aOUT);
delay_4332: DELAY
    PORT MAP ( Y => n_5299, IN1 => con1_current_state32_Q);
and1_4333: AND1
    PORT MAP ( Y => n_5300, IN1 => n_5301);
delay_4334: DELAY
    PORT MAP ( Y => n_5301, IN1 => a_as_or3_aix1635_a_a32_aOUT);
and1_4335: AND1
    PORT MAP ( Y => n_5302, IN1 => gnd);
delay_4336: DELAY
    PORT MAP ( Y => O_dup_926_aOUT, IN1 => O_dup_926_aIN);
xor2_4337: XOR2
    PORT MAP ( Y => O_dup_926_aIN, IN1 => n_5305, IN2 => n_5310);
or2_4338: OR2
    PORT MAP ( Y => n_5305, IN1 => n_5306, IN2 => n_5308);
and1_4339: AND1
    PORT MAP ( Y => n_5306, IN1 => n_5307);
delay_4340: DELAY
    PORT MAP ( Y => n_5307, IN1 => instrregout12_Q);
and1_4341: AND1
    PORT MAP ( Y => n_5308, IN1 => n_5309);
delay_4342: DELAY
    PORT MAP ( Y => n_5309, IN1 => I3_dup_732_aOUT);
and1_4343: AND1
    PORT MAP ( Y => n_5310, IN1 => gnd);
delay_4344: DELAY
    PORT MAP ( Y => I3_dup_710_aOUT, IN1 => I3_dup_710_aIN);
xor2_4345: XOR2
    PORT MAP ( Y => I3_dup_710_aIN, IN1 => n_5313, IN2 => n_5320);
or1_4346: OR1
    PORT MAP ( Y => n_5313, IN1 => n_5314);
and3_4347: AND3
    PORT MAP ( Y => n_5314, IN1 => n_5315, IN2 => n_5317, IN3 => n_5319);
inv_4348: INV 
    PORT MAP ( Y => n_5315, IN1 => I3_dup_900_aOUT);
delay_4349: DELAY
    PORT MAP ( Y => n_5317, IN1 => I2_dup_1023_aOUT);
delay_4350: DELAY
    PORT MAP ( Y => n_5319, IN1 => O_dup_926_aOUT);
and1_4351: AND1
    PORT MAP ( Y => n_5320, IN1 => gnd);
delay_4352: DELAY
    PORT MAP ( Y => I3_dup_1028_aOUT, IN1 => I3_dup_1028_aIN);
xor2_4353: XOR2
    PORT MAP ( Y => I3_dup_1028_aIN, IN1 => n_5323, IN2 => n_5331);
or1_4354: OR1
    PORT MAP ( Y => n_5323, IN1 => n_5324);
and4_4355: AND4
    PORT MAP ( Y => n_5324, IN1 => n_5325, IN2 => n_5327, IN3 => n_5328, IN4 => n_5329);
inv_4356: INV 
    PORT MAP ( Y => n_5325, IN1 => con1_current_state25_Q);
inv_4357: INV 
    PORT MAP ( Y => n_5327, IN1 => con1_current_state38_Q);
inv_4358: INV 
    PORT MAP ( Y => n_5328, IN1 => con1_current_state43_Q);
inv_4359: INV 
    PORT MAP ( Y => n_5329, IN1 => con1_current_state29_Q);
and1_4360: AND1
    PORT MAP ( Y => n_5331, IN1 => gnd);
delay_4361: DELAY
    PORT MAP ( Y => alusel3_aOUT, IN1 => alusel3_aIN);
xor2_4362: XOR2
    PORT MAP ( Y => alusel3_aIN, IN1 => n_5334, IN2 => n_5339);
or2_4363: OR2
    PORT MAP ( Y => n_5334, IN1 => n_5335, IN2 => n_5337);
and1_4364: AND1
    PORT MAP ( Y => n_5335, IN1 => n_5336);
delay_4365: DELAY
    PORT MAP ( Y => n_5336, IN1 => con1_current_state1_Q);
and1_4366: AND1
    PORT MAP ( Y => n_5337, IN1 => n_5338);
inv_4367: INV 
    PORT MAP ( Y => n_5338, IN1 => con1_current_state0_aQ_aNOT);
and1_4368: AND1
    PORT MAP ( Y => n_5339, IN1 => gnd);
delay_4369: DELAY
    PORT MAP ( Y => I3_dup_682_aOUT, IN1 => I3_dup_682_aIN);
xor2_4370: XOR2
    PORT MAP ( Y => I3_dup_682_aIN, IN1 => n_5342, IN2 => n_5349);
or2_4371: OR2
    PORT MAP ( Y => n_5342, IN1 => n_5343, IN2 => n_5346);
and1_4372: AND1
    PORT MAP ( Y => n_5343, IN1 => n_5344);
delay_4373: DELAY
    PORT MAP ( Y => n_5344, IN1 => con1_current_state14_Q);
and1_4374: AND1
    PORT MAP ( Y => n_5346, IN1 => n_5347);
delay_4375: DELAY
    PORT MAP ( Y => n_5347, IN1 => con1_current_state11_Q);
and1_4376: AND1
    PORT MAP ( Y => n_5349, IN1 => gnd);
inv_4377: INV 
    PORT MAP ( Y => a_as_or4_aix1643_a_a34_aOUT, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_4378: DELAY
    PORT MAP ( Y => a_as_or4_aix1643_a_a34_aOUT_aNOT, IN1 => n_5352);
inv_4379: INV 
    PORT MAP ( Y => a_as_or4_aix1643_a_a34_aIN1, IN1 => n_5352);
xor2_4380: XOR2
    PORT MAP ( Y => n_5352, IN1 => n_5354, IN2 => n_5361);
or1_4381: OR1
    PORT MAP ( Y => n_5354, IN1 => n_5355);
and4_4382: AND4
    PORT MAP ( Y => n_5355, IN1 => n_5356, IN2 => n_5357, IN3 => n_5359, IN4 => n_5360);
inv_4383: INV 
    PORT MAP ( Y => n_5356, IN1 => con1_current_state23_Q);
inv_4384: INV 
    PORT MAP ( Y => n_5357, IN1 => con1_current_state27_Q);
inv_4385: INV 
    PORT MAP ( Y => n_5359, IN1 => I3_dup_682_aOUT);
inv_4386: INV 
    PORT MAP ( Y => n_5360, IN1 => I2_dup_681_aOUT);
and1_4387: AND1
    PORT MAP ( Y => n_5361, IN1 => gnd);
delay_4388: DELAY
    PORT MAP ( Y => O_dup_1005_aOUT, IN1 => O_dup_1005_aIN);
xor2_4389: XOR2
    PORT MAP ( Y => O_dup_1005_aIN, IN1 => n_5364, IN2 => n_5372);
or1_4390: OR1
    PORT MAP ( Y => n_5364, IN1 => n_5365);
and4_4391: AND4
    PORT MAP ( Y => n_5365, IN1 => n_5366, IN2 => n_5368, IN3 => n_5370, IN4 => n_5371);
inv_4392: INV 
    PORT MAP ( Y => n_5366, IN1 => con1_current_state42_Q);
inv_4393: INV 
    PORT MAP ( Y => n_5368, IN1 => con1_current_state37_Q);
inv_4394: INV 
    PORT MAP ( Y => n_5370, IN1 => con1_current_state40_Q);
inv_4395: INV 
    PORT MAP ( Y => n_5371, IN1 => con1_current_state45_Q);
and1_4396: AND1
    PORT MAP ( Y => n_5372, IN1 => gnd);
delay_4397: DELAY
    PORT MAP ( Y => O_dup_1572_aOUT, IN1 => O_dup_1572_aIN);
and2_4398: AND2
    PORT MAP ( Y => O_dup_1572_aIN, IN1 => n_5375, IN2 => n_5384);
or1_4399: OR1
    PORT MAP ( Y => n_5375, IN1 => n_5376);
and4_4400: AND4
    PORT MAP ( Y => n_5376, IN1 => n_5377, IN2 => n_5379, IN3 => n_5381, IN4 => n_5383);
inv_4401: INV 
    PORT MAP ( Y => n_5377, IN1 => con1_current_state26_Q);
inv_4402: INV 
    PORT MAP ( Y => n_5379, IN1 => con1_current_state24_Q);
inv_4403: INV 
    PORT MAP ( Y => n_5381, IN1 => con1_current_state28_Q);
inv_4404: INV 
    PORT MAP ( Y => n_5383, IN1 => con1_current_state35_Q);
delay_4405: DELAY
    PORT MAP ( Y => n_5384, IN1 => O_dup_1005_aIN);
delay_4406: DELAY
    PORT MAP ( Y => I1_dup_989_aOUT, IN1 => I1_dup_989_aIN);
and2_4407: AND2
    PORT MAP ( Y => I1_dup_989_aIN, IN1 => n_5387, IN2 => n_5393);
or1_4408: OR1
    PORT MAP ( Y => n_5387, IN1 => n_5388);
and4_4409: AND4
    PORT MAP ( Y => n_5388, IN1 => n_5389, IN2 => n_5390, IN3 => n_5391, IN4 => n_5392);
inv_4410: INV 
    PORT MAP ( Y => n_5389, IN1 => con1_current_state32_Q);
inv_4411: INV 
    PORT MAP ( Y => n_5390, IN1 => con1_current_state31_Q);
inv_4412: INV 
    PORT MAP ( Y => n_5391, IN1 => opregwr_Q);
delay_4413: DELAY
    PORT MAP ( Y => n_5392, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_4414: DELAY
    PORT MAP ( Y => n_5393, IN1 => O_dup_1572_aIN);
delay_4415: DELAY
    PORT MAP ( Y => O_dup_990_aOUT, IN1 => O_dup_990_aIN);
and2_4416: AND2
    PORT MAP ( Y => O_dup_990_aIN, IN1 => n_5396, IN2 => n_5403);
or1_4417: OR1
    PORT MAP ( Y => n_5396, IN1 => n_5397);
and4_4418: AND4
    PORT MAP ( Y => n_5397, IN1 => n_5398, IN2 => n_5399, IN3 => n_5401, IN4 => n_5402);
inv_4419: INV 
    PORT MAP ( Y => n_5398, IN1 => con1_current_state48_Q);
inv_4420: INV 
    PORT MAP ( Y => n_5399, IN1 => con1_current_state47_Q);
inv_4421: INV 
    PORT MAP ( Y => n_5401, IN1 => alusel3_aOUT);
inv_4422: INV 
    PORT MAP ( Y => n_5402, IN1 => con1_current_state50_Q);
delay_4423: DELAY
    PORT MAP ( Y => n_5403, IN1 => I1_dup_989_aIN);
delay_4424: DELAY
    PORT MAP ( Y => O_dup_1589_aOUT, IN1 => O_dup_1589_aIN);
and2_4425: AND2
    PORT MAP ( Y => O_dup_1589_aIN, IN1 => n_5406, IN2 => n_5414);
or1_4426: OR1
    PORT MAP ( Y => n_5406, IN1 => n_5407);
and4_4427: AND4
    PORT MAP ( Y => n_5407, IN1 => n_5408, IN2 => n_5410, IN3 => n_5412, IN4 => n_5413);
inv_4428: INV 
    PORT MAP ( Y => n_5408, IN1 => con1_current_state15_Q);
inv_4429: INV 
    PORT MAP ( Y => n_5410, IN1 => con1_current_state22_Q);
inv_4430: INV 
    PORT MAP ( Y => n_5412, IN1 => con1_current_state18_Q);
inv_4431: INV 
    PORT MAP ( Y => n_5413, IN1 => con1_current_state17_Q);
delay_4432: DELAY
    PORT MAP ( Y => n_5414, IN1 => O_dup_990_aIN);
delay_4433: DELAY
    PORT MAP ( Y => I1_dup_986_aOUT, IN1 => I1_dup_986_aIN);
and2_4434: AND2
    PORT MAP ( Y => I1_dup_986_aIN, IN1 => n_5417, IN2 => n_5427);
or1_4435: OR1
    PORT MAP ( Y => n_5417, IN1 => n_5418);
and4_4436: AND4
    PORT MAP ( Y => n_5418, IN1 => n_5419, IN2 => n_5421, IN3 => n_5423, IN4 => n_5425);
inv_4437: INV 
    PORT MAP ( Y => n_5419, IN1 => con1_current_state4_Q);
inv_4438: INV 
    PORT MAP ( Y => n_5421, IN1 => con1_current_state2_Q);
inv_4439: INV 
    PORT MAP ( Y => n_5423, IN1 => con1_current_state5_Q);
inv_4440: INV 
    PORT MAP ( Y => n_5425, IN1 => con1_current_state12_Q);
delay_4441: DELAY
    PORT MAP ( Y => n_5427, IN1 => O_dup_1589_aIN);
delay_4442: DELAY
    PORT MAP ( Y => I2_dup_709_aOUT, IN1 => I2_dup_709_aIN1);
and2_4443: AND2
    PORT MAP ( Y => I2_dup_709_aIN1, IN1 => n_5430, IN2 => n_5436);
or1_4444: OR1
    PORT MAP ( Y => n_5430, IN1 => n_5431);
and4_4445: AND4
    PORT MAP ( Y => n_5431, IN1 => n_5432, IN2 => n_5433, IN3 => n_5434, IN4 => n_5435);
inv_4446: INV 
    PORT MAP ( Y => n_5432, IN1 => con1_current_state21_Q);
inv_4447: INV 
    PORT MAP ( Y => n_5433, IN1 => con1_current_state49_Q);
inv_4448: INV 
    PORT MAP ( Y => n_5434, IN1 => I3_dup_696_aOUT);
delay_4449: DELAY
    PORT MAP ( Y => n_5435, IN1 => I3_dup_1028_aOUT);
delay_4450: DELAY
    PORT MAP ( Y => n_5436, IN1 => I1_dup_986_aIN);
dff_4451: DFF
    PORT MAP ( D => con1_current_state20_aD, CLK => con1_current_state20_aCLK,
          CLRN => con1_current_state20_aCLRN, PRN => vcc, Q => con1_current_state20_Q);
inv_4452: INV 
    PORT MAP ( Y => con1_current_state20_aCLRN, IN1 => reset);
xor2_4453: XOR2
    PORT MAP ( Y => con1_current_state20_aD, IN1 => n_5444, IN2 => n_5453);
or3_4454: OR3
    PORT MAP ( Y => n_5444, IN1 => n_5445, IN2 => n_5447, IN3 => n_5450);
and1_4455: AND1
    PORT MAP ( Y => n_5445, IN1 => n_5446);
delay_4456: DELAY
    PORT MAP ( Y => n_5446, IN1 => I1_dup_708_aOUT);
and2_4457: AND2
    PORT MAP ( Y => n_5447, IN1 => n_5448, IN2 => n_5449);
delay_4458: DELAY
    PORT MAP ( Y => n_5448, IN1 => I3_dup_710_aOUT);
delay_4459: DELAY
    PORT MAP ( Y => n_5449, IN1 => con1_current_state6_Q);
and2_4460: AND2
    PORT MAP ( Y => n_5450, IN1 => n_5451, IN2 => n_5452);
inv_4461: INV 
    PORT MAP ( Y => n_5451, IN1 => con1_current_state6_Q);
delay_4462: DELAY
    PORT MAP ( Y => n_5452, IN1 => I2_dup_709_aOUT);
and1_4463: AND1
    PORT MAP ( Y => n_5453, IN1 => gnd);
delay_4464: DELAY
    PORT MAP ( Y => con1_current_state20_aCLK, IN1 => clock);
dff_4465: DFF
    PORT MAP ( D => con1_current_state46_aD, CLK => con1_current_state46_aCLK,
          CLRN => con1_current_state46_aCLRN, PRN => vcc, Q => con1_current_state46_Q);
inv_4466: INV 
    PORT MAP ( Y => con1_current_state46_aCLRN, IN1 => reset);
xor2_4467: XOR2
    PORT MAP ( Y => con1_current_state46_aD, IN1 => n_5462, IN2 => n_5465);
or1_4468: OR1
    PORT MAP ( Y => n_5462, IN1 => n_5463);
and1_4469: AND1
    PORT MAP ( Y => n_5463, IN1 => n_5464);
delay_4470: DELAY
    PORT MAP ( Y => n_5464, IN1 => con1_current_state45_Q);
and1_4471: AND1
    PORT MAP ( Y => n_5465, IN1 => gnd);
delay_4472: DELAY
    PORT MAP ( Y => con1_current_state46_aCLK, IN1 => clock);
dff_4473: DFF
    PORT MAP ( D => con1_current_state41_aD, CLK => con1_current_state41_aCLK,
          CLRN => con1_current_state41_aCLRN, PRN => vcc, Q => con1_current_state41_Q);
inv_4474: INV 
    PORT MAP ( Y => con1_current_state41_aCLRN, IN1 => reset);
xor2_4475: XOR2
    PORT MAP ( Y => con1_current_state41_aD, IN1 => n_5474, IN2 => n_5477);
or1_4476: OR1
    PORT MAP ( Y => n_5474, IN1 => n_5475);
and1_4477: AND1
    PORT MAP ( Y => n_5475, IN1 => n_5476);
delay_4478: DELAY
    PORT MAP ( Y => n_5476, IN1 => con1_current_state40_Q);
and1_4479: AND1
    PORT MAP ( Y => n_5477, IN1 => gnd);
delay_4480: DELAY
    PORT MAP ( Y => con1_current_state41_aCLK, IN1 => clock);
dff_4481: DFF
    PORT MAP ( D => con1_current_state36_aD, CLK => con1_current_state36_aCLK,
          CLRN => con1_current_state36_aCLRN, PRN => vcc, Q => con1_current_state36_Q);
inv_4482: INV 
    PORT MAP ( Y => con1_current_state36_aCLRN, IN1 => reset);
xor2_4483: XOR2
    PORT MAP ( Y => con1_current_state36_aD, IN1 => n_5486, IN2 => n_5489);
or1_4484: OR1
    PORT MAP ( Y => n_5486, IN1 => n_5487);
and1_4485: AND1
    PORT MAP ( Y => n_5487, IN1 => n_5488);
delay_4486: DELAY
    PORT MAP ( Y => n_5488, IN1 => con1_current_state35_Q);
and1_4487: AND1
    PORT MAP ( Y => n_5489, IN1 => gnd);
delay_4488: DELAY
    PORT MAP ( Y => con1_current_state36_aCLK, IN1 => clock);
dff_4489: DFF
    PORT MAP ( D => con1_current_state37_aD, CLK => con1_current_state37_aCLK,
          CLRN => con1_current_state37_aCLRN, PRN => vcc, Q => con1_current_state37_Q);
inv_4490: INV 
    PORT MAP ( Y => con1_current_state37_aCLRN, IN1 => reset);
xor2_4491: XOR2
    PORT MAP ( Y => con1_current_state37_aD, IN1 => n_5497, IN2 => n_5500);
or1_4492: OR1
    PORT MAP ( Y => n_5497, IN1 => n_5498);
and1_4493: AND1
    PORT MAP ( Y => n_5498, IN1 => n_5499);
delay_4494: DELAY
    PORT MAP ( Y => n_5499, IN1 => con1_current_state36_Q);
and1_4495: AND1
    PORT MAP ( Y => n_5500, IN1 => gnd);
delay_4496: DELAY
    PORT MAP ( Y => con1_current_state37_aCLK, IN1 => clock);
dff_4497: DFF
    PORT MAP ( D => con1_current_state42_aD, CLK => con1_current_state42_aCLK,
          CLRN => con1_current_state42_aCLRN, PRN => vcc, Q => con1_current_state42_Q);
inv_4498: INV 
    PORT MAP ( Y => con1_current_state42_aCLRN, IN1 => reset);
xor2_4499: XOR2
    PORT MAP ( Y => con1_current_state42_aD, IN1 => n_5508, IN2 => n_5511);
or1_4500: OR1
    PORT MAP ( Y => n_5508, IN1 => n_5509);
and1_4501: AND1
    PORT MAP ( Y => n_5509, IN1 => n_5510);
delay_4502: DELAY
    PORT MAP ( Y => n_5510, IN1 => con1_current_state41_Q);
and1_4503: AND1
    PORT MAP ( Y => n_5511, IN1 => gnd);
delay_4504: DELAY
    PORT MAP ( Y => con1_current_state42_aCLK, IN1 => clock);
dff_4505: DFF
    PORT MAP ( D => con1_current_state28_aD, CLK => con1_current_state28_aCLK,
          CLRN => con1_current_state28_aCLRN, PRN => vcc, Q => con1_current_state28_Q);
inv_4506: INV 
    PORT MAP ( Y => con1_current_state28_aCLRN, IN1 => reset);
xor2_4507: XOR2
    PORT MAP ( Y => con1_current_state28_aD, IN1 => n_5519, IN2 => n_5522);
or1_4508: OR1
    PORT MAP ( Y => n_5519, IN1 => n_5520);
and1_4509: AND1
    PORT MAP ( Y => n_5520, IN1 => n_5521);
delay_4510: DELAY
    PORT MAP ( Y => n_5521, IN1 => con1_current_state27_Q);
and1_4511: AND1
    PORT MAP ( Y => n_5522, IN1 => gnd);
delay_4512: DELAY
    PORT MAP ( Y => con1_current_state28_aCLK, IN1 => clock);
delay_4513: DELAY
    PORT MAP ( Y => con1_modgen_61_nx10_aOUT, IN1 => con1_modgen_61_nx10_aIN);
xor2_4514: XOR2
    PORT MAP ( Y => con1_modgen_61_nx10_aIN, IN1 => n_5526, IN2 => n_5531);
or2_4515: OR2
    PORT MAP ( Y => n_5526, IN1 => n_5527, IN2 => n_5529);
and1_4516: AND1
    PORT MAP ( Y => n_5527, IN1 => n_5528);
delay_4517: DELAY
    PORT MAP ( Y => n_5528, IN1 => instrregout12_Q);
and1_4518: AND1
    PORT MAP ( Y => n_5529, IN1 => n_5530);
inv_4519: INV 
    PORT MAP ( Y => n_5530, IN1 => instrregout11_Q);
and1_4520: AND1
    PORT MAP ( Y => n_5531, IN1 => gnd);
dff_4521: DFF
    PORT MAP ( D => con1_current_state11_aD, CLK => con1_current_state11_aCLK,
          CLRN => con1_current_state11_aCLRN, PRN => vcc, Q => con1_current_state11_Q);
inv_4522: INV 
    PORT MAP ( Y => con1_current_state11_aCLRN, IN1 => reset);
xor2_4523: XOR2
    PORT MAP ( Y => con1_current_state11_aD, IN1 => n_5538, IN2 => n_5544);
or1_4524: OR1
    PORT MAP ( Y => n_5538, IN1 => n_5539);
and4_4525: AND4
    PORT MAP ( Y => n_5539, IN1 => n_5540, IN2 => n_5541, IN3 => n_5542, IN4 => n_5543);
inv_4526: INV 
    PORT MAP ( Y => n_5540, IN1 => con1_modgen_61_nx10_aOUT);
inv_4527: INV 
    PORT MAP ( Y => n_5541, IN1 => instrregout15_Q);
inv_4528: INV 
    PORT MAP ( Y => n_5542, IN1 => con1_modgen_61_nx12_aOUT);
delay_4529: DELAY
    PORT MAP ( Y => n_5543, IN1 => con1_current_state6_Q);
and1_4530: AND1
    PORT MAP ( Y => n_5544, IN1 => gnd);
delay_4531: DELAY
    PORT MAP ( Y => con1_current_state11_aCLK, IN1 => clock);
dff_4532: DFF
    PORT MAP ( D => con1_current_state47_aD, CLK => con1_current_state47_aCLK,
          CLRN => con1_current_state47_aCLRN, PRN => vcc, Q => con1_current_state47_Q);
inv_4533: INV 
    PORT MAP ( Y => con1_current_state47_aCLRN, IN1 => reset);
xor2_4534: XOR2
    PORT MAP ( Y => con1_current_state47_aD, IN1 => n_5552, IN2 => n_5555);
or1_4535: OR1
    PORT MAP ( Y => n_5552, IN1 => n_5553);
and1_4536: AND1
    PORT MAP ( Y => n_5553, IN1 => n_5554);
delay_4537: DELAY
    PORT MAP ( Y => n_5554, IN1 => con1_current_state46_Q);
and1_4538: AND1
    PORT MAP ( Y => n_5555, IN1 => gnd);
delay_4539: DELAY
    PORT MAP ( Y => con1_current_state47_aCLK, IN1 => clock);
dff_4540: DFF
    PORT MAP ( D => con1_current_state1_aD, CLK => con1_current_state1_aCLK,
          CLRN => con1_current_state1_aCLRN, PRN => vcc, Q => con1_current_state1_Q);
inv_4541: INV 
    PORT MAP ( Y => con1_current_state1_aCLRN, IN1 => reset);
xor2_4542: XOR2
    PORT MAP ( Y => con1_current_state1_aD, IN1 => n_5563, IN2 => n_5566);
or1_4543: OR1
    PORT MAP ( Y => n_5563, IN1 => n_5564);
and1_4544: AND1
    PORT MAP ( Y => n_5564, IN1 => n_5565);
inv_4545: INV 
    PORT MAP ( Y => n_5565, IN1 => con1_current_state0_aQ_aNOT);
and1_4546: AND1
    PORT MAP ( Y => n_5566, IN1 => gnd);
delay_4547: DELAY
    PORT MAP ( Y => con1_current_state1_aCLK, IN1 => clock);
dff_4548: DFF
    PORT MAP ( D => con1_current_state6_aD, CLK => con1_current_state6_aCLK,
          CLRN => con1_current_state6_aCLRN, PRN => vcc, Q => con1_current_state6_Q);
inv_4549: INV 
    PORT MAP ( Y => con1_current_state6_aCLRN, IN1 => reset);
xor2_4550: XOR2
    PORT MAP ( Y => con1_current_state6_aD, IN1 => n_5574, IN2 => n_5584);
or3_4551: OR3
    PORT MAP ( Y => n_5574, IN1 => n_5575, IN2 => n_5578, IN3 => n_5581);
and2_4552: AND2
    PORT MAP ( Y => n_5575, IN1 => n_5576, IN2 => n_5577);
delay_4553: DELAY
    PORT MAP ( Y => n_5576, IN1 => ready);
delay_4554: DELAY
    PORT MAP ( Y => n_5577, IN1 => con1_current_state5_Q);
and2_4555: AND2
    PORT MAP ( Y => n_5578, IN1 => n_5579, IN2 => n_5580);
delay_4556: DELAY
    PORT MAP ( Y => n_5579, IN1 => ready);
delay_4557: DELAY
    PORT MAP ( Y => n_5580, IN1 => con1_current_state25_Q);
and2_4558: AND2
    PORT MAP ( Y => n_5581, IN1 => n_5582, IN2 => n_5583);
delay_4559: DELAY
    PORT MAP ( Y => n_5582, IN1 => ready);
delay_4560: DELAY
    PORT MAP ( Y => n_5583, IN1 => con1_current_state29_Q);
and1_4561: AND1
    PORT MAP ( Y => n_5584, IN1 => gnd);
delay_4562: DELAY
    PORT MAP ( Y => con1_current_state6_aCLK, IN1 => clock);
dff_4563: DFF
    PORT MAP ( D => con1_current_state21_aD, CLK => con1_current_state21_aCLK,
          CLRN => con1_current_state21_aCLRN, PRN => vcc, Q => con1_current_state21_Q);
inv_4564: INV 
    PORT MAP ( Y => con1_current_state21_aCLRN, IN1 => reset);
xor2_4565: XOR2
    PORT MAP ( Y => con1_current_state21_aD, IN1 => n_5592, IN2 => n_5595);
or1_4566: OR1
    PORT MAP ( Y => n_5592, IN1 => n_5593);
and1_4567: AND1
    PORT MAP ( Y => n_5593, IN1 => n_5594);
delay_4568: DELAY
    PORT MAP ( Y => n_5594, IN1 => con1_current_state20_Q);
and1_4569: AND1
    PORT MAP ( Y => n_5595, IN1 => gnd);
delay_4570: DELAY
    PORT MAP ( Y => con1_current_state21_aCLK, IN1 => clock);
dffe_4571: DFFE
    PORT MAP ( D => ix484_a4_dup_650_aD, CLK => ix484_a4_dup_650_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_650_aENA, Q => ix484_a4_dup_650_Q);
xor2_4572: XOR2
    PORT MAP ( Y => ix484_a4_dup_650_aD, IN1 => n_5603, IN2 => n_5606);
or1_4573: OR1
    PORT MAP ( Y => n_5603, IN1 => n_5604);
and1_4574: AND1
    PORT MAP ( Y => n_5604, IN1 => n_5605);
delay_4575: DELAY
    PORT MAP ( Y => n_5605, IN1 => data(0));
and1_4576: AND1
    PORT MAP ( Y => n_5606, IN1 => gnd);
and1_4577: AND1
    PORT MAP ( Y => n_5607, IN1 => n_5608);
delay_4578: DELAY
    PORT MAP ( Y => n_5608, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4579: DELAY
    PORT MAP ( Y => ix484_a4_dup_650_aCLK, IN1 => n_5607);
and1_4580: AND1
    PORT MAP ( Y => ix484_a4_dup_650_aENA, IN1 => n_5611);
delay_4581: DELAY
    PORT MAP ( Y => n_5611, IN1 => ix484_nx41_aOUT);
dffe_4582: DFFE
    PORT MAP ( D => ix484_a0_dup_654_aD, CLK => ix484_a0_dup_654_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_654_aENA, Q => ix484_a0_dup_654_Q);
xor2_4583: XOR2
    PORT MAP ( Y => ix484_a0_dup_654_aD, IN1 => n_5619, IN2 => n_5622);
or1_4584: OR1
    PORT MAP ( Y => n_5619, IN1 => n_5620);
and1_4585: AND1
    PORT MAP ( Y => n_5620, IN1 => n_5621);
delay_4586: DELAY
    PORT MAP ( Y => n_5621, IN1 => data(0));
and1_4587: AND1
    PORT MAP ( Y => n_5622, IN1 => gnd);
and1_4588: AND1
    PORT MAP ( Y => n_5623, IN1 => n_5624);
delay_4589: DELAY
    PORT MAP ( Y => n_5624, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4590: DELAY
    PORT MAP ( Y => ix484_a0_dup_654_aCLK, IN1 => n_5623);
and1_4591: AND1
    PORT MAP ( Y => ix484_a0_dup_654_aENA, IN1 => n_5627);
delay_4592: DELAY
    PORT MAP ( Y => n_5627, IN1 => ix484_nx45_aOUT);
dffe_4593: DFFE
    PORT MAP ( D => ix484_a4_dup_642_aD, CLK => ix484_a4_dup_642_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_642_aENA, Q => ix484_a4_dup_642_Q);
xor2_4594: XOR2
    PORT MAP ( Y => ix484_a4_dup_642_aD, IN1 => n_5635, IN2 => n_5638);
or1_4595: OR1
    PORT MAP ( Y => n_5635, IN1 => n_5636);
and1_4596: AND1
    PORT MAP ( Y => n_5636, IN1 => n_5637);
delay_4597: DELAY
    PORT MAP ( Y => n_5637, IN1 => data(1));
and1_4598: AND1
    PORT MAP ( Y => n_5638, IN1 => gnd);
and1_4599: AND1
    PORT MAP ( Y => n_5639, IN1 => n_5640);
delay_4600: DELAY
    PORT MAP ( Y => n_5640, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4601: DELAY
    PORT MAP ( Y => ix484_a4_dup_642_aCLK, IN1 => n_5639);
and1_4602: AND1
    PORT MAP ( Y => ix484_a4_dup_642_aENA, IN1 => n_5643);
delay_4603: DELAY
    PORT MAP ( Y => n_5643, IN1 => ix484_nx41_aOUT);
dffe_4604: DFFE
    PORT MAP ( D => ix484_a0_dup_646_aD, CLK => ix484_a0_dup_646_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_646_aENA, Q => ix484_a0_dup_646_Q);
xor2_4605: XOR2
    PORT MAP ( Y => ix484_a0_dup_646_aD, IN1 => n_5650, IN2 => n_5653);
or1_4606: OR1
    PORT MAP ( Y => n_5650, IN1 => n_5651);
and1_4607: AND1
    PORT MAP ( Y => n_5651, IN1 => n_5652);
delay_4608: DELAY
    PORT MAP ( Y => n_5652, IN1 => data(1));
and1_4609: AND1
    PORT MAP ( Y => n_5653, IN1 => gnd);
and1_4610: AND1
    PORT MAP ( Y => n_5654, IN1 => n_5655);
delay_4611: DELAY
    PORT MAP ( Y => n_5655, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4612: DELAY
    PORT MAP ( Y => ix484_a0_dup_646_aCLK, IN1 => n_5654);
and1_4613: AND1
    PORT MAP ( Y => ix484_a0_dup_646_aENA, IN1 => n_5658);
delay_4614: DELAY
    PORT MAP ( Y => n_5658, IN1 => ix484_nx45_aOUT);
dffe_4615: DFFE
    PORT MAP ( D => ix484_a4_dup_634_aD, CLK => ix484_a4_dup_634_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_634_aENA, Q => ix484_a4_dup_634_Q);
xor2_4616: XOR2
    PORT MAP ( Y => ix484_a4_dup_634_aD, IN1 => n_5665, IN2 => n_5668);
or1_4617: OR1
    PORT MAP ( Y => n_5665, IN1 => n_5666);
and1_4618: AND1
    PORT MAP ( Y => n_5666, IN1 => n_5667);
delay_4619: DELAY
    PORT MAP ( Y => n_5667, IN1 => data(2));
and1_4620: AND1
    PORT MAP ( Y => n_5668, IN1 => gnd);
and1_4621: AND1
    PORT MAP ( Y => n_5669, IN1 => n_5670);
delay_4622: DELAY
    PORT MAP ( Y => n_5670, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4623: DELAY
    PORT MAP ( Y => ix484_a4_dup_634_aCLK, IN1 => n_5669);
and1_4624: AND1
    PORT MAP ( Y => ix484_a4_dup_634_aENA, IN1 => n_5673);
delay_4625: DELAY
    PORT MAP ( Y => n_5673, IN1 => ix484_nx41_aOUT);
dffe_4626: DFFE
    PORT MAP ( D => ix484_a0_dup_638_aD, CLK => ix484_a0_dup_638_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_638_aENA, Q => ix484_a0_dup_638_Q);
xor2_4627: XOR2
    PORT MAP ( Y => ix484_a0_dup_638_aD, IN1 => n_5680, IN2 => n_5683);
or1_4628: OR1
    PORT MAP ( Y => n_5680, IN1 => n_5681);
and1_4629: AND1
    PORT MAP ( Y => n_5681, IN1 => n_5682);
delay_4630: DELAY
    PORT MAP ( Y => n_5682, IN1 => data(2));
and1_4631: AND1
    PORT MAP ( Y => n_5683, IN1 => gnd);
and1_4632: AND1
    PORT MAP ( Y => n_5684, IN1 => n_5685);
delay_4633: DELAY
    PORT MAP ( Y => n_5685, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4634: DELAY
    PORT MAP ( Y => ix484_a0_dup_638_aCLK, IN1 => n_5684);
and1_4635: AND1
    PORT MAP ( Y => ix484_a0_dup_638_aENA, IN1 => n_5688);
delay_4636: DELAY
    PORT MAP ( Y => n_5688, IN1 => ix484_nx45_aOUT);
dffe_4637: DFFE
    PORT MAP ( D => ix484_a4_dup_626_aD, CLK => ix484_a4_dup_626_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_626_aENA, Q => ix484_a4_dup_626_Q);
xor2_4638: XOR2
    PORT MAP ( Y => ix484_a4_dup_626_aD, IN1 => n_5695, IN2 => n_5698);
or1_4639: OR1
    PORT MAP ( Y => n_5695, IN1 => n_5696);
and1_4640: AND1
    PORT MAP ( Y => n_5696, IN1 => n_5697);
delay_4641: DELAY
    PORT MAP ( Y => n_5697, IN1 => data(3));
and1_4642: AND1
    PORT MAP ( Y => n_5698, IN1 => gnd);
and1_4643: AND1
    PORT MAP ( Y => n_5699, IN1 => n_5700);
delay_4644: DELAY
    PORT MAP ( Y => n_5700, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4645: DELAY
    PORT MAP ( Y => ix484_a4_dup_626_aCLK, IN1 => n_5699);
and1_4646: AND1
    PORT MAP ( Y => ix484_a4_dup_626_aENA, IN1 => n_5703);
delay_4647: DELAY
    PORT MAP ( Y => n_5703, IN1 => ix484_nx41_aOUT);
dffe_4648: DFFE
    PORT MAP ( D => ix484_a0_dup_630_aD, CLK => ix484_a0_dup_630_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_630_aENA, Q => ix484_a0_dup_630_Q);
xor2_4649: XOR2
    PORT MAP ( Y => ix484_a0_dup_630_aD, IN1 => n_5710, IN2 => n_5713);
or1_4650: OR1
    PORT MAP ( Y => n_5710, IN1 => n_5711);
and1_4651: AND1
    PORT MAP ( Y => n_5711, IN1 => n_5712);
delay_4652: DELAY
    PORT MAP ( Y => n_5712, IN1 => data(3));
and1_4653: AND1
    PORT MAP ( Y => n_5713, IN1 => gnd);
and1_4654: AND1
    PORT MAP ( Y => n_5714, IN1 => n_5715);
delay_4655: DELAY
    PORT MAP ( Y => n_5715, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4656: DELAY
    PORT MAP ( Y => ix484_a0_dup_630_aCLK, IN1 => n_5714);
and1_4657: AND1
    PORT MAP ( Y => ix484_a0_dup_630_aENA, IN1 => n_5718);
delay_4658: DELAY
    PORT MAP ( Y => n_5718, IN1 => ix484_nx45_aOUT);
dffe_4659: DFFE
    PORT MAP ( D => ix484_a4_dup_618_aD, CLK => ix484_a4_dup_618_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_618_aENA, Q => ix484_a4_dup_618_Q);
xor2_4660: XOR2
    PORT MAP ( Y => ix484_a4_dup_618_aD, IN1 => n_5725, IN2 => n_5728);
or1_4661: OR1
    PORT MAP ( Y => n_5725, IN1 => n_5726);
and1_4662: AND1
    PORT MAP ( Y => n_5726, IN1 => n_5727);
delay_4663: DELAY
    PORT MAP ( Y => n_5727, IN1 => data(4));
and1_4664: AND1
    PORT MAP ( Y => n_5728, IN1 => gnd);
and1_4665: AND1
    PORT MAP ( Y => n_5729, IN1 => n_5730);
delay_4666: DELAY
    PORT MAP ( Y => n_5730, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4667: DELAY
    PORT MAP ( Y => ix484_a4_dup_618_aCLK, IN1 => n_5729);
and1_4668: AND1
    PORT MAP ( Y => ix484_a4_dup_618_aENA, IN1 => n_5733);
delay_4669: DELAY
    PORT MAP ( Y => n_5733, IN1 => ix484_nx41_aOUT);
dffe_4670: DFFE
    PORT MAP ( D => ix484_a0_dup_622_aD, CLK => ix484_a0_dup_622_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_622_aENA, Q => ix484_a0_dup_622_Q);
xor2_4671: XOR2
    PORT MAP ( Y => ix484_a0_dup_622_aD, IN1 => n_5740, IN2 => n_5743);
or1_4672: OR1
    PORT MAP ( Y => n_5740, IN1 => n_5741);
and1_4673: AND1
    PORT MAP ( Y => n_5741, IN1 => n_5742);
delay_4674: DELAY
    PORT MAP ( Y => n_5742, IN1 => data(4));
and1_4675: AND1
    PORT MAP ( Y => n_5743, IN1 => gnd);
and1_4676: AND1
    PORT MAP ( Y => n_5744, IN1 => n_5745);
delay_4677: DELAY
    PORT MAP ( Y => n_5745, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4678: DELAY
    PORT MAP ( Y => ix484_a0_dup_622_aCLK, IN1 => n_5744);
and1_4679: AND1
    PORT MAP ( Y => ix484_a0_dup_622_aENA, IN1 => n_5748);
delay_4680: DELAY
    PORT MAP ( Y => n_5748, IN1 => ix484_nx45_aOUT);
dffe_4681: DFFE
    PORT MAP ( D => ix484_a4_dup_610_aD, CLK => ix484_a4_dup_610_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_610_aENA, Q => ix484_a4_dup_610_Q);
xor2_4682: XOR2
    PORT MAP ( Y => ix484_a4_dup_610_aD, IN1 => n_5755, IN2 => n_5758);
or1_4683: OR1
    PORT MAP ( Y => n_5755, IN1 => n_5756);
and1_4684: AND1
    PORT MAP ( Y => n_5756, IN1 => n_5757);
delay_4685: DELAY
    PORT MAP ( Y => n_5757, IN1 => data(5));
and1_4686: AND1
    PORT MAP ( Y => n_5758, IN1 => gnd);
and1_4687: AND1
    PORT MAP ( Y => n_5759, IN1 => n_5760);
delay_4688: DELAY
    PORT MAP ( Y => n_5760, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4689: DELAY
    PORT MAP ( Y => ix484_a4_dup_610_aCLK, IN1 => n_5759);
and1_4690: AND1
    PORT MAP ( Y => ix484_a4_dup_610_aENA, IN1 => n_5763);
delay_4691: DELAY
    PORT MAP ( Y => n_5763, IN1 => ix484_nx41_aOUT);
dffe_4692: DFFE
    PORT MAP ( D => ix484_a0_dup_614_aD, CLK => ix484_a0_dup_614_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_614_aENA, Q => ix484_a0_dup_614_Q);
xor2_4693: XOR2
    PORT MAP ( Y => ix484_a0_dup_614_aD, IN1 => n_5770, IN2 => n_5773);
or1_4694: OR1
    PORT MAP ( Y => n_5770, IN1 => n_5771);
and1_4695: AND1
    PORT MAP ( Y => n_5771, IN1 => n_5772);
delay_4696: DELAY
    PORT MAP ( Y => n_5772, IN1 => data(5));
and1_4697: AND1
    PORT MAP ( Y => n_5773, IN1 => gnd);
and1_4698: AND1
    PORT MAP ( Y => n_5774, IN1 => n_5775);
delay_4699: DELAY
    PORT MAP ( Y => n_5775, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4700: DELAY
    PORT MAP ( Y => ix484_a0_dup_614_aCLK, IN1 => n_5774);
and1_4701: AND1
    PORT MAP ( Y => ix484_a0_dup_614_aENA, IN1 => n_5778);
delay_4702: DELAY
    PORT MAP ( Y => n_5778, IN1 => ix484_nx45_aOUT);
dffe_4703: DFFE
    PORT MAP ( D => ix484_a4_dup_602_aD, CLK => ix484_a4_dup_602_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_602_aENA, Q => ix484_a4_dup_602_Q);
xor2_4704: XOR2
    PORT MAP ( Y => ix484_a4_dup_602_aD, IN1 => n_5785, IN2 => n_5788);
or1_4705: OR1
    PORT MAP ( Y => n_5785, IN1 => n_5786);
and1_4706: AND1
    PORT MAP ( Y => n_5786, IN1 => n_5787);
delay_4707: DELAY
    PORT MAP ( Y => n_5787, IN1 => data(6));
and1_4708: AND1
    PORT MAP ( Y => n_5788, IN1 => gnd);
and1_4709: AND1
    PORT MAP ( Y => n_5789, IN1 => n_5790);
delay_4710: DELAY
    PORT MAP ( Y => n_5790, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4711: DELAY
    PORT MAP ( Y => ix484_a4_dup_602_aCLK, IN1 => n_5789);
and1_4712: AND1
    PORT MAP ( Y => ix484_a4_dup_602_aENA, IN1 => n_5793);
delay_4713: DELAY
    PORT MAP ( Y => n_5793, IN1 => ix484_nx41_aOUT);
dffe_4714: DFFE
    PORT MAP ( D => ix484_a0_dup_606_aD, CLK => ix484_a0_dup_606_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_606_aENA, Q => ix484_a0_dup_606_Q);
xor2_4715: XOR2
    PORT MAP ( Y => ix484_a0_dup_606_aD, IN1 => n_5800, IN2 => n_5803);
or1_4716: OR1
    PORT MAP ( Y => n_5800, IN1 => n_5801);
and1_4717: AND1
    PORT MAP ( Y => n_5801, IN1 => n_5802);
delay_4718: DELAY
    PORT MAP ( Y => n_5802, IN1 => data(6));
and1_4719: AND1
    PORT MAP ( Y => n_5803, IN1 => gnd);
and1_4720: AND1
    PORT MAP ( Y => n_5804, IN1 => n_5805);
delay_4721: DELAY
    PORT MAP ( Y => n_5805, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4722: DELAY
    PORT MAP ( Y => ix484_a0_dup_606_aCLK, IN1 => n_5804);
and1_4723: AND1
    PORT MAP ( Y => ix484_a0_dup_606_aENA, IN1 => n_5808);
delay_4724: DELAY
    PORT MAP ( Y => n_5808, IN1 => ix484_nx45_aOUT);
dffe_4725: DFFE
    PORT MAP ( D => ix484_a4_dup_594_aD, CLK => ix484_a4_dup_594_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_594_aENA, Q => ix484_a4_dup_594_Q);
xor2_4726: XOR2
    PORT MAP ( Y => ix484_a4_dup_594_aD, IN1 => n_5815, IN2 => n_5818);
or1_4727: OR1
    PORT MAP ( Y => n_5815, IN1 => n_5816);
and1_4728: AND1
    PORT MAP ( Y => n_5816, IN1 => n_5817);
delay_4729: DELAY
    PORT MAP ( Y => n_5817, IN1 => data(7));
and1_4730: AND1
    PORT MAP ( Y => n_5818, IN1 => gnd);
and1_4731: AND1
    PORT MAP ( Y => n_5819, IN1 => n_5820);
delay_4732: DELAY
    PORT MAP ( Y => n_5820, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4733: DELAY
    PORT MAP ( Y => ix484_a4_dup_594_aCLK, IN1 => n_5819);
and1_4734: AND1
    PORT MAP ( Y => ix484_a4_dup_594_aENA, IN1 => n_5823);
delay_4735: DELAY
    PORT MAP ( Y => n_5823, IN1 => ix484_nx41_aOUT);
dffe_4736: DFFE
    PORT MAP ( D => ix484_a0_dup_598_aD, CLK => ix484_a0_dup_598_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_598_aENA, Q => ix484_a0_dup_598_Q);
xor2_4737: XOR2
    PORT MAP ( Y => ix484_a0_dup_598_aD, IN1 => n_5830, IN2 => n_5833);
or1_4738: OR1
    PORT MAP ( Y => n_5830, IN1 => n_5831);
and1_4739: AND1
    PORT MAP ( Y => n_5831, IN1 => n_5832);
delay_4740: DELAY
    PORT MAP ( Y => n_5832, IN1 => data(7));
and1_4741: AND1
    PORT MAP ( Y => n_5833, IN1 => gnd);
and1_4742: AND1
    PORT MAP ( Y => n_5834, IN1 => n_5835);
delay_4743: DELAY
    PORT MAP ( Y => n_5835, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4744: DELAY
    PORT MAP ( Y => ix484_a0_dup_598_aCLK, IN1 => n_5834);
and1_4745: AND1
    PORT MAP ( Y => ix484_a0_dup_598_aENA, IN1 => n_5838);
delay_4746: DELAY
    PORT MAP ( Y => n_5838, IN1 => ix484_nx45_aOUT);
dffe_4747: DFFE
    PORT MAP ( D => ix484_a4_dup_586_aD, CLK => ix484_a4_dup_586_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_586_aENA, Q => ix484_a4_dup_586_Q);
xor2_4748: XOR2
    PORT MAP ( Y => ix484_a4_dup_586_aD, IN1 => n_5845, IN2 => n_5848);
or1_4749: OR1
    PORT MAP ( Y => n_5845, IN1 => n_5846);
and1_4750: AND1
    PORT MAP ( Y => n_5846, IN1 => n_5847);
delay_4751: DELAY
    PORT MAP ( Y => n_5847, IN1 => data(8));
and1_4752: AND1
    PORT MAP ( Y => n_5848, IN1 => gnd);
and1_4753: AND1
    PORT MAP ( Y => n_5849, IN1 => n_5850);
delay_4754: DELAY
    PORT MAP ( Y => n_5850, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4755: DELAY
    PORT MAP ( Y => ix484_a4_dup_586_aCLK, IN1 => n_5849);
and1_4756: AND1
    PORT MAP ( Y => ix484_a4_dup_586_aENA, IN1 => n_5853);
delay_4757: DELAY
    PORT MAP ( Y => n_5853, IN1 => ix484_nx41_aOUT);
dffe_4758: DFFE
    PORT MAP ( D => ix484_a0_dup_590_aD, CLK => ix484_a0_dup_590_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_590_aENA, Q => ix484_a0_dup_590_Q);
xor2_4759: XOR2
    PORT MAP ( Y => ix484_a0_dup_590_aD, IN1 => n_5860, IN2 => n_5863);
or1_4760: OR1
    PORT MAP ( Y => n_5860, IN1 => n_5861);
and1_4761: AND1
    PORT MAP ( Y => n_5861, IN1 => n_5862);
delay_4762: DELAY
    PORT MAP ( Y => n_5862, IN1 => data(8));
and1_4763: AND1
    PORT MAP ( Y => n_5863, IN1 => gnd);
and1_4764: AND1
    PORT MAP ( Y => n_5864, IN1 => n_5865);
delay_4765: DELAY
    PORT MAP ( Y => n_5865, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4766: DELAY
    PORT MAP ( Y => ix484_a0_dup_590_aCLK, IN1 => n_5864);
and1_4767: AND1
    PORT MAP ( Y => ix484_a0_dup_590_aENA, IN1 => n_5868);
delay_4768: DELAY
    PORT MAP ( Y => n_5868, IN1 => ix484_nx45_aOUT);
dffe_4769: DFFE
    PORT MAP ( D => ix484_a4_dup_578_aD, CLK => ix484_a4_dup_578_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_578_aENA, Q => ix484_a4_dup_578_Q);
xor2_4770: XOR2
    PORT MAP ( Y => ix484_a4_dup_578_aD, IN1 => n_5875, IN2 => n_5878);
or1_4771: OR1
    PORT MAP ( Y => n_5875, IN1 => n_5876);
and1_4772: AND1
    PORT MAP ( Y => n_5876, IN1 => n_5877);
delay_4773: DELAY
    PORT MAP ( Y => n_5877, IN1 => data(9));
and1_4774: AND1
    PORT MAP ( Y => n_5878, IN1 => gnd);
and1_4775: AND1
    PORT MAP ( Y => n_5879, IN1 => n_5880);
delay_4776: DELAY
    PORT MAP ( Y => n_5880, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4777: DELAY
    PORT MAP ( Y => ix484_a4_dup_578_aCLK, IN1 => n_5879);
and1_4778: AND1
    PORT MAP ( Y => ix484_a4_dup_578_aENA, IN1 => n_5883);
delay_4779: DELAY
    PORT MAP ( Y => n_5883, IN1 => ix484_nx41_aOUT);
dffe_4780: DFFE
    PORT MAP ( D => ix484_a0_dup_582_aD, CLK => ix484_a0_dup_582_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_582_aENA, Q => ix484_a0_dup_582_Q);
xor2_4781: XOR2
    PORT MAP ( Y => ix484_a0_dup_582_aD, IN1 => n_5890, IN2 => n_5893);
or1_4782: OR1
    PORT MAP ( Y => n_5890, IN1 => n_5891);
and1_4783: AND1
    PORT MAP ( Y => n_5891, IN1 => n_5892);
delay_4784: DELAY
    PORT MAP ( Y => n_5892, IN1 => data(9));
and1_4785: AND1
    PORT MAP ( Y => n_5893, IN1 => gnd);
and1_4786: AND1
    PORT MAP ( Y => n_5894, IN1 => n_5895);
delay_4787: DELAY
    PORT MAP ( Y => n_5895, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4788: DELAY
    PORT MAP ( Y => ix484_a0_dup_582_aCLK, IN1 => n_5894);
and1_4789: AND1
    PORT MAP ( Y => ix484_a0_dup_582_aENA, IN1 => n_5898);
delay_4790: DELAY
    PORT MAP ( Y => n_5898, IN1 => ix484_nx45_aOUT);
dffe_4791: DFFE
    PORT MAP ( D => ix484_a4_dup_570_aD, CLK => ix484_a4_dup_570_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_570_aENA, Q => ix484_a4_dup_570_Q);
xor2_4792: XOR2
    PORT MAP ( Y => ix484_a4_dup_570_aD, IN1 => n_5905, IN2 => n_5908);
or1_4793: OR1
    PORT MAP ( Y => n_5905, IN1 => n_5906);
and1_4794: AND1
    PORT MAP ( Y => n_5906, IN1 => n_5907);
delay_4795: DELAY
    PORT MAP ( Y => n_5907, IN1 => data(10));
and1_4796: AND1
    PORT MAP ( Y => n_5908, IN1 => gnd);
and1_4797: AND1
    PORT MAP ( Y => n_5909, IN1 => n_5910);
delay_4798: DELAY
    PORT MAP ( Y => n_5910, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4799: DELAY
    PORT MAP ( Y => ix484_a4_dup_570_aCLK, IN1 => n_5909);
and1_4800: AND1
    PORT MAP ( Y => ix484_a4_dup_570_aENA, IN1 => n_5913);
delay_4801: DELAY
    PORT MAP ( Y => n_5913, IN1 => ix484_nx41_aOUT);
dffe_4802: DFFE
    PORT MAP ( D => ix484_a0_dup_574_aD, CLK => ix484_a0_dup_574_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_574_aENA, Q => ix484_a0_dup_574_Q);
xor2_4803: XOR2
    PORT MAP ( Y => ix484_a0_dup_574_aD, IN1 => n_5920, IN2 => n_5923);
or1_4804: OR1
    PORT MAP ( Y => n_5920, IN1 => n_5921);
and1_4805: AND1
    PORT MAP ( Y => n_5921, IN1 => n_5922);
delay_4806: DELAY
    PORT MAP ( Y => n_5922, IN1 => data(10));
and1_4807: AND1
    PORT MAP ( Y => n_5923, IN1 => gnd);
and1_4808: AND1
    PORT MAP ( Y => n_5924, IN1 => n_5925);
delay_4809: DELAY
    PORT MAP ( Y => n_5925, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4810: DELAY
    PORT MAP ( Y => ix484_a0_dup_574_aCLK, IN1 => n_5924);
and1_4811: AND1
    PORT MAP ( Y => ix484_a0_dup_574_aENA, IN1 => n_5928);
delay_4812: DELAY
    PORT MAP ( Y => n_5928, IN1 => ix484_nx45_aOUT);
dffe_4813: DFFE
    PORT MAP ( D => ix484_a4_dup_562_aD, CLK => ix484_a4_dup_562_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_562_aENA, Q => ix484_a4_dup_562_Q);
xor2_4814: XOR2
    PORT MAP ( Y => ix484_a4_dup_562_aD, IN1 => n_5935, IN2 => n_5938);
or1_4815: OR1
    PORT MAP ( Y => n_5935, IN1 => n_5936);
and1_4816: AND1
    PORT MAP ( Y => n_5936, IN1 => n_5937);
delay_4817: DELAY
    PORT MAP ( Y => n_5937, IN1 => data(11));
and1_4818: AND1
    PORT MAP ( Y => n_5938, IN1 => gnd);
and1_4819: AND1
    PORT MAP ( Y => n_5939, IN1 => n_5940);
delay_4820: DELAY
    PORT MAP ( Y => n_5940, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4821: DELAY
    PORT MAP ( Y => ix484_a4_dup_562_aCLK, IN1 => n_5939);
and1_4822: AND1
    PORT MAP ( Y => ix484_a4_dup_562_aENA, IN1 => n_5943);
delay_4823: DELAY
    PORT MAP ( Y => n_5943, IN1 => ix484_nx41_aOUT);
dffe_4824: DFFE
    PORT MAP ( D => ix484_a0_dup_566_aD, CLK => ix484_a0_dup_566_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_566_aENA, Q => ix484_a0_dup_566_Q);
xor2_4825: XOR2
    PORT MAP ( Y => ix484_a0_dup_566_aD, IN1 => n_5950, IN2 => n_5953);
or1_4826: OR1
    PORT MAP ( Y => n_5950, IN1 => n_5951);
and1_4827: AND1
    PORT MAP ( Y => n_5951, IN1 => n_5952);
delay_4828: DELAY
    PORT MAP ( Y => n_5952, IN1 => data(11));
and1_4829: AND1
    PORT MAP ( Y => n_5953, IN1 => gnd);
and1_4830: AND1
    PORT MAP ( Y => n_5954, IN1 => n_5955);
delay_4831: DELAY
    PORT MAP ( Y => n_5955, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4832: DELAY
    PORT MAP ( Y => ix484_a0_dup_566_aCLK, IN1 => n_5954);
and1_4833: AND1
    PORT MAP ( Y => ix484_a0_dup_566_aENA, IN1 => n_5958);
delay_4834: DELAY
    PORT MAP ( Y => n_5958, IN1 => ix484_nx45_aOUT);
dffe_4835: DFFE
    PORT MAP ( D => ix484_a4_dup_554_aD, CLK => ix484_a4_dup_554_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_554_aENA, Q => ix484_a4_dup_554_Q);
xor2_4836: XOR2
    PORT MAP ( Y => ix484_a4_dup_554_aD, IN1 => n_5965, IN2 => n_5968);
or1_4837: OR1
    PORT MAP ( Y => n_5965, IN1 => n_5966);
and1_4838: AND1
    PORT MAP ( Y => n_5966, IN1 => n_5967);
delay_4839: DELAY
    PORT MAP ( Y => n_5967, IN1 => data(12));
and1_4840: AND1
    PORT MAP ( Y => n_5968, IN1 => gnd);
and1_4841: AND1
    PORT MAP ( Y => n_5969, IN1 => n_5970);
delay_4842: DELAY
    PORT MAP ( Y => n_5970, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4843: DELAY
    PORT MAP ( Y => ix484_a4_dup_554_aCLK, IN1 => n_5969);
and1_4844: AND1
    PORT MAP ( Y => ix484_a4_dup_554_aENA, IN1 => n_5973);
delay_4845: DELAY
    PORT MAP ( Y => n_5973, IN1 => ix484_nx41_aOUT);
dffe_4846: DFFE
    PORT MAP ( D => ix484_a0_dup_558_aD, CLK => ix484_a0_dup_558_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_558_aENA, Q => ix484_a0_dup_558_Q);
xor2_4847: XOR2
    PORT MAP ( Y => ix484_a0_dup_558_aD, IN1 => n_5980, IN2 => n_5983);
or1_4848: OR1
    PORT MAP ( Y => n_5980, IN1 => n_5981);
and1_4849: AND1
    PORT MAP ( Y => n_5981, IN1 => n_5982);
delay_4850: DELAY
    PORT MAP ( Y => n_5982, IN1 => data(12));
and1_4851: AND1
    PORT MAP ( Y => n_5983, IN1 => gnd);
and1_4852: AND1
    PORT MAP ( Y => n_5984, IN1 => n_5985);
delay_4853: DELAY
    PORT MAP ( Y => n_5985, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4854: DELAY
    PORT MAP ( Y => ix484_a0_dup_558_aCLK, IN1 => n_5984);
and1_4855: AND1
    PORT MAP ( Y => ix484_a0_dup_558_aENA, IN1 => n_5988);
delay_4856: DELAY
    PORT MAP ( Y => n_5988, IN1 => ix484_nx45_aOUT);
dffe_4857: DFFE
    PORT MAP ( D => ix484_a4_dup_546_aD, CLK => ix484_a4_dup_546_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_546_aENA, Q => ix484_a4_dup_546_Q);
xor2_4858: XOR2
    PORT MAP ( Y => ix484_a4_dup_546_aD, IN1 => n_5995, IN2 => n_5998);
or1_4859: OR1
    PORT MAP ( Y => n_5995, IN1 => n_5996);
and1_4860: AND1
    PORT MAP ( Y => n_5996, IN1 => n_5997);
delay_4861: DELAY
    PORT MAP ( Y => n_5997, IN1 => data(13));
and1_4862: AND1
    PORT MAP ( Y => n_5998, IN1 => gnd);
and1_4863: AND1
    PORT MAP ( Y => n_5999, IN1 => n_6000);
delay_4864: DELAY
    PORT MAP ( Y => n_6000, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4865: DELAY
    PORT MAP ( Y => ix484_a4_dup_546_aCLK, IN1 => n_5999);
and1_4866: AND1
    PORT MAP ( Y => ix484_a4_dup_546_aENA, IN1 => n_6003);
delay_4867: DELAY
    PORT MAP ( Y => n_6003, IN1 => ix484_nx41_aOUT);
dffe_4868: DFFE
    PORT MAP ( D => ix484_a0_dup_550_aD, CLK => ix484_a0_dup_550_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_550_aENA, Q => ix484_a0_dup_550_Q);
xor2_4869: XOR2
    PORT MAP ( Y => ix484_a0_dup_550_aD, IN1 => n_6010, IN2 => n_6013);
or1_4870: OR1
    PORT MAP ( Y => n_6010, IN1 => n_6011);
and1_4871: AND1
    PORT MAP ( Y => n_6011, IN1 => n_6012);
delay_4872: DELAY
    PORT MAP ( Y => n_6012, IN1 => data(13));
and1_4873: AND1
    PORT MAP ( Y => n_6013, IN1 => gnd);
and1_4874: AND1
    PORT MAP ( Y => n_6014, IN1 => n_6015);
delay_4875: DELAY
    PORT MAP ( Y => n_6015, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4876: DELAY
    PORT MAP ( Y => ix484_a0_dup_550_aCLK, IN1 => n_6014);
and1_4877: AND1
    PORT MAP ( Y => ix484_a0_dup_550_aENA, IN1 => n_6018);
delay_4878: DELAY
    PORT MAP ( Y => n_6018, IN1 => ix484_nx45_aOUT);
dffe_4879: DFFE
    PORT MAP ( D => ix484_a4_dup_538_aD, CLK => ix484_a4_dup_538_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a4_dup_538_aENA, Q => ix484_a4_dup_538_Q);
xor2_4880: XOR2
    PORT MAP ( Y => ix484_a4_dup_538_aD, IN1 => n_6025, IN2 => n_6028);
or1_4881: OR1
    PORT MAP ( Y => n_6025, IN1 => n_6026);
and1_4882: AND1
    PORT MAP ( Y => n_6026, IN1 => n_6027);
delay_4883: DELAY
    PORT MAP ( Y => n_6027, IN1 => data(14));
and1_4884: AND1
    PORT MAP ( Y => n_6028, IN1 => gnd);
and1_4885: AND1
    PORT MAP ( Y => n_6029, IN1 => n_6030);
delay_4886: DELAY
    PORT MAP ( Y => n_6030, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4887: DELAY
    PORT MAP ( Y => ix484_a4_dup_538_aCLK, IN1 => n_6029);
and1_4888: AND1
    PORT MAP ( Y => ix484_a4_dup_538_aENA, IN1 => n_6033);
delay_4889: DELAY
    PORT MAP ( Y => n_6033, IN1 => ix484_nx41_aOUT);
dffe_4890: DFFE
    PORT MAP ( D => ix484_a0_dup_542_aD, CLK => ix484_a0_dup_542_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_542_aENA, Q => ix484_a0_dup_542_Q);
xor2_4891: XOR2
    PORT MAP ( Y => ix484_a0_dup_542_aD, IN1 => n_6040, IN2 => n_6043);
or1_4892: OR1
    PORT MAP ( Y => n_6040, IN1 => n_6041);
and1_4893: AND1
    PORT MAP ( Y => n_6041, IN1 => n_6042);
delay_4894: DELAY
    PORT MAP ( Y => n_6042, IN1 => data(14));
and1_4895: AND1
    PORT MAP ( Y => n_6043, IN1 => gnd);
and1_4896: AND1
    PORT MAP ( Y => n_6044, IN1 => n_6045);
delay_4897: DELAY
    PORT MAP ( Y => n_6045, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4898: DELAY
    PORT MAP ( Y => ix484_a0_dup_542_aCLK, IN1 => n_6044);
and1_4899: AND1
    PORT MAP ( Y => ix484_a0_dup_542_aENA, IN1 => n_6048);
delay_4900: DELAY
    PORT MAP ( Y => n_6048, IN1 => ix484_nx45_aOUT);
dffe_4901: DFFE
    PORT MAP ( D => ix484_a4_aD, CLK => ix484_a4_aCLK, CLRN => vcc, PRN => vcc,
          ENA => ix484_a4_aENA, Q => ix484_a4_Q);
xor2_4902: XOR2
    PORT MAP ( Y => ix484_a4_aD, IN1 => n_6055, IN2 => n_6058);
or1_4903: OR1
    PORT MAP ( Y => n_6055, IN1 => n_6056);
and1_4904: AND1
    PORT MAP ( Y => n_6056, IN1 => n_6057);
delay_4905: DELAY
    PORT MAP ( Y => n_6057, IN1 => data(15));
and1_4906: AND1
    PORT MAP ( Y => n_6058, IN1 => gnd);
and1_4907: AND1
    PORT MAP ( Y => n_6059, IN1 => n_6060);
delay_4908: DELAY
    PORT MAP ( Y => n_6060, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4909: DELAY
    PORT MAP ( Y => ix484_a4_aCLK, IN1 => n_6059);
and1_4910: AND1
    PORT MAP ( Y => ix484_a4_aENA, IN1 => n_6063);
delay_4911: DELAY
    PORT MAP ( Y => n_6063, IN1 => ix484_nx41_aOUT);
dffe_4912: DFFE
    PORT MAP ( D => ix484_a0_dup_534_aD, CLK => ix484_a0_dup_534_aCLK, CLRN => vcc,
          PRN => vcc, ENA => ix484_a0_dup_534_aENA, Q => ix484_a0_dup_534_Q);
xor2_4913: XOR2
    PORT MAP ( Y => ix484_a0_dup_534_aD, IN1 => n_6070, IN2 => n_6073);
or1_4914: OR1
    PORT MAP ( Y => n_6070, IN1 => n_6071);
and1_4915: AND1
    PORT MAP ( Y => n_6071, IN1 => n_6072);
delay_4916: DELAY
    PORT MAP ( Y => n_6072, IN1 => data(15));
and1_4917: AND1
    PORT MAP ( Y => n_6073, IN1 => gnd);
and1_4918: AND1
    PORT MAP ( Y => n_6074, IN1 => n_6075);
delay_4919: DELAY
    PORT MAP ( Y => n_6075, IN1 => a_as_or3_aix1635_a_a32_aOUT);
delay_4920: DELAY
    PORT MAP ( Y => ix484_a0_dup_534_aCLK, IN1 => n_6074);
and1_4921: AND1
    PORT MAP ( Y => ix484_a0_dup_534_aENA, IN1 => n_6078);
delay_4922: DELAY
    PORT MAP ( Y => n_6078, IN1 => ix484_nx45_aOUT);
dff_4923: DFF
    PORT MAP ( D => con1_current_state13_aD, CLK => con1_current_state13_aCLK,
          CLRN => con1_current_state13_aCLRN, PRN => vcc, Q => con1_current_state13_Q);
inv_4924: INV 
    PORT MAP ( Y => con1_current_state13_aCLRN, IN1 => reset);
xor2_4925: XOR2
    PORT MAP ( Y => con1_current_state13_aD, IN1 => n_6085, IN2 => n_6088);
or1_4926: OR1
    PORT MAP ( Y => n_6085, IN1 => n_6086);
and1_4927: AND1
    PORT MAP ( Y => n_6086, IN1 => n_6087);
delay_4928: DELAY
    PORT MAP ( Y => n_6087, IN1 => con1_current_state12_Q);
and1_4929: AND1
    PORT MAP ( Y => n_6088, IN1 => gnd);
delay_4930: DELAY
    PORT MAP ( Y => con1_current_state13_aCLK, IN1 => clock);
dff_4931: DFF
    PORT MAP ( D => con1_current_state24_aD, CLK => con1_current_state24_aCLK,
          CLRN => con1_current_state24_aCLRN, PRN => vcc, Q => con1_current_state24_Q);
inv_4932: INV 
    PORT MAP ( Y => con1_current_state24_aCLRN, IN1 => reset);
xor2_4933: XOR2
    PORT MAP ( Y => con1_current_state24_aD, IN1 => n_6096, IN2 => n_6099);
or1_4934: OR1
    PORT MAP ( Y => n_6096, IN1 => n_6097);
and1_4935: AND1
    PORT MAP ( Y => n_6097, IN1 => n_6098);
delay_4936: DELAY
    PORT MAP ( Y => n_6098, IN1 => con1_current_state23_Q);
and1_4937: AND1
    PORT MAP ( Y => n_6099, IN1 => gnd);
delay_4938: DELAY
    PORT MAP ( Y => con1_current_state24_aCLK, IN1 => clock);
dff_4939: DFF
    PORT MAP ( D => con1_current_state12_aD, CLK => con1_current_state12_aCLK,
          CLRN => con1_current_state12_aCLRN, PRN => vcc, Q => con1_current_state12_Q);
inv_4940: INV 
    PORT MAP ( Y => con1_current_state12_aCLRN, IN1 => reset);
xor2_4941: XOR2
    PORT MAP ( Y => con1_current_state12_aD, IN1 => n_6107, IN2 => n_6110);
or1_4942: OR1
    PORT MAP ( Y => n_6107, IN1 => n_6108);
and1_4943: AND1
    PORT MAP ( Y => n_6108, IN1 => n_6109);
delay_4944: DELAY
    PORT MAP ( Y => n_6109, IN1 => con1_current_state11_Q);
and1_4945: AND1
    PORT MAP ( Y => n_6110, IN1 => gnd);
delay_4946: DELAY
    PORT MAP ( Y => con1_current_state12_aCLK, IN1 => clock);
dff_4947: DFF
    PORT MAP ( D => con1_current_state5_aD, CLK => con1_current_state5_aCLK,
          CLRN => con1_current_state5_aCLRN, PRN => vcc, Q => con1_current_state5_Q);
inv_4948: INV 
    PORT MAP ( Y => con1_current_state5_aCLRN, IN1 => reset);
xor2_4949: XOR2
    PORT MAP ( Y => con1_current_state5_aD, IN1 => n_6118, IN2 => n_6124);
or2_4950: OR2
    PORT MAP ( Y => n_6118, IN1 => n_6119, IN2 => n_6121);
and1_4951: AND1
    PORT MAP ( Y => n_6119, IN1 => n_6120);
delay_4952: DELAY
    PORT MAP ( Y => n_6120, IN1 => con1_current_state4_Q);
and2_4953: AND2
    PORT MAP ( Y => n_6121, IN1 => n_6122, IN2 => n_6123);
inv_4954: INV 
    PORT MAP ( Y => n_6122, IN1 => ready);
delay_4955: DELAY
    PORT MAP ( Y => n_6123, IN1 => con1_current_state5_Q);
and1_4956: AND1
    PORT MAP ( Y => n_6124, IN1 => gnd);
delay_4957: DELAY
    PORT MAP ( Y => con1_current_state5_aCLK, IN1 => clock);
dff_4958: DFF
    PORT MAP ( D => con1_current_state2_aD, CLK => con1_current_state2_aCLK,
          CLRN => con1_current_state2_aCLRN, PRN => vcc, Q => con1_current_state2_Q);
inv_4959: INV 
    PORT MAP ( Y => con1_current_state2_aCLRN, IN1 => reset);
xor2_4960: XOR2
    PORT MAP ( Y => con1_current_state2_aD, IN1 => n_6132, IN2 => n_6135);
or1_4961: OR1
    PORT MAP ( Y => n_6132, IN1 => n_6133);
and1_4962: AND1
    PORT MAP ( Y => n_6133, IN1 => n_6134);
delay_4963: DELAY
    PORT MAP ( Y => n_6134, IN1 => con1_current_state1_Q);
and1_4964: AND1
    PORT MAP ( Y => n_6135, IN1 => gnd);
delay_4965: DELAY
    PORT MAP ( Y => con1_current_state2_aCLK, IN1 => clock);
dff_4966: DFF
    PORT MAP ( D => con1_current_state29_aD, CLK => con1_current_state29_aCLK,
          CLRN => con1_current_state29_aCLRN, PRN => vcc, Q => con1_current_state29_Q);
inv_4967: INV 
    PORT MAP ( Y => con1_current_state29_aCLRN, IN1 => reset);
xor2_4968: XOR2
    PORT MAP ( Y => con1_current_state29_aD, IN1 => n_6143, IN2 => n_6149);
or2_4969: OR2
    PORT MAP ( Y => n_6143, IN1 => n_6144, IN2 => n_6146);
and1_4970: AND1
    PORT MAP ( Y => n_6144, IN1 => n_6145);
delay_4971: DELAY
    PORT MAP ( Y => n_6145, IN1 => con1_current_state28_Q);
and2_4972: AND2
    PORT MAP ( Y => n_6146, IN1 => n_6147, IN2 => n_6148);
inv_4973: INV 
    PORT MAP ( Y => n_6147, IN1 => ready);
delay_4974: DELAY
    PORT MAP ( Y => n_6148, IN1 => con1_current_state29_Q);
and1_4975: AND1
    PORT MAP ( Y => n_6149, IN1 => gnd);
delay_4976: DELAY
    PORT MAP ( Y => con1_current_state29_aCLK, IN1 => clock);
dff_4977: DFF
    PORT MAP ( D => con1_current_state43_aD, CLK => con1_current_state43_aCLK,
          CLRN => con1_current_state43_aCLRN, PRN => vcc, Q => con1_current_state43_Q);
inv_4978: INV 
    PORT MAP ( Y => con1_current_state43_aCLRN, IN1 => reset);
xor2_4979: XOR2
    PORT MAP ( Y => con1_current_state43_aD, IN1 => n_6157, IN2 => n_6163);
or2_4980: OR2
    PORT MAP ( Y => n_6157, IN1 => n_6158, IN2 => n_6160);
and1_4981: AND1
    PORT MAP ( Y => n_6158, IN1 => n_6159);
delay_4982: DELAY
    PORT MAP ( Y => n_6159, IN1 => con1_current_state42_Q);
and2_4983: AND2
    PORT MAP ( Y => n_6160, IN1 => n_6161, IN2 => n_6162);
inv_4984: INV 
    PORT MAP ( Y => n_6161, IN1 => ready);
delay_4985: DELAY
    PORT MAP ( Y => n_6162, IN1 => con1_current_state43_Q);
and1_4986: AND1
    PORT MAP ( Y => n_6163, IN1 => gnd);
delay_4987: DELAY
    PORT MAP ( Y => con1_current_state43_aCLK, IN1 => clock);
dff_4988: DFF
    PORT MAP ( D => con1_current_state38_aD, CLK => con1_current_state38_aCLK,
          CLRN => con1_current_state38_aCLRN, PRN => vcc, Q => con1_current_state38_Q);
inv_4989: INV 
    PORT MAP ( Y => con1_current_state38_aCLRN, IN1 => reset);
xor2_4990: XOR2
    PORT MAP ( Y => con1_current_state38_aD, IN1 => n_6171, IN2 => n_6177);
or2_4991: OR2
    PORT MAP ( Y => n_6171, IN1 => n_6172, IN2 => n_6174);
and1_4992: AND1
    PORT MAP ( Y => n_6172, IN1 => n_6173);
delay_4993: DELAY
    PORT MAP ( Y => n_6173, IN1 => con1_current_state37_Q);
and2_4994: AND2
    PORT MAP ( Y => n_6174, IN1 => n_6175, IN2 => n_6176);
inv_4995: INV 
    PORT MAP ( Y => n_6175, IN1 => ready);
delay_4996: DELAY
    PORT MAP ( Y => n_6176, IN1 => con1_current_state38_Q);
and1_4997: AND1
    PORT MAP ( Y => n_6177, IN1 => gnd);
delay_4998: DELAY
    PORT MAP ( Y => con1_current_state38_aCLK, IN1 => clock);
dff_4999: DFF
    PORT MAP ( D => con1_current_state25_aD, CLK => con1_current_state25_aCLK,
          CLRN => con1_current_state25_aCLRN, PRN => vcc, Q => con1_current_state25_Q);
inv_5000: INV 
    PORT MAP ( Y => con1_current_state25_aCLRN, IN1 => reset);
xor2_5001: XOR2
    PORT MAP ( Y => con1_current_state25_aD, IN1 => n_6185, IN2 => n_6191);
or2_5002: OR2
    PORT MAP ( Y => n_6185, IN1 => n_6186, IN2 => n_6188);
and1_5003: AND1
    PORT MAP ( Y => n_6186, IN1 => n_6187);
delay_5004: DELAY
    PORT MAP ( Y => n_6187, IN1 => con1_current_state24_Q);
and2_5005: AND2
    PORT MAP ( Y => n_6188, IN1 => n_6189, IN2 => n_6190);
inv_5006: INV 
    PORT MAP ( Y => n_6189, IN1 => ready);
delay_5007: DELAY
    PORT MAP ( Y => n_6190, IN1 => con1_current_state25_Q);
and1_5008: AND1
    PORT MAP ( Y => n_6191, IN1 => gnd);
delay_5009: DELAY
    PORT MAP ( Y => con1_current_state25_aCLK, IN1 => clock);
dff_5010: DFF
    PORT MAP ( D => con1_current_state26_aD, CLK => con1_current_state26_aCLK,
          CLRN => con1_current_state26_aCLRN, PRN => vcc, Q => con1_current_state26_Q);
inv_5011: INV 
    PORT MAP ( Y => con1_current_state26_aCLRN, IN1 => reset);
xor2_5012: XOR2
    PORT MAP ( Y => con1_current_state26_aD, IN1 => n_6199, IN2 => n_6206);
or2_5013: OR2
    PORT MAP ( Y => n_6199, IN1 => n_6200, IN2 => n_6203);
and2_5014: AND2
    PORT MAP ( Y => n_6200, IN1 => n_6201, IN2 => n_6202);
delay_5015: DELAY
    PORT MAP ( Y => n_6201, IN1 => ready);
delay_5016: DELAY
    PORT MAP ( Y => n_6202, IN1 => con1_current_state38_Q);
and2_5017: AND2
    PORT MAP ( Y => n_6203, IN1 => n_6204, IN2 => n_6205);
delay_5018: DELAY
    PORT MAP ( Y => n_6204, IN1 => ready);
delay_5019: DELAY
    PORT MAP ( Y => n_6205, IN1 => con1_current_state43_Q);
and1_5020: AND1
    PORT MAP ( Y => n_6206, IN1 => gnd);
delay_5021: DELAY
    PORT MAP ( Y => con1_current_state26_aCLK, IN1 => clock);
dff_5022: DFF
    PORT MAP ( D => con1_current_state22_aD, CLK => con1_current_state22_aCLK,
          CLRN => con1_current_state22_aCLRN, PRN => vcc, Q => con1_current_state22_Q);
inv_5023: INV 
    PORT MAP ( Y => con1_current_state22_aCLRN, IN1 => reset);
xor2_5024: XOR2
    PORT MAP ( Y => con1_current_state22_aD, IN1 => n_6214, IN2 => n_6217);
or1_5025: OR1
    PORT MAP ( Y => n_6214, IN1 => n_6215);
and1_5026: AND1
    PORT MAP ( Y => n_6215, IN1 => n_6216);
delay_5027: DELAY
    PORT MAP ( Y => n_6216, IN1 => con1_current_state21_Q);
and1_5028: AND1
    PORT MAP ( Y => n_6217, IN1 => gnd);
delay_5029: DELAY
    PORT MAP ( Y => con1_current_state22_aCLK, IN1 => clock);
dff_5030: DFF
    PORT MAP ( D => con1_current_state3_aD, CLK => con1_current_state3_aCLK,
          CLRN => con1_current_state3_aCLRN, PRN => vcc, Q => con1_current_state3_Q);
inv_5031: INV 
    PORT MAP ( Y => con1_current_state3_aCLRN, IN1 => reset);
xor2_5032: XOR2
    PORT MAP ( Y => con1_current_state3_aD, IN1 => n_6226, IN2 => n_6229);
or1_5033: OR1
    PORT MAP ( Y => n_6226, IN1 => n_6227);
and1_5034: AND1
    PORT MAP ( Y => n_6227, IN1 => n_6228);
delay_5035: DELAY
    PORT MAP ( Y => n_6228, IN1 => con1_current_state2_Q);
and1_5036: AND1
    PORT MAP ( Y => n_6229, IN1 => gnd);
delay_5037: DELAY
    PORT MAP ( Y => con1_current_state3_aCLK, IN1 => clock);
dff_5038: DFF
    PORT MAP ( D => con1_current_state14_aD, CLK => con1_current_state14_aCLK,
          CLRN => con1_current_state14_aCLRN, PRN => vcc, Q => con1_current_state14_Q);
inv_5039: INV 
    PORT MAP ( Y => con1_current_state14_aCLRN, IN1 => reset);
xor2_5040: XOR2
    PORT MAP ( Y => con1_current_state14_aD, IN1 => n_6237, IN2 => n_6242);
or1_5041: OR1
    PORT MAP ( Y => n_6237, IN1 => n_6238);
and2_5042: AND2
    PORT MAP ( Y => n_6238, IN1 => n_6239, IN2 => n_6241);
inv_5043: INV 
    PORT MAP ( Y => n_6239, IN1 => con1_modgen_62_nx16_aOUT);
delay_5044: DELAY
    PORT MAP ( Y => n_6241, IN1 => con1_current_state6_Q);
and1_5045: AND1
    PORT MAP ( Y => n_6242, IN1 => gnd);
delay_5046: DELAY
    PORT MAP ( Y => con1_current_state14_aCLK, IN1 => clock);
dff_5047: DFF
    PORT MAP ( D => con1_current_state27_aD, CLK => con1_current_state27_aCLK,
          CLRN => con1_current_state27_aCLRN, PRN => vcc, Q => con1_current_state27_Q);
inv_5048: INV 
    PORT MAP ( Y => con1_current_state27_aCLRN, IN1 => reset);
xor2_5049: XOR2
    PORT MAP ( Y => con1_current_state27_aD, IN1 => n_6250, IN2 => n_6253);
or1_5050: OR1
    PORT MAP ( Y => n_6250, IN1 => n_6251);
and1_5051: AND1
    PORT MAP ( Y => n_6251, IN1 => n_6252);
delay_5052: DELAY
    PORT MAP ( Y => n_6252, IN1 => con1_current_state26_Q);
and1_5053: AND1
    PORT MAP ( Y => n_6253, IN1 => gnd);
delay_5054: DELAY
    PORT MAP ( Y => con1_current_state27_aCLK, IN1 => clock);
dff_5055: DFF
    PORT MAP ( D => con1_current_state23_aD, CLK => con1_current_state23_aCLK,
          CLRN => con1_current_state23_aCLRN, PRN => vcc, Q => con1_current_state23_Q);
inv_5056: INV 
    PORT MAP ( Y => con1_current_state23_aCLRN, IN1 => reset);
xor2_5057: XOR2
    PORT MAP ( Y => con1_current_state23_aD, IN1 => n_6261, IN2 => n_6264);
or1_5058: OR1
    PORT MAP ( Y => n_6261, IN1 => n_6262);
and1_5059: AND1
    PORT MAP ( Y => n_6262, IN1 => n_6263);
delay_5060: DELAY
    PORT MAP ( Y => n_6263, IN1 => con1_current_state22_Q);
and1_5061: AND1
    PORT MAP ( Y => n_6264, IN1 => gnd);
delay_5062: DELAY
    PORT MAP ( Y => con1_current_state23_aCLK, IN1 => clock);
dff_5063: DFF
    PORT MAP ( D => con1_current_state48_aD, CLK => con1_current_state48_aCLK,
          CLRN => con1_current_state48_aCLRN, PRN => vcc, Q => con1_current_state48_Q);
inv_5064: INV 
    PORT MAP ( Y => con1_current_state48_aCLRN, IN1 => reset);
xor2_5065: XOR2
    PORT MAP ( Y => con1_current_state48_aD, IN1 => n_6272, IN2 => n_6278);
or2_5066: OR2
    PORT MAP ( Y => n_6272, IN1 => n_6273, IN2 => n_6276);
and2_5067: AND2
    PORT MAP ( Y => n_6273, IN1 => n_6274, IN2 => n_6275);
inv_5068: INV 
    PORT MAP ( Y => n_6274, IN1 => ready);
delay_5069: DELAY
    PORT MAP ( Y => n_6275, IN1 => con1_current_state48_Q);
and1_5070: AND1
    PORT MAP ( Y => n_6276, IN1 => n_6277);
delay_5071: DELAY
    PORT MAP ( Y => n_6277, IN1 => con1_current_state47_Q);
and1_5072: AND1
    PORT MAP ( Y => n_6278, IN1 => gnd);
delay_5073: DELAY
    PORT MAP ( Y => con1_current_state48_aCLK, IN1 => clock);
dff_5074: DFF
    PORT MAP ( D => con1_current_state4_aD, CLK => con1_current_state4_aCLK,
          CLRN => con1_current_state4_aCLRN, PRN => vcc, Q => con1_current_state4_Q);
inv_5075: INV 
    PORT MAP ( Y => con1_current_state4_aCLRN, IN1 => reset);
xor2_5076: XOR2
    PORT MAP ( Y => con1_current_state4_aD, IN1 => n_6286, IN2 => n_6289);
or1_5077: OR1
    PORT MAP ( Y => n_6286, IN1 => n_6287);
and1_5078: AND1
    PORT MAP ( Y => n_6287, IN1 => n_6288);
delay_5079: DELAY
    PORT MAP ( Y => n_6288, IN1 => con1_current_state3_Q);
and1_5080: AND1
    PORT MAP ( Y => n_6289, IN1 => gnd);
delay_5081: DELAY
    PORT MAP ( Y => con1_current_state4_aCLK, IN1 => clock);
dff_5082: DFF
    PORT MAP ( D => con1_current_state15_aD, CLK => con1_current_state15_aCLK,
          CLRN => con1_current_state15_aCLRN, PRN => vcc, Q => con1_current_state15_Q);
inv_5083: INV 
    PORT MAP ( Y => con1_current_state15_aCLRN, IN1 => reset);
xor2_5084: XOR2
    PORT MAP ( Y => con1_current_state15_aD, IN1 => n_6297, IN2 => n_6300);
or1_5085: OR1
    PORT MAP ( Y => n_6297, IN1 => n_6298);
and1_5086: AND1
    PORT MAP ( Y => n_6298, IN1 => n_6299);
delay_5087: DELAY
    PORT MAP ( Y => n_6299, IN1 => con1_current_state14_Q);
and1_5088: AND1
    PORT MAP ( Y => n_6300, IN1 => gnd);
delay_5089: DELAY
    PORT MAP ( Y => con1_current_state15_aCLK, IN1 => clock);
dff_5090: DFF
    PORT MAP ( D => rw_dup0_aD, CLK => rw_dup0_aCLK, CLRN => rw_dup0_aCLRN,
          PRN => vcc, Q => rw_dup0_Q);
inv_5091: INV 
    PORT MAP ( Y => rw_dup0_aCLRN, IN1 => reset);
xor2_5092: XOR2
    PORT MAP ( Y => rw_dup0_aD, IN1 => n_6308, IN2 => n_6311);
or1_5093: OR1
    PORT MAP ( Y => n_6308, IN1 => n_6309);
and1_5094: AND1
    PORT MAP ( Y => n_6309, IN1 => n_6310);
delay_5095: DELAY
    PORT MAP ( Y => n_6310, IN1 => con1_current_state15_Q);
and1_5096: AND1
    PORT MAP ( Y => n_6311, IN1 => gnd);
delay_5097: DELAY
    PORT MAP ( Y => rw_dup0_aCLK, IN1 => clock);
delay_5098: DELAY
    PORT MAP ( Y => O_dup_1039_aOUT, IN1 => O_dup_1039_aIN);
xor2_5099: XOR2
    PORT MAP ( Y => O_dup_1039_aIN, IN1 => n_6315, IN2 => n_6321);
or1_5100: OR1
    PORT MAP ( Y => n_6315, IN1 => n_6316);
and4_5101: AND4
    PORT MAP ( Y => n_6316, IN1 => n_6317, IN2 => n_6318, IN3 => n_6319, IN4 => n_6320);
inv_5102: INV 
    PORT MAP ( Y => n_6317, IN1 => con1_current_state47_Q);
inv_5103: INV 
    PORT MAP ( Y => n_6318, IN1 => con1_current_state28_Q);
inv_5104: INV 
    PORT MAP ( Y => n_6319, IN1 => con1_current_state42_Q);
inv_5105: INV 
    PORT MAP ( Y => n_6320, IN1 => con1_current_state37_Q);
and1_5106: AND1
    PORT MAP ( Y => n_6321, IN1 => gnd);
delay_5107: DELAY
    PORT MAP ( Y => I0_dup_774_aOUT, IN1 => I0_dup_774_aIN);
and2_5108: AND2
    PORT MAP ( Y => I0_dup_774_aIN, IN1 => n_6324, IN2 => n_6330);
or1_5109: OR1
    PORT MAP ( Y => n_6324, IN1 => n_6325);
and4_5110: AND4
    PORT MAP ( Y => n_6325, IN1 => n_6326, IN2 => n_6327, IN3 => n_6328, IN4 => n_6329);
inv_5111: INV 
    PORT MAP ( Y => n_6326, IN1 => con1_current_state5_Q);
inv_5112: INV 
    PORT MAP ( Y => n_6327, IN1 => con1_current_state12_Q);
inv_5113: INV 
    PORT MAP ( Y => n_6328, IN1 => con1_current_state24_Q);
inv_5114: INV 
    PORT MAP ( Y => n_6329, IN1 => con1_current_state13_Q);
delay_5115: DELAY
    PORT MAP ( Y => n_6330, IN1 => O_dup_1039_aIN);
delay_5116: DELAY
    PORT MAP ( Y => O_aOUT, IN1 => O_aIN1);
and2_5117: AND2
    PORT MAP ( Y => O_aIN1, IN1 => n_6332, IN2 => n_6338);
or1_5118: OR1
    PORT MAP ( Y => n_6332, IN1 => n_6333);
and4_5119: AND4
    PORT MAP ( Y => n_6333, IN1 => n_6334, IN2 => n_6335, IN3 => n_6336, IN4 => n_6337);
inv_5120: INV 
    PORT MAP ( Y => n_6334, IN1 => rw_dup0_Q);
inv_5121: INV 
    PORT MAP ( Y => n_6335, IN1 => con1_current_state4_Q);
inv_5122: INV 
    PORT MAP ( Y => n_6336, IN1 => con1_current_state48_Q);
delay_5123: DELAY
    PORT MAP ( Y => n_6337, IN1 => I3_dup_1028_aOUT);
delay_5124: DELAY
    PORT MAP ( Y => n_6338, IN1 => I0_dup_774_aIN);
dff_5125: DFF
    PORT MAP ( D => addr_dup00_aD, CLK => addr_dup00_aCLK, CLRN => vcc, PRN => vcc,
          Q => addr_dup00_Q);
xor2_5126: XOR2
    PORT MAP ( Y => addr_dup00_aD, IN1 => n_6344, IN2 => n_6347);
or1_5127: OR1
    PORT MAP ( Y => n_6344, IN1 => n_6345);
and1_5128: AND1
    PORT MAP ( Y => n_6345, IN1 => n_6346);
delay_5129: DELAY
    PORT MAP ( Y => n_6346, IN1 => data(0));
and1_5130: AND1
    PORT MAP ( Y => n_6347, IN1 => gnd);
and1_5131: AND1
    PORT MAP ( Y => n_6348, IN1 => n_6349);
inv_5132: INV 
    PORT MAP ( Y => n_6349, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5133: DELAY
    PORT MAP ( Y => addr_dup00_aCLK, IN1 => n_6348);
dff_5134: DFF
    PORT MAP ( D => addr_dup01_aD, CLK => addr_dup01_aCLK, CLRN => vcc, PRN => vcc,
          Q => addr_dup01_Q);
xor2_5135: XOR2
    PORT MAP ( Y => addr_dup01_aD, IN1 => n_6356, IN2 => n_6359);
or1_5136: OR1
    PORT MAP ( Y => n_6356, IN1 => n_6357);
and1_5137: AND1
    PORT MAP ( Y => n_6357, IN1 => n_6358);
delay_5138: DELAY
    PORT MAP ( Y => n_6358, IN1 => data(1));
and1_5139: AND1
    PORT MAP ( Y => n_6359, IN1 => gnd);
and1_5140: AND1
    PORT MAP ( Y => n_6360, IN1 => n_6361);
inv_5141: INV 
    PORT MAP ( Y => n_6361, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5142: DELAY
    PORT MAP ( Y => addr_dup01_aCLK, IN1 => n_6360);
dff_5143: DFF
    PORT MAP ( D => addr_dup02_aD, CLK => addr_dup02_aCLK, CLRN => vcc, PRN => vcc,
          Q => addr_dup02_Q);
xor2_5144: XOR2
    PORT MAP ( Y => addr_dup02_aD, IN1 => n_6368, IN2 => n_6371);
or1_5145: OR1
    PORT MAP ( Y => n_6368, IN1 => n_6369);
and1_5146: AND1
    PORT MAP ( Y => n_6369, IN1 => n_6370);
delay_5147: DELAY
    PORT MAP ( Y => n_6370, IN1 => data(2));
and1_5148: AND1
    PORT MAP ( Y => n_6371, IN1 => gnd);
and1_5149: AND1
    PORT MAP ( Y => n_6372, IN1 => n_6373);
inv_5150: INV 
    PORT MAP ( Y => n_6373, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5151: DELAY
    PORT MAP ( Y => addr_dup02_aCLK, IN1 => n_6372);
dff_5152: DFF
    PORT MAP ( D => addr_dup03_aD, CLK => addr_dup03_aCLK, CLRN => vcc, PRN => vcc,
          Q => addr_dup03_Q);
xor2_5153: XOR2
    PORT MAP ( Y => addr_dup03_aD, IN1 => n_6380, IN2 => n_6383);
or1_5154: OR1
    PORT MAP ( Y => n_6380, IN1 => n_6381);
and1_5155: AND1
    PORT MAP ( Y => n_6381, IN1 => n_6382);
delay_5156: DELAY
    PORT MAP ( Y => n_6382, IN1 => data(3));
and1_5157: AND1
    PORT MAP ( Y => n_6383, IN1 => gnd);
and1_5158: AND1
    PORT MAP ( Y => n_6384, IN1 => n_6385);
inv_5159: INV 
    PORT MAP ( Y => n_6385, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5160: DELAY
    PORT MAP ( Y => addr_dup03_aCLK, IN1 => n_6384);
dff_5161: DFF
    PORT MAP ( D => addr_dup04_aD, CLK => addr_dup04_aCLK, CLRN => vcc, PRN => vcc,
          Q => addr_dup04_Q);
xor2_5162: XOR2
    PORT MAP ( Y => addr_dup04_aD, IN1 => n_6392, IN2 => n_6395);
or1_5163: OR1
    PORT MAP ( Y => n_6392, IN1 => n_6393);
and1_5164: AND1
    PORT MAP ( Y => n_6393, IN1 => n_6394);
delay_5165: DELAY
    PORT MAP ( Y => n_6394, IN1 => data(4));
and1_5166: AND1
    PORT MAP ( Y => n_6395, IN1 => gnd);
and1_5167: AND1
    PORT MAP ( Y => n_6396, IN1 => n_6397);
inv_5168: INV 
    PORT MAP ( Y => n_6397, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5169: DELAY
    PORT MAP ( Y => addr_dup04_aCLK, IN1 => n_6396);
dff_5170: DFF
    PORT MAP ( D => addr_dup05_aD, CLK => addr_dup05_aCLK, CLRN => vcc, PRN => vcc,
          Q => addr_dup05_Q);
xor2_5171: XOR2
    PORT MAP ( Y => addr_dup05_aD, IN1 => n_6404, IN2 => n_6407);
or1_5172: OR1
    PORT MAP ( Y => n_6404, IN1 => n_6405);
and1_5173: AND1
    PORT MAP ( Y => n_6405, IN1 => n_6406);
delay_5174: DELAY
    PORT MAP ( Y => n_6406, IN1 => data(5));
and1_5175: AND1
    PORT MAP ( Y => n_6407, IN1 => gnd);
and1_5176: AND1
    PORT MAP ( Y => n_6408, IN1 => n_6409);
inv_5177: INV 
    PORT MAP ( Y => n_6409, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5178: DELAY
    PORT MAP ( Y => addr_dup05_aCLK, IN1 => n_6408);
dff_5179: DFF
    PORT MAP ( D => addr_dup06_aD, CLK => addr_dup06_aCLK, CLRN => vcc, PRN => vcc,
          Q => addr_dup06_Q);
xor2_5180: XOR2
    PORT MAP ( Y => addr_dup06_aD, IN1 => n_6416, IN2 => n_6419);
or1_5181: OR1
    PORT MAP ( Y => n_6416, IN1 => n_6417);
and1_5182: AND1
    PORT MAP ( Y => n_6417, IN1 => n_6418);
delay_5183: DELAY
    PORT MAP ( Y => n_6418, IN1 => data(6));
and1_5184: AND1
    PORT MAP ( Y => n_6419, IN1 => gnd);
and1_5185: AND1
    PORT MAP ( Y => n_6420, IN1 => n_6421);
inv_5186: INV 
    PORT MAP ( Y => n_6421, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5187: DELAY
    PORT MAP ( Y => addr_dup06_aCLK, IN1 => n_6420);
dff_5188: DFF
    PORT MAP ( D => addr_dup07_aD, CLK => addr_dup07_aCLK, CLRN => vcc, PRN => vcc,
          Q => addr_dup07_Q);
xor2_5189: XOR2
    PORT MAP ( Y => addr_dup07_aD, IN1 => n_6428, IN2 => n_6431);
or1_5190: OR1
    PORT MAP ( Y => n_6428, IN1 => n_6429);
and1_5191: AND1
    PORT MAP ( Y => n_6429, IN1 => n_6430);
delay_5192: DELAY
    PORT MAP ( Y => n_6430, IN1 => data(7));
and1_5193: AND1
    PORT MAP ( Y => n_6431, IN1 => gnd);
and1_5194: AND1
    PORT MAP ( Y => n_6432, IN1 => n_6433);
inv_5195: INV 
    PORT MAP ( Y => n_6433, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5196: DELAY
    PORT MAP ( Y => addr_dup07_aCLK, IN1 => n_6432);
dff_5197: DFF
    PORT MAP ( D => addr_dup08_aD, CLK => addr_dup08_aCLK, CLRN => vcc, PRN => vcc,
          Q => addr_dup08_Q);
xor2_5198: XOR2
    PORT MAP ( Y => addr_dup08_aD, IN1 => n_6440, IN2 => n_6443);
or1_5199: OR1
    PORT MAP ( Y => n_6440, IN1 => n_6441);
and1_5200: AND1
    PORT MAP ( Y => n_6441, IN1 => n_6442);
delay_5201: DELAY
    PORT MAP ( Y => n_6442, IN1 => data(8));
and1_5202: AND1
    PORT MAP ( Y => n_6443, IN1 => gnd);
and1_5203: AND1
    PORT MAP ( Y => n_6444, IN1 => n_6445);
inv_5204: INV 
    PORT MAP ( Y => n_6445, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5205: DELAY
    PORT MAP ( Y => addr_dup08_aCLK, IN1 => n_6444);
dff_5206: DFF
    PORT MAP ( D => addr_dup09_aD, CLK => addr_dup09_aCLK, CLRN => vcc, PRN => vcc,
          Q => addr_dup09_Q);
xor2_5207: XOR2
    PORT MAP ( Y => addr_dup09_aD, IN1 => n_6452, IN2 => n_6455);
or1_5208: OR1
    PORT MAP ( Y => n_6452, IN1 => n_6453);
and1_5209: AND1
    PORT MAP ( Y => n_6453, IN1 => n_6454);
delay_5210: DELAY
    PORT MAP ( Y => n_6454, IN1 => data(9));
and1_5211: AND1
    PORT MAP ( Y => n_6455, IN1 => gnd);
and1_5212: AND1
    PORT MAP ( Y => n_6456, IN1 => n_6457);
inv_5213: INV 
    PORT MAP ( Y => n_6457, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5214: DELAY
    PORT MAP ( Y => addr_dup09_aCLK, IN1 => n_6456);
dff_5215: DFF
    PORT MAP ( D => addr_dup010_aD, CLK => addr_dup010_aCLK, CLRN => vcc,
          PRN => vcc, Q => addr_dup010_Q);
xor2_5216: XOR2
    PORT MAP ( Y => addr_dup010_aD, IN1 => n_6464, IN2 => n_6467);
or1_5217: OR1
    PORT MAP ( Y => n_6464, IN1 => n_6465);
and1_5218: AND1
    PORT MAP ( Y => n_6465, IN1 => n_6466);
delay_5219: DELAY
    PORT MAP ( Y => n_6466, IN1 => data(10));
and1_5220: AND1
    PORT MAP ( Y => n_6467, IN1 => gnd);
and1_5221: AND1
    PORT MAP ( Y => n_6468, IN1 => n_6469);
inv_5222: INV 
    PORT MAP ( Y => n_6469, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5223: DELAY
    PORT MAP ( Y => addr_dup010_aCLK, IN1 => n_6468);
dff_5224: DFF
    PORT MAP ( D => addr_dup011_aD, CLK => addr_dup011_aCLK, CLRN => vcc,
          PRN => vcc, Q => addr_dup011_Q);
xor2_5225: XOR2
    PORT MAP ( Y => addr_dup011_aD, IN1 => n_6476, IN2 => n_6479);
or1_5226: OR1
    PORT MAP ( Y => n_6476, IN1 => n_6477);
and1_5227: AND1
    PORT MAP ( Y => n_6477, IN1 => n_6478);
delay_5228: DELAY
    PORT MAP ( Y => n_6478, IN1 => data(11));
and1_5229: AND1
    PORT MAP ( Y => n_6479, IN1 => gnd);
and1_5230: AND1
    PORT MAP ( Y => n_6480, IN1 => n_6481);
inv_5231: INV 
    PORT MAP ( Y => n_6481, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5232: DELAY
    PORT MAP ( Y => addr_dup011_aCLK, IN1 => n_6480);
dff_5233: DFF
    PORT MAP ( D => addr_dup012_aD, CLK => addr_dup012_aCLK, CLRN => vcc,
          PRN => vcc, Q => addr_dup012_Q);
xor2_5234: XOR2
    PORT MAP ( Y => addr_dup012_aD, IN1 => n_6488, IN2 => n_6491);
or1_5235: OR1
    PORT MAP ( Y => n_6488, IN1 => n_6489);
and1_5236: AND1
    PORT MAP ( Y => n_6489, IN1 => n_6490);
delay_5237: DELAY
    PORT MAP ( Y => n_6490, IN1 => data(12));
and1_5238: AND1
    PORT MAP ( Y => n_6491, IN1 => gnd);
and1_5239: AND1
    PORT MAP ( Y => n_6492, IN1 => n_6493);
inv_5240: INV 
    PORT MAP ( Y => n_6493, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5241: DELAY
    PORT MAP ( Y => addr_dup012_aCLK, IN1 => n_6492);
dff_5242: DFF
    PORT MAP ( D => addr_dup013_aD, CLK => addr_dup013_aCLK, CLRN => vcc,
          PRN => vcc, Q => addr_dup013_Q);
xor2_5243: XOR2
    PORT MAP ( Y => addr_dup013_aD, IN1 => n_6500, IN2 => n_6503);
or1_5244: OR1
    PORT MAP ( Y => n_6500, IN1 => n_6501);
and1_5245: AND1
    PORT MAP ( Y => n_6501, IN1 => n_6502);
delay_5246: DELAY
    PORT MAP ( Y => n_6502, IN1 => data(13));
and1_5247: AND1
    PORT MAP ( Y => n_6503, IN1 => gnd);
and1_5248: AND1
    PORT MAP ( Y => n_6504, IN1 => n_6505);
inv_5249: INV 
    PORT MAP ( Y => n_6505, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5250: DELAY
    PORT MAP ( Y => addr_dup013_aCLK, IN1 => n_6504);
dff_5251: DFF
    PORT MAP ( D => addr_dup014_aD, CLK => addr_dup014_aCLK, CLRN => vcc,
          PRN => vcc, Q => addr_dup014_Q);
xor2_5252: XOR2
    PORT MAP ( Y => addr_dup014_aD, IN1 => n_6512, IN2 => n_6515);
or1_5253: OR1
    PORT MAP ( Y => n_6512, IN1 => n_6513);
and1_5254: AND1
    PORT MAP ( Y => n_6513, IN1 => n_6514);
delay_5255: DELAY
    PORT MAP ( Y => n_6514, IN1 => data(14));
and1_5256: AND1
    PORT MAP ( Y => n_6515, IN1 => gnd);
and1_5257: AND1
    PORT MAP ( Y => n_6516, IN1 => n_6517);
inv_5258: INV 
    PORT MAP ( Y => n_6517, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5259: DELAY
    PORT MAP ( Y => addr_dup014_aCLK, IN1 => n_6516);
dff_5260: DFF
    PORT MAP ( D => addr_dup015_aD, CLK => addr_dup015_aCLK, CLRN => vcc,
          PRN => vcc, Q => addr_dup015_Q);
xor2_5261: XOR2
    PORT MAP ( Y => addr_dup015_aD, IN1 => n_6524, IN2 => n_6527);
or1_5262: OR1
    PORT MAP ( Y => n_6524, IN1 => n_6525);
and1_5263: AND1
    PORT MAP ( Y => n_6525, IN1 => n_6526);
delay_5264: DELAY
    PORT MAP ( Y => n_6526, IN1 => data(15));
and1_5265: AND1
    PORT MAP ( Y => n_6527, IN1 => gnd);
and1_5266: AND1
    PORT MAP ( Y => n_6528, IN1 => n_6529);
inv_5267: INV 
    PORT MAP ( Y => n_6529, IN1 => a_as_or4_aix1643_a_a34_aOUT_aNOT);
delay_5268: DELAY
    PORT MAP ( Y => addr_dup015_aCLK, IN1 => n_6528);
delay_5269: DELAY
    PORT MAP ( Y => a_as_or3_aix1644_a_a32_aOUT, IN1 => a_as_or3_aix1644_a_a32_aIN1);
xor2_5270: XOR2
    PORT MAP ( Y => a_as_or3_aix1644_a_a32_aIN1, IN1 => n_6532, IN2 => n_6542);
or3_5271: OR3
    PORT MAP ( Y => n_6532, IN1 => n_6533, IN2 => n_6536, IN3 => n_6539);
and2_5272: AND2
    PORT MAP ( Y => n_6533, IN1 => n_6534, IN2 => n_6535);
delay_5273: DELAY
    PORT MAP ( Y => n_6534, IN1 => ready);
delay_5274: DELAY
    PORT MAP ( Y => n_6535, IN1 => con1_current_state5_Q);
and2_5275: AND2
    PORT MAP ( Y => n_6536, IN1 => n_6537, IN2 => n_6538);
delay_5276: DELAY
    PORT MAP ( Y => n_6537, IN1 => ready);
delay_5277: DELAY
    PORT MAP ( Y => n_6538, IN1 => con1_current_state25_Q);
and2_5278: AND2
    PORT MAP ( Y => n_6539, IN1 => n_6540, IN2 => n_6541);
delay_5279: DELAY
    PORT MAP ( Y => n_6540, IN1 => ready);
delay_5280: DELAY
    PORT MAP ( Y => n_6541, IN1 => con1_current_state29_Q);
and1_5281: AND1
    PORT MAP ( Y => n_6542, IN1 => gnd);
delay_5282: DELAY
    PORT MAP ( Y => I3_dup_732_aOUT, IN1 => I3_dup_732_aIN);
xor2_5283: XOR2
    PORT MAP ( Y => I3_dup_732_aIN, IN1 => n_6544, IN2 => n_6551);
or3_5284: OR3
    PORT MAP ( Y => n_6544, IN1 => n_6545, IN2 => n_6547, IN3 => n_6549);
and1_5285: AND1
    PORT MAP ( Y => n_6545, IN1 => n_6546);
inv_5286: INV 
    PORT MAP ( Y => n_6546, IN1 => instrregout13_Q);
and1_5287: AND1
    PORT MAP ( Y => n_6547, IN1 => n_6548);
delay_5288: DELAY
    PORT MAP ( Y => n_6548, IN1 => instrregout15_Q);
and1_5289: AND1
    PORT MAP ( Y => n_6549, IN1 => n_6550);
delay_5290: DELAY
    PORT MAP ( Y => n_6550, IN1 => instrregout14_Q);
and1_5291: AND1
    PORT MAP ( Y => n_6551, IN1 => gnd);
delay_5292: DELAY
    PORT MAP ( Y => I3_dup_918_aOUT, IN1 => I3_dup_918_aIN);
xor2_5293: XOR2
    PORT MAP ( Y => I3_dup_918_aIN, IN1 => n_6554, IN2 => n_6559);
or2_5294: OR2
    PORT MAP ( Y => n_6554, IN1 => n_6555, IN2 => n_6557);
and1_5295: AND1
    PORT MAP ( Y => n_6555, IN1 => n_6556);
delay_5296: DELAY
    PORT MAP ( Y => n_6556, IN1 => con1_current_state44_Q);
and1_5297: AND1
    PORT MAP ( Y => n_6557, IN1 => n_6558);
delay_5298: DELAY
    PORT MAP ( Y => n_6558, IN1 => con1_current_state39_Q);
and1_5299: AND1
    PORT MAP ( Y => n_6559, IN1 => gnd);
delay_5300: DELAY
    PORT MAP ( Y => I3_dup_696_aOUT, IN1 => I3_dup_696_aIN);
xor2_5301: XOR2
    PORT MAP ( Y => I3_dup_696_aIN, IN1 => n_6561, IN2 => n_6570);
or4_5302: OR4
    PORT MAP ( Y => n_6561, IN1 => n_6562, IN2 => n_6564, IN3 => n_6566, IN4 => n_6568);
and1_5303: AND1
    PORT MAP ( Y => n_6562, IN1 => n_6563);
delay_5304: DELAY
    PORT MAP ( Y => n_6563, IN1 => con1_current_state20_Q);
and1_5305: AND1
    PORT MAP ( Y => n_6564, IN1 => n_6565);
delay_5306: DELAY
    PORT MAP ( Y => n_6565, IN1 => con1_current_state34_Q);
and1_5307: AND1
    PORT MAP ( Y => n_6566, IN1 => n_6567);
delay_5308: DELAY
    PORT MAP ( Y => n_6567, IN1 => con1_current_state33_Q);
and1_5309: AND1
    PORT MAP ( Y => n_6568, IN1 => n_6569);
delay_5310: DELAY
    PORT MAP ( Y => n_6569, IN1 => I3_dup_918_aOUT);
and1_5311: AND1
    PORT MAP ( Y => n_6570, IN1 => gnd);
delay_5312: DELAY
    PORT MAP ( Y => I1_dup_686_aOUT, IN1 => I1_dup_686_aIN);
xor2_5313: XOR2
    PORT MAP ( Y => I1_dup_686_aIN, IN1 => n_6573, IN2 => n_6579);
or1_5314: OR1
    PORT MAP ( Y => n_6573, IN1 => n_6574);
and4_5315: AND4
    PORT MAP ( Y => n_6574, IN1 => n_6575, IN2 => n_6576, IN3 => n_6577, IN4 => n_6578);
inv_5316: INV 
    PORT MAP ( Y => n_6575, IN1 => con1_current_state27_Q);
inv_5317: INV 
    PORT MAP ( Y => n_6576, IN1 => con1_current_state26_Q);
inv_5318: INV 
    PORT MAP ( Y => n_6577, IN1 => con1_current_state21_Q);
inv_5319: INV 
    PORT MAP ( Y => n_6578, IN1 => I3_dup_696_aOUT);
and1_5320: AND1
    PORT MAP ( Y => n_6579, IN1 => gnd);
delay_5321: DELAY
    PORT MAP ( Y => n3_aOUT, IN1 => n3_aIN1);
and2_5322: AND2
    PORT MAP ( Y => n3_aIN1, IN1 => n_6581, IN2 => n_6588);
or3_5323: OR3
    PORT MAP ( Y => n_6581, IN1 => n_6582, IN2 => n_6584, IN3 => n_6586);
and1_5324: AND1
    PORT MAP ( Y => n_6582, IN1 => n_6583);
delay_5325: DELAY
    PORT MAP ( Y => n_6583, IN1 => instrregout12_Q);
and1_5326: AND1
    PORT MAP ( Y => n_6584, IN1 => n_6585);
inv_5327: INV 
    PORT MAP ( Y => n_6585, IN1 => con1_current_state6_Q);
and1_5328: AND1
    PORT MAP ( Y => n_6586, IN1 => n_6587);
delay_5329: DELAY
    PORT MAP ( Y => n_6587, IN1 => I3_dup_732_aOUT);
delay_5330: DELAY
    PORT MAP ( Y => n_6588, IN1 => I1_dup_686_aIN);
delay_5331: DELAY
    PORT MAP ( Y => con1_modgen_61_nx12_aOUT, IN1 => con1_modgen_61_nx12_aIN);
xor2_5332: XOR2
    PORT MAP ( Y => con1_modgen_61_nx12_aIN, IN1 => n_6590, IN2 => n_6595);
or2_5333: OR2
    PORT MAP ( Y => n_6590, IN1 => n_6591, IN2 => n_6593);
and1_5334: AND1
    PORT MAP ( Y => n_6591, IN1 => n_6592);
delay_5335: DELAY
    PORT MAP ( Y => n_6592, IN1 => instrregout13_Q);
and1_5336: AND1
    PORT MAP ( Y => n_6593, IN1 => n_6594);
delay_5337: DELAY
    PORT MAP ( Y => n_6594, IN1 => instrregout14_Q);
and1_5338: AND1
    PORT MAP ( Y => n_6595, IN1 => gnd);
delay_5339: DELAY
    PORT MAP ( Y => con1_modgen_62_nx16_aOUT, IN1 => con1_modgen_62_nx16_aIN);
xor2_5340: XOR2
    PORT MAP ( Y => con1_modgen_62_nx16_aIN, IN1 => n_6597, IN2 => n_6606);
or4_5341: OR4
    PORT MAP ( Y => n_6597, IN1 => n_6598, IN2 => n_6600, IN3 => n_6602, IN4 => n_6604);
and1_5342: AND1
    PORT MAP ( Y => n_6598, IN1 => n_6599);
inv_5343: INV 
    PORT MAP ( Y => n_6599, IN1 => instrregout12_Q);
and1_5344: AND1
    PORT MAP ( Y => n_6600, IN1 => n_6601);
delay_5345: DELAY
    PORT MAP ( Y => n_6601, IN1 => instrregout15_Q);
and1_5346: AND1
    PORT MAP ( Y => n_6602, IN1 => n_6603);
delay_5347: DELAY
    PORT MAP ( Y => n_6603, IN1 => instrregout11_Q);
and1_5348: AND1
    PORT MAP ( Y => n_6604, IN1 => n_6605);
delay_5349: DELAY
    PORT MAP ( Y => n_6605, IN1 => con1_modgen_61_nx12_aOUT);
and1_5350: AND1
    PORT MAP ( Y => n_6606, IN1 => gnd);
delay_5351: DELAY
    PORT MAP ( Y => I2_dup_1023_aOUT, IN1 => I2_dup_1023_aIN);
xor2_5352: XOR2
    PORT MAP ( Y => I2_dup_1023_aIN, IN1 => n_6608, IN2 => n_6615);
or2_5353: OR2
    PORT MAP ( Y => n_6608, IN1 => n_6609, IN2 => n_6612);
and2_5354: AND2
    PORT MAP ( Y => n_6609, IN1 => n_6610, IN2 => n_6611);
delay_5355: DELAY
    PORT MAP ( Y => n_6610, IN1 => I3_dup_732_aOUT);
delay_5356: DELAY
    PORT MAP ( Y => n_6611, IN1 => con1_modgen_62_nx16_aOUT);
and2_5357: AND2
    PORT MAP ( Y => n_6612, IN1 => n_6613, IN2 => n_6614);
inv_5358: INV 
    PORT MAP ( Y => n_6613, IN1 => instrregout12_Q);
delay_5359: DELAY
    PORT MAP ( Y => n_6614, IN1 => con1_modgen_62_nx16_aOUT);
and1_5360: AND1
    PORT MAP ( Y => n_6615, IN1 => gnd);
delay_5361: DELAY
    PORT MAP ( Y => I3_dup_900_aOUT, IN1 => I3_dup_900_aIN);
xor2_5362: XOR2
    PORT MAP ( Y => I3_dup_900_aIN, IN1 => n_6617, IN2 => n_6622);
or1_5363: OR1
    PORT MAP ( Y => n_6617, IN1 => n_6618);
and3_5364: AND3
    PORT MAP ( Y => n_6618, IN1 => n_6619, IN2 => n_6620, IN3 => n_6621);
inv_5365: INV 
    PORT MAP ( Y => n_6619, IN1 => instrregout15_Q);
inv_5366: INV 
    PORT MAP ( Y => n_6620, IN1 => con1_modgen_61_nx12_aOUT);
delay_5367: DELAY
    PORT MAP ( Y => n_6621, IN1 => instrregout11_Q);
and1_5368: AND1
    PORT MAP ( Y => n_6622, IN1 => gnd);
dff_5369: DFF
    PORT MAP ( D => opregwr_aD, CLK => opregwr_aCLK, CLRN => opregwr_aCLRN,
          PRN => vcc, Q => opregwr_Q);
inv_5370: INV 
    PORT MAP ( Y => opregwr_aCLRN, IN1 => reset);
xor2_5371: XOR2
    PORT MAP ( Y => opregwr_aD, IN1 => n_6629, IN2 => n_6635);
or1_5372: OR1
    PORT MAP ( Y => n_6629, IN1 => n_6630);
and4_5373: AND4
    PORT MAP ( Y => n_6630, IN1 => n_6631, IN2 => n_6632, IN3 => n_6633, IN4 => n_6634);
inv_5374: INV 
    PORT MAP ( Y => n_6631, IN1 => instrregout11_Q);
inv_5375: INV 
    PORT MAP ( Y => n_6632, IN1 => I3_dup_732_aOUT);
delay_5376: DELAY
    PORT MAP ( Y => n_6633, IN1 => instrregout12_Q);
delay_5377: DELAY
    PORT MAP ( Y => n_6634, IN1 => con1_current_state6_Q);
and1_5378: AND1
    PORT MAP ( Y => n_6635, IN1 => gnd);
delay_5379: DELAY
    PORT MAP ( Y => opregwr_aCLK, IN1 => clock);
delay_5380: DELAY
    PORT MAP ( Y => I3_dup_736_aOUT, IN1 => I3_dup_736_aIN);
xor2_5381: XOR2
    PORT MAP ( Y => I3_dup_736_aIN, IN1 => n_6639, IN2 => n_6643);
or1_5382: OR1
    PORT MAP ( Y => n_6639, IN1 => n_6640);
and2_5383: AND2
    PORT MAP ( Y => n_6640, IN1 => n_6641, IN2 => n_6642);
inv_5384: INV 
    PORT MAP ( Y => n_6641, IN1 => con1_current_state15_Q);
inv_5385: INV 
    PORT MAP ( Y => n_6642, IN1 => con1_current_state17_Q);
and1_5386: AND1
    PORT MAP ( Y => n_6643, IN1 => gnd);
delay_5387: DELAY
    PORT MAP ( Y => con1_nx3498_aOUT, IN1 => con1_nx3498_aIN);
xor2_5388: XOR2
    PORT MAP ( Y => con1_nx3498_aIN, IN1 => n_6646, IN2 => n_6655);
or4_5389: OR4
    PORT MAP ( Y => n_6646, IN1 => n_6647, IN2 => n_6649, IN3 => n_6651, IN4 => n_6653);
and1_5390: AND1
    PORT MAP ( Y => n_6647, IN1 => n_6648);
delay_5391: DELAY
    PORT MAP ( Y => n_6648, IN1 => rw_dup0_Q);
and1_5392: AND1
    PORT MAP ( Y => n_6649, IN1 => n_6650);
delay_5393: DELAY
    PORT MAP ( Y => n_6650, IN1 => con1_current_state11_Q);
and1_5394: AND1
    PORT MAP ( Y => n_6651, IN1 => n_6652);
delay_5395: DELAY
    PORT MAP ( Y => n_6652, IN1 => opregwr_Q);
and1_5396: AND1
    PORT MAP ( Y => n_6653, IN1 => n_6654);
inv_5397: INV 
    PORT MAP ( Y => n_6654, IN1 => I3_dup_736_aOUT);
and1_5398: AND1
    PORT MAP ( Y => n_6655, IN1 => gnd);
delay_5399: DELAY
    PORT MAP ( Y => opregrd_aOUT, IN1 => opregrd_aIN);
xor2_5400: XOR2
    PORT MAP ( Y => opregrd_aIN, IN1 => n_6657, IN2 => n_6662);
or2_5401: OR2
    PORT MAP ( Y => n_6657, IN1 => n_6658, IN2 => n_6660);
and1_5402: AND1
    PORT MAP ( Y => n_6658, IN1 => n_6659);
delay_5403: DELAY
    PORT MAP ( Y => n_6659, IN1 => con1_current_state32_Q);
and1_5404: AND1
    PORT MAP ( Y => n_6660, IN1 => n_6661);
delay_5405: DELAY
    PORT MAP ( Y => n_6661, IN1 => con1_current_state31_Q);
and1_5406: AND1
    PORT MAP ( Y => n_6662, IN1 => gnd);
delay_5407: DELAY
    PORT MAP ( Y => con1_nx3626_aOUT, IN1 => con1_nx3626_aIN);
xor2_5408: XOR2
    PORT MAP ( Y => con1_nx3626_aIN, IN1 => n_6665, IN2 => n_6674);
or4_5409: OR4
    PORT MAP ( Y => n_6665, IN1 => n_6666, IN2 => n_6668, IN3 => n_6670, IN4 => n_6672);
and1_5410: AND1
    PORT MAP ( Y => n_6666, IN1 => n_6667);
delay_5411: DELAY
    PORT MAP ( Y => n_6667, IN1 => con1_current_state14_Q);
and1_5412: AND1
    PORT MAP ( Y => n_6668, IN1 => n_6669);
delay_5413: DELAY
    PORT MAP ( Y => n_6669, IN1 => con1_current_state49_Q);
and1_5414: AND1
    PORT MAP ( Y => n_6670, IN1 => n_6671);
delay_5415: DELAY
    PORT MAP ( Y => n_6671, IN1 => con1_nx3498_aOUT);
and1_5416: AND1
    PORT MAP ( Y => n_6672, IN1 => n_6673);
delay_5417: DELAY
    PORT MAP ( Y => n_6673, IN1 => opregrd_aOUT);
and1_5418: AND1
    PORT MAP ( Y => n_6674, IN1 => gnd);
delay_5419: DELAY
    PORT MAP ( Y => I2_dup_823_aOUT, IN1 => I2_dup_823_aIN);
xor2_5420: XOR2
    PORT MAP ( Y => I2_dup_823_aIN, IN1 => n_6676, IN2 => n_6685);
or3_5421: OR3
    PORT MAP ( Y => n_6676, IN1 => n_6677, IN2 => n_6680, IN3 => n_6683);
and2_5422: AND2
    PORT MAP ( Y => n_6677, IN1 => n_6678, IN2 => n_6679);
inv_5423: INV 
    PORT MAP ( Y => n_6678, IN1 => I2_dup_1023_aOUT);
delay_5424: DELAY
    PORT MAP ( Y => n_6679, IN1 => con1_current_state6_Q);
and2_5425: AND2
    PORT MAP ( Y => n_6680, IN1 => n_6681, IN2 => n_6682);
delay_5426: DELAY
    PORT MAP ( Y => n_6681, IN1 => I3_dup_900_aOUT);
delay_5427: DELAY
    PORT MAP ( Y => n_6682, IN1 => con1_current_state6_Q);
and1_5428: AND1
    PORT MAP ( Y => n_6683, IN1 => n_6684);
delay_5429: DELAY
    PORT MAP ( Y => n_6684, IN1 => con1_nx3626_aOUT);
and1_5430: AND1
    PORT MAP ( Y => n_6685, IN1 => gnd);
delay_5431: DELAY
    PORT MAP ( Y => I2_dup_681_aOUT, IN1 => I2_dup_681_aIN);
xor2_5432: XOR2
    PORT MAP ( Y => I2_dup_681_aIN, IN1 => n_6687, IN2 => n_6696);
or4_5433: OR4
    PORT MAP ( Y => n_6687, IN1 => n_6688, IN2 => n_6690, IN3 => n_6692, IN4 => n_6694);
and1_5434: AND1
    PORT MAP ( Y => n_6688, IN1 => n_6689);
delay_5435: DELAY
    PORT MAP ( Y => n_6689, IN1 => con1_current_state3_Q);
and1_5436: AND1
    PORT MAP ( Y => n_6690, IN1 => n_6691);
delay_5437: DELAY
    PORT MAP ( Y => n_6691, IN1 => con1_current_state46_Q);
and1_5438: AND1
    PORT MAP ( Y => n_6692, IN1 => n_6693);
delay_5439: DELAY
    PORT MAP ( Y => n_6693, IN1 => con1_current_state41_Q);
and1_5440: AND1
    PORT MAP ( Y => n_6694, IN1 => n_6695);
delay_5441: DELAY
    PORT MAP ( Y => n_6695, IN1 => con1_current_state36_Q);
and1_5442: AND1
    PORT MAP ( Y => n_6696, IN1 => gnd);
delay_5443: DELAY
    PORT MAP ( Y => O_dup_1049_aOUT, IN1 => O_dup_1049_aIN);
xor2_5444: XOR2
    PORT MAP ( Y => O_dup_1049_aIN, IN1 => n_6699, IN2 => n_6705);
or1_5445: OR1
    PORT MAP ( Y => n_6699, IN1 => n_6700);
and4_5446: AND4
    PORT MAP ( Y => n_6700, IN1 => n_6701, IN2 => n_6702, IN3 => n_6703, IN4 => n_6704);
inv_5447: INV 
    PORT MAP ( Y => n_6701, IN1 => con1_current_state22_Q);
inv_5448: INV 
    PORT MAP ( Y => n_6702, IN1 => con1_current_state35_Q);
inv_5449: INV 
    PORT MAP ( Y => n_6703, IN1 => con1_current_state40_Q);
inv_5450: INV 
    PORT MAP ( Y => n_6704, IN1 => con1_current_state18_Q);
and1_5451: AND1
    PORT MAP ( Y => n_6705, IN1 => gnd);
delay_5452: DELAY
    PORT MAP ( Y => I3_dup_677_aOUT, IN1 => I3_dup_677_aIN1);
and2_5453: AND2
    PORT MAP ( Y => I3_dup_677_aIN1, IN1 => n_6708, IN2 => n_6714);
or1_5454: OR1
    PORT MAP ( Y => n_6708, IN1 => n_6709);
and4_5455: AND4
    PORT MAP ( Y => n_6709, IN1 => n_6710, IN2 => n_6711, IN3 => n_6712, IN4 => n_6713);
inv_5456: INV 
    PORT MAP ( Y => n_6710, IN1 => con1_current_state2_Q);
inv_5457: INV 
    PORT MAP ( Y => n_6711, IN1 => con1_current_state51_Q);
inv_5458: INV 
    PORT MAP ( Y => n_6712, IN1 => con1_current_state19_Q);
inv_5459: INV 
    PORT MAP ( Y => n_6713, IN1 => I2_dup_681_aOUT);
delay_5460: DELAY
    PORT MAP ( Y => n_6714, IN1 => O_dup_1049_aIN);
delay_5461: DELAY
    PORT MAP ( Y => outregrd_aOUT, IN1 => outregrd_aIN);
xor2_5462: XOR2
    PORT MAP ( Y => outregrd_aIN, IN1 => n_6716, IN2 => n_6725);
or4_5463: OR4
    PORT MAP ( Y => n_6716, IN1 => n_6717, IN2 => n_6719, IN3 => n_6721, IN4 => n_6723);
and1_5464: AND1
    PORT MAP ( Y => n_6717, IN1 => n_6718);
delay_5465: DELAY
    PORT MAP ( Y => n_6718, IN1 => con1_current_state23_Q);
and1_5466: AND1
    PORT MAP ( Y => n_6719, IN1 => n_6720);
delay_5467: DELAY
    PORT MAP ( Y => n_6720, IN1 => con1_current_state45_Q);
and1_5468: AND1
    PORT MAP ( Y => n_6721, IN1 => n_6722);
delay_5469: DELAY
    PORT MAP ( Y => n_6722, IN1 => con1_current_state50_Q);
and1_5470: AND1
    PORT MAP ( Y => n_6723, IN1 => n_6724);
inv_5471: INV 
    PORT MAP ( Y => n_6724, IN1 => I3_dup_677_aOUT);
and1_5472: AND1
    PORT MAP ( Y => n_6725, IN1 => gnd);
delay_5473: DELAY
    PORT MAP ( Y => a_as_or3_aix1786_a_a32_aOUT, IN1 => a_as_or3_aix1786_a_a32_aIN1);
xor2_5474: XOR2
    PORT MAP ( Y => a_as_or3_aix1786_a_a32_aIN1, IN1 => n_6727, IN2 => n_6734);
or3_5475: OR3
    PORT MAP ( Y => n_6727, IN1 => n_6728, IN2 => n_6730, IN3 => n_6732);
and1_5476: AND1
    PORT MAP ( Y => n_6728, IN1 => n_6729);
inv_5477: INV 
    PORT MAP ( Y => n_6729, IN1 => n3_aOUT);
and1_5478: AND1
    PORT MAP ( Y => n_6730, IN1 => n_6731);
delay_5479: DELAY
    PORT MAP ( Y => n_6731, IN1 => I2_dup_823_aOUT);
and1_5480: AND1
    PORT MAP ( Y => n_6732, IN1 => n_6733);
delay_5481: DELAY
    PORT MAP ( Y => n_6733, IN1 => outregrd_aOUT);
and1_5482: AND1
    PORT MAP ( Y => n_6734, IN1 => gnd);
delay_5483: DELAY
    PORT MAP ( Y => con1_modgen_66_nx16_aOUT, IN1 => con1_modgen_66_nx16_aIN);
xor2_5484: XOR2
    PORT MAP ( Y => con1_modgen_66_nx16_aIN, IN1 => n_6737, IN2 => n_6744);
or3_5485: OR3
    PORT MAP ( Y => n_6737, IN1 => n_6738, IN2 => n_6740, IN3 => n_6742);
and1_5486: AND1
    PORT MAP ( Y => n_6738, IN1 => n_6739);
inv_5487: INV 
    PORT MAP ( Y => n_6739, IN1 => instrregout12_Q);
and1_5488: AND1
    PORT MAP ( Y => n_6740, IN1 => n_6741);
delay_5489: DELAY
    PORT MAP ( Y => n_6741, IN1 => instrregout11_Q);
and1_5490: AND1
    PORT MAP ( Y => n_6742, IN1 => n_6743);
delay_5491: DELAY
    PORT MAP ( Y => n_6743, IN1 => I3_dup_732_aOUT);
and1_5492: AND1
    PORT MAP ( Y => n_6744, IN1 => gnd);
delay_5493: DELAY
    PORT MAP ( Y => O_dup_901_aOUT, IN1 => O_dup_901_aIN);
xor2_5494: XOR2
    PORT MAP ( Y => O_dup_901_aIN, IN1 => n_6747, IN2 => n_6756);
or3_5495: OR3
    PORT MAP ( Y => n_6747, IN1 => n_6748, IN2 => n_6751, IN3 => n_6754);
and2_5496: AND2
    PORT MAP ( Y => n_6748, IN1 => n_6749, IN2 => n_6750);
inv_5497: INV 
    PORT MAP ( Y => n_6749, IN1 => con1_modgen_66_nx16_aOUT);
delay_5498: DELAY
    PORT MAP ( Y => n_6750, IN1 => con1_current_state6_Q);
and2_5499: AND2
    PORT MAP ( Y => n_6751, IN1 => n_6752, IN2 => n_6753);
delay_5500: DELAY
    PORT MAP ( Y => n_6752, IN1 => I3_dup_900_aOUT);
delay_5501: DELAY
    PORT MAP ( Y => n_6753, IN1 => con1_current_state6_Q);
and1_5502: AND1
    PORT MAP ( Y => n_6754, IN1 => n_6755);
delay_5503: DELAY
    PORT MAP ( Y => n_6755, IN1 => con1_nx3498_aOUT);
and1_5504: AND1
    PORT MAP ( Y => n_6756, IN1 => gnd);
delay_5505: DELAY
    PORT MAP ( Y => I3_dup_1509_aOUT, IN1 => I3_dup_1509_aIN);
xor2_5506: XOR2
    PORT MAP ( Y => I3_dup_1509_aIN, IN1 => n_6759, IN2 => n_6763);
or1_5507: OR1
    PORT MAP ( Y => n_6759, IN1 => n_6760);
and2_5508: AND2
    PORT MAP ( Y => n_6760, IN1 => n_6761, IN2 => n_6762);
delay_5509: DELAY
    PORT MAP ( Y => n_6761, IN1 => O_dup_901_aOUT);
delay_5510: DELAY
    PORT MAP ( Y => n_6762, IN1 => instrregout4_Q);
and1_5511: AND1
    PORT MAP ( Y => n_6763, IN1 => gnd);
delay_5512: DELAY
    PORT MAP ( Y => con1_next_state14_aOUT, IN1 => con1_next_state14_aIN1);
xor2_5513: XOR2
    PORT MAP ( Y => con1_next_state14_aIN1, IN1 => n_6766, IN2 => n_6770);
or1_5514: OR1
    PORT MAP ( Y => n_6766, IN1 => n_6767);
and2_5515: AND2
    PORT MAP ( Y => n_6767, IN1 => n_6768, IN2 => n_6769);
inv_5516: INV 
    PORT MAP ( Y => n_6768, IN1 => con1_modgen_62_nx16_aOUT);
delay_5517: DELAY
    PORT MAP ( Y => n_6769, IN1 => con1_current_state6_Q);
and1_5518: AND1
    PORT MAP ( Y => n_6770, IN1 => gnd);
delay_5519: DELAY
    PORT MAP ( Y => con1_next_state49_aOUT, IN1 => con1_next_state49_aIN1);
xor2_5520: XOR2
    PORT MAP ( Y => con1_next_state49_aIN1, IN1 => n_6773, IN2 => n_6779);
or1_5521: OR1
    PORT MAP ( Y => n_6773, IN1 => n_6774);
and4_5522: AND4
    PORT MAP ( Y => n_6774, IN1 => n_6775, IN2 => n_6776, IN3 => n_6777, IN4 => n_6778);
inv_5523: INV 
    PORT MAP ( Y => n_6775, IN1 => I3_dup_732_aOUT);
delay_5524: DELAY
    PORT MAP ( Y => n_6776, IN1 => instrregout11_Q);
delay_5525: DELAY
    PORT MAP ( Y => n_6777, IN1 => instrregout12_Q);
delay_5526: DELAY
    PORT MAP ( Y => n_6778, IN1 => con1_current_state6_Q);
and1_5527: AND1
    PORT MAP ( Y => n_6779, IN1 => gnd);
delay_5528: DELAY
    PORT MAP ( Y => I1_dup_670_aOUT, IN1 => I1_dup_670_aIN);
xor2_5529: XOR2
    PORT MAP ( Y => I1_dup_670_aIN, IN1 => n_6782, IN2 => n_6790);
or3_5530: OR3
    PORT MAP ( Y => n_6782, IN1 => n_6783, IN2 => n_6785, IN3 => n_6788);
and1_5531: AND1
    PORT MAP ( Y => n_6783, IN1 => n_6784);
delay_5532: DELAY
    PORT MAP ( Y => n_6784, IN1 => con1_next_state14_aOUT);
and2_5533: AND2
    PORT MAP ( Y => n_6785, IN1 => n_6786, IN2 => n_6787);
delay_5534: DELAY
    PORT MAP ( Y => n_6786, IN1 => ready);
delay_5535: DELAY
    PORT MAP ( Y => n_6787, IN1 => con1_current_state48_Q);
and1_5536: AND1
    PORT MAP ( Y => n_6788, IN1 => n_6789);
delay_5537: DELAY
    PORT MAP ( Y => n_6789, IN1 => con1_next_state49_aOUT);
and1_5538: AND1
    PORT MAP ( Y => n_6790, IN1 => gnd);
delay_5539: DELAY
    PORT MAP ( Y => I3_dup_1546_aOUT, IN1 => I3_dup_1546_aIN);
xor2_5540: XOR2
    PORT MAP ( Y => I3_dup_1546_aIN, IN1 => n_6793, IN2 => n_6800);
or3_5541: OR3
    PORT MAP ( Y => n_6793, IN1 => n_6794, IN2 => n_6796, IN3 => n_6798);
and1_5542: AND1
    PORT MAP ( Y => n_6794, IN1 => n_6795);
delay_5543: DELAY
    PORT MAP ( Y => n_6795, IN1 => con1_current_state13_Q);
and1_5544: AND1
    PORT MAP ( Y => n_6796, IN1 => n_6797);
delay_5545: DELAY
    PORT MAP ( Y => n_6797, IN1 => con1_current_state51_Q);
and1_5546: AND1
    PORT MAP ( Y => n_6798, IN1 => n_6799);
delay_5547: DELAY
    PORT MAP ( Y => n_6799, IN1 => con1_current_state19_Q);
and1_5548: AND1
    PORT MAP ( Y => n_6800, IN1 => gnd);
delay_5549: DELAY
    PORT MAP ( Y => I2_aOUT, IN1 => I2_aIN);
xor2_5550: XOR2
    PORT MAP ( Y => I2_aIN, IN1 => n_6803, IN2 => n_6809);
or1_5551: OR1
    PORT MAP ( Y => n_6803, IN1 => n_6804);
and4_5552: AND4
    PORT MAP ( Y => n_6804, IN1 => n_6805, IN2 => n_6806, IN3 => n_6807, IN4 => n_6808);
inv_5553: INV 
    PORT MAP ( Y => n_6805, IN1 => con1_current_state14_Q);
inv_5554: INV 
    PORT MAP ( Y => n_6806, IN1 => con1_current_state49_Q);
inv_5555: INV 
    PORT MAP ( Y => n_6807, IN1 => I3_dup_1546_aOUT);
inv_5556: INV 
    PORT MAP ( Y => n_6808, IN1 => opregrd_aOUT);
and1_5557: AND1
    PORT MAP ( Y => n_6809, IN1 => gnd);
delay_5558: DELAY
    PORT MAP ( Y => I1_dup_755_aOUT, IN1 => I1_dup_755_aIN);
xor2_5559: XOR2
    PORT MAP ( Y => I1_dup_755_aIN, IN1 => n_6811, IN2 => n_6820);
or3_5560: OR3
    PORT MAP ( Y => n_6811, IN1 => n_6812, IN2 => n_6814, IN3 => n_6817);
and1_5561: AND1
    PORT MAP ( Y => n_6812, IN1 => n_6813);
delay_5562: DELAY
    PORT MAP ( Y => n_6813, IN1 => I3_dup_1509_aOUT);
and2_5563: AND2
    PORT MAP ( Y => n_6814, IN1 => n_6815, IN2 => n_6816);
delay_5564: DELAY
    PORT MAP ( Y => n_6815, IN1 => I1_dup_670_aOUT);
delay_5565: DELAY
    PORT MAP ( Y => n_6816, IN1 => instrregout1_Q);
and2_5566: AND2
    PORT MAP ( Y => n_6817, IN1 => n_6818, IN2 => n_6819);
inv_5567: INV 
    PORT MAP ( Y => n_6818, IN1 => I2_aOUT);
delay_5568: DELAY
    PORT MAP ( Y => n_6819, IN1 => instrregout1_Q);
and1_5569: AND1
    PORT MAP ( Y => n_6820, IN1 => gnd);
delay_5570: DELAY
    PORT MAP ( Y => O_dup_1505_aOUT, IN1 => O_dup_1505_aIN);
xor2_5571: XOR2
    PORT MAP ( Y => O_dup_1505_aIN, IN1 => n_6823, IN2 => n_6828);
or2_5572: OR2
    PORT MAP ( Y => n_6823, IN1 => n_6824, IN2 => n_6826);
and1_5573: AND1
    PORT MAP ( Y => n_6824, IN1 => n_6825);
inv_5574: INV 
    PORT MAP ( Y => n_6825, IN1 => instrregout2_Q);
and1_5575: AND1
    PORT MAP ( Y => n_6826, IN1 => n_6827);
delay_5576: DELAY
    PORT MAP ( Y => n_6827, IN1 => I2_aOUT);
and1_5577: AND1
    PORT MAP ( Y => n_6828, IN1 => gnd);
delay_5578: DELAY
    PORT MAP ( Y => I0_dup_770_aOUT, IN1 => I0_dup_770_aIN);
xor2_5579: XOR2
    PORT MAP ( Y => I0_dup_770_aIN, IN1 => n_6830, IN2 => n_6834);
or1_5580: OR1
    PORT MAP ( Y => n_6830, IN1 => n_6831);
and2_5581: AND2
    PORT MAP ( Y => n_6831, IN1 => n_6832, IN2 => n_6833);
inv_5582: INV 
    PORT MAP ( Y => n_6832, IN1 => I1_dup_755_aOUT);
delay_5583: DELAY
    PORT MAP ( Y => n_6833, IN1 => O_dup_1505_aOUT);
and1_5584: AND1
    PORT MAP ( Y => n_6834, IN1 => gnd);
delay_5585: DELAY
    PORT MAP ( Y => I3_aOUT, IN1 => I3_aIN);
xor2_5586: XOR2
    PORT MAP ( Y => I3_aIN, IN1 => n_6837, IN2 => n_6841);
or1_5587: OR1
    PORT MAP ( Y => n_6837, IN1 => n_6838);
and2_5588: AND2
    PORT MAP ( Y => n_6838, IN1 => n_6839, IN2 => n_6840);
delay_5589: DELAY
    PORT MAP ( Y => n_6839, IN1 => O_dup_901_aOUT);
delay_5590: DELAY
    PORT MAP ( Y => n_6840, IN1 => instrregout3_Q);
and1_5591: AND1
    PORT MAP ( Y => n_6841, IN1 => gnd);
delay_5592: DELAY
    PORT MAP ( Y => regsel0_aOUT, IN1 => regsel0_aIN);
xor2_5593: XOR2
    PORT MAP ( Y => regsel0_aIN, IN1 => n_6843, IN2 => n_6852);
or3_5594: OR3
    PORT MAP ( Y => n_6843, IN1 => n_6844, IN2 => n_6846, IN3 => n_6849);
and1_5595: AND1
    PORT MAP ( Y => n_6844, IN1 => n_6845);
delay_5596: DELAY
    PORT MAP ( Y => n_6845, IN1 => I3_aOUT);
and2_5597: AND2
    PORT MAP ( Y => n_6846, IN1 => n_6847, IN2 => n_6848);
delay_5598: DELAY
    PORT MAP ( Y => n_6847, IN1 => I1_dup_670_aOUT);
delay_5599: DELAY
    PORT MAP ( Y => n_6848, IN1 => instrregout0_Q);
and2_5600: AND2
    PORT MAP ( Y => n_6849, IN1 => n_6850, IN2 => n_6851);
inv_5601: INV 
    PORT MAP ( Y => n_6850, IN1 => I2_aOUT);
delay_5602: DELAY
    PORT MAP ( Y => n_6851, IN1 => instrregout0_Q);
and1_5603: AND1
    PORT MAP ( Y => n_6852, IN1 => gnd);
delay_5604: DELAY
    PORT MAP ( Y => O_dup_1034_aOUT, IN1 => O_dup_1034_aIN);
xor2_5605: XOR2
    PORT MAP ( Y => O_dup_1034_aIN, IN1 => n_6854, IN2 => n_6861);
or2_5606: OR2
    PORT MAP ( Y => n_6854, IN1 => n_6855, IN2 => n_6858);
and2_5607: AND2
    PORT MAP ( Y => n_6855, IN1 => n_6856, IN2 => n_6857);
delay_5608: DELAY
    PORT MAP ( Y => n_6856, IN1 => I1_dup_670_aOUT);
delay_5609: DELAY
    PORT MAP ( Y => n_6857, IN1 => instrregout2_Q);
and2_5610: AND2
    PORT MAP ( Y => n_6858, IN1 => n_6859, IN2 => n_6860);
delay_5611: DELAY
    PORT MAP ( Y => n_6859, IN1 => O_dup_901_aOUT);
delay_5612: DELAY
    PORT MAP ( Y => n_6860, IN1 => instrregout5_Q);
and1_5613: AND1
    PORT MAP ( Y => n_6861, IN1 => gnd);
delay_5614: DELAY
    PORT MAP ( Y => I0_dup_768_aOUT, IN1 => I0_dup_768_aIN);
xor2_5615: XOR2
    PORT MAP ( Y => I0_dup_768_aIN, IN1 => n_6864, IN2 => n_6868);
or1_5616: OR1
    PORT MAP ( Y => n_6864, IN1 => n_6865);
and2_5617: AND2
    PORT MAP ( Y => n_6865, IN1 => n_6866, IN2 => n_6867);
inv_5618: INV 
    PORT MAP ( Y => n_6866, IN1 => O_dup_1034_aOUT);
inv_5619: INV 
    PORT MAP ( Y => n_6867, IN1 => regsel0_aOUT);
and1_5620: AND1
    PORT MAP ( Y => n_6868, IN1 => gnd);
delay_5621: DELAY
    PORT MAP ( Y => ix484_nx45_aOUT, IN1 => ix484_nx45_aIN);
xor2_5622: XOR2
    PORT MAP ( Y => ix484_nx45_aIN, IN1 => n_6870, IN2 => n_6874);
or1_5623: OR1
    PORT MAP ( Y => n_6870, IN1 => n_6871);
and2_5624: AND2
    PORT MAP ( Y => n_6871, IN1 => n_6872, IN2 => n_6873);
delay_5625: DELAY
    PORT MAP ( Y => n_6872, IN1 => I0_dup_770_aOUT);
delay_5626: DELAY
    PORT MAP ( Y => n_6873, IN1 => I0_dup_768_aOUT);
and1_5627: AND1
    PORT MAP ( Y => n_6874, IN1 => gnd);
delay_5628: DELAY
    PORT MAP ( Y => O_dup_873_aOUT, IN1 => O_dup_873_aIN);
xor2_5629: XOR2
    PORT MAP ( Y => O_dup_873_aIN, IN1 => n_6876, IN2 => n_6880);
or1_5630: OR1
    PORT MAP ( Y => n_6876, IN1 => n_6877);
and2_5631: AND2
    PORT MAP ( Y => n_6877, IN1 => n_6878, IN2 => n_6879);
delay_5632: DELAY
    PORT MAP ( Y => n_6878, IN1 => I2_dup_823_aOUT);
delay_5633: DELAY
    PORT MAP ( Y => n_6879, IN1 => ix484_nx45_aOUT);
and1_5634: AND1
    PORT MAP ( Y => n_6880, IN1 => gnd);
delay_5635: DELAY
    PORT MAP ( Y => I2_dup_756_aOUT, IN1 => I2_dup_756_aIN);
xor2_5636: XOR2
    PORT MAP ( Y => I2_dup_756_aIN, IN1 => n_6882, IN2 => n_6887);
or2_5637: OR2
    PORT MAP ( Y => n_6882, IN1 => n_6883, IN2 => n_6885);
and1_5638: AND1
    PORT MAP ( Y => n_6883, IN1 => n_6884);
delay_5639: DELAY
    PORT MAP ( Y => n_6884, IN1 => O_dup_1034_aOUT);
and1_5640: AND1
    PORT MAP ( Y => n_6885, IN1 => n_6886);
inv_5641: INV 
    PORT MAP ( Y => n_6886, IN1 => O_dup_1505_aOUT);
and1_5642: AND1
    PORT MAP ( Y => n_6887, IN1 => gnd);
delay_5643: DELAY
    PORT MAP ( Y => ix484_nx41_aOUT, IN1 => ix484_nx41_aIN);
xor2_5644: XOR2
    PORT MAP ( Y => ix484_nx41_aIN, IN1 => n_6889, IN2 => n_6894);
or1_5645: OR1
    PORT MAP ( Y => n_6889, IN1 => n_6890);
and3_5646: AND3
    PORT MAP ( Y => n_6890, IN1 => n_6891, IN2 => n_6892, IN3 => n_6893);
inv_5647: INV 
    PORT MAP ( Y => n_6891, IN1 => regsel0_aOUT);
inv_5648: INV 
    PORT MAP ( Y => n_6892, IN1 => I1_dup_755_aOUT);
delay_5649: DELAY
    PORT MAP ( Y => n_6893, IN1 => I2_dup_756_aOUT);
and1_5650: AND1
    PORT MAP ( Y => n_6894, IN1 => gnd);
delay_5651: DELAY
    PORT MAP ( Y => O_dup_870_aOUT, IN1 => O_dup_870_aIN);
xor2_5652: XOR2
    PORT MAP ( Y => O_dup_870_aIN, IN1 => n_6896, IN2 => n_6900);
or1_5653: OR1
    PORT MAP ( Y => n_6896, IN1 => n_6897);
and2_5654: AND2
    PORT MAP ( Y => n_6897, IN1 => n_6898, IN2 => n_6899);
delay_5655: DELAY
    PORT MAP ( Y => n_6898, IN1 => I2_dup_823_aOUT);
delay_5656: DELAY
    PORT MAP ( Y => n_6899, IN1 => ix484_nx41_aOUT);
and1_5657: AND1
    PORT MAP ( Y => n_6900, IN1 => gnd);
delay_5658: DELAY
    PORT MAP ( Y => ix484_nx38_aOUT, IN1 => ix484_nx38_aIN);
xor2_5659: XOR2
    PORT MAP ( Y => ix484_nx38_aIN, IN1 => n_6902, IN2 => n_6907);
or1_5660: OR1
    PORT MAP ( Y => n_6902, IN1 => n_6903);
and3_5661: AND3
    PORT MAP ( Y => n_6903, IN1 => n_6904, IN2 => n_6905, IN3 => n_6906);
delay_5662: DELAY
    PORT MAP ( Y => n_6904, IN1 => I1_dup_755_aOUT);
delay_5663: DELAY
    PORT MAP ( Y => n_6905, IN1 => regsel0_aOUT);
delay_5664: DELAY
    PORT MAP ( Y => n_6906, IN1 => I2_dup_756_aOUT);
and1_5665: AND1
    PORT MAP ( Y => n_6907, IN1 => gnd);
delay_5666: DELAY
    PORT MAP ( Y => O_dup_879_aOUT, IN1 => O_dup_879_aIN);
xor2_5667: XOR2
    PORT MAP ( Y => O_dup_879_aIN, IN1 => n_6909, IN2 => n_6913);
or1_5668: OR1
    PORT MAP ( Y => n_6909, IN1 => n_6910);
and2_5669: AND2
    PORT MAP ( Y => n_6910, IN1 => n_6911, IN2 => n_6912);
delay_5670: DELAY
    PORT MAP ( Y => n_6911, IN1 => I2_dup_823_aOUT);
delay_5671: DELAY
    PORT MAP ( Y => n_6912, IN1 => ix484_nx38_aOUT);
and1_5672: AND1
    PORT MAP ( Y => n_6913, IN1 => gnd);
delay_5673: DELAY
    PORT MAP ( Y => I0_dup_766_aOUT, IN1 => I0_dup_766_aIN);
xor2_5674: XOR2
    PORT MAP ( Y => I0_dup_766_aIN, IN1 => n_6915, IN2 => n_6919);
or1_5675: OR1
    PORT MAP ( Y => n_6915, IN1 => n_6916);
and2_5676: AND2
    PORT MAP ( Y => n_6916, IN1 => n_6917, IN2 => n_6918);
delay_5677: DELAY
    PORT MAP ( Y => n_6917, IN1 => I1_dup_755_aOUT);
delay_5678: DELAY
    PORT MAP ( Y => n_6918, IN1 => O_dup_1505_aOUT);
and1_5679: AND1
    PORT MAP ( Y => n_6919, IN1 => gnd);
delay_5680: DELAY
    PORT MAP ( Y => ix484_nx43_aOUT, IN1 => ix484_nx43_aIN);
xor2_5681: XOR2
    PORT MAP ( Y => ix484_nx43_aIN, IN1 => n_6921, IN2 => n_6925);
or1_5682: OR1
    PORT MAP ( Y => n_6921, IN1 => n_6922);
and2_5683: AND2
    PORT MAP ( Y => n_6922, IN1 => n_6923, IN2 => n_6924);
delay_5684: DELAY
    PORT MAP ( Y => n_6923, IN1 => I0_dup_768_aOUT);
delay_5685: DELAY
    PORT MAP ( Y => n_6924, IN1 => I0_dup_766_aOUT);
and1_5686: AND1
    PORT MAP ( Y => n_6925, IN1 => gnd);

END EPF10K10TC144_a3;
