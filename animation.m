function animation
clc
close all
load P1
load P2
load P3
load OT
xf = T(2,1);
yf = T(3,1);
t = P1(1,:);
P1 = P1(2:4,:);
P2 = P2(2:4,:);
P3 = P3(2:4,:)
P1 = P1';
P2 = P2';
P3 = P3';
max_x = 10;
max_y = 10;
min_x = -5;
min_y = 0;

OT1 = [4 6 0]; % position de la premiere cible
OT2 = [-2 6 0]; % position de la deuxieme cible
OT3 = [1 8 0]; % position de la quatrieme cible
OT4 = [1 4 0]; % position de la cinqieme cible
OT5 = [3 7.5 0];
OT6 = [-1 4.5 0];
OT7 = [-1 7.5 0];
OT8 = [3 4.5 0];


%OT12 = [-2 7.5 0];
hold on
plot_arm(P1(1,:),P2(1,:),P3(1,:),min_x,min_y,max_x,max_y);
scatter(xf,yf,300,'*');


    text(OT1(1,1),OT1(1,2),'1');
    scatter(OT1(1,1),OT1(1,2),200,'o','k');
    text(OT2(1,1),OT2(1,2),'2');
    scatter(OT2(1,1),OT2(1,2),200,'o','k');
    scatter(OT3(1,1),OT3(1,2),200,'o','k');
    scatter(OT4(1,1),OT4(1,2),200,'o','k');
    scatter(OT5(1,1),OT5(1,2),200,'o','k');
    scatter(OT6(1,1),OT6(1,2),200,'o','k');
    scatter(OT7(1,1),OT7(1,2),200,'o','k');
    scatter(OT8(1,1),OT8(1,2),200,'o','k');
    
for n = 1:50:floor(length(t)/1)
    hold on
    
    clf
    plot_arm(P1(n,:),P2(n,:),P3(n,:),min_x,min_y,max_x,max_y);
    hold on
    xf = T(2,n);
    yf = T(3,n);
    %scatter(xf,yf,300,'*');
    %scatter(O(1,1),O(1,2),200,'o','r');
    scatter(OT1(1,1),OT1(1,2),200,'o','k');  
    text(OT1(1,1),OT1(1,2),'1','FontSize',7,'FontName','Times New Roman');
    scatter(OT2(1,1),OT2(1,2),200,'o','k');
    text(OT2(1,1),OT2(1,2),'5','FontSize',7,'FontName','Times New Roman','Color','k');
    scatter(OT3(1,1),OT3(1,2),200,'o','k');
    text(OT3(1,1),OT3(1,2),'3','FontSize',7,'FontName','Times New Roman','Color','k');
    scatter(OT4(1,1),OT4(1,2),200,'o','k')
    text(OT4(1,1),OT4(1,2),'7','FontSize',7,'FontName','Times New Roman','Color','k');
    scatter(OT5(1,1),OT5(1,2),200,'o','k');
    text(OT5(1,1),OT5(1,2),'2','FontSize',7,'FontName','Times New Roman','Color','k');
    scatter(OT6(1,1),OT6(1,2),200,'o','k');
    text(OT6(1,1),OT6(1,2),'6','FontSize',7,'FontName','Times New Roman','Color','k');
    scatter(OT7(1,1),OT7(1,2),200,'o','k');
    text(OT7(1,1),OT7(1,2),'4','FontSize',7,'FontName','Times New Roman','Color','k');
    scatter(OT8(1,1),OT8(1,2),200,'o','k');
    text(OT8(1,1),OT8(1,2),'8','FontSize',7,'FontName','Times New Roman','Color','k');
    pause(0.001);
end
hold off

