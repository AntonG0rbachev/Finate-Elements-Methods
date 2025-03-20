N = 40;

b1 = 0;
b2 = 1;

h = (b2-b1)/(N-1);
x1 = b1:h:b2;

A = zeros(N);
F = zeros(N,1);

F(1) = 0;
A(1,1) = 1;

for i = 2:N
    F(i) = 0;
    for n = 1:N
        A(i,n) = integral(@(x) -dfi_n(x,x1,i,h) .* dfi_n(x,x1,n,h) + 30 * phi_i(x,x1,i,h) .* phi_i(x,x1,n,h),b1,b2);
    end
end

A(2,1) = 0;
F(n) = -15;

h1 = (b2-b1)/(N/2-1);
x2 = b1:h1:b2;

C = A \ F;
uN = 0;
for i = 1:N
    uN = uN + C(i) * phi_i(x2,x1,i,h);  
end
plot(x2,uN,'.','MarkerSize',6);
hold on;
plot(x1, solution(x1), 'r-');
legend('Приближенное решение','Точное решение','Location','best');