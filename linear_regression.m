%This function takes in a training data matrix Xtrain, training
%label vector ytrain and uses them to compute ordinary-least-squares
%vector b. It also takes in a data matrix Xrun and 
%produces a vector of label guesses yguess, corresponding to the sign
%of the linear prediction.
function yguess = linear_regression(Xtrain,ytrain,Xrun)

%FILL IN CODE

bls = pinv((Xtrain')*Xtrain)*(Xtrain')*ytrain;
h_dim = sign(Xrun*bls);
yguess = h_dim;


end