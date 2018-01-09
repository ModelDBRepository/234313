clc
% Segments lengths
a1 = 5;
a2 = 3;
a3 = 2;

% Initial configuration (joints angles)
tetha1 = 0;
tetha2 = 0;
tetha3 = 0;
dt = 1e-3; % 

ax1_0 = a1*cos(tetha1);
ay1_0 = a1*sin(tetha1);

ax2_0 = a2*cos(tetha1+tetha2);
ay2_0 = a2*sin(tetha1+tetha2);

ax3_0 = a3*cos(tetha1+tetha2+tetha3);
ay3_0 = a3*sin(tetha1+tetha2+tetha3);

OP1_0 = [ax1_0 ay1_0 0];
P1P2_0 = [ax2_0 ay2_0 0];
OP2_0 = OP1_0 + P1P2_0;
P2P3_0 = [ax3_0 ay3_0 0];
OP3_0 = OP2_0 + P2P3_0;
ax_0 = OP3_0(1);
ay_0 = OP3_0(2);
zero_vector = [0 0 0];
theta1_0 = zero_vector;
theta2_0 = zero_vector;
theta3_0 = zero_vector;

OT1 = [4 6 0]; % position de la premiere cible
OT2 = [-2 6 0]; % position de la deuxieme cible
OT3 = [4 6 0]; % position de la troisieme cible
OT4 = [1 8 0]; % position de la quatrieme cible
OT5 = [1 4 0]; % position de la cinqieme cible
OT6 = [1 8 0]; % position de la sixieme cible
OT7 = [3 7.5 0];
OT8 = [-1 4.5 0];
OT9 = [3 7.5 0];
OT10 = [-1 7.5 0];
OT11 = [3 4.5 0];
OT12 = [-1 7.5 0];


th = 1e-1;
g = 1; % To simulate parkinsonian set lower than 1

% weights for different segments movements
w1 = 1/100;
w2 = 1/50;
w3 = 1/20;

delay = 1;