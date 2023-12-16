function rot2911
n1=0;
n2=10;
n=n1:n2;
x=imseq(2,n1,n2)-3*imseq(3,n1,n2);
stem(n,x);
end
function x=imseq(n0,n1,n2)
n=n1:n2;
x=(n-n0)==0;
end