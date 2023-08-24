clc
clear all
format short
q1=0;q2=4*pi/3;q3=2*pi/3;q4=3*pi/2;q5=2*pi/3;q6=4*pi/3;q7=0;q8=0;d1=0.015;
L2=0.240;L3=0.421;L4=0.300;L5=0.294;L6=0.759;L7=0.258;L8=1.950;
q=q1;alpha=pi/2;
T01_1=[1 0 0 0;0 cos(alpha) -sin(alpha) 0;0 sin(alpha) cos(alpha) 0;0 0 0 1];
T01_2=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 0;0 1 0 0;0 0 1 d1;0 0 0 1];
T01=T01_2*T01_1;
q=q2;alpha=0;a=L2;
T12=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
q=q3;alpha=0;a=L3;
T23=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
q=q4;alpha=0;a=L4;
T34=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
q=q5;alpha=0;a=L5;
T45=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
q=q6;alpha=0;a=L6;
T56=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
q=q7;alpha=0;a=L7;
T67=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
q=q8;alpha=0;a=L8;
T78=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
T02=T01*T12;
T03=T02*T23;
T04=T03*T34;
T05=T04*T45;
T06=T05*T56;
T07=T06*T67;
T08=T07*T78

axis([-2 5 -2 5]);
Ax1 = [T01(1,4),T02(1,4)];
Ay1 = [T01(2,4),T02(2,4)];
Ax2 = [T02(1,4),T03(1,4)];
Ay2 = [T02(2,4),T03(2,4)];
Ax3 = [T03(1,4),T04(1,4)];
Ay3 = [T03(2,4),T04(2,4)];
Ax4 = [T04(1,4),T05(1,4)];
Ay4 = [T04(2,4),T05(2,4)];
Ax5 = [T05(1,4),T06(1,4)];
Ay5 = [T05(2,4),T06(2,4)];
Ax6 = [T06(1,4),T07(1,4)];
Ay6 = [T06(2,4),T07(2,4)];
Ax7 = [T07(1,4),T08(1,4)];
Ay7 = [T07(2,4),T08(2,4)];
Ax8 = [-.1,.1];
Ay8 =  [0,0];

p1  = line(Ax1,Ay1,'LineWidth',[3],'Color','k');
p2  = line(Ax2,Ay2,'LineWidth',[3],'Color','M');
p3  = line(Ax3,Ay3,'LineWidth',[3],'Color','R');
p4  = line(Ax4,Ay4,'LineWidth',[3],'Color','B');
p5  = line(Ax5,Ay5,'LineWidth',[3],'Color','k');
p6  = line(Ax6,Ay6,'LineWidth',[3],'Color','M');
p7  = line(Ax7,Ay7,'LineWidth',[3],'Color','R');
p8  = line(Ax8,Ay8,'LineWidth',[12],'Color','B');

drawnow

pause ()
 for t=0:0.01:1
     q1=0;q2=3*pi/2*t;q3=2*pi/3*t;q4=3*pi/2*t;q5=2*pi/3*t;q6=4*pi/3*t;q7=0;q8=0;d1=0.01+0.0015*t
     q=q1;alpha=pi/2;
     T01_1=[1 0 0 0;0 cos(alpha) -sin(alpha) 0;0 sin(alpha) cos(alpha) 0;0 0 0 1];
    T01_2=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 0;0 1 0 0;0 0 1 d1;0 0 0 1];
    T01=T01_2*T01_1;
    q=q2;alpha=0;a=L2;
    T12=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
    q=q3;alpha=0;a=L3;
    T23=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
    q=q4;alpha=0;a=L4;
    T34=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
    q=q5;alpha=0;a=L5;
    T45=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
    q=q6;alpha=0;a=L6;
    T56=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
    q=q7;alpha=0;a=L7;
    T67=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
    q=q8;alpha=0;a=L8;
    T78=[cos(q) -sin(q) 0 0;sin(q) cos(q) 0 0;0 0 1 0;0 0 0 1]*[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];
    T02=T01*T12;
    T03=T02*T23;
    T04=T03*T34;
    T05=T04*T45;
    T06=T05*T56;
    T07=T06*T67;
    T08=T07*T78
    
    axis([-2 5 -2 5]);
    Ax1 = [T01(1,4),T02(1,4)];
    Ay1 = [T01(2,4),T02(2,4)];
    Ax2 = [T02(1,4),T03(1,4)];
    Ay2 = [T02(2,4),T03(2,4)];
    Ax3 = [T03(1,4),T04(1,4)];
    Ay3 = [T03(2,4),T04(2,4)];
    Ax4 = [T04(1,4),T05(1,4)];
    Ay4 = [T04(2,4),T05(2,4)];
    Ax5 = [T05(1,4),T06(1,4)];
    Ay5 = [T05(2,4),T06(2,4)];
    Ax6 = [T06(1,4),T07(1,4)];
    Ay6 = [T06(2,4),T07(2,4)];
    Ax7 = [T07(1,4),T08(1,4)];
    Ay7 = [T07(2,4),T08(2,4)];
    Ax8 = [-.1,.1];
    Ay8 =  [0,0];
    
    
  set(p1,'X', Ax1, 'Y',Ay1)
  set(p2,'X', Ax2, 'Y',Ay2)
  set(p3,'X', Ax3, 'Y',Ay3)
  set(p4,'X', Ax4, 'Y',Ay4)
  set(p5,'X', Ax5, 'Y',Ay5)
  set(p6,'X', Ax6, 'Y',Ay6)
  set(p7,'X', Ax7, 'Y',Ay7)
  set(p8,'X', Ax8, 'Y',Ay8)
  drawnow
  pause(.01)
  end
     
     

