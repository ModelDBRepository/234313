function plot_arm(P1,P2,P3,min_x,min_y,max_x,max_y)

% it is a function to show the trajectory of an arm with three segments
line([0 P1(1)],[0 P1(2)],[1 1],'Marker','o','LineStyle','-','LineWidth',4,'Color','k','MarkerFaceColor','red','MarkerEdgeColor','red');
hold on
line([P1(1) P2(1)],[P1(2) P2(2)],[1 1],'Marker','o','LineStyle','-','LineWidth',4,'Color','k','MarkerFaceColor','red','MarkerEdgeColor','red');
axis([-10 10 0 inf]);
line([P2(1) P3(1)],[P2(2) P3(2)],[1 1],'Marker','o','LineStyle','-','LineWidth',4,'Color','k','MarkerFaceColor','red','MarkerEdgeColor','red');
axis([min_x max_x min_y max_y]);
hold off