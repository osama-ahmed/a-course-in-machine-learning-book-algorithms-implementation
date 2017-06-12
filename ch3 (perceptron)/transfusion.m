tran=load('transfusion.data');
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


%training
 maxIter=40;
% [W,b]=perceptronTrain(Xtr,Ttr,maxIter);
[W,b]=averagedPerceptronTrain(Xtr,Ytr,maxIter);


%classiffy
errors=0;

for i=1:size(Xte,1);
x_hat=Xte(i,:);
y_hat=perceptronPredict(W,b,x_hat);

if y_hat~=Yte(i,1)
    errors=errors+1;
end
end

errors
errorRate=(errors/size(Xte,1))*100