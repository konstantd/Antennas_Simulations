



x=0; %TAG number
GW='GW';
lambda=5; 

apostasi_dipolon= lambda*0.5;
apostasi = apostasi_dipolon/2 ; %�� �� ����������� ��� �� ����������� �� ������ ������ ��� ��� ��� �������

NoS= round((apostasi)/(lambda/(1.5*10))+1); %Number of Segments ��� ��� ���������� f=1.5fo

w=25; %����� ������� ��� ����� x




%��������� ��� �� ������ ������ ��� ���������� ��� ���������� ��� ����
%�� ������� ������� 1.5*apostasi_dipolon = 3*apostasi ��� ��� ���� ��� ����� z
%�� ��������� ������� 0.5*apostasi_dipolon=1*apostasi ��� ��� ���� ��� ����� z
%�������� �� ���� 2 ������������ ���� ���� �� ��������� ����


 for i=1:2:8
        %X1       Y1         Z1              X2               Y2                Z2                              R    
d1=[lambda/60     0    (i-4)*apostasi   cosd(w)*apostasi      0     (i-4)*apostasi+sind(w)*apostasi      lambda/200];  
d2=[lambda/60     0    (i-4)*apostasi   cosd(w)*apostasi      0     (i-4)*(apostasi)-sind(w)*apostasi    lambda/200];
d3=[-lambda/60    0    (i-4)*apostasi   -cosd(w)*apostasi     0     (i-4)*apostasi+sind(w)*apostasi      lambda/200];
d4=[-lambda/60    0    (i-4)*apostasi   -cosd(w)*apostasi     0     (i-4)*(apostasi)-sind(w)*apostasi    lambda/200];


    %TAG     NumberOfSegments
k=  [x+1          NoS]; 

%d1
fprintf('%s\t', GW);                                                                                
fprintf('%d\t', k);     %�� ���� ������ �� ��������
fprintf('%3.3f\t',d1);  %�� ���� ������ �� ���������
fprintf('\n');
%d2
k(1)=k(1)+1;     %next tag number
fprintf('%s\t', GW);
fprintf('%d\t', k);
fprintf('%3.3f\t',d2);
fprintf('\n');
%d3
k(1)=k(1)+1;

fprintf('%s\t', GW);
fprintf('%d\t', k);
fprintf('%3.3f\t',d3);
fprintf('\n');
%d4
k(1)=k(1)+1;
x=k(1);

fprintf('%s\t', GW);
fprintf('%d\t', k);
fprintf('%3.3f\t',d4);
fprintf('\n');
 end

 x=16; %������������ (4 ������)*(4 ������ �����) = 16 ��������

 
 %����� �� ���������� �� ��� ���� ����� �� ����� wires ����� segment ��� �� ������� ��
 %������� ������ �� ���� ����. ������� �� ����� ���� �/30. 
 
 
 for i=1:2:8
        %X1        Y1         Z1              X2           Y2           Z2              R    
 p= [-lambda/60    0     (i-4)*apostasi    +lambda/60      0     (i-4)*apostasi     lambda/200];  
 k=[x+1 1]; 
 
fprintf('%s\t', GW);
fprintf('%d\t', k);
fprintf('%3.3f\t',p);
fprintf('\n');
x=k(1);
 end
 
 
%��������� �� ����� wire ����� segment ��� ��������� ���� ���� ��� ����� �, ���� �� ���� � ����.

k=[21 1]; 

        %X1         Y1                 X2           Y2     Z2         R    
p= [ -lambda/60      0       0     +lambda/60       0       0    lambda/200];  

fprintf('%s\t', GW);
fprintf('%d\t', k);
fprintf('%3.3f\t',p);
fprintf('\n');
 
 
 
 
 