close all;
pkg load statistics;
x=-5:0.01:5;
y=unifpdf(x,0,1);
subplot(2,2,1);
plot(x,y);
axis([-5 5 0 1.5]);
xlabel('x');
ylabel('pdf');
title('Unifpdf range 0-1');

y=unifpdf(x,0,2);
subplot(2,2,2);
plot(x,y);
axis([-5 5 0 1.5]);
xlabel('x');
ylabel('pdf');
title('Unifpdf range 0-2');

y=unifpdf(x,0,3);
subplot(2,2,3);
plot(x,y);
axis([-5 5 0 1.5]);
xlabel('x');
ylabel('pdf');
title('Unifpdf range 0-3');

y=unifpdf(x,0,4);
subplot(2,2,4);
plot(x,y);
axis([-5 5 0 1.5]);
xlabel('x');
ylabel('pdf');
title('Unifpdf range 0-4');
