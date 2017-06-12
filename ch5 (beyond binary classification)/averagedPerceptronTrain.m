function [W,b]=averagedPerceptronTrain(D,Y,maxIter)

    W=zeros(1,size(D,2));
    U=zeros(1,size(D,2));
    b=0;
    beta=0;
     c=1;
    
    for iter=1:maxIter
        for i=1:size(D,1)
            y=Y(i,1);
            x=D(i,:);
            a=y*((W.*x)+b);
            if (a<=0)
                W=W+(y*x);
                b=b+y;
                U=U+(y*c*x);
                beta=beta+(y*c);
            end
            c=c+1;
        end
    end
    
    W=W-((1/c)*U);
    b=b-((1/c)*beta);
end
                
                
                
                
                
                
                
                