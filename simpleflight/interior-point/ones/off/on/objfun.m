function [f, gradf] = objfun(x)
f = x(4);
if nargout > 1
    gradf  = [0
              0
              0
              0
              0
              0
              0
              0
              0
              0];
end