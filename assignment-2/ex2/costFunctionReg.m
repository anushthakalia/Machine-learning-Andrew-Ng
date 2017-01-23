function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
[m n] =size(X); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


 h=X*theta;

 eqn1=y.*log(sigmoid(h));
 eqn2=(y-1).*log(1-sigmoid(h));
 
 reg_theta=theta;
 reg_theta(1,1)=0;
 
 
 J=(1/m)*(sum(eqn2-eqn1)+(lambda/2)*sum(reg_theta.^2));
 
 
 for j=1:n
    grad(j,1)=(1/m)*(sum((sigmoid(h)-y).*X(:,j))+ (lambda)*reg_theta(j,1));
 end
  




% =============================================================

end
