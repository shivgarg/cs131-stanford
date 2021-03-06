function featuresNorm = NormalizeFeatures(features)
% Normalize image features to have zero mean and unit variance. This
% normalization can cause k-means clustering to perform better.
%
% INPUTS
% features - An array of features for an image. features(i, j, :) is the
%            feature vector for the pixel img(i, j, :) of the original
%            image.
%
% OUTPUTS
% featuresNorm - An array of the same shape as features where each feature
%                has been normalized to have zero mean and unit variance.

    features = double(features);
    [m n o] = size(features);
    for i=1:o
        avg = mean(mean(features(:,:,i)));
        sigma = std(reshape(features(:,:,i),m*n,1));
        features(:,:,i)=features(:,:,i)-avg;
        features(:,:,i)=features(:,:,i)/sigma;
    endfor
    featuresNorm = features;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                              %
%                                YOUR CODE HERE:                               %
%                                                                              %
%                HINT: The functions mean and std may be useful                %
%                                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
