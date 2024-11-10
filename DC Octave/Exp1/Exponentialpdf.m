clc;
pkg load statistics

x= -5:0.01:5;
y= exppdf (x,0.1)
subplot(2,2,1)
plot (x,y)
xlabel('x')
ylabel('pdf')
title('exppdf mean 0.1')
subplot (2,2,2)
x= -5:0.01:5;
y= exppdf(x,0.5)
plot(x,y)
xlabel ('x')
ylabel ('pdf')
title ('exppdf mean 0.5 ')
subplot (2,2,3)
x= -5:0.01:5
y= exppdf (x,1)
plot (x,y)
xlabel ('x')
ylabel ('pdf')
title (' exppdf mean 1 ')
subplot (2,2,4)
x= -5:0.01:5;
y=  exppdf (x,2)
plot(x,y)
xlabel ('x')
ylabel (' pdf')
title (' exppdf mean 2 ')
