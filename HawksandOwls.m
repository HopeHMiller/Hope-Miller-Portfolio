function [On,Hn] = HawksandOwls(Oinitial, Hinitial, MaxIt)

    k1=0.2; %all of the values for k
    k2=0.3;
    k3=0.001;
    k4=0.0002;
    n=0;
    vectorO=zeros(MaxIt,1); %initializing vectors to store each point for graphing
    vectorH=zeros(MaxIt,1);
    while n<=MaxIt
    On=(1+k1)*Oinitial-k3*Oinitial*Hinitial; %on+1 equation
    Hn=(1+k2)*Hinitial-k4*Oinitial*Hinitial; %hn+1 equation
    vectorO(n+1)=On; %the addition of the newest point to the vector
    vectorH(n+1)=Hn;

        if On<1 %testing if owls have gone extinct
            disp(n)
            disp("Owls Have gone extinct")
            break
        end
        if Hn<1 %testing if hawks have gone extinct
            disp(n)
            dis("Hawks have gone extinct")
        end
        n=n+1;

    end
disp("Owls number") %shows how many owls are left at max iteration
disp(On)
disp("Hawks number") %show how many hawks are left at max iteration
disp(Hn)

plot(vectorO)
%plot(vectorH)
%matlab keeps crashing when I try to plot so I have it commented out for
%now. 

end
