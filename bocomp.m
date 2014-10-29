% [Ac,Bc,Cc]=bccomp(A,B,C)
%  returns the controller-type (block) companion form of system
%  given by A,B,C
function [Ao,Bo,Co]=bocomp(A,B,C)

    To = helperfun(A,C);

    Ao=inv(To)*A*To;
    Bo=inv(To)*B;
    Co=C*To;

end

function [To] = helperfun(A,C)
    tol = 1e-9;


    [am,an]=size(A);
    if (an ~= am)
        error('A matrix must a square matrix')
    end
    
    [cm,cn]=size(C);
    
    n=am;  % number of states, given A is square
    p=cm;  % number of outputs
    fprintf('cn=%d  an=%d\n\n',cn,an);
    if ( cn ~= am )
        error('number of rows of A and B are not equal')
    end
    
    if ( mod(n,p) ~= 0 )
        error('r is not an integer value')
    end
    
    r=n/p;
    
    Co=[  ];  % initialize to null matrix
    
    for(k=1:r-1)
    
        Co=[Co,zeros(p,p)];
     
    end
    Co=[Co,eye(p)];
    
    pleft=[] % initalize left product to null matrix
    for(k=0:r-1)
        
        pleft=[pleft;C*A^k];
        
    end
    pleft
    
    if ( abs(det(pleft)) < ( tol) )
        error('unobservable system')
    end
    Co
    To1=inv(pleft)*Co';
    
    To=[];  % initialize Tc to null matrix
    for(k=0:r-1)
        To=[ To,A^k*To1];
    end


end