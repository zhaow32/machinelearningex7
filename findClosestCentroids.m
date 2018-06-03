function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.

% the number of examples : size(X)
% the number of centroids we want to check is : K
% find the centroids that closest to each x and record their indices in idx
for i=1:size(X,1)
    dis_min=inf;
    for j =1:K
        dis=(X(i,:)-centroids(j,:))';
        norm_dis=dis'*dis;
        if(norm_dis<=dis_min)
            dis_min=norm_dis;
            idx(i)=j;
        end
    end 
end
    

    
    






% =============================================================

end

