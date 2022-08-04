_<x> := PolynomialRing(Rationals());


intrinsic CMList() -> Any
{}

//L26 := < 1,-1,3,-3,QuadraticField(5).1,-QuadraticField(5).1,QuadraticField(-3).1,QuadraticField(-3).1,0,9/5,-9/5>;
L26 := < Rationals()!1,Rationals()!-1,Rationals()!3,Rationals()!-3,NumberField(x^2-5).1,-NumberField(x^2-5).1,QuadraticField(-3).1,QuadraticField(-3).1,0,9/5,-9/5>;

L38 := < 1,-1,0,QuadraticField(-1).1,-QuadraticField(-1).1,QuadraticField(-3).1,-QuadraticField(-3).1,3,-3,2/9,-2/9,
QuadraticField(-19).1/3,-QuadraticField(-19).1/3,QuadraticField(29).1/9,-QuadraticField(29).1/9,
3*QuadraticField(-1).1/7,-3*QuadraticField(-1).1/7,
3*QuadraticField(-19).1/4,-3*QuadraticField(-19).1/4>;


L39 := <0,(1+QuadraticField(5).1)/2,(1-QuadraticField(5).1)/2,1,-1,1-QuadraticField(2).1,1+QuadraticField(2).1,-1/2,2,
(-1+QuadraticField(5).1)/2,(-1-QuadraticField(5).1)/2,-1/3,3,(2+QuadraticField(13).1)/3,(2-QuadraticField(13).1)/3,
(4+QuadraticField(11).1)/5,(4-QuadraticField(11).1)/5,-5/7,7/5,2+QuadraticField(5).1,2-QuadraticField(5).1,
(-8+QuadraticField(89).1)/5,(-8-QuadraticField(89).1)/5,
(1+5*QuadraticField(2).1)/7,(1-5*QuadraticField(2).1)/7,
(-6+5*QuadraticField(13).1)/17,(-6-5*QuadraticField(13).1)/17>;


L51 := <1,-1,0,-1/QuadraticField(-3).1,1/QuadraticField(-3).1,1/3,-1/3,QuadraticField(-3).1,-QuadraticField(-3).1,1/4,-1/4,
QuadraticField(-11).1/3,-QuadraticField(-11).1/3,-5/QuadraticField(-3).1,5/QuadraticField(-3).1,
-1/QuadraticField(-6).1,1/QuadraticField(-6).1>;


L55 :=<
1/2,-2,0,
(1+QuadraticField(5).1)/2,(1-QuadraticField(5).1)/2,1,-1,(-1+QuadraticField(5).1)/2,(-1-QuadraticField(5).1)/2,
-1/3,3,-1+QuadraticField(2).1,-1-QuadraticField(2).1,
-2+QuadraticField(5).1,-2-QuadraticField(5).1,-3/2,2/3,
(1+QuadraticField(17).1)/4,(1-QuadraticField(17).1)/4,
(-2+5*QuadraticField(5).1)/11,(-2-5*QuadraticField(5).1)/11,
(-2+QuadraticField(13).1)/3,(-2-QuadraticField(13).1)/3>;

L58 := < 3*QuadraticField(-3).1,-3*QuadraticField(-3).1,QuadraticField(-11).1,-QuadraticField(-11).1,
QuadraticField(-19).1,-QuadraticField(-19).1,QuadraticField(-3).1,-QuadraticField(-3).1,QuadraticField(5).1,-QuadraticField(5).1,
QuadraticField(-43).1,-QuadraticField(43).1,5*QuadraticField(-1).1,-5*QuadraticField(-1).1,
QuadraticField(-163).1/5,-QuadraticField(-163).1/5,0>;

L62 := <0,1,-1,QuadraticField(-1).1,-QuadraticField(-1).1,1/QuadraticField(-2).1,-1/QuadraticField(-2).1,1/2,-1/2,5,-5,
2*QuadraticField(-1).1/3,-2*QuadraticField(-1).1/3,QuadraticField(-13).1/2,-QuadraticField(-13).1/2>;


L69 := < 1,-1,0,QuadraticField(-3).1,-QuadraticField(-3).1,3/QuadraticField(5).1,-3/QuadraticField(5).1,
QuadraticField(5).1,-QuadraticField(5).1,1/QuadraticField(-3).1,-1/QuadraticField(-3).1,
3/QuadraticField(-7).1,-3/QuadraticField(-7).1,5/3,-5/3,3*QuadraticField(-3).1,-3*QuadraticField(-3).1>;

L74 := < 1,-1,QuadraticField(5).1,-QuadraticField(5).1,QuadraticField(-3).1,-QuadraticField(-3).1,
2+QuadraticField(5).1,-2+QuadraticField(5).1,2-QuadraticField(5).1,-2-QuadraticField(5).1,3,-3,
2+QuadraticField(-3).1,-2+QuadraticField(-3).1,2-QuadraticField(-3).1,-2-QuadraticField(-3).1,
QuadraticField(13).1,-QuadraticField(13).1,QuadraticField(-11).1,QuadraticField(-11).1,
2+QuadraticField(13).1,-2+QuadraticField(13).1,2-QuadraticField(13).1,-2-QuadraticField(13).1,0,7,-7>;

L86 := <1,-1,QuadraticField(-3).1,-QuadraticField(-3).1,
2+QuadraticField(5).1,-2+QuadraticField(5).1,2-QuadraticField(5).1,-2-QuadraticField(5).1,
QuadraticField(5).1,-QuadraticField(5).1,0,QuadraticField(-1).1,-QuadraticField(-1).1,
Roots(x^4-10*x^2-7,SplittingField(x^4-10*x^2-7))[1,1],Roots(x^4-10*x^2-7,SplittingField(x^4-10*x^2-7))[2,1],
Roots(x^4-10*x^2-7,SplittingField(x^4-10*x^2-7))[3,1],Roots(x^4-10*x^2-7,SplittingField(x^4-10*x^2-7))[4,1],
3,-3,
Roots(x^4-8*x^2-1,SplittingField(x^4-8*x^2-1))[1,1],Roots(x^4-8*x^2-1,SplittingField(x^4-8*x^2-1))[2,1],
Roots(x^4-8*x^2-1,SplittingField(x^4-8*x^2-1))[3,1],Roots(x^4-8*x^2-1,SplittingField(x^4-8*x^2-1))[4,1],
Roots(x^4-14*x^2+961,SplittingField((x^2-19)*(x^2+3)))[1,1],Roots(x^4-14*x^2+961,SplittingField((x^2-19)*(x^2+3)))[2,1],
Roots(x^4-14*x^2+961,SplittingField((x^2-19)*(x^2+3)))[3,1],Roots(x^4-14*x^2+961,SplittingField((x^2-19)*(x^2+3)))[4,1],
QuadraticField(29).1,-QuadraticField(29).1>;

L87 := <0, QuadraticField(-3).1,-QuadraticField(-3).1,1,-1,3,-3,QuadraticField(-1).1,-QuadraticField(-1).1,
QuadraticField(-3).1/3,-QuadraticField(-3).1/3,
3/QuadraticField(-7).1,-3/QuadraticField(-7).1,
QuadraticField(-15).1/3,-QuadraticField(-15).1/3>;

L94 := <2,-2,0,QuadraticField(2).1,-QuadraticField(2).1,1,-1,
(1+QuadraticField(17).1)/2,(1-QuadraticField(17).1)/2,(-1+QuadraticField(17).1)/2,(-1-QuadraticField(17).1)/2,
Roots(x^4 - 5*x^2 + 8,SplittingField(x^4 - 5*x^2 + 8))[1,1],Roots(x^4 - 5*x^2 + 8,SplittingField(x^4 - 5*x^2 + 8))[2,1],
Roots(x^4 - 5*x^2 + 8,SplittingField(x^4 - 5*x^2 + 8))[3,1],Roots(x^4 - 5*x^2 + 8,SplittingField(x^4 - 5*x^2 + 8))[4,1],
Roots(x^4 - 3*x^2 + 4,SplittingField((x^2+1)*(x^2-7)))[1,1],Roots(x^4 - 3*x^2 + 4,SplittingField((x^2+1)*(x^2-7)))[2,1],
Roots(x^4 - 3*x^2 + 4,SplittingField((x^2+1)*(x^2-7)))[3,1],Roots(x^4 - 3*x^2 + 4,SplittingField((x^2+1)*(x^2-7)))[4,1],
1+QuadraticField(5).1,-1+QuadraticField(5).1,1-QuadraticField(5).1,-1-QuadraticField(5).1,
2*QuadraticField(-1).1,-2*QuadraticField(-1).1,
Roots(x^4 - 6*x^2 + 16,SplittingField(x^4 - 6*x^2 + 16))[1,1],Roots(x^4 - 6*x^2 + 16,SplittingField(x^4 - 6*x^2 + 16))[2,1],
Roots(x^4 - 6*x^2 + 16,SplittingField(x^4 - 6*x^2 + 16))[3,1],Roots(x^4 - 6*x^2 + 16,SplittingField(x^4 - 6*x^2 + 16))[4,1],
4/QuadraticField(5).1,-4/QuadraticField(5).1>;

