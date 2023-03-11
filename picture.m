[X,Y]   =meshgrid(1:0.5:10,1:20);
Z=sin(X)+cos(Y);
subplot(2,3,1);
surf(X,Y,Z),title('view picture')




subplot(2,3,2);
surf(X,Y,Z)
view(20,15);
title('view')




subplot(2,3,3);
colormap(hot)
hold on
stem3(X,Y,Z,'bo')
view(20,15)
title('填充图')

subplot(2,3,4)
surf(X,Y,Z)
view(20,15)
shading interp
alpha(0.5)
colormap(summer)
title('半透明图')




subplot(2,3,5)
surf(X,Y,Z),view(20,15)
shading interp
hold on,mesh(X,Y,Z),colormap(hot),
hold off 
hidden off
axis equal 
title('透视图')


subplot(2,3,6)
surf(X,Y,Z),view(20,15)
ii=find(abs(X)>6|abs(Y)>6);
Z(ii)=zeros(size(ii));
surf(X,Y,Z),shading interp;
colormap(copper);
light('position',[0 -15 1]);
lighting flat
material([0.8,0.8,0.5,10,0.5])
title('裁剪图');



x=-2:0.01:2;
length(x)
for i=1:401
    y(i)=minimum_point_3(x(i));
end
plot(x,y)
title('图像')


x=-100*pi:1:100*pi;
y=sin(x)+cos(4*x)
plot(x,y,'color','red');



hfig = figure
figWidth = 5;  % 设置图片宽度
figHeight = 5;  % 设置图片高度
set(hfig,'PaperUnits','inches'); % 图片尺寸所用单位
set(hfig,'PaperPosition',[0 0 figWidth figHeight]);
fileout = ['test1.']; % 输出图片的文件名
print(hfig,[fileout,'tif'],'-r600','-dtiff'); % 设置图片格式、分辨率x=


x=0:0.1:120;
y=10;
z=1./(1+exp(-(x-y)./y));
plot(x,z);
title('满意度');



clc, clear, close all
x = linspace(0, 3*pi, 40);
y1 = sin(x);
y2 = 0.1*x-0.5;
y3 = cos(x+pi/2);
figure
% 黑色实线, 圆圈标记, 线宽1.1, 标记内部填充颜色从网上找好看的配色
plot(x, y1, 'ok-', 'linewidth', 1.1, 'markerfacecolor', 'red')
hold on
plot(x, y2, 'ok-', 'linewidth', 1.1, 'markerfacecolor', 'blue')
% 设置坐标轴范围
axis([0, 3*pi, -1.2 1.2])
% 坐标轴边框线宽1.1, 坐标轴字体与大小为Times New Roman和16
set(gca, 'linewidth', 1.1, 'fontsize', 16, 'fontname', 'times')
xlabel('Time (s)')
ylabel('Displacement (m)')
legend('sin(x)', '0.1x-0.5')




%%面向切片特性的调度算法与pf算法的系统吞吐量对比%%
%%pf算法与切片特性算法的系统吞吐量
clc;
clear;
data=xlsread('C:\Users\Mr.GAN\Desktop\毕业设计\仿真数据\Algorithm1_data1.csv') ;
x=data(:,1);
y=data(:,2);
plot(x,y,'-pb')
grid on
hold on;

x=data(:,1);
z=data(:,3);
plot(x,z,'-*r')
hold on;
legend('比例公平算法','面向切片特性的资源调度算法')
xlabel('用户数/个')
ylabel('系统吞吐量/Mbps')
axis([0 130,0,2])
grid on



%%验证用户公平性
clc;
clear;
data=xlsread('C:\Users\Mr.GAN\Desktop\毕业设计\仿真数据\Algorithm1_data2.csv') ;
x=data(:,1);
y=data(:,2);
plot(x,y,'-pb')
grid on
hold on;

x=data(:,1);
z=data(:,3);
plot(x,z,'-*r')
hold on;
legend('比例公平算法','面向切片特性的资源调度算法')
xlabel('用户数/个')
ylabel('基本满意的用户/个')
axis([0 130,0,130])
grid on



%%平均满意度
clc;
clear;
data=xlsread('C:\Users\Mr.GAN\Desktop\毕业设计\仿真数据\Algorithm1_data2.csv') ;
x=data(:,1);
y=data(:,7);
plot(x,y,'-pb')
grid on
hold on;

x=data(:,1);
z=data(:,8);
plot(x,z,'-*r')
hold on;
legend('比例公平算法','面向切片特性的资源调度算法')
xlabel('用户数/个')
ylabel('基本满意的用户比例/个')
axis([0 130,0,1])
grid on


%%基于分层拍卖模型的调度算法与pf、RAN切片特性算法的用户满意度比较
clc;
clear;
data=xlsread('C:\Users\Mr.GAN\Desktop\毕业设计\仿真数据\Algorithm1_data3.csv') ;
x=data(:,1);
y=data(:,2);
plot(x,y,'-pb')
grid on
hold on;

x=data(:,1);
z=data(:,3);
plot(x,z,'-*r')
hold on;
legend('比例公平算法','面向切片特性的资源调度算法')
grid on


x=data(:,1);
h=data(:,4);
plot(x,h,'-vk')
hold on;
legend('比例公平算法','面向切片特性的资源调度算法','基于分层拍卖的资源调度算法')
xlabel('用户数/个')
ylabel('基本满意的用户/个')
axis([0 160,0,130])
grid on









%%基于分层拍卖模型的调度算法与pf、RAN切片特性算法的满意率比较
clc;
clear;
data=xlsread('C:\Users\Mr.GAN\Desktop\毕业设计\仿真数据\Algorithm1_data3.csv') ;
x=data(:,1);
y=data(:,8);
plot(x,y,'-pb')
grid on
hold on;

x=data(:,1);
z=data(:,9);
plot(x,z,'-*r')
hold on;
grid on


x=data(:,1);
h=data(:,10);
plot(x,h,'-vk')
hold on;
legend('比例公平算法','面向切片特性的资源调度算法','基于分层拍卖的资源调度算法')
xlabel('用户数/个')
ylabel('满意率')
axis([0 160,0,1])
grid on















