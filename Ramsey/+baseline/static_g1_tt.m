function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 111);

T = baseline.static_resid_tt(T, y, x, params);

T(84) = T(5)*T(5);
T(85) = getPowerDeriv(y(3)/y(21),(-params(4))/(1-params(4)),2);
T(86) = getPowerDeriv(y(4),1+params(3),2);
T(87) = getPowerDeriv(y(4)/y(17),1-params(4),2);
T(88) = getPowerDeriv(y(8),params(12)*(1-params(7)),2);
T(89) = getPowerDeriv(T(23),T(24),2);
T(90) = (y(8)*y(8)*(-T(47))-(-T(27))*(y(8)+y(8)))/(y(8)*y(8)*y(8)*y(8));
T(91) = (y(8)*T(47)-T(27))/(y(8)*y(8));
T(92) = T(91)*getPowerDeriv(T(29),(1+params(3))*(-params(6)),2);
T(93) = T(91)*getPowerDeriv(T(29),(-params(6)),2);
T(94) = getPowerDeriv(T(23),(-params(7))/(1-params(4)),2);
T(95) = getPowerDeriv(y(8),params(7)/(1-params(4)),2);
T(96) = getPowerDeriv(y(8),params(6)-1,2);
T(97) = getPowerDeriv(y(8),params(11)*(1-params(6)),2);
T(98) = (y(8)*getPowerDeriv(y(8),params(11),2)-T(47))/(y(8)*y(8));
T(99) = (y(8)*T(47)*(-y(13))/(y(13)*y(13))-T(27)*(-y(13))/(y(13)*y(13)))/(y(8)*y(8));
T(100) = (T(43)*T(45)-T(41)*T(42))/(T(43)*T(43));
T(101) = y(34)*(-((-(params(7)/(params(7)-1)))/(y(11)*y(11))));
T(102) = y(37)*(-((1-params(4))*T(55)+y(21)*(1-params(4))*T(82)));
T(103) = getPowerDeriv(T(57),(1+params(3))*(-params(6)),2);
T(104) = T(27)*((-(y(13)*y(13)))-(-y(13))*(y(13)+y(13)))/(y(13)*y(13)*y(13)*y(13))/y(8);
T(105) = getPowerDeriv(T(57),(-params(6)),2);
T(106) = getPowerDeriv(y(13),1-params(6),2);
T(107) = getPowerDeriv(T(1),params(6),2);
T(108) = getPowerDeriv(T(1),params(6)*(1+params(3)),2);
T(109) = T(27)*(-1)/(y(13)*y(13))/y(8);
T(110) = (-1)/(y(14)*y(14));
T(111) = y(25)*(-((-(params(6)/(params(6)-1)))/(y(16)*y(16))));

end
