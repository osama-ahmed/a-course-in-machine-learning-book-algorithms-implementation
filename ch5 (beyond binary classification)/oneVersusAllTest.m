function class=oneVersusAllTest(F,x_hat)

%load('temp.mat');

score=zeros(1,size(F,1));

K=10;
W=F(:,1:size(x_hat,2));
b=F(:,size(x_hat,2)+1);

load('MNIST.mat');
D=Xtr(1:1000,:);
L=Ytr(1:1000,:);
    
for i=1:K
   % y=perceptronPredict(W(i,:),b(i,:),x_hat);
    y=knnPredict(D,L,1,Xte(1,:));
    score(1,i)=score(1,i)+y;
end

[maxScore,index]=max(score);
class=index;

end
