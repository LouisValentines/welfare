function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
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

assert(length(T) >= 83);

T(1) = y(13)/y(14);
T(2) = T(1)^params(6);
T(3) = params(43)^(-1);
T(4) = 1/(y(2)-y(2)*params(2));
T(5) = (y(2)-y(2)*params(2))*(y(2)-y(2)*params(2));
T(6) = (-y(20))/T(5)-(-(y(20)*params(1)*params(2)*(-params(2))))/T(5);
T(7) = 1/y(21);
T(8) = getPowerDeriv(y(3)/y(21),(-params(4))/(1-params(4)),1);
T(9) = getPowerDeriv(y(4),1+params(3),1);
T(10) = y(19)*params(10)*T(9)/(1+params(3));
T(11) = 1/y(17);
T(12) = getPowerDeriv(y(4)/y(17),1-params(4),1);
T(13) = params(10)*T(1)^(params(6)*(1+params(3)));
T(14) = 1/y(8);
T(15) = (-(y(1)*(-((-1)/(y(5)*y(5))))));
T(16) = getPowerDeriv(y(7),(-params(5)),1);
T(17) = params(1)*params(8)*y(8)^(params(7)-1);
T(18) = getPowerDeriv(y(8),params(12)*(1-params(7)),1);
T(19) = y(8)^(params(7)/(1-params(4)));
T(20) = getPowerDeriv(y(8),params(7)*params(12)/(1-params(4)),1);
T(21) = y(8)^(params(7)*params(12)/(1-params(4)));
T(22) = (-y(9))/(y(8)*y(8));
T(23) = y(9)/y(8);
T(24) = 1+params(4)*params(7)/(1-params(4));
T(25) = getPowerDeriv(T(23),T(24),1);
T(26) = getPowerDeriv(y(8),1-params(7),1);
T(27) = y(8)^params(11);
T(28) = (-T(27))/(y(8)*y(8));
T(29) = T(27)/y(8);
T(30) = getPowerDeriv(T(29),(1+params(3))*(-params(6)),1);
T(31) = getPowerDeriv(T(29),(-params(6)),1);
T(32) = getPowerDeriv(T(23),(-params(7))/(1-params(4)),1);
T(33) = params(7)*(-params(12))/(1-params(4));
T(34) = params(8)*y(8)^T(33);
T(35) = getPowerDeriv(y(8),params(7)/(1-params(4)),1);
T(36) = y(13)^(1-params(6));
T(37) = y(8)^(params(11)*(1-params(6)));
T(38) = getPowerDeriv(y(8),params(6)-1,1);
T(39) = y(8)^(params(6)-1);
T(40) = getPowerDeriv(y(8),params(11)*(1-params(6)),1);
T(41) = params(1)*params(9)*y(8)^(params(6)*(1+params(3)));
T(42) = getPowerDeriv(y(8),(1+params(3))*params(6)*params(11),1);
T(43) = y(8)^((1+params(3))*params(6)*params(11));
T(44) = (-((-(y(5)*params(1)*y(1)))/(y(8)*y(8))));
T(45) = params(1)*params(9)*getPowerDeriv(y(8),params(6)*(1+params(3)),1);
T(46) = params(8)*getPowerDeriv(y(8),T(33),1);
T(47) = getPowerDeriv(y(8),params(11),1);
T(48) = T(47)/y(8);
T(49) = y(8)^(params(12)*(1-params(7)));
T(50) = params(1)*params(8)*getPowerDeriv(y(8),params(7)-1,1);
T(51) = (-((-y(5))/(y(8)*y(8))));
T(52) = (-((1-params(8))*getPowerDeriv(y(9),1-params(7),1)));
T(53) = (-(params(7)/(params(7)-1)/y(11)));
T(54) = (-((-(y(10)*params(7)/(params(7)-1)))/(y(11)*y(11))));
T(55) = (y(3)/y(21))^((-params(4))/(1-params(4)));
T(56) = (-y(14))/(y(13)*y(13));
T(57) = y(14)/y(13);
T(58) = getPowerDeriv(T(57),(1+params(3))*(-params(6)),1);
T(59) = T(27)*(-y(13))/(y(13)*y(13))/y(8);
T(60) = getPowerDeriv(T(57),(-params(6)),1);
T(61) = getPowerDeriv(y(13),1-params(6),1);
T(62) = 1/y(14);
T(63) = getPowerDeriv(T(1),params(6),1);
T(64) = y(4)^(1+params(3));
T(65) = getPowerDeriv(T(1),params(6)*(1+params(3)),1);
T(66) = 1/y(13);
T(67) = T(27)*T(66)/y(8);
T(68) = (-((1-params(9))*getPowerDeriv(y(14),1-params(6),1)));
T(69) = (-y(13))/(y(14)*y(14));
T(70) = getPowerDeriv(1,params(6),1);
T(71) = y(4)*y(1)*T(63)*T(69)+y(16)*T(37)*params(1)*params(9)*T(39)*(-y(14))/(y(14)*y(14))*T(70);
T(72) = T(41)/T(43);
T(73) = getPowerDeriv(1,params(6)*(1+params(3)),1);
T(74) = (-(params(6)/(params(6)-1)/y(16)));
T(75) = (-((-(y(15)*params(6)/(params(6)-1)))/(y(16)*y(16))));
T(76) = (-y(4))/(y(17)*y(17));
T(77) = params(9)*T(29)^(-params(6));
T(78) = params(9)*T(29)^((1+params(3))*(-params(6)));
T(79) = 1/y(20);
T(80) = params(1)*params(2)/(y(2)-y(2)*params(2));
T(81) = (-y(3))/(y(21)*y(21));
T(82) = T(8)*T(81);
T(83) = (y(4)/y(17))^(1-params(4));

end
