%This function takes in a training data matrix Xtrain, training
%label vector ytrain and uses them to compute the average cat
%and dog vectors. It also takes in a data matrix Xrun and 
%produces a vector of label guesses yguess. Each guess is found
%by searching through Xtrain to find the closest row, and then 
%outputting its label.
function yguess = nearest_neighbor(Xtrain,ytrain,Xrun)

 [a b]=size(Xrun);
 [c d]=size(Xtrain);



res =  zeros(a,1);

count = 1;
count2 = 1;
while count < a
   
    valMat = zeros(c,1);
    while count2 < c
        valMat(count2)=sum((Xrun(count,:)-Xtrain(count2,:)).^2);
        count2 = count2 +1;
   end
    
   [min1, min2] = min(valMat);
   res(count)=ytrain(min2);
   count = count + 1;
end


yguess=res;

end
