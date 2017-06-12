function [W,b]=perceptronTrain(D,Y,maxIter)

% D=Xtr;
% Y=Ttr;
% maxIter=2;

W=zeros(1,size(D,2));
b=0;
a=0;

for iter=1:maxIter
    for i=1:size(D,1)
        for j=1:size(D,2)
            a=a+(W(1,j)*D(i,j));
        end
        a=a+b;
        
        if (Y(i,1)*a)<=0
            for j=1:size(D,2)
                W(1,j)=W(1,j)+(Y(i,1)*D(i,j));
            end
            b=b+Y(i,1);
        end
    end
    
    D = D(randperm(size(D,1)),:);
    
end

end