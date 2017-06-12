tran=load('D:\output\My projects\Machine learning\a course in machine learning algorithms implementation/data/transfusion.data');
X=tran(:,1:4);
Y=tran(:,5);

for i=1:size(Y,1)
    if Y(i,1)==0
        Y(i,1)=-1;
    end
end

Xte=X(1:400,:);
Yte=Y(1:400,:);
Xtr=X(401:748,:);
Ytr=Y(401:748,:);


errors=0;
for i=1:26
y_hat=knnPredict(Xtr,Ytr,1,Xte(i,:));
if y_hat~=Yte(i,1)
   errors=errors+1;
end
end

errors
errorRate=(errors/size(Xte,1))*100