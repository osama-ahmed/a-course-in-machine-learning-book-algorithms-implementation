function F=oneVersusAllTrain(D,Y)

% D=Xtr(1:1000,:);
% Y=Ytr(1:1000,:);

K=10;
F=zeros(K,size(D,2)+1);
Yrelabel=zeros(size(Y,1),1);

for k=1:K
    for i=1:size(Y,1)     %relabel
        if Y(i,1)==(k-1)
            Yrelabel(i,1)=1;
        else
            Yrelabel(i,1)=-1;
        end
    end
    
    [W,b]=averagedPerceptronTrain(D,Yrelabel,40);
    F(k,1:size(D,2))=W;
    F(k,size(D,2)+1)=b;
end

end