L95 := <0,QuadraticField(-1).1,-QuadraticField(-1).1,-2,1/2,(1+QuadraticField(5).1)/2,(1-QuadraticField(5).1)/2,1,-1,
(-1+QuadraticField(5).1)/2,(-1-QuadraticField(5).1)/2,-1/3,3,-2+QuadraticField(5).1,-2+QuadraticField(5).1,
(1+5*QuadraticField(2).1)/7,(1-5*QuadraticField(2).1)/7>;

L111 := < (-1 + QuadraticField(5).1)/2, (-1 - QuadraticField(5).1)/2, 0,
1 + QuadraticField(2).1, 1- QuadraticField(2).1, 1, -1, (1 + QuadraticField(17).1)/4,
(1-QuadraticField(17).1)/4, (-1 + QuadraticField(-1).1)/2, (-1-QuadraticField(-1).1)/2,
(1-QuadraticField(-1).1), (1+QuadraticField(-1).1), (1+QuadraticField(5).1)/2, (1-QuadraticField(5).1)/2,
QuadraticField(-1).1,-QuadraticField(-1).1,-1/2,2,(5 + QuadraticField(89).1)/8,
(5 - QuadraticField(89).1)/8, -2 + QuadraticField(5).1, -2 - QuadraticField(5).1 >;

L119 := < 1, -1, 0, QuadraticField(-3).1, -QuadraticField(-3).1,
Roots(x^4 - 10*x^2 - 7,SplittingField(x^4 - 10*x^2 - 7))[1,1],Roots(x^4 - 10*x^2 - 7,SplittingField(x^4 - 10*x^2 - 7))[2,1],
Roots(x^4 - 10*x^2 - 7,SplittingField(x^4 - 10*x^2 - 7))[3,1],Roots(x^4 - 10*x^2 - 7,SplittingField(x^4 - 10*x^2 - 7))[4,1],
Roots(3*x^4 +6*x^2 + 7,SplittingField(3*x^4 +6*x^2 + 7))[1,1],Roots(3*x^4 +6*x^2 + 7,SplittingField(3*x^4 +6*x^2 + 7))[2,1],
Roots(3*x^4 +6*x^2 + 7,SplittingField(3*x^4 +6*x^2 + 7))[3,1],Roots(3*x^4 +6*x^2 + 7,SplittingField(3*x^4 +6*x^2 + 7))[4,1],
QuadraticField(-7).1,-QuadraticField(-7).1,
Roots(x^4-2*x^2 + 49,SplittingField(x^4-2*x^2 + 49))[1,1],Roots(x^4-2*x^2 + 49,SplittingField(x^4-2*x^2 + 49))[2,1],
Roots(x^4-2*x^2 + 49,SplittingField(x^4-2*x^2 + 49))[3,1],Roots(x^4-2*x^2 + 49,SplittingField(x^4-2*x^2 + 49))[4,1],
QuadraticField(-1).1,-QuadraticField(-1).1,3, -3,
(1 + 2*QuadraticField(-2).1)/3, (-1 + 2*QuadraticField(-2).1)/3,
(1 - 2*QuadraticField(-2).1)/3, (-1 - 2*QuadraticField(-2).1)/3, QuadraticField(5).1, -QuadraticField(5).1>;


L134 := < 1, 0, (1+QuadraticField(-3).1)/2, (1-QuadraticField(-3).1)/2,
(1+QuadraticField(5).1)/2, (-1+QuadraticField(5).1)/2,
(1-QuadraticField(5).1)/2, (-1-QuadraticField(5).1)/2,
(3+QuadraticField(5).1)/2, (3-QuadraticField(5).1)/2, -1,
(5+QuadraticField(-11).1)/6, (5-QuadraticField(-11).1)/6,
(-1+QuadraticField(13).1)/2, (-1-QuadraticField(13).1)/2,
(1+QuadraticField(13).1)/6, (1-QuadraticField(13).1)/6,
QuadraticField(-1).1,-QuadraticField(-1).1,
1/2,2 >;

L146 := < 0, (1+QuadraticField(5).1)/2,(1-QuadraticField(5).1)/2,
(-1+QuadraticField(5).1)/2,(-1-QuadraticField(5).1)/2,
1, -1,
(1+QuadraticField(-3).1)/2, (-1+QuadraticField(-3).1)/2,
(1-QuadraticField(-3).1)/2,(-1-QuadraticField(-3).1)/2,
(3+QuadraticField(13).1)/2, (3-QuadraticField(13).1)/2,
1 + QuadraticField(2).1, 1- QuadraticField(2).1,
Roots(x^4 - x^2 + 1,SplittingField((x^2+1)*(x^2-3)))[1,1],Roots(x^4 - x^2 + 1,SplittingField((x^2+1)*(x^2-3)))[2,1],
Roots(x^4 - x^2 + 1,SplittingField((x^2+1)*(x^2-3)))[3,1],Roots(x^4 - x^2 + 1,SplittingField((x^2+1)*(x^2-3)))[4,1],
(5+QuadraticField(29).1)/2,(5-QuadraticField(29).1)/2,
QuadraticField(-1).1,-QuadraticField(-1).1>;


L159 := < 0, 1, -1, Roots(3*x^4 + 14*x^2 - 1,SplittingField(3*x^4 + 14*x^2 - 1))[1,1],Roots(3*x^4 + 14*x^2 - 1,SplittingField(3*x^4 + 14*x^2 - 1))[2,1],
Roots(3*x^4 + 14*x^2 - 1,SplittingField(3*x^4 + 14*x^2 - 1))[3,1],Roots(3*x^4 + 14*x^2 - 1,SplittingField(3*x^4 + 14*x^2 - 1))[4,1],
QuadraticField(-1).1,-QuadraticField(-1).1,
1/QuadraticField(-3).1,-1/QuadraticField(-3).1,
1/3,-1/3,1/QuadraticField(5).1,-1/QuadraticField(5).1,
Roots(9*x^4 + 22*x^2 + 1,SplittingField((x^2+1)*(x^2+7)))[1,1],Roots(9*x^4 + 22*x^2 + 1,SplittingField((x^2+1)*(x^2+7)))[2,1],
Roots(9*x^4 + 22*x^2 + 1,SplittingField((x^2+1)*(x^2+7)))[3,1],Roots(9*x^4 + 22*x^2 + 1,SplittingField((x^2+1)*(x^2+7)))[4,1],
Roots(9*x^4 - 26*x^2 + 1,SplittingField((x^2-2)*(x^2-5)))[1,1],Roots(9*x^4 - 26*x^2 + 1,SplittingField((x^2-2)*(x^2-5)))[2,1],
Roots(9*x^4 - 26*x^2 + 1,SplittingField((x^2-2)*(x^2-5)))[3,1],Roots(9*x^4 - 26*x^2 + 1,SplittingField((x^2-2)*(x^2-5)))[4,1],
Roots(27*x^4-10*x^2 - 1,SplittingField(27*x^4-10*x^2 - 1))[1,1],Roots(27*x^4-10*x^2 - 1,SplittingField(27*x^4-10*x^2 - 1))[2,1],
Roots(27*x^4-10*x^2 - 1,SplittingField(27*x^4-10*x^2 - 1))[3,1],Roots(27*x^4-10*x^2 - 1,SplittingField(27*x^4-10*x^2 - 1))[4,1],
Roots(81*x^4+14*x^2+1,SplittingField(81*x^4+14*x^2+1))[1,1],Roots(81*x^4+14*x^2+1,SplittingField(81*x^4+14*x^2+1))[2,1],
Roots(81*x^4+14*x^2+1,SplittingField(81*x^4+14*x^2+1))[3,1],Roots(81*x^4+14*x^2+1,SplittingField(81*x^4+14*x^2+1))[4,1],
QuadraticField(-3).1,-QuadraticField(-3).1,
QuadraticField(5).1,QuadraticField(5).1>;





L194 := <0, (1+QuadraticField(5).1)/2,(1-QuadraticField(5).1)/2,(-1+QuadraticField(5).1)/2,(-1-QuadraticField(5).1)/2,
(1+QuadraticField(-3).1)/2,(1-QuadraticField(-3).1)/2,(-1+QuadraticField(-3).1)/2,(-1-QuadraticField(-3).1)/2,
(-3+QuadraticField(13).1)/2,(-3-QuadraticField(13).1)/2,1,-1,
(-3+QuadraticField(-3).1)/2,(-3-QuadraticField(-3).1)/2,(3+QuadraticField(-3).1)/6,(3-QuadraticField(-3).1)/6,
(-1+QuadraticField(37).1)/6,(-1-QuadraticField(37).1)/6,
(5+QuadraticField(29).1)/2,(5-QuadraticField(29).1)/2,
(3+QuadraticField(5).1)/2,(3-QuadraticField(5).1)/2,(-3+QuadraticField(5).1)/2,(-3-QuadraticField(5).1)/2,
QuadraticField(-1).1,-QuadraticField(-1).1>;

