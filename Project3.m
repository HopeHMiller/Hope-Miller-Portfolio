

% values for population, beta, gamma, alpha, and initial values
N = 300;
B= 0.005;
y= 0.001;
a= 0.0015;
Zinitial = 1;
Sinitial= 299; 
R0 = 0;
u=0.002;
%initializing vectors to hold values of S, R, and I
Svalues = zeros(168,1);
Zvalues = zeros(168,1);
Rvalues = zeros(168,1);

%changing variabke names because my loop
Z=Zinitial;
R=R0;
S=Sinitial;
for i=1:168
    Snew=S+(-B*S*Z - u*S)*(1/24);
    Znew= Z+(B*S*Z-y*R-a*S*Z)*(1/24);
    Rnew = R+(-y*R+u*S+a*S*Z)*(1/24);
    %finding each Sn+1, Rn+1, In+1 using the equations above
    Svalues(i)=Snew;
    Zvalues(i)=Znew;
    Rvalues(i)=Rnew;
    
    %put values in the vector
    S=Snew;
    Z=Znew;
    R=Rnew;

end

%making my years vector
h=length(Svalues);
hour=0:1:h-1;


%graphs
figure
hold on
plot(hour,Svalues,'red')
plot(hour,Zvalues,'blue')
plot(hour,Rvalues,'green')
xlim([0 168])
hold off
legend("Susceptible","ZOMBIE","Removed")
title('SRZS model')
xlabel('days')
ylabel('Population')








