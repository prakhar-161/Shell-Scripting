f=@(x)(x.^2)
L=-3;
R=10;
n=16;
fibnc=ones(1,n);
for i=3:n+1
    fibnc(i)=fibnc(i-1)+fibnc(i-2);
end
for k=1:n
    ratio=(fibnc(n-k+1)./fibnc(n-k+2));
    x2=L+ratio.*(R-L);
    x1=L+R-x2;
    f_x1=f(x1);
    f_x2=f(x2);
    tab(k,:)=[ratio L R x1 x2 f_x1 f_x2];
    if f_x1<f_x2
        R=x2
    elseif f_x1>f_x2
        L=x1;
    elseif f_x1==f_x2
        if min(abs(x1),abs(L))==abs(L)
            R=x2;
        else L=x1;
        end
    end
end