L206 := <0,1,-1,QuadraticField(-1).1,-QuadraticField(-1).1,
Roots(x^4+x^2+2,SplittingField(x^4+x^2+2))[1,1],Roots(x^4+x^2+2,SplittingField(x^4+x^2+2))[2,1],
Roots(x^4+x^2+2,SplittingField(x^4+x^2+2))[3,1],Roots(x^4+x^2+2,SplittingField(x^4+x^2+2))[4,1],
Roots(x^4+3*x^2+4,SplittingField(x^4+3*x^2+4))[1,1],Roots(x^4+3*x^2+4,SplittingField(x^4+3*x^2+4))[2,1],
Roots(x^4+3*x^2+4,SplittingField(x^4+3*x^2+4))[3,1],Roots(x^4+3*x^2+4,SplittingField(x^4+3*x^2+4))[4,1],
Roots(x^4-x^2+4,SplittingField(x^4-x^2+4))[1,1],Roots(x^4-x^2+4,SplittingField(x^4-x^2+4))[2,1],
Roots(x^4-x^2+4,SplittingField(x^4-x^2+4))[3,1],Roots(x^4-x^2+4,SplittingField(x^4-x^2+4))[4,1],
Roots(x^4-7*x^2+4,SplittingField((x^2-3)*(x^2-11)))[1,1],Roots(x^4-7*x^2+4,SplittingField((x^2-3)*(x^2-11)))[2,1],
Roots(x^4-7*x^2+4,SplittingField((x^2-3)*(x^2-11)))[3,1],Roots(x^4-7*x^2+4,SplittingField((x^2-3)*(x^2-11)))[4,1],
2,-2,
Roots(x^4+3*x^2+8,SplittingField(x^4+3*x^2+8))[1,1],Roots(x^4+3*x^2+8,SplittingField(x^4+3*x^2+8))[2,1],
Roots(x^4+3*x^2+8,SplittingField(x^4+3*x^2+8))[3,1],Roots(x^4+3*x^2+8,SplittingField(x^4+3*x^2+8))[4,1],
QuadraticField(-2).1,-QuadraticField(-2).1,
2+QuadraticField(5).1,2-QuadraticField(5).1,-2+QuadraticField(5).1,-2-QuadraticField(5).1,
Roots(x^4+x^2+1,SplittingField(x^4+x^2+1))[1,1],Roots(x^4+x^2+1,SplittingField(x^4+x^2+1))[2,1],
Roots(x^4+x^2+1,SplittingField(x^4+x^2+1))[3,1],Roots(x^4+x^2+1,SplittingField(x^4+x^2+1))[4,1],
Roots(x^4+3*x^2-8,SplittingField(x^4+3*x^2-8))[1,1],Roots(x^4+3*x^2-8,SplittingField(x^4+3*x^2-8))[2,1],
Roots(x^4+3*x^2-8,SplittingField(x^4+3*x^2-8))[3,1],Roots(x^4+3*x^2-8,SplittingField(x^4+3*x^2-8))[4,1],
Roots(x^4+14*x^2+1,SplittingField((x^2+1)*(x^2+3)))[1,1],Roots(x^4+14*x^2+1,SplittingField((x^2+1)*(x^2+3)))[2,1],
Roots(x^4+14*x^2+1,SplittingField((x^2+1)*(x^2+3)))[3,1],Roots(x^4+14*x^2+1,SplittingField((x^2+1)*(x^2+3)))[4,1]>;


//w66 is the hyperelliptic involution, for X<6,11>/<w66>, x is unchanged, use table for  X<6,11>/<w66>
L6x11 := <-1,0,1,-1+QuadraticField(2).1,-1-QuadraticField(2).1,
-2+QuadraticField(5).1,-2-QuadraticField(5).1,(-1+QuadraticField(5).1)/2,(-1-QuadraticField(5).1)/2,
-3,-2,1/3,1/2,
(-3+QuadraticField(17).1)/4,(-3-QuadraticField(17).1)/4,(-3+QuadraticField(17).1)/2,(-3+QuadraticField(17).1)/2,
(-3+QuadraticField(13).1)/2,(-3-QuadraticField(13).1)/2,(-2+QuadraticField(13).1)/3,(-2-QuadraticField(13).1)/3,
Roots(x^4 + 3*x^3 + 2*x^2 - 3*x + 1,SplittingField((x^2-21)*(x^2+7)))[1,1],Roots(x^4 + 3*x^3 + 2*x^2 - 3*x + 1,SplittingField((x^2-21)*(x^2+7)))[2,1],
Roots(x^4 + 3*x^3 + 2*x^2 - 3*x + 1,SplittingField((x^2-21)*(x^2+7)))[3,1],Roots(x^4 + 3*x^3 + 2*x^2 - 3*x + 1,SplittingField((x^2-21)*(x^2+7)))[4,1],
1+QuadraticField(2).1,1-QuadraticField(2).1,
Roots(x^4 + x^3 + 2*x^2 - x + 1,SplittingField((x^2-5)*(x^2+15)))[1,1],Roots(x^4 + x^3 + 2*x^2 - x + 1,SplittingField((x^2-5)*(x^2+15)))[2,1],
Roots(x^4 + x^3 + 2*x^2 - x + 1,SplittingField((x^2-5)*(x^2+15)))[3,1],Roots(x^4 + x^3 + 2*x^2 - x + 1,SplittingField((x^2-5)*(x^2+15)))[4,1],
(-5+QuadraticField(41).1)/2,(-5-QuadraticField(41).1)/2,(-5+QuadraticField(41).1)/8,(-5-QuadraticField(41).1)/8,
QuadraticField(-1).1,-QuadraticField(-1).1>;

L6x19 := < 1,-1,0,(1+QuadraticField(5).1)/2,(-1+QuadraticField(5).1)/2,(1-QuadraticField(5).1)/2,(-1-QuadraticField(5).1)/2,
(1+QuadraticField(-3).1)/2,(1-QuadraticField(-3).1)/2,(-1+QuadraticField(-3).1)/2,(-1-QuadraticField(-3).1)/2,
(3+QuadraticField(13).1)/2,(3-QuadraticField(13).1)/2,(-3+QuadraticField(13).1)/2,(-3-QuadraticField(13).1)/2,
2,-2,1/2,-1/2,
Roots(x^4-5*x^2+1,SplittingField((x^2-3)*(x^2-7)))[1,1],Roots(x^4-5*x^2+1,SplittingField((x^2-3)*(x^2-7)))[2,1],
Roots(x^4-5*x^2+1,SplittingField((x^2-3)*(x^2-7)))[3,1],Roots(x^4-5*x^2+1,SplittingField((x^2-3)*(x^2-7)))[4,1],
1+QuadraticField(2).1,1-QuadraticField(2).1,-1+QuadraticField(2).1,-1-QuadraticField(2).1,
Roots(x^4-x^2+1,SplittingField((x^2+1)*(x^2-3)))[1,1],Roots(x^4-x^2+1,SplittingField((x^2+1)*(x^2-3)))[2,1],
Roots(x^4-x^2+1,SplittingField((x^2+1)*(x^2-3)))[3,1],Roots(x^4-x^2+1,SplittingField((x^2+1)*(x^2-3)))[4,1],
(1+QuadraticField(37).1)/6,(1-QuadraticField(37).1)/6,(-1+QuadraticField(37).1)/6,(-1-QuadraticField(37).1)/6,
QuadraticField(-1).1,QuadraticField(-1).1>;


L6x29 := < 0, QuadraticField(2).1,-QuadraticField(2).1,
(3+QuadraticField(17).1)/2,(3-QuadraticField(17).1)/2,(-3+QuadraticField(17).1)/2,(3-QuadraticField(17).1)/2,
QuadraticField(-1).1,-QuadraticField(-1).1,2*QuadraticField(-1).1,-2*QuadraticField(-1).1,
1,-1,2,-2,
QuadraticField(2).1/2,-QuadraticField(2).1/2,2*QuadraticField(2).1,-2*QuadraticField(2).1,
Roots(x^4-x^2+4,SplittingField(x^4-x^2+4))[1,1],Roots(x^4-x^2+4,SplittingField(x^4-x^2+4))[2,1],
Roots(x^4-x^2+4,SplittingField(x^4-x^2+4))[3,1],Roots(x^4-x^2+4,SplittingField(x^4-x^2+4))[4,1],
(3+QuadraticField(41).1)/4,(3-QuadraticField(41).1)/4,(-3+QuadraticField(41).1)/4,(-3-QuadraticField(41).1)/4,
Roots(x^4-7*x^2+4,SplittingField((x^2-3)*(x^2-11)))[1,1],Roots(x^4-7*x^2+4,SplittingField((x^2-3)*(x^2-11)))[2,1],
Roots(x^4-7*x^2+4,SplittingField((x^2-3)*(x^2-11)))[3,1],Roots(x^4-7*x^2+4,SplittingField((x^2-3)*(x^2-11)))[4,1],
Roots(2*x^4+x^2+8,SplittingField((x^2+2)*(x^2-14)))[1,1],Roots(2*x^4+x^2+8,SplittingField((x^2+2)*(x^2-14)))[2,1],
Roots(2*x^4+x^2+8,SplittingField((x^2+2)*(x^2-14)))[3,1],Roots(2*x^4+x^2+8,SplittingField((x^2+2)*(x^2-14)))[4,1],
Roots(x^4+23*x^2+4,SplittingField((x^2+3)*(x^2+19)))[1,1],Roots(x^4+23*x^2+4,SplittingField((x^2+3)*(x^2+19)))[2,1],
Roots(x^4+23*x^2+4,SplittingField((x^2+3)*(x^2+19)))[3,1],Roots(x^4+23*x^2+4,SplittingField((x^2+3)*(x^2+19)))[4,1],
QuadraticField(-2).1,-QuadraticField(-2).1,
(9+QuadraticField(89).1)/2,(9-QuadraticField(89).1)/2,(-9+QuadraticField(89).1)/2,(-9-QuadraticField(89).1)/2>;

