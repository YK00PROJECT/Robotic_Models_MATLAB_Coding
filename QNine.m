% Calculations for serial robot 
A0 = [1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
syms s1 s2 c1 c2
A1 = [c1 0 -s1 0;s1 0 c1 0;0 -1 0 0;0 0 0 1];
syms d2
A2 = [c2 0 s2 0;s2 0 -c2 0;0 1 0 d2;0 0 0 1];
syms d3
A3 = [1 0 0 0;0 1 0 0;0 0 1 d3;0 0 0 1];



% z_i occurs in the third column of the rotation matrix component of T_0^i
 z0 = [0 0 1];
 T01 = A1;
 z1 = A1(1:3,3);
 T02 = A1*A2;
 z2 = T02(1:3,3);
 T03 = A1*A2*A3;
 z3 = T03(1:3,3);



 % the origins of frames 1 through 6
 o0 = T01(1:3,4);
 disp(o0)
 o1 = T01(1:3,4);
 disp(o1)
 o2 = T02(1:3,4);
 disp(o2)
 o3 = T03(1:3,4);
 disp(o3)
 

 
 

 % Jacobian matrices
 
 J1 = [cross(z0,(o3-o0));z0];
 disp(J1)
 J2 = [cross(z1,(o3-o1));z1];
 disp(J2)
 J3 = [cross(z2,(o3-o2));z2];
 disp(J3)
 