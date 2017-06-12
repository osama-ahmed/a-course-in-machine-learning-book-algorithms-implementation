 %load('myDataset2');
% load('parameters1');
% load('parameters2');

load('MNISTbinary.mat');

%training
 maxIter=40;
%[W,b]=perceptronTrain(Xtr,Ttr,maxIter);
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

