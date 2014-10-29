function vals = seig(A)

    vals = eig(A);
    temp0 = real(vals);
    [temp1,i0]=sort(temp0);
    vals=vals(i0);
    