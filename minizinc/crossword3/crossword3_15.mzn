%
% Crossword problem '15.06, 15 x 15' in MiniZinc.
%
% (generated Sat Sep 24 08:54:24 2011 by `make_crossword.pl 15 1` ).
%
% This crossword model was 
%
% This is problem '15.06, 15 x 15' from the Gecode crossword example:
%   http://www.gecode.org/doc-latest/reference/crossword_8cpp_source.html
% 
% 
% This MiniZinc model was created by Hakan Kjellerstrand, hakank@bonetmail.com
% See also my MiniZinc page: http://www.hakank.org/minizinc
%

%
% Gecode problem to solve (15): 15.06, 15 x 15
% 
%   _ _ _ _ _ _ _ * _ _ _ _ _ _ _
%   _ _ _ _ _ _ _ * _ _ _ _ _ _ _
%   _ _ _ _ _ _ _ * _ _ _ _ _ _ _
%   _ _ _ _ * _ _ _ _ _ * _ _ _ _
%   * * * _ _ _ * _ _ _ _ _ * * *
%   _ _ _ _ _ _ _ _ * _ _ _ _ _ _
%   _ _ _ _ _ _ _ _ _ * _ _ _ _ _
%   _ _ _ * _ _ _ _ _ _ _ * _ _ _
%   _ _ _ _ _ * _ _ _ _ _ _ _ _ _
%   _ _ _ _ _ _ * _ _ _ _ _ _ _ _
%   * * * _ _ _ _ _ * _ _ _ * * *
%   _ _ _ _ * _ _ _ _ _ * _ _ _ _
%   _ _ _ _ _ _ _ * _ _ _ _ _ _ _
%   _ _ _ _ _ _ _ * _ _ _ _ _ _ _
%   _ _ _ _ _ _ _ * _ _ _ _ _ _ _

include "crossword3.mzn"; 

problem_name = "15.06, 15 x 15";


% number of letters to assign
N = 195;


% distinct words
require_distinct_words = 1;

constraint
  table([L[1], L[2], L[3], L[4], L[5], L[6], L[7]], words7) 
