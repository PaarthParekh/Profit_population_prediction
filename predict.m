function predict ( X,y,alpha,num_iter)
theta=profit_population_model(X,y,alpha,num_iter)
str = inputdlg('Enter two numbers separated by spaces or commas');
numbers = str2num(str{1});
x=reshape(numbers,[1,2]);
prediction= x * theta;
fprintf(['\nFor population = %d we predict a profit of %f\n'],x(2)*10000 , prediction*10000);
end