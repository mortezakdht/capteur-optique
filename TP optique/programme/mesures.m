clc;
clear;
tot=[];
for i=0:35
    t=400+i*10;
    nom=[int2str(t),'.dat'];
    a=load(nom);
    M=mean(a);
    moyenne=M(2);
    tot(end+1)=moyenne;
    
end
y=tot;
fid=fopen('testmesure.txt','w');
fprintf(fid,'%f',y);
fclose(fid);

plot(400:10:750,y)