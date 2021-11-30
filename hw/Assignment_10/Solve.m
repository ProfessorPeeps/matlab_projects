function [Ap, bp, X, Xinv] = Solve(A,b)

N = length(A);

S = size(A);
m = S(1);
n = S(2);

if m ~= n
    disp('Error. Matrix entered must be a square matrix.')
    M = A;
    x = b';
    return
    
else

% *** ROW ECHELON FORM ***

for k = 1:N              %loop through all columns
    for i = k:N          %loop through all rows     
        if i == k
            if abs(A(i,i)) < 0.01
              A([i, N],:) = A([N, i], :);
              b(:,[i, N]) = b(:,[N, i]);
            end
           continue
        end 
        
        lambda = A(i,k) / A(k,k);
        A(i,k:N) = A(i,k:N) - lambda * A(k,k:N);
        b(i) = b(i) - lambda * b(k);
    end
    
    if A(k,k) ~= 1
        b(:,k) = b(k) .* inv(A(k,k));        
        A(k,:) = A(k,:) .* inv(A(k,k));
    end
end

% *** BACK SUBSTITUTION ***

M = [A b'];
A = M(:,1:N);
b = M(:,N+1);
temp = b;           %save column before back sub

for i=N:-1:1

    %Divide pivot to b column vector
    b(i) = b(i) / A(i,i);

    %Apply backwards substitution
    b(1:i-1) = b(1:i-1) - A(1:i-1,i) * b(i);
    
    x = b;      %back substituion
end           

Ap = A;             %REF matrix
bp = temp;          %column vector after REF
X = b;              %column vector after back sub
Xinv =  A\temp;     %invA * b

end
end