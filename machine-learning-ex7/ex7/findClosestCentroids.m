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
%

for i = 1 : size(idx, 1)
  x_this = X(i,:);
  distance = -1;
  for j = 1 : K
    centroid_this = centroids(j,:);
    distance_this = (x_this - centroid_this) * (x_this - centroid_this)';
    if (idx(i) == 0)
      idx(i) = j;
      distance = distance_this;
    end
    if (distance > distance_this)
      idx(i) = j;
      distance = distance_this;
    end
  end
end

%for j = 1 : 2
  %x = repmat(X(j,:) , size(centroids, 1), 1)
  %x - centroids
  %(x - centroids) * (x - centroids)'
  %[v, p] = min((x - centroids) * (x - centroids)', [], 2)

  %distance = -1;
  %for i = 1 : K
  %  centroid = centroids(i,:);
  %  distance_this = (x - centroid) * (x - centroid)';
  %  if (distance == -1)
  %    distance = distance_this;
  %    idx(j) = i;
  %  end
  %  if (distance > distance_this)
  %    distance = distance_this;
  %    idx(j) = i;
  %  end
  %end
  %idx(2)
%end

% =============================================================

end

