function [Vecs,Vals] = seigv(A)

    [V,D]=eig(A);
    vals = diag(D);
    [v0,i0]=sort(real(vals));
    Vals = vals(i0);
    Vecs=V(:,i0);
    