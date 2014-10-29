
%%
%A=rand(8,8);
[M,D]=eig(A);
val=diag(D);
[val1,ind1]=sort(real(val));

M1=M(1:end,ind1)


Ad=inv(M1)*A*M1
diag(Ad)