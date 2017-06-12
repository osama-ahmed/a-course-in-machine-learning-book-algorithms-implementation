function y=perceptronPredict(W,b,x_hat)

a=0;

for i=1:size(x_hat,2)
    a=a+(W(1,i)*x_hat(1,i));
end

a=a+b;

if a>=0
    y=1;
else
    y=-1;
end

end