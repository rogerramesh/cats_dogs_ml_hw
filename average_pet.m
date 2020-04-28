%This function takes in a data matrix X and a label
%vector y and outputs the average cat image and average dog image.
function [avgcat, avgdog] = average_pet(X,y)
dm = [];
cm = [];

a = size(X);

dog_samp = 1;
cat_samp = 1; 

val = 1;
while val < a
    if y(val) == -1
        cm(cat_samp,:) = X(val,:);
        cat_samp = cat_samp + 1;
    end
    if y(val) == 1
        dm(dog_samp,:) = X(val,:);
        dog_samp = dog_samp + 1;
    end
    val = val+1;
end


%average for cat
avgcat = mean(cm);
% average for dog
avgdog = mean(dm);

end