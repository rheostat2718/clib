% [Ac,Bc,Cc]=bccomp(A,B,C)
%  returns the controller-type (block) companion form of system
%  given by A,B,C
function [Ac,Bc,Cc]=bccomp(A,B,C)

    Tc = helperfun(A,B);

    Ac=Tc*A*inv(Tc);
    Bc=Tc*B;
    Cc=C*inv(Tc);

end

function [Tc] = helperfun(A,B)
    tol = 1e-9;


    [am,an]=size(A);
    if (an ~= am)
        error('A matrix must a square matrix')
    end
    
    [bm,bn]=size(B);
    
    n=am;  % number of states, given A is square
    m=bn;  % number of inputs
    
    if ( bm ~= am )
        error('number of rows of A and B are not equal')
    end
    
    if ( mod(n,m) ~= 0 )
        error('Gamma is not an integer value')
    end
    
    g=n/m;
    
    Bc=[  ];  % initialize to null matrix
    
    for(k=1:g-1)
    
        Bc=[Bc;zeros(m,m)];
     
    end
    Bc=[Bc;eye(m,m)];
    
    p2=[]; % right term
    for(k=0:g-1)
        
        p2=[ p2,A^k*B];
        
    end
    
    if ( abs(det(p2)) < ( tol) )
        error('uncontrollable system')
    end
    
    Tc1=Bc'*inv(p2);
    
    Tc=[];  % initialize Tc to null matrix
    for(k=0:g-1)
        Tc=[Tc;Tc1*A^k];
    end


end