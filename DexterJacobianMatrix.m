% Calculations for Dexter robot 5 DOF
A0 = [1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
syms s1 s2 c1 c2
A1 = [c1 0 -s1 0;s1 0 c1 0;0 -1 0 0;0 0 0 1];
syms d2
A2 = [c2 0 s2 0;s2 0 -c2 0;0 1 0 d2;0 0 0 1];
syms d3
A3 = [1 0 0 0;0 1 0 0;0 0 1 d3;0 0 0 1];
syms c4 s4
A4 = [c4 0 -s4 0;s4 0 c4 0;0 -1 0 0;0 0 0 1];
syms c5 s5
A5 = [c5 0 s5 0;s5 0 -c5 0;0 -1 0 0;0 0 0 1];

% z_i occurs in the third column of the rotation matrix component of T_0^i
 z0 = [0 0 1];
 T01 = A1;
 z1 = A1(1:3,3);
 T02 = A1*A2;
 z2 = T02(1:3,3);
 T03 = A1*A2*A3;
 z3 = T03(1:3,3);
 T04 = A1*A2*A3*A4;
 z4 = T04(1:3,3);
 T05 = A1*A2*A3*A4*A5;
 z5 = T05(1:3,3);

 % the origins of frames 1 through 6
 o0 = T01(1:3,4);
 disp(o0)
 o1 = T01(1:3,4);
 disp(o1)
 o2 = T02(1:3,4);
 disp(o2)
 o3 = T03(1:3,4);
 disp(o3)
 o4 = T04(1:3,4);
 disp(o4)
 o5 = T05(1:3,4);
 disp(o5)
 
 

 % Jacobian matrices
 
 J1 = [cross(z0,(o5-o0));z0];
 disp(J1)
 J2 = [cross(z1,(o5-o1));z1];
 disp(J2)
 J3 = [cross(z2,(o5-o2));z2];
 disp(J3)
 J4 = [cross(z3,(o5-o3));z3];
 disp(J4)
 J5 = [cross(z4,(o5-o4));z4];
 disp(J5)
