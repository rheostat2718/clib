function W=mydctmtx(k)

    W=[];
    for(j1=1:k)
        W=[W,dct( mynbasis(k,j1)).'];
    end
    W;



end


function W1=mynbasis(n,k)
    W1=zeros(1,n);
    W1(k)=1;

end