function dfin = dfi_n(x,x1,i,h)
dfin = zeros(size(x)); 

if i == 1
    m = (x >= x1(1)) & (x <= x1(2));
    dfin(m) = -1/h;

elseif i == length(x1)
    m = (x >= x1(end-1)) & (x <= x1(end));
    dfin(m) = 1/h;

else
    dfin(x <= x1(i-1)) = 0;

    m1 = (x >= x1(i-1)) & (x <= x1(i));
    dfin(m1) = 1/h;

    m2 = (x >= x1(i)) & (x <= x1(i+1));
    dfin(m2) = -1/h;

    dfin(x >= x1(i+1)) = 0;
end
end