% load('myDataset2');
load('D:\output\My projects\Machine learning\a course in machine learning algorithms implementation/data/MNISTbinary.mat');
%T=labels';
%X=dataset';

%T=T(:,1);

% for i=1:size(T,1)
%     if T(i,1)==0
%         T(i,1)=-1;
%     end
% end


% Xtr=zeros(60,256);
% Ttr=zeros(60,1);
% Xte=zeros(26,256);
% Tte=zeros(26,1);

% Xtr(1:30,:)=X(1:30,:);
% %Xtr(31:60,:)=X(44:73,:);
% Ttr(1:30,:)=T(1:30,:);
% Ttr(31:60,:)=T(44:73,:);
% 
% Xte(1:13,:)=X(31:43,:);
% %Xte(14:26,:)=X(74:86,:);
% Tte(1:13,:)=T(31:43,:);
% Tte(14:26,:)=T(74:86,:);

error=0;
for i=1:size(Xte,1)
    y_hat=knnPredict(Xtr,Ytr,1,Xte(i,:));
    if y_hat~=Yte(i,1)
       error=error+1;
    end
end

error


