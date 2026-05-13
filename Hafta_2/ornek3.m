%fourier serisi
N = 50;
n = [0:N-1];
M = 10;
m = [0:M-1];
x = [zeros(1,28),ones(1,12),zeros(1,N-40)];
a = (2/N)*x*cos(2*pi*(n')*m/N);
a(1) = a(1)/2;
b = (2/N)*x*sin(2*pi*(n')*m/N);
xr = a*cos(2*pi*(m')*n/N)+b*sin(2*pi*(m')*n/N);
subplot(211);
plot(x)
subplot(212);
plot(xr,'r')
