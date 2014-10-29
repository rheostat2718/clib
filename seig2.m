function W = seig2(A);

    evals = seig(A);
    
    for(k=1:length(evals)-1)
        a = evals(k);
        b = evals(k+1);
        if ( (real(a)-real(b))^2 < 1e-9)
            if ( imag(a) < imag(b) )
                evals(k)=a;
                evals(k+1)=b;
            else
                evals(k)=b;
                evals(k+1)=a;
            end
        end
        
    end
    
        W=evals;