L6x31 := < 0, QuadraticField(-3).1,-QuadraticField(-3).1,3,-3,1,-1,
4+QuadraticField(13).1,4-QuadraticField(13).1,-4+QuadraticField(13).1,-4-QuadraticField(13).1,
Roots(3*x^4-46*x^2+27,SplittingField((x^2-3)*(x^2-21)))[1,1],Roots(3*x^4-46*x^2+27,SplittingField((x^2-3)*(x^2-21)))[2,1],
Roots(3*x^4-46*x^2+27,SplittingField((x^2-3)*(x^2-21)))[3,1],Roots(3*x^4-46*x^2+27,SplittingField((x^2-3)*(x^2-21)))[4,1],
(4+QuadraticField(-11).1)/3, (4-QuadraticField(-11).1)/3,(-4+QuadraticField(-11).1)/3,(-4-QuadraticField(-11).1)/3,
Roots(x^4-26*x^2+9,SplittingField((x^2-2)*(x^2-5)))[1,1],Roots(x^4-26*x^2+9,SplittingField((x^2-2)*(x^2-5)))[2,1],
Roots(x^4-26*x^2+9,SplittingField((x^2-2)*(x^2-5)))[3,1],Roots(x^4-26*x^2+9,SplittingField((x^2-2)*(x^2-5)))[4,1],
3*QuadraticField(-3).1,-3*QuadraticField(-3).1,QuadraticField(-3).1/3,-QuadraticField(-3).1/3,
(8+QuadraticField(-37).1)/3,(8-QuadraticField(-37).1)/3,(-8+QuadraticField(-37).1)/3,(-8-QuadraticField(-37).1)/3,
Roots(3*x^4-14*x^2+27,SplittingField((x^2-6)*(x^2+3)))[1,1],Roots(3*x^4-14*x^2+27,SplittingField((x^2-6)*(x^2+3)))[2,1],
Roots(3*x^4-14*x^2+27,SplittingField((x^2-6)*(x^2+3)))[3,1],Roots(3*x^4-14*x^2+27,SplittingField((x^2-6)*(x^2+3)))[4,1],
Roots(x^4+70*x^2+9,SplittingField((x^2+1)*(x^2+19)))[1,1],Roots(x^4+70*x^2+9,SplittingField((x^2+1)*(x^2+19)))[2,1],
Roots(x^4+70*x^2+9,SplittingField((x^2+1)*(x^2+19)))[3,1],Roots(x^4+70*x^2+9,SplittingField((x^2+1)*(x^2+19)))[4,1],
1+QuadraticField(-2).1,1-QuadraticField(-2).1,-1+QuadraticField(-2).1,-1-QuadraticField(-2).1,
QuadraticField(3).1,-QuadraticField(3).1,
(5+2*QuadraticField(13).1)/3,(5-2*QuadraticField(13).1)/3,(-5+2*QuadraticField(13).1)/3,(-5-2*QuadraticField(13).1)/3>;


//w222 is the hyperelliptic involution, for X<6,37>/<w222>, x is unchanged, we use the table for X<6,37>/<w222>

L6x37 := < 1,-1,0, QuadraticField(-2).1/2, -QuadraticField(-2).1/2,QuadraticField(-2).1,-QuadraticField(-2).1,
1/2,-1/2,2,-2,
Roots(x^4 + 1/4*x^2 + 1,SplittingField((x^2+1)*(x^2-7)))[1,1],Roots(x^4 + 1/4*x^2 + 1,SplittingField((x^2+1)*(x^2-7)))[2,1],
Roots(x^4 + 1/4*x^2 + 1,SplittingField((x^2+1)*(x^2-7)))[3,1],Roots(x^4 + 1/4*x^2 + 1,SplittingField((x^2+1)*(x^2-7)))[4,1],
Roots(x^4 + 11/8*x^2 + 1,SplittingField((x^2-10)*(x^2+6)))[1,1],Roots(x^4 + 11/8*x^2 + 1,SplittingField((x^2-10)*(x^2+6)))[2,1],
Roots(x^4 + 11/8*x^2 + 1,SplittingField((x^2-10)*(x^2+6)))[3,1],Roots(x^4 + 11/8*x^2 + 1,SplittingField((x^2-10)*(x^2+6)))[4,1],
(1+QuadraticField(-3).1)/2,(1-QuadraticField(-3).1)/2,(-1+QuadraticField(-3).1)/2,(-1-QuadraticField(-3).1)/2,
Roots(x^4 + 19/4*x^2 + 1,SplittingField((x^2+3)*(x^2+11)))[1,1],Roots(x^4 + 19/4*x^2 + 1,SplittingField((x^2+3)*(x^2+11)))[2,1],
Roots(x^4 + 19/4*x^2 + 1,SplittingField((x^2+3)*(x^2+11)))[3,1],Roots(x^4 + 19/4*x^2 + 1,SplittingField((x^2+3)*(x^2+11)))[4,1],
QuadraticField(-1).1,-QuadraticField(-1).1,
QuadraticField(-2).1/4,-QuadraticField(-2).1/4,2*QuadraticField(-2).1,-2*QuadraticField(-2).1,
Roots(x^4 - 5/4*x^2 + 1,SplittingField((x^2-13)*(x^2+3)))[1,1],Roots(x^4 - 5/4*x^2 + 1,SplittingField((x^2-13)*(x^2+3)))[2,1],
Roots(x^4 - 5/4*x^2 + 1,SplittingField((x^2-13)*(x^2+3)))[3,1],Roots(x^4 - 5/4*x^2 + 1,SplittingField((x^2-13)*(x^2+3)))[4,1],
Roots(x^4 - 13/2*x^2 + 1,SplittingField((x^2-2)*(x^2-34)))[1,1],Roots(x^4 - 13/2*x^2 + 1,SplittingField((x^2-2)*(x^2-34)))[2,1],
Roots(x^4 - 13/2*x^2 + 1,SplittingField((x^2-2)*(x^2-34)))[3,1],Roots(x^4 - 13/2*x^2 + 1,SplittingField((x^2-2)*(x^2-34)))[4,1],
Roots(x^4 - 5/16*x^2 + 1,SplittingField((x^2-37)*(x^2+3)))[1,1],Roots(x^4 - 5/16*x^2 + 1,SplittingField((x^2-37)*(x^2+3)))[2,1],
Roots(x^4 - 5/16*x^2 + 1,SplittingField((x^2-37)*(x^2+3)))[3,1],Roots(x^4 - 5/16*x^2 + 1,SplittingField((x^2-37)*(x^2+3)))[4,1]>;




//w110 is the hyperelliptic involution, we use the table for X<10,11>/<w110>

L10x11 := <0,(1+QuadraticField(-7).1)/2,(1-QuadraticField(-7).1)/2,(-1+QuadraticField(-7).1)/2,(-1-QuadraticField(-7).1)/2,
QuadraticField(-2).1,-QuadraticField(-2).1,
2,-2,1,-1,
2*QuadraticField(-1).1,-2*QuadraticField(-1).1,QuadraticField(-1).1,-QuadraticField(-1).1,
QuadraticField(2).1,-QuadraticField(2).1,
Roots(x^4 - x^2 + 4,SplittingField((x^2-5)*(x^2+3)))[1,1],Roots(x^4 - x^2 + 4,SplittingField((x^2-5)*(x^2+3)))[2,1],
Roots(x^4 - x^2 + 4,SplittingField((x^2-5)*(x^2+3)))[3,1],Roots(x^4 - x^2 + 4,SplittingField((x^2-5)*(x^2+3)))[4,1],
Roots(x^4 + 7*x^2 + 4,SplittingField((x^2+3)*(x^2+11)))[1,1],Roots(x^4 + 7*x^2 + 4,SplittingField((x^2+3)*(x^2+11)))[2,1],
Roots(x^4 + 7*x^2 + 4,SplittingField((x^2+3)*(x^2+11)))[3,1],Roots(x^4 + 7*x^2 + 4,SplittingField((x^2+3)*(x^2+11)))[4,1],
(3+QuadraticField(17).1)/2,(3-QuadraticField(17).1)/2,(-3+QuadraticField(17).1)/2,(-3-QuadraticField(17).1)/2,
Roots(x^4 + 13*x^2 + 4,SplittingField((x^2+1)*(x^2+17)))[1,1],Roots(x^4 + 13*x^2 + 4,SplittingField((x^2+1)*(x^2+17)))[2,1],
Roots(x^4 + 13*x^2 + 4,SplittingField((x^2+1)*(x^2+17)))[3,1],Roots(x^4 + 13*x^2 + 4,SplittingField((x^2+1)*(x^2+17)))[4,1],
Roots(x^4 + 17/4*x^2 + 4,SplittingField((x^2+1)*(x^2+33)))[1,1],Roots(x^4 + 17/4*x^2 + 4,SplittingField((x^2+1)*(x^2+33)))[2,1],
Roots(x^4 + 17/4*x^2 + 4,SplittingField((x^2+1)*(x^2+33)))[3,1],Roots(x^4 + 17/4*x^2 + 4,SplittingField((x^2+1)*(x^2+33)))[4,1],
Roots(x^4 + 47/13*x^2 + 4,SplittingField((x^2+143)*(x^2-65)))[1,1],Roots(x^4 + 47/13*x^2 + 4,SplittingField((x^2+143)*(x^2-65)))[2,1],
Roots(x^4 + 47/13*x^2 + 4,SplittingField((x^2+143)*(x^2-65)))[3,1],Roots(x^4 + 47/13*x^2 + 4,SplittingField((x^2+143)*(x^2-65)))[4,1]>;


