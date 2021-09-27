function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 128);

T(1) = y(30)/y(31);
T(2) = params(10)*T(1)^(params(6)*(1+params(3)));
T(3) = y(21)^(1+params(3));
T(4) = params(1)*params(9)*y(63)^(params(6)*(1+params(3)));
T(5) = y(25)^((1+params(3))*params(6)*params(11));
T(6) = T(4)/T(5);
T(7) = y(67)/y(31);
T(8) = T(7)^(params(6)*(1+params(3)));
T(9) = T(1)^params(6);
T(10) = y(63)^(params(6)-1);
T(11) = y(25)^(params(11)*(1-params(6)));
T(12) = T(7)^params(6);
T(13) = y(30)^(1-params(6));
T(14) = y(25)^(params(6)-1);
T(15) = y(3)^(params(11)*(1-params(6)));
T(16) = y(4)^(1-params(6));
T(17) = y(21)/y(34);
T(18) = T(17)^(1-params(4));
T(19) = y(26)/y(25);
T(20) = (-params(7))/(1-params(4));
T(21) = params(7)*(-params(12))/(1-params(4));
T(22) = params(8)*y(3)^T(21);
T(23) = params(7)/(1-params(4));
T(24) = y(25)^T(23);
T(25) = y(31)/y(30);
T(26) = y(3)^params(11);
T(27) = y(4)/y(30)*T(26);
T(28) = T(27)/y(25);
T(29) = params(9)*T(28)^(-params(6));
T(30) = params(9)*T(28)^((1+params(3))*(-params(6)));
T(31) = y(3)^(params(12)*(1-params(7)));
T(32) = 1+params(4)*params(7)/(1-params(4));
T(33) = y(63)^T(23);
T(34) = params(7)*params(12)/(1-params(4));
T(35) = y(25)^T(34);
T(36) = params(1)*params(8)*y(63)^(params(7)-1);
T(37) = y(25)^(params(12)*(1-params(7)));
T(38) = y(20)/y(38);
T(39) = (-params(4))/(1-params(4));
T(40) = T(38)^T(39);
T(41) = params(43)^(-1);
T(42) = (-(1/(y(19)-params(2)*y(1))));
T(43) = (y(19)-params(2)*y(1))*(y(19)-params(2)*y(1));
T(44) = (y(62)-y(19)*params(2))*(y(62)-y(19)*params(2));
T(45) = (-((-y(37))/T(43)-(-(params(2)*params(1)*y(70)*(-params(2))))/T(44)));
T(46) = 1/y(38);
T(47) = getPowerDeriv(T(38),T(39),1);
T(48) = getPowerDeriv(y(21),1+params(3),1);
T(49) = y(36)*params(10)*T(48)/(1+params(3));
T(50) = 1/y(34);
T(51) = getPowerDeriv(T(17),1-params(4),1);
T(52) = (-1)/(y(22)*y(22));
T(53) = (-(y(18)*(-T(52))));
T(54) = getPowerDeriv(y(24),(-params(5)),1);
T(55) = getPowerDeriv(y(25),params(12)*(1-params(7)),1);
T(56) = getPowerDeriv(y(25),T(34),1);
T(57) = (-(params(1)*params(8)*T(33)*T(56)));
T(58) = (-(y(64)*T(57)/(T(35)*T(35))));
T(59) = (-y(26))/(y(25)*y(25));
T(60) = getPowerDeriv(T(19),T(32),1);
T(61) = getPowerDeriv(y(25),1-params(7),1);
T(62) = (-T(27))/(y(25)*y(25));
T(63) = getPowerDeriv(T(28),(1+params(3))*(-params(6)),1);
T(64) = getPowerDeriv(T(28),(-params(6)),1);
T(65) = getPowerDeriv(T(19),T(20),1);
T(66) = getPowerDeriv(y(25),T(23),1);
T(67) = getPowerDeriv(y(25),params(6)-1,1);
T(68) = getPowerDeriv(y(25),params(11)*(1-params(6)),1);
T(69) = getPowerDeriv(y(25),(1+params(3))*params(6)*params(11),1);
T(70) = (-(T(4)*T(69)));
T(71) = T(70)/(T(5)*T(5));
T(72) = (-(y(68)*T(8)*T(71)));
T(73) = y(31)/y(5);
T(74) = T(73)^(params(6)*(1+params(3)));
T(75) = params(1)*params(9)*getPowerDeriv(y(25),params(6)*(1+params(3)),1);
T(76) = y(3)^((1+params(3))*params(6)*params(11));
T(77) = T(75)/T(76);
T(78) = T(73)^params(6);
T(79) = params(8)*getPowerDeriv(y(25),T(21),1);
T(80) = y(30)/y(66);
T(81) = getPowerDeriv(y(25),params(11),1);
T(82) = T(80)*T(81);
T(83) = T(82)/y(63);
T(84) = y(25)^params(11);
T(85) = T(80)*T(84)/y(63);
T(86) = getPowerDeriv(T(85),(-params(6)),1);
T(87) = getPowerDeriv(T(85),(1+params(3))*(-params(6)),1);
T(88) = y(3)^T(34);
T(89) = params(1)*params(8)*getPowerDeriv(y(25),params(7)-1,1);
T(90) = 1/y(25);
T(91) = (-((1-params(8))*getPowerDeriv(y(26),1-params(7),1)));
T(92) = (-(params(7)/(params(7)-1)/y(28)));
T(93) = (-(params(7)/(params(7)-1)*y(27)));
T(94) = (-(T(93)/(y(28)*y(28))));
T(95) = params(1)*params(8)*y(25)^(params(7)-1);
T(96) = (-y(31))/(y(30)*y(30));
T(97) = getPowerDeriv(T(25),(1+params(3))*(-params(6)),1);
T(98) = T(26)*(-y(4))/(y(30)*y(30))/y(25);
T(99) = getPowerDeriv(T(25),(-params(6)),1);
T(100) = getPowerDeriv(y(30),1-params(6),1);
T(101) = 1/y(31);
T(102) = getPowerDeriv(T(1),params(6),1);
T(103) = getPowerDeriv(T(1),params(6)*(1+params(3)),1);
T(104) = T(84)*1/y(66)/y(63);
T(105) = 1/y(30);
T(106) = (-((1-params(9))*getPowerDeriv(y(31),1-params(6),1)));
T(107) = (-y(30))/(y(31)*y(31));
T(108) = (-y(67))/(y(31)*y(31));
T(109) = getPowerDeriv(T(7),params(6),1);
T(110) = T(108)*T(109);
T(111) = getPowerDeriv(T(7),params(6)*(1+params(3)),1);
T(112) = T(108)*T(111);
T(113) = params(1)*params(9)*y(25)^(params(6)*(1+params(3)));
T(114) = T(113)/T(76);
T(115) = 1/y(5);
T(116) = getPowerDeriv(T(73),params(6)*(1+params(3)),1);
T(117) = T(15)*params(1)*params(9)*T(14);
T(118) = getPowerDeriv(T(73),params(6),1);
T(119) = (-(params(6)/(params(6)-1)/y(33)));
T(120) = (-(params(6)/(params(6)-1)*y(32)));
T(121) = (-(T(120)/(y(33)*y(33))));
T(122) = (-y(21))/(y(34)*y(34));
T(123) = params(8)*y(25)^T(21);
T(124) = (-(params(9)*T(85)^(-params(6))));
T(125) = (-(params(9)*T(85)^((1+params(3))*(-params(6)))));
T(126) = 1/y(37);
T(127) = (-y(20))/(y(38)*y(38));
T(128) = T(47)*T(127);

end
