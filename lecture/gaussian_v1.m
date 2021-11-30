function [M] = gaussian_v2(A,b)

N = length(A);

for k = 1:N-1
    for i = k:N
        if i == k        %dont bother with row 1
            continue
        else
            lambda = A(i,k) / A(k,k);
            A(i,k:N) = A(i,k:N) - lambda * A(k,k:N);
            b(i) = b(i) - lambda * b(k);
        end
    end
end

M = [A b'];

end


