

fileID=fopen('ask1.txt', 'w+');


%NoS= Number of Segments

%lambda= � 
%s= ����� ��������
%w=����� ���������� �����
    w=30;
    w = input('Enter the angle theta in degrees: ');
    GW='GW';
    lambda=0.1; 
    r=0.3*lambda;
    s=0.5*lambda;
    d=lambda/20;
    
    %����������� segments ��� ������� ������ ��� ����� ����������
    NoS= round(r/(lambda/(4*10))+1);    %����������� ����������� ����� ��� ���������� ��������� 4f
    NoS2= round(s/(lambda/(4*10))+1);

   %�������� ������:  
     for i=1:8
        theta=45*i; 
         
       %TAG   NoS 
     k=[i    NoS];  
     
       % X1   Y1    Z1       X2              Y2            Z2      R
     x1=[0    0     0    r*cosd(theta)   r*sind(theta)   0    lambda/200];  

 fprintf(fileID,'%s\t', GW);
 fprintf(fileID,'%d\t', k);        %�� ���� ������ �� ��������
 fprintf(fileID,'%3.3f\t',x1);     %�� ���� ������ �� ���������
 fprintf(fileID,'\n');
     end
     
     %�����: 
     for i=9:16
         theta=45*(i-8);
         k2=[i NoS2];   
         x2=[0     0    -lambda/20      s*cosd(theta)*sind(w)     s*sind(theta)*sind(w)    -cosd(w)*s     lambda/200];    
         fprintf(fileID,'%s\t', GW);
         fprintf(fileID,'%d\t', k2);
         fprintf(fileID,'%3.3f\t',x2);
         fprintf(fileID,'\n');
     end
  
  %������� ���� segment ��� ������ ����� ��� ����
 
      % X1   Y1    Z1     X2      Y2           Z2          R
  x3= [0     0      0     0        0      -lambda/20    lambda/200];
  
  k3 = [17 1];
  fprintf(fileID,'%s\t', GW);
  fprintf(fileID,'%d\t', k3);
  fprintf(fileID,'%3.3f\t', x3);
     
  fclose(fileID);

 
    

       
       
       