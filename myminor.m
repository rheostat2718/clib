% matrix_myminor = myminor( A,i0,j0)
% returns the matrix myminor with respect to row i0 column j0
%
function A1=myminor(A,i0,j0)

	i1=[];
	j1=[];
	for(k=1:length(A) )
		if (k ~= i0 )
			i1=[i1,k];
		end
		if (k ~= j0 )
			j1=[j1,k];
		end
	end
	
	A1=A(i1,j1);
	
end