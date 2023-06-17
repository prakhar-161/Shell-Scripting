clear all
clc




fun = @obj_wsm;
A = []; b = []; Aeq = []; beq = [];
lb = [5,2,3];
ub = [15,5,8];
x0 = [10,3,5];
nonlcon = @cons_wsm;

x_store = []; f1_store = []; f2_store = []; exitflag_store = [];

global w1
for w1 = 0:.1:1

    [x,fval,exitflag,output] = ...
        fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon)
    
    d = x(1); h = x(2); w = x(3);

    f1 = 2*(d*h + h*w) + d*w
    f2 = -(d*h*w)
    
    x_store = [x_store; x];
    f1_store = [f1_store; f1];
    f2_store = [f2_store; f2];
    exitflag_store = [exitflag_store; exitflag];
    
end
plot(f1_store,f2_store,'*--')
x_store
f1_store
f2_store
exitflag_store

function F = obj_wsm (x)
d = x(1); h = x(2); w = x(3);

f1 = 2*(d*h + h*w) + d*w;

f2 = -(d*h*w);

global w1
F = w1*f1+(1-w1)*f2;
end

function [g,h] = cons_wsm (x)
d = x(1); h = x(2); w = x(3);

g(1) = h-w;
g(2) = 2.5*h - d;

h = [];
end