//for X<10,19>/<w5,w38>, x is unchanged
L10x19 := < 1,-1,0,2*QuadraticField(-1).1,-2*QuadraticField(-1).1,2/3,-2/3,
QuadraticField(2).1,-QuadraticField(2).1,QuadraticField(-1).1,-QuadraticField(-1).1,
2/QuadraticField(-3).1,-2/QuadraticField(-3).1,2/QuadraticField(5).1,-2/QuadraticField(5).1,
QuadraticField(-1).1/2,-QuadraticField(-1).1/2,4*QuadraticField(10).1/5,
-4*QuadraticField(10).1/5>;


//w230 is the hyperelliptic involution, we use the table from X<10,23>/<w230>

L10x23 := < QuadraticField(-1).1,-QuadraticField(-1).1,(-1+QuadraticField(5).1)/2,(-1-QuadraticField(5).1)/2,
-1/2,0,2,-3,-1,1/3,1,
(-1+QuadraticField(-11).1)/6,(-1-QuadraticField(-11).1)/6,(1+QuadraticField(-11).1)/2,(1-QuadraticField(-11).1)/2,
2+QuadraticField(5).1,2-QuadraticField(5).1,
Roots(x^4 - 2*x^3 + 5*x^2 + 2*x + 1,SplittingField(x^4 - 2*x^3 + 5*x^2 + 2*x + 1))[1,1],Roots(x^4 - 2*x^3 + 5*x^2 + 2*x + 1,SplittingField(x^4 - 2*x^3 + 5*x^2 + 2*x + 1))[2,1],
Roots(x^4 - 2*x^3 + 5*x^2 + 2*x + 1,SplittingField(x^4 - 2*x^3 + 5*x^2 + 2*x + 1))[3,1],Roots(x^4 - 2*x^3 + 5*x^2 + 2*x + 1,SplittingField(x^4 - 2*x^3 + 5*x^2 + 2*x + 1))[4,1],
(-1+2*QuadraticField(-1).1)/5,(-1-2*QuadraticField(-1).1)/5,1+2*QuadraticField(-1).1,1-2*QuadraticField(-1).1,
(-11+5*QuadraticField(5).1)/2,(-11-5*QuadraticField(5).1)/2,(1+QuadraticField(5).1)/2,(1-QuadraticField(5).1)/2,
Roots(x^4 + 2/3*x^3 + x^2 - 2/3*x + 1,SplittingField((x^2+2)*(x^2-13)))[1,1],Roots(x^4 + 2/3*x^3 + x^2 - 2/3*x + 1,SplittingField((x^2+2)*(x^2-13)))[2,1],
Roots(x^4 + 2/3*x^3 + x^2 - 2/3*x + 1,SplittingField((x^2+2)*(x^2-13)))[3,1],Roots(x^4 + 2/3*x^3 + x^2 - 2/3*x + 1,SplittingField((x^2+2)*(x^2-13)))[4,1]>;


//w14 is the hyperelliptic involution, we use the table for X<14,5>/<w14>
L14x5 := < QuadraticField(-1).1,-QuadraticField(-1).1,(-1+QuadraticField(-11).1)/2,(-1-QuadraticField(-11).1)/2,
(1+QuadraticField(-11).1)/6,(1-QuadraticField(-11).1)/6,(1+QuadraticField(5).1)/2,(1-QuadraticField(5).1)/2,
Roots(x^4 - 2/5*x^3 + 7/5*x^2 + 2/5*x + 1,SplittingField((x^2-21)*(x^2+1)))[1,1],Roots(x^4 - 2/5*x^3 + 7/5*x^2 + 2/5*x + 1,SplittingField((x^2-21)*(x^2+1)))[2,1],
Roots(x^4 - 2/5*x^3 + 7/5*x^2 + 2/5*x + 1,SplittingField((x^2-21)*(x^2+1)))[3,1],Roots(x^4 - 2/5*x^3 + 7/5*x^2 + 2/5*x + 1,SplittingField((x^2-21)*(x^2+1)))[4,1],
Roots(x^4 + 2/51*x^3 + 1645/2601*x^2 - 32/2601*x + 256/2601,SplittingField((x^2-13)*(x^2+7)))[1,1],Roots(x^4 + 2/51*x^3 + 1645/2601*x^2 - 32/2601*x + 256/2601,SplittingField((x^2-13)*(x^2+7)))[2,1],
Roots(x^4 + 2/51*x^3 + 1645/2601*x^2 - 32/2601*x + 256/2601,SplittingField((x^2-13)*(x^2+7)))[3,1],Roots(x^4 + 2/51*x^3 + 1645/2601*x^2 - 32/2601*x + 256/2601,SplittingField((x^2-13)*(x^2+7)))[4,1],
Roots(x^4 + 2/19*x^3 + 41/19*x^2 - 2/19*x + 1,SplittingField((x^2+3)*(x^2-5)))[1,1],Roots(x^4 + 2/19*x^3 + 41/19*x^2 - 2/19*x + 1,SplittingField((x^2+3)*(x^2-5)))[2,1],
Roots(x^4 + 2/19*x^3 + 41/19*x^2 - 2/19*x + 1,SplittingField((x^2+3)*(x^2-5)))[3,1],Roots(x^4 + 2/19*x^3 + 41/19*x^2 - 2/19*x + 1,SplittingField((x^2+3)*(x^2-5)))[4,1],
(-9+QuadraticField(5).1)/2,(-9-QuadraticField(5).1)/2,(9+QuadraticField(5).1)/3,(9-QuadraticField(5).1)/3,
-2+QuadraticField(5).1,-2-QuadraticField(5).1,
Roots(x^4 + 1/31*x^3 + 6239/3844*x^2 - 101/3844*x + 10201/15376,SplittingField((x^2+1)*(x^2-5)))[1,1],Roots(x^4 + 1/31*x^3 + 6239/3844*x^2 - 101/3844*x + 10201/15376,SplittingField((x^2+1)*(x^2-5)))[2,1],
Roots(x^4 + 1/31*x^3 + 6239/3844*x^2 - 101/3844*x + 10201/15376,SplittingField((x^2+1)*(x^2-5)))[3,1],Roots(x^4 + 1/31*x^3 + 6239/3844*x^2 - 101/3844*x + 10201/15376,SplittingField((x^2+1)*(x^2-5)))[4,1],
Roots(x^4 + 18/11*x^3 + 49/11*x^2 - 18/11*x + 1,SplittingField((x^2+35)*(x^2-5)))[1,1],Roots(x^4 + 18/11*x^3 + 49/11*x^2 - 18/11*x + 1,SplittingField((x^2+35)*(x^2-5)))[2,1],
Roots(x^4 + 18/11*x^3 + 49/11*x^2 - 18/11*x + 1,SplittingField((x^2+35)*(x^2-5)))[3,1],Roots(x^4 + 18/11*x^3 + 49/11*x^2 - 18/11*x + 1,SplittingField((x^2+35)*(x^2-5)))[4,1],
Roots(x^4 - 162/61*x^3 - 121/61*x^2 + 162/61*x + 1,SplittingField((x^2-13)*(x^2-5)))[1,1],Roots(x^4 - 162/61*x^3 - 121/61*x^2 + 162/61*x + 1,SplittingField((x^2-13)*(x^2-5)))[2,1],
Roots(x^4 - 162/61*x^3 - 121/61*x^2 + 162/61*x + 1,SplittingField((x^2-13)*(x^2-5)))[3,1],Roots(x^4 - 162/61*x^3 - 121/61*x^2 + 162/61*x + 1,SplittingField((x^2-13)*(x^2-5)))[4,1],
Roots(x^4 - 18/149*x^3 + 271/149*x^2 + 18/149*x + 1,SplittingField((x^2-5)*(x^2+35)))[1,1],Roots(x^4 - 18/149*x^3 + 271/149*x^2 + 18/149*x + 1,SplittingField((x^2-5)*(x^2+35)))[2,1],
Roots(x^4 - 18/149*x^3 + 271/149*x^2 + 18/149*x + 1,SplittingField((x^2-5)*(x^2+35)))[3,1],Roots(x^4 - 18/149*x^3 + 271/149*x^2 + 18/149*x + 1,SplittingField((x^2-5)*(x^2+35)))[4,1]>;


