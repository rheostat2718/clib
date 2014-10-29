function [Ared,Bred,Cred,h]=scred(A,B,C,ro)

    [h,a]=secondcauer(A,B,C,ro);
    
    
    Ared=[];
    
    for(r1=1:ro)
        temprow=[];
        for(c1=1:ro)
            
            if( r1 < c1)
                temp=zeros(size(h{1}));
                for(k1=1:r1)
                    temp=temp+h{ 1+(k1-1)*2};
                end
                temp=temp*h{2*c1};
                temprow=[temprow,temp];
            else
             temp=zeros(size(h{1}));
                for(k1=1:c1)
                    temp=temp+h{ 1+(k1-1)*2};
                end
                temp=temp*h{2*c1};
                temprow=[temprow,temp];
            end
        end
       Ared=[Ared;temprow];   
    end

    
    Ared=-Ared;
    [bm,bn]=size(B);
    
    g=length(Ared)/bn;
    
    Bred=[];
    for(k1=1:g)
        Bred=[Bred;eye(bn)];
    end
    
    Cred=[];
    for(k1=1:ro)
        Cred=[Cred,h{2*k1}];
    end

    

end