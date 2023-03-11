x=-20:1:20;
y=-20:1:20;
z=-20:1:20;


[X,Y]=meshgrid(x,y);
Z=(X.^2)/4+(Y.^2)/2;
mesh(X,Y,Z^2);
axis on
title('椭圆锥面')
xlabel('x坐标');
ylabel('y坐标');
zlabel('z坐标');
hold on;





subplot(2,2,2)
Z=(X.^2)/4-(Y.^2)/2;
mesh(X,Y,Z);
axis off
title('双曲抛物面')
hold on;



subplot(2,2,3)
Z=X.^2+Y.^2;
mesh(X,Y,Z);
axis off
title('旋转抛物面')
hold on;


x=-2*pi:0.0001:2*pi;
y=sin(x);
plot(x,y)
axis auto
hold on;

y=sin(x)+cos(x);
plot(x,y);


%%谨慎运行
[X, Y] = meshgrid(0.01:0.01:1, 0.01:0.01:1);
Zfun =@(x,y)12.5*x.*log10(x).*y.*(y-1)+exp(-((25 ...
*x - 25/exp(1)).^2+(25*y-25/2).^2).^3)./25;
Z = Zfun(X,Y);
figure;
surf(Y,Z,X,'FaceColor',[1 0.75 0.65],'linestyle','none');
hold on
surf(Y+0.98,Z,X,'FaceColor',[1 0.75 0.65],'linestyle','none');
axis equal;
view([116 30]);
camlight;
lighting phong;
axis off


%%红旗
function varargout=saxplaxliu(varargin)
x=[0 0 40 40 0];
y=[0 13 13 0 0];
k=40/13;
fill(x,y,'r')
hold on
plot(x,y,'r')
axis([0 40 0 13])
seta=pi/6;
R=1.5;R2=0.55;x0=7;y0=9;seta=0;
fliu(R,R2,x0,y0,seta,k)
R=0.6;R2=0.23;x0=15;y0=11.6;seta=-pi/20;
fliu(R,R2,x0,y0,seta,k)
R=0.6;R2=0.23;x0=20;y0=10;seta=pi/20;
fliu(R,R2,x0,y0,seta,k)
R=0.6;R2=0.23;x0=19;y0=7;seta=pi/25;
fliu(R,R2,x0,y0,seta,k)
R=0.6;R2=0.23;x0=16;y0=5;seta=-pi/10;
fliu(R,R2,x0,y0,seta,k)
axis off 
function fliu(R,R2,x0,y0,seta,k)
x=zeros(1,10);
y=x;
for i=1:5
    x(2*(i-1)+1)=R*cos(pi/2+2*pi/5*(i-1)+seta);
    x(2*i)=R2*cos(pi/2+2*pi/5*(i-1)+pi/5+seta);
    y(2*(i-1)+1)=R*sin(pi/2+2*pi/5*(i-1)+seta);
    y(2*i)=R2*sin(pi/2+2*pi/5*(i-1)+pi/5+seta);
end
x(11)=x(1);
y(11)=y(1);
x=x*k+x0;
y=y+y0;
fill(x,y,[1 0.7 0])
plot(x,y,'y')