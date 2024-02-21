% Creating kinematic model of RRR robot 

%            theta      d    a    alpha
clear L
L(1) = Link([pi/3      0     50     0    ]);
L(2) = Link([pi/3      0     50   -pi/2  ]);
L(3) = Link([pi/3      0     50    pi/2  ]);
L(4) = Link([pi/3      0     50   -pi/2  ]);
%##########################################################
%Pose 0; At MASTERING position;
%##########################################################
q0 =[0   -pi/2   0   0];
R=SerialLink(L, 'name', 'RRRrobot');
%##########################################################