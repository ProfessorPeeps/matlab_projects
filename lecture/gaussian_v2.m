function [M x] = gaussian_v2(A,b)

N = length(A);

% *** ROW ECHELON FORM ***

for k = 1:N              %loop through all columns
    for i = k:N          %loop through all rows
                
        if i == k
            if A(i,i) == 0
                A([i k], :) = A([k i],:)
            end
            continue
        end
        
        A
        
        if A(i,i) == 0
            A([k i], :) = A([i k],:)
            continue
        end
        
        if A(i,i) ~= 0
            lambda = A(i,k) / A(k,k);
            A(i,k:N) = A(i,k:N) - lambda * A(k,k:N);
            b(i) = b(i) - lambda * b(k);
        end
    end

%     if A(k,k) ~= 1 
%         b(:,k) = b(k) .* inv(A(k,k));        
%         A(k,:) = A(k,:) .* inv(A(k,k));
%     end
end

% *** BACK SUBSTITUTION ***

M = [A b'];
A = M(:,1:N);
b = M(:,N+1);
c = b;

for i=N:-1:1

    %Divide pivot to b column vector
    b(i) = b(i) / A(i,i);

    %Apply backwards substitution
    b(1:i-1) = b(1:i-1) - A(1:i-1,i) * b(i);
    
    x = b;
end

M = [A c];      %return original matrix
x;              

end