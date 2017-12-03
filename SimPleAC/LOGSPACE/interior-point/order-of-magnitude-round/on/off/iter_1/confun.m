function [c, ceq, DC, DCeq] = confun(x)
% Nonlinear inequality constraints
c = [
    log( + 1.0*exp( +-1 * x(16) +1 * x(8) ) + 6250.0*exp( +-1 * x(16) ) + 1.0*exp( +1 * x(5) +-1 * x(16) ) )
    log( + 1.62601626016*exp( +-2 * x(17) +-1 * x(14) +-1 * x(13) +1 * x(8) ) + 0.813008130081*exp( +-2 * x(17) +-1 * x(14) +1 * x(5) +-1 * x(13) ) + 10162.601626*exp( +-2 * x(17) +-1 * x(14) +-1 * x(13) ) )
    log( + 0.00162601626016*exp( +-1 * x(14) +1 * x(16) ) )
    log( + 833.333333333*exp( +-1 * x(17) +-1 * x(11) ) )
    log( + 0.6*exp( +1 * x(11) +-1 * x(5) +1 * x(12) ) )
    log( + 0.615*exp( +2 * x(17) +1 * x(14) +1 * x(3) +-1 * x(12) ) )
    log( + 0.345989006722*exp( +2 * x(13) +-1 * x(3) +-1 * x(9) ) + 2.42775*exp( +1 * x(19) +-1 * x(3) ) + 1.0*exp( +-1 * x(14) +1 * x(2) +-1 * x(3) ) )
    log( + 0.1*exp( +-1 * x(2) +1 * x(20) ) )
    log( + 1.44308943089e-05*exp( +-1 * x(17) +-0.5 * x(14) +1 * x(15) +0.5 * x(9) ) )
    log( + 0.074*exp( +-1 * x(19) +-0.2 * x(15) ) )
    log( + 77160.4938272*exp( +2 * x(7) +-3 * x(14) +1 * x(9) ) )
    log( + 0.737391664354*exp( +-0.0909090909091 * x(7) +1 * x(1) +-0.909090909091 * x(20) ) )
    log( + 1.0*exp( +-1 * x(1) +1 * x(6) ) )
    log( + 60.0*exp( +-1 * x(4) +1 * x(14) ) )
    log( + 0.002424467925*exp( +1 * x(14) +1 * x(16) +-2.0 * x(10) +3.0 * x(9) +1 * x(20) ) + 0.001890625*exp( +1 * x(14) +1 * x(16) +-2.0 * x(10) +3.0 * x(9) ) )
    log( + 1.0*exp( +1 * x(10) +-1 * x(8) ) + 1.0*exp( +1 * x(4) +-1 * x(8) ) )
    ];

ceq = [
      log( + 1.0*exp( +-1 * x(13) +1 * x(3) +1 * x(18) ) )
      log( + 8014.77*exp( +-1 * x(5) +1 * x(6) ) )
      ];
if nargout > 2
    DC = [
          
         ]';
    DCeq = [
            
           ]';
end