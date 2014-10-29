sys=ss(A,B,C,0)

[V,D]=eig( msign(A));

vals=diag(D);

[v1,ind1]=sort( vals);

M=V(:,ind1)

Ad = inv(M)*A*M
Bd = inv(M)*B
Cd = C*M

A1=Ad(end-2:end,end-2:end);
B1=Bd(end-2:end,:)
C1=Cd(:,end-2:end)

sys2=ss(A1,B1,C1,0);