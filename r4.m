 [p2,fval,ef]=fminsearch(@myfitness,p1,optimset('TolX',1e-9));
 p0=p1;
   p1=p2;
a11=p1(1);
    a12=p1(2);
    a13=p1(3);
    a14=p1(4);
    a21=p1(5);
    a22=p1(6);
    a23=p1(7);
    a24=p1(8);
    a31=p1(9);
    a32=p1(10);
    a33=p1(11);
    a34=p1(12);
    a41=p1(13);
    a42=p1(14);
    a43=p1(15);
    a44=p1(16);
    b11=p1(17);
    b12=p1(18);
    b21=p1(19);
    b22=p1(20);
    b31=p1(21);
    b32=p1(22);
    b41=p1(23);
    b42=p1(24);
    c11=p1(25);
    c12=p1(26);
    c13=p1(27);
    c14=p1(28);
    c21=p1(29);
    c22=p1(30);
    c23=p1(31);
    c24=p1(32);
    A2=[a11,a12 a13 a14;a21 a22 a23 a24;a31 a32 a33 a34;a41 a42 a43 a44];
    B2=[b11,b12;b21 b22; b31 b32; b41 b42];
    C2=[c11,c12,c13,c14; c21 c22 c23 c24];
    sys2=ss(A2,B2,C2,0);
    
 
    close all;
%     step(sys2);
  t=linspace(0,50,1024);
    u=[sin(2*pi*1/25*t);-sin(2*pi*1/25*t)];
    lsim(sys2,u,t);
    hold
%     step(sys)
lsim(sys,u,t)
    