
h=[ 1 2 3 4];
cm = convmtx(h,length(h));
cm1=cm( :, 1:length(h));
cm2=[cm(:,length(h)+1:end),zeros(length(h),1)];

cm=cm1+cm2;