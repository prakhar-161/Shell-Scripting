clc
clear

% c=input("Enter the cost matrix\n");
% A=input("Enter the supply matrix\n");
% B=input("Enter the demands matrix\n");

c=[2 10 4 5; 6 12 8 11; 3 9 5 7];
A=[12 25 20];
B=[25 10 15 5];

if sum(A)==sum(B)
    fprintf('Problem is BALANCED\n\n');
else
    fprintf('Problem is UNBALANCED\n\n');
    if sum(A)<sum(B)
        c(end+1,:)=zeros(1,size(A,2));
        A(end+1)=sum(B)-sum(A);
    elseif sum(B)<sum(A)
        c(:,end+1)=zeros(1,size(A,2));
        B(end+1)=sum(A)-sum(B);
    end
end

x=zeros(size(c));
[m,n]=size(c);

for i=1:m
    for j=1:n
        xnw=min(A(i),B(j));
        x(i,j)=xnw;
        
        A(i)=A(i)-xnw;
        B(j)=B(j)-xnw;
    end
end

soln=array2table(x);
fprintf('Initial BFS:\n');
disp(soln);

ic=sum(sum(c.*x));
fprintf('Initial Cost:\n');
disp(ic);