//w15 is the hyperelliptic involution, we use the table from X<15,2>/<w15>
L15x2 := <(1+QuadraticField(-7).1)/2,(1-QuadraticField(-7).1)/2,0,
Roots(x^4 - x^2 + 4,SplittingField((x^2-5)*(x^2+3)))[1,1],Roots(x^4 - x^2 + 4,SplittingField((x^2-5)*(x^2+3)))[2,1],
Roots(x^4 - x^2 + 4,SplittingField((x^2-5)*(x^2+3)))[3,1],Roots(x^4 - x^2 + 4,SplittingField((x^2-5)*(x^2+3)))[4,1],
1,-1,2,-2,
QuadraticField(-2).1,-QuadraticField(-2).1,
QuadraticField(-1).1,-QuadraticField(-1).1,2*QuadraticField(-1).1,-2*QuadraticField(-1).1,
1+QuadraticField(-1).1,1-QuadraticField(-1).1,-1+QuadraticField(-1).1,-1-QuadraticField(-1).1,
QuadraticField(-3).1,-QuadraticField(-3).1,2/QuadraticField(-3).1,-2/QuadraticField(-3).1,
2+QuadraticField(2).1,-2+QuadraticField(2).1,2-QuadraticField(2).1,-2-QuadraticField(2).1,
QuadraticField(2).1,-QuadraticField(2).1,
Roots(x^4 + 8*x^2 + 4,SplittingField((x^2+1)*(x^2+3)))[1,1],Roots(x^4 + 8*x^2 + 4,SplittingField((x^2+1)*(x^2+3)))[2,1],
Roots(x^4 + 8*x^2 + 4,SplittingField((x^2+1)*(x^2+3)))[3,1],Roots(x^4 + 8*x^2 + 4,SplittingField((x^2+1)*(x^2+3)))[4,1],
(1+7*QuadraticField(-1).1)/5,(1-7*QuadraticField(-1).1)/5,(-1+7*QuadraticField(-1).1)/5,(-1-7*QuadraticField(-1).1)/5,
Roots(x^4 + 4/3*x^2 + 4,SplittingField((x^2-6)*(x^2+3)))[1,1],Roots(x^4 + 4/3*x^2 + 4,SplittingField((x^2-6)*(x^2+3)))[2,1],
Roots(x^4 + 4/3*x^2 + 4,SplittingField((x^2-6)*(x^2+3)))[3,1],Roots(x^4 + 4/3*x^2 + 4,SplittingField((x^2-6)*(x^2+3)))[4,1],
Roots(x^4 + 40/9*x^2 + 4,SplittingField((x^2+1)*(x^2+19)))[1,1],Roots(x^4 + 40/9*x^2 + 4,SplittingField((x^2+1)*(x^2+19)))[2,1],
Roots(x^4 + 40/9*x^2 + 4,SplittingField((x^2+1)*(x^2+19)))[3,1],Roots(x^4 + 40/9*x^2 + 4,SplittingField((x^2+1)*(x^2+19)))[4,1],
(12+7*QuadraticField(-2).1)/11,(12-7*QuadraticField(-2).1)/11,(-12+7*QuadraticField(-2).1)/11,(-12-7*QuadraticField(-2).1)/11,
2*QuadraticField(-3).1,-2*QuadraticField(-3).1,QuadraticField(-3).1/3,-QuadraticField(-3).1/3,
Roots(x^4 - 36*x^2 + 4,SplittingField((x^2-2)*(x^2-10)))[1,1],Roots(x^4 - 36*x^2 + 4,SplittingField((x^2-2)*(x^2-10)))[2,1],
Roots(x^4 - 36*x^2 + 4,SplittingField((x^2-2)*(x^2-10)))[3,1],Roots(x^4 - 36*x^2 + 4,SplittingField((x^2-2)*(x^2-10)))[4,1],
Roots(x^4 + 92/25*x^2 + 4,SplittingField((x^2-2)*(x^2+3)))[1,1],Roots(x^4 + 92/25*x^2 + 4,SplittingField((x^2-2)*(x^2+3)))[2,1],
Roots(x^4 + 92/25*x^2 + 4,SplittingField((x^2-2)*(x^2+3)))[3,1],Roots(x^4 + 92/25*x^2 + 4,SplittingField((x^2-2)*(x^2+3)))[4,1],
Roots(x^4 + 32/17*x^2 + 4,SplittingField((x^2+1)*(x^2-17)))[1,1],Roots(x^4 + 32/17*x^2 + 4,SplittingField((x^2+1)*(x^2-17)))[2,1],
Roots(x^4 + 32/17*x^2 + 4,SplittingField((x^2+1)*(x^2-17)))[3,1],Roots(x^4 + 32/17*x^2 + 4,SplittingField((x^2+1)*(x^2-17)))[4,1],
Roots(x^4 + 160/9*x^2 + 4,SplittingField((x^2+1)*(x^2+31)))[1,1],Roots(x^4 + 160/9*x^2 + 4,SplittingField((x^2+1)*(x^2+31)))[2,1],
Roots(x^4 + 160/9*x^2 + 4,SplittingField((x^2+1)*(x^2+31)))[3,1],Roots(x^4 + 160/9*x^2 + 4,SplittingField((x^2+1)*(x^2+31)))[4,1],
Roots(x^4 - 172/25*x^2 + 4,SplittingField((x^2-2)*(x^2-17)))[1,1],Roots(x^4 - 172/25*x^2 + 4,SplittingField((x^2-2)*(x^2-17)))[2,1],
Roots(x^4 - 172/25*x^2 + 4,SplittingField((x^2-2)*(x^2-17)))[3,1],Roots(x^4 - 172/25*x^2 + 4,SplittingField((x^2-2)*(x^2-17)))[4,1],
Roots(x^4 - 8/3*x^2 + 4,SplittingField((x^2-15)*(x^2+3)))[1,1],Roots(x^4 - 8/3*x^2 + 4,SplittingField((x^2-15)*(x^2+3)))[2,1],
Roots(x^4 - 8/3*x^2 + 4,SplittingField((x^2-15)*(x^2+3)))[3,1],Roots(x^4 - 8/3*x^2 + 4,SplittingField((x^2-15)*(x^2+3)))[4,1],
Roots(x^4 + 516/121*x^2 + 4,SplittingField((x^2+2)*(x^2+10)))[1,1],Roots(x^4 + 516/121*x^2 + 4,SplittingField((x^2+2)*(x^2+10)))[2,1],
Roots(x^4 + 516/121*x^2 + 4,SplittingField((x^2+2)*(x^2+10)))[3,1],Roots(x^4 + 516/121*x^2 + 4,SplittingField((x^2+2)*(x^2+10)))[4,1],
Roots(x^4 + 64/11*x^2 + 4,SplittingField((x^2+55)*(x^2+33)))[1,1],Roots(x^4 + 64/11*x^2 + 4,SplittingField((x^2+55)*(x^2+33)))[2,1],
Roots(x^4 + 64/11*x^2 + 4,SplittingField((x^2+55)*(x^2+33)))[3,1],Roots(x^4 + 64/11*x^2 + 4,SplittingField((x^2+55)*(x^2+33)))[4,1],
Roots(x^4 + 3848/121*x^2 + 4,SplittingField((x^2+1)*(x^2+3)))[1,1],Roots(x^4 + 3848/121*x^2 + 4,SplittingField((x^2+1)*(x^2+3)))[2,1],
Roots(x^4 + 3848/121*x^2 + 4,SplittingField((x^2+1)*(x^2+3)))[3,1],Roots(x^4 + 3848/121*x^2 + 4,SplittingField((x^2+1)*(x^2+3)))[4,1],
Roots(x^4 + 316/529*x^2 + 4,SplittingField((x^2-2)*(x^2+38)))[1,1],Roots(x^4 + 316/529*x^2 + 4,SplittingField((x^2-2)*(x^2+38)))[2,1],
Roots(x^4 + 316/529*x^2 + 4,SplittingField((x^2-2)*(x^2+38)))[3,1],Roots(x^4 + 316/529*x^2 + 4,SplittingField((x^2-2)*(x^2+38)))[4,1],
Roots(x^4 - 52/27*x^2 + 4,SplittingField((x^2-30)*(x^2+42)))[1,1],Roots(x^4 - 52/27*x^2 + 4,SplittingField((x^2-30)*(x^2+42)))[2,1],
Roots(x^4 - 52/27*x^2 + 4,SplittingField((x^2-30)*(x^2+42)))[3,1],Roots(x^4 - 52/27*x^2 + 4,SplittingField((x^2-30)*(x^2+42)))[4,1]>;


