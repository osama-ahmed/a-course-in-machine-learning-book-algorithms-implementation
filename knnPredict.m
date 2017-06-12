function y_hat=knnPredict(D,Y,K,x_hat)

S=zeros(size(D,1),2);
N=size(D,1);
d=0;

for n=1:N
    
    for i=1:size(D,2)
        d=d+((D(n,i)-x_hat(1,i))^2);
    end
    
    d=d^.5;
    S(n,1)=d;
    S(n,2)=n;
    d=0;
end

S=sortrows(S,1);

y_hat=0;

for k=1:K
    n=S(k,2);
    y_hat=y_hat+Y(n,1);
end

if y_hat>0
    y_hat=1;
else
    y_hat=-1;
end


end