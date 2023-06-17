clear all
clc
 Cost = [2 10 4 5 0
         6 12 8 11 0
         3 9 5 7 0];
 A = [12 25 20];%supply(row)
 B = [25 10 15 5 2];%demand(col)
 if sum(A) == sum(B)%if prblm is balanced
 else% if not balanced
     if sum(A)<sum(B)
         Cost(end+1,:) = zeros(1,size(A,2));
         A(end+1) = sum(B) - sum(A);
     elseif sum(B)<sum(A)
         Cost(:,end+1) = zeros(1,size(A,2));
         B(end+1) = sum(A) - sum(B);
     end
 end
 X = zeros(size(Cost));
 m=3;
 n=5;
 for i=1:m
     for j=1:n
         x11 = min(A(i),B(j));
         X(i,j) = x11;
         A(i) = A(i) - x11;
         B(j) = B(j) - x11;
     end
 end
 table = array2table(X);
 disp(table);
 Transportation_cost = sum(sum(Cost.*X));
 disp(Transportation_cost);