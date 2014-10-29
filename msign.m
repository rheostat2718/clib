function W=msign(A)

W=A;
for(k=1:8)
    W=1/2*(W+inv(W));
end

W;

