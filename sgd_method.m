function Weight=sgd_method(Weight,input,correct_output)
alpha=0.9;
N=4;
for k=1:N
    transposed_input=input(k,:)';
    d=correct_output(k);
weighted_sum=Weight*transposed_input;
output=sigmoid1(weighted_sum);
error=d-output;
delta=output*(1-output)*error;
dweight=alpha*delta*transposed_input;
Weight(1)=Weight(1)+dweight(1);
Weight(2)=Weight(2)+dweight(2);
Weight(3)=Weight(3)+dweight(3);
end
end