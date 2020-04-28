[X, y] = read_data();
[avgcat, avgdog] = average_pet(X,y);
show_image(avgcat,1);
show_image(avgdog,1);

[Xtrain, ytrain, Xrun, ytest] = split_data(X,y,40);

Xr = Xtrain;
yguess = closest_average(Xtrain,ytrain,Xr);
accuracy = calculate_accuracy(ytrain,yguess);

Xrun1 = Xtrain;
yguess1 = nearest_neighbor(Xtrain,ytrain,Xrun1);
accuracy = calculate_accuracy(ytrain,yguess1);

Xrun = Xtrain;
yguess2 = linear_regression(Xtrain,ytrain,Xrun);
accuracy2 = calculate_accuracy(ytrain,yguess2);

Xrun2 = Xtrain;
yguess3 = pca_regression(Xtrain,ytrain,Xrun2,10);
accuracy3 = calculate_accuracy(ytrain,yguess3);

Xrun3 = Xtrain;
yguess4 = pca_regression(Xtrain,ytrain,Xrun3,20);
accuracy4 = calculate_accuracy(ytrain,yguess4);


Xrun4 = Xtrain;
yguess5 = pca_regression(Xtrain,ytrain,Xrun4,50);
accuracy5 = calculate_accuracy(ytrain,yguess5);


Xrun5 = Xtrain;
yguess6 = pca_regression(Xtrain,ytrain,Xrun5,100);
accuracy6 = calculate_accuracy(ytrain,yguess5);
