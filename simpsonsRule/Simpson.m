function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
% Check that the inputs are the same length
if length(x) ~= length(y)
    error('x and y must be the same length.')
end

% Check that x input is equally spaced
dx = diff(x)
if any(abs(dx-dx(1)) > 1e-8)
    error('x not equal space')
end
h_1 = dx(1)


% If there are an even number of intervals, use the trapezoidal rule for the last interval
if mod(length(x),2) == 0
    warning('The trapezoidal rule will be used for the last interval.')
    I = (h_1/2).*(y(1) + 2.*sum(y(2:end-1)) +y(end));;
end

% Use Simpson's 1/3 rule for the rest of the intervals
h = x(2)-x(1);
n = length(x)-1;
I = y(1) + y(end) + 4*sum(y(2:2:n)) + 2*sum(y(3:2:n-1));
I = I*h/3;

end