//w66 is the hyperelliptic involution, we use the table for X<22,3>/<w66>
L22x3 := < 0, 1, -1, 2+QuadraticField(5).1,2-QuadraticField(5).1,-2+QuadraticField(5).1,-2-QuadraticField(5).1,
QuadraticField(-1).1,-QuadraticField(-1).1,
Roots(x^4 + 110*x^2 + 1,SplittingField((x^2+7)*(x^2+3)))[1,1],Roots(x^4 + 110*x^2 + 1,SplittingField((x^2+7)*(x^2+3)))[2,1],
Roots(x^4 + 110*x^2 + 1,SplittingField((x^2+7)*(x^2+3)))[3,1],Roots(x^4 + 110*x^2 + 1,SplittingField((x^2+7)*(x^2+3)))[4,1],
QuadraticField(-3).1/9,-QuadraticField(-3).1/9,3*QuadraticField(-3).1,-3*QuadraticField(-3).1,
Roots(x^4 + 154/27*x^2 + 1,SplittingField((x^2+39)*(x^2+3)))[1,1],Roots(x^4 + 154/27*x^2 + 1,SplittingField((x^2+39)*(x^2+3)))[2,1],
Roots(x^4 + 154/27*x^2 + 1,SplittingField((x^2+39)*(x^2+3)))[3,1],Roots(x^4 + 154/27*x^2 + 1,SplittingField((x^2+39)*(x^2+3)))[4,1],
Roots(x^4 - 70/27*x^2 + 1,SplittingField((x^2-3)*(x^2-93)))[1,1],Roots(x^4 - 70/27*x^2 + 1,SplittingField((x^2-3)*(x^2-93)))[2,1],
Roots(x^4 - 70/27*x^2 + 1,SplittingField((x^2-3)*(x^2-93)))[3,1],Roots(x^4 - 70/27*x^2 + 1,SplittingField((x^2-3)*(x^2-93)))[4,1],
Roots(x^4 - 140/81*x^2 + 484/729,SplittingField((x^2-17)*(x^2-2)))[1,1],Roots(x^4 - 140/81*x^2 + 484/729,SplittingField((x^2-17)*(x^2-2)))[2,1],
Roots(x^4 - 140/81*x^2 + 484/729,SplittingField((x^2-17)*(x^2-2)))[3,1],Roots(x^4 - 140/81*x^2 + 484/729,SplittingField((x^2-17)*(x^2-2)))[4,1],
Roots(x^4 + 10/27*x^2 + 1,SplittingField((x^2+3)*(x^2-33)))[1,1],Roots(x^4 + 10/27*x^2 + 1,SplittingField((x^2+3)*(x^2-33)))[2,1],
Roots(x^4 + 10/27*x^2 + 1,SplittingField((x^2+3)*(x^2-33)))[3,1],Roots(x^4 + 10/27*x^2 + 1,SplittingField((x^2+3)*(x^2-33)))[4,1],
Roots(x^4 - 178*x^2 + 1,SplittingField((x^2-11)*(x^2-5)))[1,1],Roots(x^4 - 178*x^2 + 1,SplittingField((x^2-11)*(x^2-5)))[2,1],
Roots(x^4 - 178*x^2 + 1,SplittingField((x^2-11)*(x^2-5)))[3,1],Roots(x^4 - 178*x^2 + 1,SplittingField((x^2-11)*(x^2-5)))[4,1],
Roots(x^4 + 2702*x^2 + 1,SplittingField((x^2+1)*(x^2+3)))[1,1],Roots(x^4 + 2702*x^2 + 1,SplittingField((x^2+1)*(x^2+3)))[2,1],
Roots(x^4 + 2702*x^2 + 1,SplittingField((x^2+1)*(x^2+3)))[3,1],Roots(x^4 + 2702*x^2 + 1,SplittingField((x^2+1)*(x^2+3)))[4,1]>;


//w110 is the hyperelliptic involution, we use the table for X<22,5>/<w110>

L22x5 := < 1, -1, 0, QuadraticField(-1).1,-QuadraticField(-1).1,
(1+QuadraticField(5).1)/2,(1-QuadraticField(5).1)/2,(-1+QuadraticField(5).1)/2,(-1-QuadraticField(5).1)/2,
2+QuadraticField(5).1,-2+QuadraticField(5).1,2-QuadraticField(5).1,-2-QuadraticField(5).1,
Roots(x^4 + 18/7*x^2 + 1,SplittingField((x^2+14)*(x^2+7)))[1,1],Roots(x^4 + 18/7*x^2 + 1,SplittingField((x^2+14)*(x^2+7)))[2,1],
Roots(x^4 + 18/7*x^2 + 1,SplittingField((x^2+14)*(x^2+7)))[3,1],Roots(x^4 + 18/7*x^2 + 1,SplittingField((x^2+14)*(x^2+7)))[4,1],
Roots(x^4 + 6/13*x^2 + 1,SplittingField((x^2+26)*(x^2-65)))[1,1],Roots(x^4 + 6/13*x^2 + 1,SplittingField((x^2+26)*(x^2-65)))[2,1],
Roots(x^4 + 6/13*x^2 + 1,SplittingField((x^2+26)*(x^2-65)))[3,1],Roots(x^4 + 6/13*x^2 + 1,SplittingField((x^2+26)*(x^2-65)))[4,1],
Roots(x^4 + 7*x^2 + 1,SplittingField((x^2+1)*(x^2+5)))[1,1],Roots(x^4 + 7*x^2 + 1,SplittingField((x^2+1)*(x^2+5)))[2,1],
Roots(x^4 + 7*x^2 + 1,SplittingField((x^2+1)*(x^2+5)))[3,1],Roots(x^4 + 7*x^2 + 1,SplittingField((x^2+1)*(x^2+5)))[4,1],
Roots(x^4 + 42/11*x^2 + 1,SplittingField((x^2+11)*(x^2+55)))[1,1],Roots(x^4 + 42/11*x^2 + 1,SplittingField((x^2+11)*(x^2+55)))[2,1],
Roots(x^4 + 42/11*x^2 + 1,SplittingField((x^2+11)*(x^2+55)))[3,1],Roots(x^4 + 42/11*x^2 + 1,SplittingField((x^2+11)*(x^2+55)))[4,1],
Roots(x^4 + 43/19*x^2 + 1,SplittingField((x^2+19)*(x^2+95)))[1,1],Roots(x^4 + 43/19*x^2 + 1,SplittingField((x^2+19)*(x^2+95)))[2,1],
Roots(x^4 + 43/19*x^2 + 1,SplittingField((x^2+19)*(x^2+95)))[3,1],Roots(x^4 + 43/19*x^2 + 1,SplittingField((x^2+19)*(x^2+95)))[4,1]>;