/\ table([L[8], L[9], L[10], L[11], L[12], L[13], L[14]], words7) 
/\ table([L[15], L[16], L[17], L[18], L[19], L[20], L[21]], words7) 
/\ table([L[22], L[23], L[24], L[25], L[26], L[27], L[28]], words7) 
/\ table([L[29], L[30], L[31], L[32], L[33], L[34], L[35]], words7) 
/\ table([L[36], L[37], L[38], L[39], L[40], L[41], L[42]], words7) 
/\ table([L[43], L[44], L[45], L[46]], words4) 
/\ table([L[47], L[48], L[49], L[50], L[51]], words5) 
/\ table([L[52], L[53], L[54], L[55]], words4) 
/\ table([L[56], L[57], L[58]], words3) 
/\ table([L[59], L[60], L[61], L[62], L[63]], words5) 
/\ table([L[64], L[65], L[66], L[67], L[68], L[69], L[70], L[71]], words8) 
/\ table([L[72], L[73], L[74], L[75], L[76], L[77]], words6) 
/\ table([L[78], L[79], L[80], L[81], L[82], L[83], L[84], L[85], L[86]], words9) 
/\ table([L[87], L[88], L[89], L[90], L[91]], words5) 
/\ table([L[92], L[93], L[94]], words3) 
/\ table([L[95], L[96], L[97], L[98], L[99], L[100], L[101]], words7) 
/\ table([L[102], L[103], L[104]], words3) 
/\ table([L[105], L[106], L[107], L[108], L[109]], words5) 
/\ table([L[110], L[111], L[112], L[113], L[114], L[115], L[116], L[117], L[118]], words9) 
/\ table([L[119], L[120], L[121], L[122], L[123], L[124]], words6) 
/\ table([L[125], L[126], L[127], L[128], L[129], L[130], L[131], L[132]], words8) 
/\ table([L[133], L[134], L[135], L[136], L[137]], words5) 
/\ table([L[138], L[139], L[140]], words3) 
/\ table([L[141], L[142], L[143], L[144]], words4) 
/\ table([L[145], L[146], L[147], L[148], L[149]], words5) 
/\ table([L[150], L[151], L[152], L[153]], words4) 
/\ table([L[154], L[155], L[156], L[157], L[158], L[159], L[160]], words7) 
/\ table([L[161], L[162], L[163], L[164], L[165], L[166], L[167]], words7) 
/\ table([L[168], L[169], L[170], L[171], L[172], L[173], L[174]], words7) 
/\ table([L[175], L[176], L[177], L[178], L[179], L[180], L[181]], words7) 
/\ table([L[182], L[183], L[184], L[185], L[186], L[187], L[188]], words7) 
/\ table([L[189], L[190], L[191], L[192], L[193], L[194], L[195]], words7) 
/\ table([L[1], L[15], L[29], L[43]], words4) 
/\ table([L[64], L[78], L[92], L[105], L[119]], words5) 
/\ table([L[141], L[154], L[168], L[182]], words4) 
/\ table([L[2], L[16], L[30], L[44]], words4) 
/\ table([L[65], L[79], L[93], L[106], L[120]], words5) 
/\ table([L[142], L[155], L[169], L[183]], words4) 
/\ table([L[3], L[17], L[31], L[45]], words4) 
/\ table([L[66], L[80], L[94], L[107], L[121]], words5) 
/\ table([L[143], L[156], L[170], L[184]], words4) 
/\ table([L[4], L[18], L[32], L[46], L[56], L[67], L[81]], words7) 
/\ table([L[108], L[122], L[133], L[144], L[157], L[171], L[185]], words7) 
/\ table([L[5], L[19], L[33]], words3) 
/\ table([L[57], L[68], L[82], L[95], L[109], L[123], L[134]], words7) 
/\ table([L[158], L[172], L[186]], words3) 
/\ table([L[6], L[20], L[34], L[47], L[58], L[69], L[83], L[96]], words8) 
/\ table([L[124], L[135], L[145], L[159], L[173], L[187]], words6) 
/\ table([L[7], L[21], L[35], L[48]], words4) 
/\ table([L[70], L[84], L[97], L[110]], words4) 
/\ table([L[136], L[146], L[160], L[174], L[188]], words5) 
/\ table([L[49], L[59], L[71], L[85], L[98], L[111], L[125], L[137], L[147]], words9) 
/\ table([L[8], L[22], L[36], L[50], L[60]], words5) 
/\ table([L[86], L[99], L[112], L[126]], words4) 
/\ table([L[148], L[161], L[175], L[189]], words4) 
/\ table([L[9], L[23], L[37], L[51], L[61], L[72]], words6) 
/\ table([L[100], L[113], L[127], L[138], L[149], L[162], L[176], L[190]], words8) 
/\ table([L[10], L[24], L[38]], words3) 
/\ table([L[62], L[73], L[87], L[101], L[114], L[128], L[139]], words7) 
/\ table([L[163], L[177], L[191]], words3) 
/\ table([L[11], L[25], L[39], L[52], L[63], L[74], L[88]], words7) 
/\ table([L[115], L[129], L[140], L[150], L[164], L[178], L[192]], words7) 
/\ table([L[12], L[26], L[40], L[53]], words4) 
/\ table([L[75], L[89], L[102], L[116], L[130]], words5) 
/\ table([L[151], L[165], L[179], L[193]], words4) 
/\ table([L[13], L[27], L[41], L[54]], words4) 
/\ table([L[76], L[90], L[103], L[117], L[131]], words5) 
/\ table([L[152], L[166], L[180], L[194]], words4) 
/\ table([L[14], L[28], L[42], L[55]], words4) 
/\ table([L[77], L[91], L[104], L[118], L[132]], words5) 
/\ table([L[153], L[167], L[181], L[195]], words4)
;

