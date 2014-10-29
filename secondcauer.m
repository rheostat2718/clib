function [h,a]=secondcauer(A,B,C,ro)
    [bm,bn]=size(B);
    m=bn;
    
    [Ac,Bc,Cc]=bccomp(A,B,C);
    
    g=length(A)/m;
    for(k=1:g)
       
      a{1,k}=-Ac(end-m+1:end, 1+(k-1)*m:m*k)
      a{2,k}=Cc(end-m+1:end,1+(k-1)*m:m*k);
        
    end

    for(k=1:length(A)/m)
       
      a{1,k+g}=0*a{1,1};
      a{2,k+g}=0*a{2,1};
        
    end

    
    
    for(k1=1:2*ro)
        h{k1}=a{k1,1}*inv(a{k1+1,1});
        for(k2=1:g)
            a{k1+2,k2}=a{k1,k2+1}-h{k1}*a{k1+1,k2+1};
            a{k1+2,k2+g}=0*a{1,1};
        end
    end
    
    
end



