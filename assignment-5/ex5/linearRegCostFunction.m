function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
n=size(X,2);
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

h=X*theta;
J=(1/(2*m))*sum((h-y).^2);
reg_theta=theta;
reg_theta(1,1)=0;
J=J+(lambda/(2*m))*sum(reg_theta.^2);

for j=1:n
    grad(j,1)=(1/m)*(sum((h-y).*X(:,j))+ (lambda)*reg_theta(j,1));
 end










% =========================================================================

grad = grad(:);

end
