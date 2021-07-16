



x=0; %TAG number
GW='GW';
lambda=5; 

apostasi_dipolon= lambda*0.5;
apostasi = apostasi_dipolon/2 ; %θα το χρειαστούμε για να εκτυπώσουμε τα χιαστί δίπολα στα ύψη που θέλουμε

NoS= round((apostasi)/(lambda/(1.5*10))+1); %Number of Segments για την μεγαλύτερη f=1.5fo

w=25; %γωνία διπόλων από άξονα x




%Εκτυπώνει όλα τα χιαστί δίπολα στα αντίστοιχα ύψη ξεκινώντας από κάτω
%Τα ακριανά απέχουν 1.5*apostasi_dipolon = 3*apostasi από την αρχή του άξονα z
%Τα ενδιάμεσα απέχουν 0.5*apostasi_dipolon=1*apostasi από την αρχή του άξονα z
%Επομένως με βήμα 2 πετυχαίνουμε κάθε φορά το επιθυμητό ύψος


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
fprintf('%d\t', k);     %Σε έναν πίνακα οι ακεραίοι
fprintf('%3.3f\t',d1);  %Σε έναν πίνακα οι δεκαδικοί
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

 x=16; %Χρειαστήκαμε (4 χιαστί)*(4 τέτοια ζέυγη) = 16 μονόπολα

 
 %Μένει να εκτυπωθούν με τον ίδιο τρόπο τα μικρά wires ενούς segment που θα ενώνουν τα
 %χιασττί δίπολα σε κάθε ύψος. Θέτουμε το μήκος τους λ/30. 
 
 
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
 
 
%Εκτυπώνει το μικρό wire ενούς segment που βρίσκεται στην αρχή του άξονα ζ, όπου θα μπει η πηγή.

k=[21 1]; 

        %X1         Y1                 X2           Y2     Z2         R    
p= [ -lambda/60      0       0     +lambda/60       0       0    lambda/200];  

fprintf('%s\t', GW);
fprintf('%d\t', k);
fprintf('%3.3f\t',p);
fprintf('\n');
 
 
 
 
 