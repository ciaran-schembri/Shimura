//X<1,57>/<w19,w57>, s is unchanged
//X<1,93>/<w3,w31>, s is unchanged
//X<6,17>/<w3,w34>, x is unchanged
//X<10,13>/<w2,w65>, x is unchanged
//X<14,3>/<w3,w14>, x is unchanged
//X<15,4>/<w3,w5>, x is unchanged, there is no table?
//X<21,2>/<w3,w7>, x is unchanged
//X<26,3> /<w3,w26>, x is unchanged


L57 := <-1,0,-1/3,1,1/3,-3,-1/2,-11/6,-11>;
L93 := <-1,0,1,3,-3,-1/3,-7,3/2,7/3>;
L6x17 := < 0, 1, -1, 3,-3,QuadraticField(-1).1,-QuadraticField(-1).1,1/2,-1/2,QuadraticField(-3).1,-QuadraticField(-3).1,
1/QuadraticField(-3).1,-1/QuadraticField(-3).1,1/3,-1/3,QuadraticField(3).1,-QuadraticField(3).1,
4/QuadraticField(-3).1,-4/QuadraticField(-3).1>;

L10x13 := < 1,-1,QuadraticField(5).1,-QuadraticField(5).1,3,-3,0,5/3,-5/3,QuadraticField(-15).1,
-QuadraticField(-15).1,QuadraticField(-15).1/3,-QuadraticField(-15).1/3,QuadraticField(5).1/3,
-QuadraticField(5).1/3,QuadraticField(-39).1/3,-QuadraticField(39).1/3>;

L14x3 := <0,1,-1,1/QuadraticField(-7).1,-1/QuadraticField(-7).1,1/3,-1/3,
QuadraticField(-3).1/9,-QuadraticField(-3).1/9,5/3,-5/3,QuadraticField(-2).1/3,-QuadraticField(-2).1/3,
5/QuadraticField(-3).1,-5/QuadraticField(-3).1,5/39,-5/39,7*QuadraticField(13).1/39,-7*QuadraticField(13).1/39>;

L21x2 := <QuadraticField(-7).1,-QuadraticField(-7).1,QuadraticField(-15).1/3,-QuadraticField(-15).1/3,
1,-1,1/3,-1/3,3,-3,QuadraticField(-3).1,-QuadraticField(-3).1,1/QuadraticField(5).1,-1/QuadraticField(5).1,
5,-5,1/QuadraticField(-3).1,-1/QuadraticField(-3).1,QuadraticField(37).1/3,-QuadraticField(37).1/3,0,
5/QuadraticField(-3).1,-5/QuadraticField(-3).1,4*QuadraticField(-2).1,-4*QuadraticField(-2).1,
QuadraticField(-35).1/3,-QuadraticField(-35).1/3,2*QuadraticField(-6).1/3,-2*QuadraticField(-6).1/3,
QuadraticField(-3).1/2,-QuadraticField(-3).1/2,5*QuadraticField(-3).1,-5*QuadraticField(-3).1,
QuadraticField(21).1,-QuadraticField(21).1,QuadraticField(-19).1/2,-QuadraticField(-19).1/2,5/4*QuadraticField(-3).1,
-5/4*QuadraticField(-3).1,4/QuadraticField(-3).1,-4*QuadraticField(-3).1>;



L26x3 := <1,-1,QuadraticField(-1).1,-QuadraticField(-1).1,0,QuadraticField(-3).1,-QuadraticField(-3).1,
3,-3,QuadraticField(3).1,-QuadraticField(3).1,QuadraticField(-15).1/5,-QuadraticField(-15).1/5,
QuadraticField(-3).1/2,-QuadraticField(-3).1/2,QuadraticField(-15).1/5,-QuadraticField(-15).1/5,
QuadraticField(-3).1/2,-QuadraticField(-3).1/2,3*QuadraticField(-1).1/5,-3*QuadraticField(-1).1/5,
QuadraticField(-6).1/4,-QuadraticField(-6).1/4,2*QuadraticField(-3).1,-2*QuadraticField(-3).1,
QuadraticField(-3).1/5,-QuadraticField(-3).1/5,3*QuadraticField(-3).1/7,-3*QuadraticField(-3).1/7>;

CMpoints := <<1,57,L57>,
<1,93,L93>,
<6,17,L6x17>,
<10,13,L10x13>,
<14,3,L14x3>,
<21,2,L21x2>,
<26,3,L26x3>>;


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

