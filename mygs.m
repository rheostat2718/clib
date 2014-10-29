function u = mygs( A )

[m,n]=size(A);

if ( m ~= n )
    error('A is not a square matrix')
end

n1=length(A);

u=[];
u=[u, A(:,1)/norm(A(:,1))];

for(k=2:n1)
    vec=A(:,k);
    temp = vec;
    for(k2=1:k-1)
        temp=temp-(vec'*A(:,k2))*A(:,k2)/norm(A(:,k2));
    end
    u=[u,temp/norm(temp)];
end

u;
