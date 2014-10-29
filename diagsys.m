function [Ad,Bd,Cd]=diagsys(A,B,C)

    M=seigv(A);
    Ad = inv(M) * A * M;
    
    Bd = inv(M) * B;
    
    Cd = C * M;
    