format short 
clear all
clc
cost=[2 10 4 5;
    6 12 8 11;
    3 9 5 7];
A=[12 25 20];
B=[25 10 15 5];

if sum(A)==sum(B)
    fprintf('given transportation prblm is balanced\n');
else
    fprintf('given transportation prblm is unbalanced\n');

    if sum(A)<sum(B)
        cost(end+1,:)=zeros(1,size(A,2));
        A(end+1)=sum(B)-sum(A);
    elseif sum(B)<sum(A)
        cost(:,end+1)=zeros(1,size(A,2));
        B(end+1)=sum(A)-sum(B);
    end
end

X=zeros(size(cost));
[m,n]=size(cost);
bfs=m+n-1;
i=1;
j=1;
l=0;
while(l<bfs)
    if A(i)<=B(j)
        X(i,j)=A(i);
        B(j)=B(j)-A(i);
        i=i+1;
        l=l+1;
    elseif B(j)<=A(i)
        X(i,j)=B(j);
        A(i)=A(i)-B(j);
        j=j+1;
        l=l+1;
    else
        break;
    end
end

fprintf('initial bfs=\n');
IB=array2table(X);
disp(IB);

totalbfs=length(nonzeros(X));
if totalbfs==bfs
    fprintf('intial bfs is non-degenerate\n');
else
    printf('intial bfs is degenerate\n');
end

initialcost=sum(sum(cost.*X));
fprintf('intial bfs cost=%d\n',initialcost);









