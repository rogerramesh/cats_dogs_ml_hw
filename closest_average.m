%This function takes in a training data matrix Xtrain, training
%label vector ytrain and uses them to compute the average cat
%and dog vectors. It also takes in a data matrix Xrun and 
%produces a vector of label guesses yguess, corresponding to whether
%each row of Xrun is closer to the average cat or average dog.
function yguess = closest_average(Xtrain,ytrain,Xr)



[avgcat,avgdog] = average_pet(Xtrain,ytrain);
diff_dog = Xr - avgdog;
diff_cat = Xr - avgcat;
res1 = sum((diff_dog).^2,2);
res2 = sum((diff_cat).^2,2);


yguess = ((sqrt(res2)) > (sqrt(res1)) - 0.5) * 2;




end