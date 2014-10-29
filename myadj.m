function adj=myadj(A)

c1=0;
adj=[];
    for(k1=1:length(A))
        for(k2=1:length(A))
            
            adj(k1,k2)=(-1)^(c1)*det(myminor(A,k1,k2));
            c1=c1+1;
        end
    end
    adj=adj.';
    
end
    