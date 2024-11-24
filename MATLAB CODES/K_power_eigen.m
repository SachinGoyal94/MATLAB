format short
a=[1 2;2 1];
v1=[1;0];
v0=v1
tol=1e-3;
n=input("Enter the number of inputs: ");
for i=1:n
    v1=a*v0;
    m=max(v1);
    v1=v1/m;
    if norm(v1-v0)<tol
        break
    end
    v0=v1;
end
disp(m);