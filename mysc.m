function W=mysc(k)

v=1:k;
W=( toeplitz( circshift( flipud(v(:)),1) ) );