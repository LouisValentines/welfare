function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = baseline.static_resid_tt(T, y, x, params);
end
residual = zeros(43, 1);
residual(1) = y(41)*(-(1-1/y(5)))+y(36)*(-y(3))+y(35)*(-(y(3)*y(12)))+y(27)*(-(y(4)*T(2)))+y(23)+y(24)+T(3)*y(24)*(-(y(5)*params(1)/y(8)));
residual(2) = y(43)*(-T(4))+y(23)*(-T(6))+params(43)*y(23)*(-((-(y(20)*(-params(2))))/T(5)))+T(3)*y(23)*(-(y(20)*params(1)*params(2)))/T(5)-y(38)+params(43)*y(43)*(-((-params(2))/(y(2)-y(2)*params(2))));
residual(3) = y(38)+y(37)*(-(y(21)*y(12)*(1-params(4))*T(7)*T(8)))+y(36)*(-y(1))+y(29)+y(35)*(-(y(12)*y(1)));
residual(4) = y(43)*T(10)+y(29)*(-(y(21)*T(11)*T(12)))+y(27)*(-(T(2)*y(1)))+y(26)*(-(T(9)*T(13)));
residual(5) = y(42)*(-T(14))+y(41)*T(15)+y(24)*(-(params(1)*y(1)/y(8)));
residual(6) = y(42);
residual(7) = y(41)*T(16);
residual(8) = y(36)*(-(y(11)*T(17)*T(18)))+y(35)*(-(y(10)*(-(params(1)*params(8)*T(19)*T(20)))/(T(21)*T(21))))+y(34)*T(22)*T(25)+y(33)*T(26)+y(32)*(-(y(19)*params(9)*T(28)*T(30)))+y(31)*(-(y(18)*params(9)*T(28)*T(31)))+y(30)*(-((1-params(8))*T(22)*T(32)+y(17)*T(34)*T(35)))+y(28)*(-(T(36)*params(9)*T(37)*T(38)))+y(27)*(-(y(16)*params(1)*params(9)*T(39)*T(40)))+y(26)*(-(y(15)*(-(T(41)*T(42)))/(T(43)*T(43))))+T(3)*y(24)*T(44)+T(3)*y(26)*(-(y(15)*T(45)/T(43)))+T(3)*y(27)*(-(y(16)*T(37)*T(38)*params(1)*params(9)))+params(43)*y(28)*(-(T(36)*params(9)*T(39)*T(40)))+params(43)*y(30)*(-(y(17)*T(19)*T(46)))+params(43)*y(31)*(-(y(18)*params(9)*T(31)*T(48)))+params(43)*y(32)*(-(y(19)*params(9)*T(30)*T(48)))+params(43)*y(33)*(-(params(8)*T(18)))+T(3)*y(35)*(-(y(10)*params(1)*params(8)*T(35)/T(21)))+T(3)*y(36)*(-(y(11)*T(49)*T(50)))+T(3)*y(42)*T(51);
residual(9) = y(34)*T(14)*T(25)+y(33)*T(52)+y(30)*(-((1-params(8))*T(14)*T(32)));
residual(10) = y(35)+y(34)*T(53)+T(3)*y(35)*(-(params(1)*params(8)*T(19)/T(21)));
residual(11) = y(36)+y(34)*T(54)+T(3)*y(36)*(-(T(17)*T(49)));
residual(12) = y(37)*(-(T(55)*y(21)*(1-params(4))))+y(35)*(-(y(3)*y(1)));
residual(13) = y(37)+y(32)*(-((1-params(9))*T(56)*T(58)+y(19)*params(9)*T(30)*T(59)))+y(31)*(-((1-params(9))*T(56)*T(60)+y(18)*params(9)*T(31)*T(59)))+y(28)*T(61)+y(27)*(-(y(4)*y(1)*T(62)*T(63)))+y(26)*(-(T(64)*params(10)*T(62)*T(65)))+params(43)*y(28)*(-(T(61)*params(9)*T(37)*T(39)))+params(43)*y(31)*(-(y(18)*params(9)*T(31)*T(67)))+params(43)*y(32)*(-(y(19)*params(9)*T(30)*T(67)));
residual(14) = y(32)*(-((1-params(9))*T(58)*T(66)))+y(31)*(-((1-params(9))*T(60)*T(66)))+y(28)*T(68)+y(27)*(-T(71))+y(25)+y(26)*(-(T(64)*params(10)*T(65)*T(69)+y(15)*T(72)*(-y(14))/(y(14)*y(14))*T(73)))+T(3)*y(26)*(-(y(15)*T(72)*T(62)*T(73)))+T(3)*y(27)*(-(y(16)*T(37)*params(1)*params(9)*T(39)*T(62)*T(70)));
residual(15) = y(26)+y(25)*T(74)+T(3)*y(26)*(-T(72));
residual(16) = y(27)+y(25)*T(75)+T(3)*y(27)*(-(T(37)*params(1)*params(9)*T(39)));
residual(17) = y(30)+y(29)*(-(y(21)*T(12)*T(76)))+params(43)*y(30)*(-(T(19)*T(34)));
residual(18) = y(31)+params(43)*y(31)*(-T(77));
residual(19) = y(43)*params(10)*T(64)/(1+params(3))+y(32)+params(43)*y(32)*(-T(78));
residual(20) = y(40)*T(79)+y(23)*(-T(4))+T(3)*y(23)*T(80)+params(43)*y(40)*(-(T(79)*params(15)));
residual(21) = T(7)*y(39)+y(37)*(-(y(12)*(1-params(4))*T(55)+y(21)*y(12)*(1-params(4))*T(82)))+y(29)*(-T(83))+params(43)*y(39)*(-(T(7)*params(14)));
residual(22) = 1+y(43);
residual(23) = y(1)-(y(20)/(y(2)-y(2)*params(2))-y(20)*params(1)*params(2)/(y(2)-y(2)*params(2)));
residual(24) = y(1)-y(5)*params(1)*y(1)/y(8);
residual(25) = y(14)-y(15)*params(6)/(params(6)-1)/y(16);
residual(26) = y(15)-(T(13)*T(64)+y(15)*T(72));
residual(27) = y(16)-(y(4)*T(2)*y(1)+y(16)*T(37)*params(1)*params(9)*T(39));
residual(28) = T(36)-((1-params(9))*y(14)^(1-params(6))+T(36)*params(9)*T(37)*T(39));
residual(29) = y(3)-y(21)*T(83);
residual(30) = y(17)-((1-params(8))*T(23)^((-params(7))/(1-params(4)))+y(17)*T(19)*T(34));
residual(31) = y(18)-((1-params(9))*T(57)^(-params(6))+y(18)*T(77));
residual(32) = y(19)-((1-params(9))*T(57)^((1+params(3))*(-params(6)))+y(19)*T(78));
residual(33) = y(8)^(1-params(7))-((1-params(8))*y(9)^(1-params(7))+params(8)*T(49));
residual(34) = T(23)^T(24)-y(10)*params(7)/(params(7)-1)/y(11);
residual(35) = y(10)-(y(3)*y(12)*y(1)+y(10)*params(1)*params(8)*T(19)/T(21));
residual(36) = y(11)-(y(3)*y(1)+y(11)*T(17)*T(49));
residual(37) = y(13)-y(21)*y(12)*(1-params(4))*T(55);
residual(38) = y(3)-y(2);
residual(39) = log(y(21))-(params(14)*log(y(21))+x(1));
residual(40) = log(y(20))-(params(15)*log(y(20))+x(2));
residual(41) = y(7)^(-params(5))-(1-1/y(5))*y(1);
residual(42) = y(6)-y(5)/y(8);
residual(43) = y(22)-(log(y(2)-y(2)*params(2))-y(19)*params(10)*T(64)/(1+params(3)));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
