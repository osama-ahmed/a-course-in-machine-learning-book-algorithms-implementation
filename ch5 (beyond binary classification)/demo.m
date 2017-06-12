% load('threeClassesDataset');
% 
% X=dataset';
% Y=labels';
% 
% for i=1:size(Y,1)
%     if Y(i,2)==1
%         Y(i,1)=2;
%     elseif Y(i,3)==1
%         Y(i,1)=3;
%     end
% end
% Y=Y(:,1);
% 
% Xtr(1:30,:)=X(1:30,:);
% Xtr(31:40,:)=X(44:53,:);
% Xtr(41:60,:)=X(59:78,:);
% Xte(1:13,:)=X(31:43,:);
% Xte(14:18,:)=X(54:58,:);
% Xte(19:27,:)=X(79:87,:);
% 
% Ytr(1:30,:)=Y(1:30,:);
% Ytr(31:40,:)=Y(44:53,:);
% Ytr(41:60,:)=Y(59:78,:);
% Yte(1:13,:)=Y(31:43,:);
% Yte(14:18,:)=Y(54:58,:);
% Yte(19:27,:)=Y(79:87,:);


load('MNIST.mat');
 %F=oneVersusAllTrain(Xtr(1:1000,:),Ytr(1:1000,:));
 %load('F.mat');

class=zeros(size(Yte,1),1); 
errors=0;
for i=1:size(Xte,1)
class(i,1)=oneVersusAllTest(F,Xte(i,:));
class(i,1)=class(i,1)-1;
if class(i,1)~=Yte(i,1)
    errors=errors+1;
end
end

errors

