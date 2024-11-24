format short
Info = [6 3 2; 6 4 3; 20 15 12]; 
b = [6;0;0]; 

A = [Info b]; 

for i=1:size(A,1) 
    for j=i+1:size(A,1)
        key1 = A(j,i)./A(i,i); 
        A(j,:) = A(j,:) - key1.*A(i ,:); 
    end
end

x = zeros(1,size(Info , 2))

for i=size(A,1):-1:1 
    hg = sum(A(i,i+1:end-1).*x(i+1:end)); 
    x(i) = (A(i,end)-hg) ./ A(i,i); 
end
x