% The segments (words)
% (0 for fill outs)
int: max_length = 15;
int: num_segments = 72;
array[1..num_segments, 1..max_length] of int: segments = array2d(1..num_segments, 1..max_length, 
[
1,2,3,4,5,6,7,0,0,0,0,0,0,0,0,
8,9,10,11,12,13,14,0,0,0,0,0,0,0,0,
15,16,17,18,19,20,21,0,0,0,0,0,0,0,0,
22,23,24,25,26,27,28,0,0,0,0,0,0,0,0,
29,30,31,32,33,34,35,0,0,0,0,0,0,0,0,
36,37,38,39,40,41,42,0,0,0,0,0,0,0,0,
43,44,45,46,0,0,0,0,0,0,0,0,0,0,0,
47,48,49,50,51,0,0,0,0,0,0,0,0,0,0,
52,53,54,55,0,0,0,0,0,0,0,0,0,0,0,
56,57,58,0,0,0,0,0,0,0,0,0,0,0,0,
59,60,61,62,63,0,0,0,0,0,0,0,0,0,0,
64,65,66,67,68,69,70,71,0,0,0,0,0,0,0,
72,73,74,75,76,77,0,0,0,0,0,0,0,0,0,
78,79,80,81,82,83,84,85,86,0,0,0,0,0,0,
87,88,89,90,91,0,0,0,0,0,0,0,0,0,0,
92,93,94,0,0,0,0,0,0,0,0,0,0,0,0,
95,96,97,98,99,100,101,0,0,0,0,0,0,0,0,
102,103,104,0,0,0,0,0,0,0,0,0,0,0,0,
105,106,107,108,109,0,0,0,0,0,0,0,0,0,0,
110,111,112,113,114,115,116,117,118,0,0,0,0,0,0,
119,120,121,122,123,124,0,0,0,0,0,0,0,0,0,
125,126,127,128,129,130,131,132,0,0,0,0,0,0,0,
133,134,135,136,137,0,0,0,0,0,0,0,0,0,0,
138,139,140,0,0,0,0,0,0,0,0,0,0,0,0,
141,142,143,144,0,0,0,0,0,0,0,0,0,0,0,
145,146,147,148,149,0,0,0,0,0,0,0,0,0,0,
150,151,152,153,0,0,0,0,0,0,0,0,0,0,0,
154,155,156,157,158,159,160,0,0,0,0,0,0,0,0,
161,162,163,164,165,166,167,0,0,0,0,0,0,0,0,
168,169,170,171,172,173,174,0,0,0,0,0,0,0,0,
175,176,177,178,179,180,181,0,0,0,0,0,0,0,0,
182,183,184,185,186,187,188,0,0,0,0,0,0,0,0,
189,190,191,192,193,194,195,0,0,0,0,0,0,0,0,
1,15,29,43,0,0,0,0,0,0,0,0,0,0,0,
64,78,92,105,119,0,0,0,0,0,0,0,0,0,0,
141,154,168,182,0,0,0,0,0,0,0,0,0,0,0,
2,16,30,44,0,0,0,0,0,0,0,0,0,0,0,
65,79,93,106,120,0,0,0,0,0,0,0,0,0,0,
142,155,169,183,0,0,0,0,0,0,0,0,0,0,0,
3,17,31,45,0,0,0,0,0,0,0,0,0,0,0,
66,80,94,107,121,0,0,0,0,0,0,0,0,0,0,
143,156,170,184,0,0,0,0,0,0,0,0,0,0,0,
4,18,32,46,56,67,81,0,0,0,0,0,0,0,0,
108,122,133,144,157,171,185,0,0,0,0,0,0,0,0,
5,19,33,0,0,0,0,0,0,0,0,0,0,0,0,
57,68,82,95,109,123,134,0,0,0,0,0,0,0,0,
158,172,186,0,0,0,0,0,0,0,0,0,0,0,0,
6,20,34,47,58,69,83,96,0,0,0,0,0,0,0,
124,135,145,159,173,187,0,0,0,0,0,0,0,0,0,
7,21,35,48,0,0,0,0,0,0,0,0,0,0,0,
70,84,97,110,0,0,0,0,0,0,0,0,0,0,0,
136,146,160,174,188,0,0,0,0,0,0,0,0,0,0,
49,59,71,85,98,111,125,137,147,0,0,0,0,0,0,
8,22,36,50,60,0,0,0,0,0,0,0,0,0,0,
86,99,112,126,0,0,0,0,0,0,0,0,0,0,0,
148,161,175,189,0,0,0,0,0,0,0,0,0,0,0,
9,23,37,51,61,72,0,0,0,0,0,0,0,0,0,
100,113,127,138,149,162,176,190,0,0,0,0,0,0,0,
10,24,38,0,0,0,0,0,0,0,0,0,0,0,0,
62,73,87,101,114,128,139,0,0,0,0,0,0,0,0,
163,177,191,0,0,0,0,0,0,0,0,0,0,0,0,
11,25,39,52,63,74,88,0,0,0,0,0,0,0,0,
115,129,140,150,164,178,192,0,0,0,0,0,0,0,0,
12,26,40,53,0,0,0,0,0,0,0,0,0,0,0,
75,89,102,116,130,0,0,0,0,0,0,0,0,0,0,
151,165,179,193,0,0,0,0,0,0,0,0,0,0,0,
13,27,41,54,0,0,0,0,0,0,0,0,0,0,0,
76,90,103,117,131,0,0,0,0,0,0,0,0,0,0,
152,166,180,194,0,0,0,0,0,0,0,0,0,0,0,
14,28,42,55,0,0,0,0,0,0,0,0,0,0,0,
77,91,104,118,132,0,0,0,0,0,0,0,0,0,0,
153,167,181,195,0,0,0,0,0,0,0,0,0,0,0,

]);

