%This function takes in a training data matrix Xtrain, training
%label vector ytrain and uses them to compute the PCA basis. 
%It also takes in a data matrix Xrun and a dimension k
%and uses the top-k vectors in the PCA basis to reduce the 
%dimension of Xtrain and Xrun. Finally, it uses the reduced data
%as inputs to the linear_regression function to produce 
%a vector of label guesses yguess.
function yguess = pca_regression(Xtrain,ytrain,Xtest,k)


k_dim = pca(Xtrain);
ZArray = zeros(4096,1);
k_dim = [k_dim ZArray];
k_mat = [k_dim ZArray];

num = 1;

while num<k
    k_mat(:,num) = k_dim(:,num);
    num = num + 1;
end

xtb= Xtrain*k_mat;
xrb = Xtest*k_mat;
bols = pinv((xtb')*xtb);

bols = bols*(xtb')*ytrain;
res = xrb*bols;
h = sign(res);
yguess = h;

end
