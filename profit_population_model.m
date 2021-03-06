function theta=profit_population_model (X,y,alpha,num_iter)
figure;
plot(X,y,'rx','MarkerSize',10);
ylabel('Profit in 10,000s');
xlabel('Population in 10,000s');
m=length(y);
X1=[ones(m,1),X];
theta=zeros(2,1);
    function J=compute_cost(X,y,theta)
        m2=length(y);
        predict=X*theta;
        sq_error=(predict-y).^2;
        J=1/2*m2 * sum(sq_error);
    end
J_history=zeros(num_iter,1);
for iter=1:num_iter
hypo=X1*theta;
error=(hypo-y);
temp=X1'*error;
gradient_desc=alpha/m*temp;
theta=theta-gradient_desc;
J_history(iter) = compute_cost(X1, y, theta);
end
fprintf('Theta computed from gradient descent:\n%f,\n%f',theta(1),theta(2))
hold on;
plot(X1(:,2),X1*theta,'-','color','k')
legend('Training data','Linear Regression')
hold off
end