% Problem where each cell is assigned a unique index.
% (0 means blocked cell)
int: rows = 15;
int: cols = 15;
array[1..rows, 1..cols] of int: problem = array2d(1..rows, 1..cols,
[
1, 2, 3, 4, 5, 6, 7, 0, 8, 9, 10, 11, 12, 13, 14, 
15, 16, 17, 18, 19, 20, 21, 0, 22, 23, 24, 25, 26, 27, 28, 
29, 30, 31, 32, 33, 34, 35, 0, 36, 37, 38, 39, 40, 41, 42, 
43, 44, 45, 46, 0, 47, 48, 49, 50, 51, 0, 52, 53, 54, 55, 
0, 0, 0, 56, 57, 58, 0, 59, 60, 61, 62, 63, 0, 0, 0, 
64, 65, 66, 67, 68, 69, 70, 71, 0, 72, 73, 74, 75, 76, 77, 
78, 79, 80, 81, 82, 83, 84, 85, 86, 0, 87, 88, 89, 90, 91, 
92, 93, 94, 0, 95, 96, 97, 98, 99, 100, 101, 0, 102, 103, 104, 
105, 106, 107, 108, 109, 0, 110, 111, 112, 113, 114, 115, 116, 117, 118, 
119, 120, 121, 122, 123, 124, 0, 125, 126, 127, 128, 129, 130, 131, 132, 
0, 0, 0, 133, 134, 135, 136, 137, 0, 138, 139, 140, 0, 0, 0, 
141, 142, 143, 144, 0, 145, 146, 147, 148, 149, 0, 150, 151, 152, 153, 
154, 155, 156, 157, 158, 159, 160, 0, 161, 162, 163, 164, 165, 166, 167, 
168, 169, 170, 171, 172, 173, 174, 0, 175, 176, 177, 178, 179, 180, 181, 
182, 183, 184, 185, 186, 187, 188, 0, 189, 190, 191, 192, 193, 194, 195, 

]);


