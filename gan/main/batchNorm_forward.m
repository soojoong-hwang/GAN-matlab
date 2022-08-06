function [y, x_hat, mu, istd] = batchNorm_forward(x, gamma, beta, mu, istd)

if nargin == 3
    mu = mean(x, 2);
    istd = 1./sqrt( var(x, 1, 2) + 10^-5 );
end

x_hat = bsxfun(@minus, x, mu);
x_hat = bsxfun(@times, x_hat, istd);

y = bsxfun(@times, x_hat, gamma);
y = bsxfun(@plus, y, beta);
end