
D = importdata('logo_01.png');
alpha=D.alpha(:,[7:32,36:109]);
cdata=D.cdata(:,[7:32,36:109],:);
aaa=rgb2hsv(cdata(8,19,:));
aaa(1)=aaa(1)+0.5;
bbb=uint8(255*hsv2rgb(aaa));
cdata(:,1:26,1)=bbb(1);
cdata(:,1:26,2)=bbb(2);
cdata(:,1:26,3)=bbb(3);
imshow(cdata)
imwrite(cdata,'avatar.png','Alpha',alpha)
%
n=500;
imwrite(uint8(zeros(n,n,3)),'avatar.png','Alpha',uint8(zeros(n)))
imwrite(uint8(255*ones(n,n,3)),'avatar.png','Alpha',uint8(zeros(n)))