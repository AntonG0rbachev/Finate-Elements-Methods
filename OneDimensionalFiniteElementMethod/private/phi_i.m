function phi = phi_i(x,x1,i,h)
phi = zeros(size(x)); 
    
if i == 1
    m = (x >= x1(1)) & (x <= x1(2));
    phi(m) = (x1(2) - x(m)) / h;

elseif i == length(x1)
    m = (x >= x1(end-1)) & (x <= x1(end));
    phi(m) = (x(m) - x1(end-1)) / h;

else
    phi(x <= x1(i-1)) = 0;

    m1 = (x > x1(i-1)) & (x <= x1(i));
    phi(m1) = (x(m1) - x1(i-1)) / h;

    m2 = (x > x1(i)) & (x <= x1(i+1));
    phi(m2) = (x1(i+1) - x(m2)) / h;

    phi(x > x1(i+1)) = 0;
end
end