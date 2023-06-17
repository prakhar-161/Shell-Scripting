clear
clc
var={'x1','x2','s1','s2','soln'};

% a=input("Enter the coefficients of constraints\n");
% b=input("Enter the RHS of constraints\n");
% c=input("Enter the cost vector\n");

a=[-1 -1;-4 -1];
b=[-2;-4];
c=[-5 -6 0 0 0];
 
s=eye(size(a,1));
A=[a s b];
m=size(a,2); 

%to find initial bfs
bv=[];
for j=1:size(s,2)
    for i=1:size(A,2)
        if A(:,i)==s(:,j)
            bv=[bv i];
        end
    end
end

ZjCj=c(bv)*A-c;
tabpr=[A;ZjCj];

simplexTable=array2table(tabpr);
simplexTable.Properties.VariableNames(1:size(tabpr,2))=var

run=true;
k=1;
while run
    %leaving var
    soln=A(:,end);
    if any(soln<0)
        fprintf('Current BFS is INFEASIBLE\n');
        fprintf("Previous Basic Variables = \n");
        disp(bv);

        [LVal,pivRow]=min(soln);
        fprintf("The leaving variable is %d\n",bv(pivRow));

        %entering var
        row=A(pivRow,1:end-1);
        ZjCjRow=ZjCj(1:end-1);
        for i=1:size(row,2)
            if(row(i)<0)
                    ratio(i)=abs(ZjCjRow(i)./row(i));
                else
                    ratio(i)=inf;
            end
        end
        [minRatio,pivCol]=min(ratio);
        fprintf("The entering variable is %d\n",pivCol);

        %updation of bv
        bv(pivRow)=pivCol;
        fprintf("Updated Basic Variables = \n");
        disp(bv);

        %pivot key
        pivKey=A(pivRow,pivCol);
        fprintf("Pivot element = %f \n",pivKey);
    
        %updation of table
        A(pivRow,:)=A(pivRow,:)./pivKey;
        for i=1:size(A,1)
            if i~=pivRow
                A(i,:)=A(i,:)-A(i,pivCol).*A(pivRow,:);
            end
        end
        ZjCj=c(bv)*A-c;
        tabpr=[A;ZjCj];
        
        simplexTable=array2table(tabpr);
        simplexTable.Properties.VariableNames(1:size(tabpr,2))=var

    else
        run=false;
        fprintf('Current BFS is FEASIBLE and OPTIMAL\n');
    end
end

%print optimal solution
bfs=zeros(1,size(A,2));
bfs(bv)=A(:,end);
bfs(end)=sum(bfs.*c);

valuesOfVariables=array2table(bfs);
valuesOfVariables.Properties.VariableNames(1:size(valuesOfVariables,2))=var