function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = baseline.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(43, 1);
residual(1) = y(58)*(-(1-1/y(22)))+y(53)*(-y(20))+y(52)*(-(y(20)*y(29)))+y(44)*(-(y(21)*T(9)))+y(40)+y(41)+T(41)*y(12)*(-(params(1)*y(2)/y(25)));
residual(2) = y(60)*T(42)+y(40)*T(45)+params(43)*y(71)*(-((-(y(70)*(-params(2))))/T(44)))+T(41)*y(11)*(-(y(37)*params(2)*params(1)))/T(43)-y(55)+params(43)*y(79)*(-((-params(2))/(y(62)-y(19)*params(2))));
residual(3) = y(55)+y(54)*(-(y(38)*(1-params(4))*y(29)*T(46)*T(47)))+y(53)*(-y(18))+y(46)+y(52)*(-(y(18)*y(29)));
residual(4) = y(60)*T(49)+y(46)*(-(y(38)*T(50)*T(51)))+y(44)*(-(y(18)*T(9)))+y(43)*(-(T(2)*T(48)));
residual(5) = y(59)*(-(1/y(63)))+y(58)*T(53)+y(41)*(-(params(1)*y(61)/y(63)));
residual(6) = y(59);
residual(7) = y(58)*T(54);
residual(8) = y(53)*(-(y(65)*T(36)*T(55)))+y(52)*T(58)+y(51)*T(59)*T(60)+y(50)*T(61)+y(49)*(-(y(8)*params(9)*T(62)*T(63)))+y(48)*(-(y(7)*params(9)*T(62)*T(64)))+y(47)*(-((1-params(8))*T(59)*T(65)+y(6)*T(22)*T(66)))+y(45)*(-(T(16)*params(9)*T(15)*T(67)))+y(44)*(-(y(69)*T(12)*params(1)*params(9)*T(10)*T(68)))+y(43)*T(72)+T(41)*y(12)*(-((-(y(2)*y(18)*params(1)))/(y(25)*y(25))))+T(41)*y(13)*(-(y(32)*T(74)*T(77)))+T(41)*y(14)*(-(y(33)*T(78)*T(15)*params(1)*params(9)*T(67)))+params(43)*y(72)*(-(T(13)*params(9)*T(10)*T(68)))+params(43)*y(73)*(-(y(34)*T(33)*T(79)))+params(43)*y(74)*(-(y(35)*params(9)*T(83)*T(86)))+params(43)*y(75)*(-(y(36)*params(9)*T(83)*T(87)))+params(43)*y(76)*(-(params(8)*T(55)))+T(41)*y(15)*(-(y(27)*params(1)*params(8)*T(66)/T(88)))+T(41)*y(16)*(-(y(28)*T(31)*T(89)))+T(41)*y(17)*(-((-y(2))/(y(25)*y(25))));
residual(9) = y(51)*T(60)*T(90)+y(50)*T(91)+y(47)*(-((1-params(8))*T(65)*T(90)));
residual(10) = y(52)+y(51)*T(92)+T(41)*y(15)*(-(T(24)*params(1)*params(8)/T(88)));
residual(11) = y(53)+y(51)*T(94)+T(41)*y(16)*(-(T(31)*T(95)));
residual(12) = y(54)*(-(T(40)*y(38)*(1-params(4))))+y(52)*(-(y(18)*y(20)));
residual(13) = y(54)+y(49)*(-((1-params(9))*T(96)*T(97)+y(8)*params(9)*T(63)*T(98)))+y(48)*(-((1-params(9))*T(96)*T(99)+y(7)*params(9)*T(64)*T(98)))+y(45)*T(100)+y(44)*(-(y(21)*y(18)*T(101)*T(102)))+y(43)*(-(T(3)*params(10)*T(101)*T(103)))+params(43)*y(72)*(-(T(100)*params(9)*T(10)*T(11)))+params(43)*y(74)*(-(y(35)*params(9)*T(86)*T(104)))+params(43)*y(75)*(-(y(36)*params(9)*T(87)*T(104)));
residual(14) = y(49)*(-((1-params(9))*T(97)*T(105)))+y(48)*(-((1-params(9))*T(99)*T(105)))+y(45)*T(106)+y(44)*(-(y(21)*y(18)*T(102)*T(107)+y(69)*params(1)*params(9)*T(10)*T(11)*T(110)))+y(42)+y(43)*(-(T(3)*params(10)*T(103)*T(107)+y(68)*T(6)*T(112)))+T(41)*y(13)*(-(y(32)*T(114)*T(115)*T(116)))+T(41)*y(14)*(-(y(33)*T(117)*T(115)*T(118)));
residual(15) = y(43)+y(42)*T(119)+T(41)*y(13)*(-(T(74)*T(114)));
residual(16) = y(44)+y(42)*T(121)+T(41)*y(14)*(-(T(78)*T(117)));
residual(17) = y(47)+y(46)*(-(y(38)*T(51)*T(122)))+params(43)*y(73)*(-(T(33)*T(123)));
residual(18) = y(48)+params(43)*y(74)*T(124);
residual(19) = y(60)*params(10)*T(3)/(1+params(3))+y(49)+params(43)*y(75)*T(125);
residual(20) = y(57)*T(126)+y(40)*T(42)+T(41)*y(11)*params(2)*params(1)/(y(19)-params(2)*y(1))+params(43)*y(78)*(-(params(15)*T(126)));
residual(21) = T(46)*y(56)+y(54)*(-((1-params(4))*y(29)*T(40)+y(38)*(1-params(4))*y(29)*T(128)))+y(46)*(-T(18))+params(43)*y(77)*(-(params(14)*T(46)));
residual(22) = 1+y(60);
residual(23) = y(18)-(y(37)/(y(19)-params(2)*y(1))-params(2)*params(1)*y(70)/(y(62)-y(19)*params(2)));
residual(24) = y(18)-params(1)*y(61)*y(22)/y(63);
residual(25) = y(31)-params(6)/(params(6)-1)*y(32)/y(33);
residual(26) = y(32)-(T(2)*T(3)+T(6)*T(8)*y(68));
residual(27) = y(33)-(y(21)*y(18)*T(9)+params(1)*params(9)*T(10)*T(11)*T(12)*y(69));
residual(28) = T(13)-((1-params(9))*y(31)^(1-params(6))+params(9)*T(14)*T(15)*T(16));
residual(29) = y(20)-y(38)*T(18);
residual(30) = y(34)-(T(19)^T(20)*(1-params(8))+T(22)*T(24)*y(6));
residual(31) = y(35)-((1-params(9))*T(25)^(-params(6))+T(29)*y(7));
residual(32) = y(36)-((1-params(9))*T(25)^((1+params(3))*(-params(6)))+T(30)*y(8));
residual(33) = y(25)^(1-params(7))-((1-params(8))*y(26)^(1-params(7))+params(8)*T(31));
residual(34) = T(19)^T(32)-params(7)/(params(7)-1)*y(27)/y(28);
residual(35) = y(27)-(y(20)*y(18)*y(29)+params(1)*params(8)*T(33)/T(35)*y(64));
residual(36) = y(28)-(y(18)*y(20)+T(36)*T(37)*y(65));
residual(37) = y(30)-y(38)*(1-params(4))*y(29)*T(40);
residual(38) = y(20)-y(19);
residual(39) = log(y(38))-(params(14)*log(y(10))+x(it_, 1));
residual(40) = log(y(37))-(params(15)*log(y(9))+x(it_, 2));
residual(41) = y(24)^(-params(5))-y(18)*(1-1/y(22));
residual(42) = y(23)-y(22)/y(63);
residual(43) = y(39)-(log(y(19)-params(2)*y(1))-y(36)*params(10)*T(3)/(1+params(3)));

end