//typo w5 should be w13, corrected in the journal version
//the hyperelliptic involution is w39, we use the table for X<39,2>/<w39>
L39x2 := < (-3+QuadraticField(-7).1)/2,(-3-QuadraticField(-7).1)/2,
(-3+QuadraticField(-7).1)/4,(-3-QuadraticField(-7).1)/4,
Roots(x^4 + 3*x^3 + 5*x^2 + 6*x + 4,SplittingField((x^2+3)*(x^2+15)))[1,1],Roots(x^4 + 3*x^3 + 5*x^2 + 6*x + 4,SplittingField((x^2+3)*(x^2+15)))[2,1],
Roots(x^4 + 3*x^3 + 5*x^2 + 6*x + 4,SplittingField((x^2+3)*(x^2+15)))[3,1],Roots(x^4 + 3*x^3 + 5*x^2 + 6*x + 4,SplittingField((x^2+3)*(x^2+15)))[4,1],
QuadraticField(2).1,-QuadraticField(2).1,
0,-1,-2,
-1+QuadraticField(-1).1,-1-QuadraticField(-1).1,
-3+QuadraticField(5).1,-3-QuadraticField(5).1,(-3+QuadraticField(5).1)/2,(-3+QuadraticField(5).1)/2,
Roots(x^4 + 6*x^3 + 14*x^2 + 12*x + 4,SplittingField((x^2-3)*(x^2+3)))[1,1],Roots(x^4 + 6*x^3 + 14*x^2 + 12*x + 4,SplittingField((x^2-3)*(x^2+3)))[2,1],
Roots(x^4 + 6*x^3 + 14*x^2 + 12*x + 4,SplittingField((x^2-3)*(x^2+3)))[3,1],Roots(x^4 + 6*x^3 + 14*x^2 + 12*x + 4,SplittingField((x^2-3)*(x^2+3)))[4,1],
Roots(x^4 + 18/5*x^3 + 34/5*x^2 + 36/5*x + 4,SplittingField((x^2+1)*(x^2+11)))[1,1],Roots(x^4 + 18/5*x^3 + 34/5*x^2 + 36/5*x + 4,SplittingField((x^2+1)*(x^2+11)))[2,1],
Roots(x^4 + 18/5*x^3 + 34/5*x^2 + 36/5*x + 4,SplittingField((x^2+1)*(x^2+11)))[3,1],Roots(x^4 + 18/5*x^3 + 34/5*x^2 + 36/5*x + 4,SplittingField((x^2+1)*(x^2+11)))[4,1],
-3+QuadraticField(-1).1,-3-QuadraticField(-1).1,(-3+QuadraticField(-1).1)/5,(-3-QuadraticField(-1).1)/5,
Roots(x^4 + 2*x^3 + 2*x^2 + 4*x + 4,SplittingField((x^2+1)*(x^2+3)))[1,1],Roots(x^4 + 2*x^3 + 2*x^2 + 4*x + 4,SplittingField((x^2+1)*(x^2+3)))[2,1],
Roots(x^4 + 2*x^3 + 2*x^2 + 4*x + 4,SplittingField((x^2+1)*(x^2+3)))[3,1],Roots(x^4 + 2*x^3 + 2*x^2 + 4*x + 4,SplittingField((x^2+1)*(x^2+3)))[4,1],
-2+QuadraticField(-2).1,-2-QuadraticField(-2).1,(-2+QuadraticField(-2).1)/3,(-2-QuadraticField(-2).1)/3,
-2+QuadraticField(2).1,-2-QuadraticField(2).1,
(9+QuadraticField(-3).1)/(-9+5*QuadraticField(-3).1)/78,(9+QuadraticField(-3).1)/(-9-5*QuadraticField(-3).1)/78,
(9-QuadraticField(-3).1)/(-9+5*QuadraticField(-3).1)/78,(9-QuadraticField(-3).1)/(-9-5*QuadraticField(-3).1)/78,
Roots(x^4 + 24/7*x^3 + 44/7*x^2 + 48/7*x + 4,SplittingField((x^2+6)*(x^2+3)))[1,1],Roots(x^4 + 24/7*x^3 + 44/7*x^2 + 48/7*x + 4,SplittingField((x^2+6)*(x^2+3)))[2,1],
Roots(x^4 + 24/7*x^3 + 44/7*x^2 + 48/7*x + 4,SplittingField((x^2+6)*(x^2+3)))[3,1],Roots(x^4 + 24/7*x^3 + 44/7*x^2 + 48/7*x + 4,SplittingField((x^2+6)*(x^2+3)))[4,1],
Roots(x^4 + 72/19*x^3 + 140/19*x^2 + 144/19*x + 4,SplittingField((x^2+2)*(x^2+10)))[1,1],Roots(x^4 + 72/19*x^3 + 140/19*x^2 + 144/19*x + 4,SplittingField((x^2+2)*(x^2+10)))[2,1],
Roots(x^4 + 72/19*x^3 + 140/19*x^2 + 144/19*x + 4,SplittingField((x^2+2)*(x^2+10)))[3,1],Roots(x^4 + 72/19*x^3 + 140/19*x^2 + 144/19*x + 4,SplittingField((x^2+2)*(x^2+10)))[4,1],
Roots(x^4 + 18/17*x^3 - 14/17*x^2 + 36/17*x + 4,SplittingField((x^2+1)*(x^2+59)))[1,1],Roots(x^4 + 18/17*x^3 - 14/17*x^2 + 36/17*x + 4,SplittingField((x^2+1)*(x^2+59)))[2,1],
Roots(x^4 + 18/17*x^3 - 14/17*x^2 + 36/17*x + 4,SplittingField((x^2+1)*(x^2+59)))[3,1],Roots(x^4 + 18/17*x^3 - 14/17*x^2 + 36/17*x + 4,SplittingField((x^2+1)*(x^2+59)))[4,1],
Roots(x^4 + 54/7*x^3 + 134/7*x^2 + 108/7*x + 4,SplittingField((x^2-39)*(x^2+3)))[1,1],Roots(x^4 + 54/7*x^3 + 134/7*x^2 + 108/7*x + 4,SplittingField((x^2-39)*(x^2+3)))[2,1],
Roots(x^4 + 54/7*x^3 + 134/7*x^2 + 108/7*x + 4,SplittingField((x^2-39)*(x^2+3)))[3,1],Roots(x^4 + 54/7*x^3 + 134/7*x^2 + 108/7*x + 4,SplittingField((x^2-39)*(x^2+3)))[4,1]>;




CM_list := <
<26,1,L26>,
<38,1,L38>,
<39,1,L39>,
<51,1,L51>,
<58,1,L58>,
<55,1,L55>,
<62,1,L62>,
<69,1,L69>,
<74,1,L74>,
<86,1,L86>,
<87,1,L87>,
<94,1,L94>,
<95,1,L95>,
<111,1,L111>,
<119,1,L119>,
<134,1,L134>,
<146,1,L146>,
<159,1,L159>,
<194,1,L194>,
<206,1,L206>,
<6,11,L6x11>,
<6,19,L6x19>,
<6,29,L6x29>,
<6,13,L6x31>,
<6,37,L6x37>,
<10,11,L10x11>,
<10,19,L10x19>,
<10,23,L10x23>,
<14,5,L14x5>,
<15,2,L15x2>,
<22,3,L22x3>,
<22,5,L22x5>,
<39,2,L39x2>>;

return CM_list;

end intrinsic;




intrinsic ShimCMPointsGuoYang(D::RngIntElt,N::RngIntElt,W::SeqEnum) -> Any
  {Get the CM points for disc, level and W
  We know the x_coord from Guo-Yang, then we need to adjoin it X(D,N)
  and project onto X(D,N)/W}
  CM_xvalues:=[ A[3] : A in CMList() | A[1] eq D and A[2] eq N ][1];
  s_top:=ShimDBRecord(D,N,[1] : version:=1);
  C:=s_top`ShimModel;
  A2<x,y>:=AffineSpace(Rationals(),2);
  //Caff:=Curve(A2,y^2 -Evaluate(HyperellipticPolynomials(C),A2.1));
  hyp_quotientcurve:=ProjectiveClosure(Curve(A2, y - Evaluate(HyperellipticPolynomials(C),A2.1)));
  P2<[x]>:=Ambient(C);
  g:=Degree(C);
  coefs:=Coefficients(HyperellipticPolynomials(C));
  hyppols:= &+([ coefs[i]*(x[1]^(i-1))*(x[3]^(g-i+1)) : i in [1..#coefs] ]);
  hyp_proj:= map< C -> hyp_quotientcurve | [x[1]*x[3]^(g-1), hyppols , x[3]^g] >;

  CM_points_top_curve:=[* *];
  for x_coord in CM_xvalues do
    y_coord_sq:=Evaluate(HyperellipticPolynomials(C),x_coord);
    if IsSquare(y_coord_sq) then
      tup1:=[x_coord,Sqrt(y_coord_sq),1];
      tup2:=[x_coord,-Sqrt(y_coord_sq),1];
      Append(~CM_points_top_curve,C!tup1);
      Append(~CM_points_top_curve,C!tup2);
    else
      if Type(Parent(x_coord)) eq RngInt then F:=Rationals(); else F:=Parent(x_coord); end if;
      Pol<t>:=PolynomialRing(F);
      Fext:=ext< F | t^2 - F!y_coord_sq >;
      AF:=AbsoluteField(Fext);
      tup1:= [AF!x_coord,AF!Fext.1,1];
      tup2:= [AF!x_coord,-AF!Fext.1,1];
      Append(~CM_points_top_curve,CoercePointAnyField(C,tup1));
      Append(~CM_points_top_curve,CoercePointAnyField(C,tup2));
      //Append(~CM_points_hypquo,CoercePointAnyField(hyp_quotientcurve,[x_coord,y_coord,1]));
    end if;
  end for;

  s:=ShimDBRecord(D,N,W : version:=1);
  proj:=s`ShimProjectionEquations;
  cm_points:=[* MapPointAnyField(proj,Q) : Q in CM_points_top_curve *];
  return cm_points;

  /*for pt in CM_points_hypquo do
    pt;
    hyp_projK:=ChangeRingMap(hyp_proj,Parent(Eltseq(pt)[1]));
    PullbackPointsWithEquation(hyp_projK,[*pt*]);
  end for;*/


/*  map< C -> proj_hyp | [x[1],x[2]^2,x[3]] >;
  dp:=DefiningPolynomials(gf);
  new_hypproj:= map<Domain(s`ShimProjectionEquations) -> Codomain(Inverse(m)) | dp>;
*/

end intrinsic;

intrinsic ShimCMPointsRationalGuoYang(D::RngIntElt,N::RngIntElt,W::SeqEnum) -> Any
 {}
 list:= ShimCMPointsGuoYang(D,N,W);
 return Setseq(Set([ A : A in list | Parent(A[1]) eq Rationals() ]));
end intrinsic;

//curves which are not hyperelliptic over Q

//<1,57>
//<1,82>
//<1,93>

//<6,17>
//<10,13>
//<14,3>
//<15,4>
//<21,2>
//<26,3>

//equation for <1,82>
//add points at infinity?

//_<x> := PolynomialRing(Rationals());

//f := x^2-39;
//g := x^2+3;
//L := SplittingField(f*g);
//a := Roots(f,L)[1,1];
//b := Roots(g,L)[1,1];
//d := (9+a)*(-9+b)/42;
//MinimalPolynomial(L!d);
