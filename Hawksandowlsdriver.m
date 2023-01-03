%hawks n owls driver

figure %this creates a new figure for each set but matlab keeps
       % crashing when i plot so I cant test it with the plot
disp("first set")
OInitial1=151;
HInitial1=199;
[On1,Hn1]=HawksandOwls(OInitial1,HInitial1,100);

figure
disp("second set")
OInitial2=149;
HInitial2=201;
[On2,Hn2]=HawksandOwls(OInitial1,HInitial1,100);

figure 
disp("third set")
OInitial3=10;
HInitial3=10;
[On3,Hn3]=HawksandOwls(OInitial1,HInitial1,100);