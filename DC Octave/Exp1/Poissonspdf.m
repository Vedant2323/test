clc;
pkg load statistics;
x=-5:0.1:5;
y=poisspdf(x,1.5);
subplot(2,2,1)
plot(x,y)
axis([-5 5 0 1.5])
xlabel('x')
ylabel('pdf')
title('poission pdf with lambda 1.5')

x=-5:0.1:5;
y=poisspdf(x,2);
subplot(2,2,2)
plot(x,y)
axis([-5 5 0 1.5])
xlabel('x')
ylabel('pdf')
title('poission pdf with lambda 2')

x=-5:0.1:5;
y=poisspdf(x,2.5);
subplot(2,2,3)
plot(x,y)
axis([-5 5 0 1.5])
xlabel('x')
ylabel('pdf')
title('poission pdf with lambda 2.5')

x=-5:0.1:5;
y=poisspdf(x,3);
subplot(2,2,4)
plot(x,y)
axis([-5 5 0 1.5])
xlabel('x')
ylabel('pdf')
title('poission pdf with lambda 3')
