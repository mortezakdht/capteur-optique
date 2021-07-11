clc;
clear all;
c=0;

for i=0:35
    t=400+i*10;
    nom=[int2str(t)];
    Path=['C:\Users\msh\Desktop\IMAGES\',nom,'\'];
    Dir=dir([Path,'*.bmp']);
     for j=1:length(Dir)
         u=imread([Path,Dir(j).name]); 
     end
     c=c+double(u);
end
m=c/30;
fid=fopen('testimg.txt','w');
fprintf(fid,'%f',m);
fclose(fid);
%plot(m)
j=mat2gray(m);
figure
imshow(j)