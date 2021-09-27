function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 249);

T = baseline.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(129) = (-(params(2)/T(43)));
T(130) = (y(19)-params(2)*y(1))*(-params(2))+(y(19)-params(2)*y(1))*(-params(2));
T(131) = T(43)*T(43);
T(132) = (-((-1)/T(43)));
T(133) = (y(62)-y(19)*params(2))*(-params(2))+(y(62)-y(19)*params(2))*(-params(2));
T(134) = (-((-(params(2)*params(1)*y(70)*(-params(2))))*T(133)));
T(135) = T(44)*T(44);
T(136) = (-((-((-y(37))*(y(19)-params(2)*y(1)+y(19)-params(2)*y(1))))/T(131)-T(134)/T(135)));
T(137) = (-((-(y(37)*params(2)*params(1)))*(y(19)-params(2)*y(1)+y(19)-params(2)*y(1))))/T(131);
T(138) = y(40)*T(132)+T(41)*y(11)*(-(params(2)*params(1)))/T(43);
T(139) = (-((-(params(2)*params(1)*y(70)*(-params(2))))*(y(62)-y(19)*params(2)+y(62)-y(19)*params(2))))/T(135);
T(140) = (-((-((-(y(70)*(-params(2))))*(y(62)-y(19)*params(2)+y(62)-y(19)*params(2))))/T(135)));
T(141) = getPowerDeriv(T(38),T(39),2);
T(142) = (-1)/(y(38)*y(38));
T(143) = getPowerDeriv(y(21),1+params(3),2);
T(144) = y(36)*params(10)*T(143)/(1+params(3));
T(145) = getPowerDeriv(T(17),1-params(4),2);
T(146) = (-1)/(y(34)*y(34));
T(147) = params(10)*T(48)/(1+params(3));
T(148) = (-1)/(y(25)*y(25));
T(149) = (-(y(18)*(-((y(22)+y(22))/(y(22)*y(22)*y(22)*y(22))))));
T(150) = getPowerDeriv(y(24),(-params(5)),2);
T(151) = getPowerDeriv(y(3),params(11),1);
T(152) = y(4)/y(30)*T(151);
T(153) = (-T(152))/(y(25)*y(25));
T(154) = T(152)/y(25);
T(155) = getPowerDeriv(T(28),(1+params(3))*(-params(6)),2);
T(156) = getPowerDeriv(T(28),(-params(6)),2);
T(157) = params(8)*getPowerDeriv(y(3),T(21),1);
T(158) = getPowerDeriv(y(3),params(11)*(1-params(6)),1);
T(159) = getPowerDeriv(y(3),(1+params(3))*params(6)*params(11),1);
T(160) = (-(T(75)*T(159)))/(T(76)*T(76));
T(161) = getPowerDeriv(y(3),T(34),1);
T(162) = getPowerDeriv(y(3),params(12)*(1-params(7)),1);
T(163) = (-y(4))/(y(30)*y(30))*T(151)/y(25);
T(164) = (-(T(113)*T(159)))/(T(76)*T(76));
T(165) = getPowerDeriv(y(25),params(12)*(1-params(7)),2);
T(166) = getPowerDeriv(y(25),T(34),2);
T(167) = (-(params(1)*params(8)*T(33)*T(166)));
T(168) = (T(35)*T(35)*T(167)-T(57)*(T(35)*T(56)+T(35)*T(56)))/(T(35)*T(35)*T(35)*T(35));
T(169) = y(25)*y(25)*y(25)*y(25);
T(170) = (-((-y(26))*(y(25)+y(25))))/T(169);
T(171) = getPowerDeriv(T(19),T(32),2);
T(172) = getPowerDeriv(y(25),1-params(7),2);
T(173) = (-((-T(27))*(y(25)+y(25))))/T(169);
T(174) = getPowerDeriv(T(19),T(20),2);
T(175) = getPowerDeriv(y(25),T(23),2);
T(176) = getPowerDeriv(y(25),params(6)-1,2);
T(177) = getPowerDeriv(y(25),params(11)*(1-params(6)),2);
T(178) = getPowerDeriv(y(25),(1+params(3))*params(6)*params(11),2);
T(179) = (-(T(4)*T(178)));
T(180) = (T(5)*T(5)*T(179)-T(70)*(T(5)*T(69)+T(5)*T(69)))/(T(5)*T(5)*T(5)*T(5));
T(181) = params(1)*params(9)*getPowerDeriv(y(25),params(6)*(1+params(3)),2);
T(182) = params(8)*getPowerDeriv(y(25),T(21),2);
T(183) = getPowerDeriv(y(25),params(11),2);
T(184) = T(80)*T(183);
T(185) = T(184)/y(63);
T(186) = getPowerDeriv(T(85),(-params(6)),2);
T(187) = getPowerDeriv(T(85),(1+params(3))*(-params(6)),2);
T(188) = params(1)*params(8)*getPowerDeriv(y(25),params(7)-1,2);
T(189) = (-(T(26)*(-y(4))/(y(30)*y(30))))/(y(25)*y(25));
T(190) = T(81)*1/y(66)/y(63);
T(191) = y(44)*(-(y(69)*params(1)*params(9)*T(10)*T(68)*T(110)))+y(43)*(-(y(68)*T(71)*T(112)))+T(41)*y(13)*(-(y(32)*T(77)*T(115)*T(116)))+T(41)*y(14)*(-(y(33)*T(15)*params(1)*params(9)*T(67)*T(115)*T(118)));
T(192) = (-((-(params(1)*y(61)))/(y(63)*y(63))));
T(193) = params(1)*params(8)*getPowerDeriv(y(63),params(7)-1,1);
T(194) = getPowerDeriv(y(63),T(23),1);
T(195) = (-(y(64)*(-(T(56)*params(1)*params(8)*T(194)))/(T(35)*T(35))));
T(196) = getPowerDeriv(y(63),params(6)-1,1);
T(197) = params(1)*params(9)*getPowerDeriv(y(63),params(6)*(1+params(3)),1);
T(198) = (-(T(69)*T(197)))/(T(5)*T(5));
T(199) = (-T(82))/(y(63)*y(63));
T(200) = (-(T(80)*T(84)))/(y(63)*y(63));
T(201) = (-(T(84)*1/y(66)))/(y(63)*y(63));
T(202) = T(197)/T(5);
T(203) = (-((1-params(8))*getPowerDeriv(y(26),1-params(7),2)));
T(204) = (-((-(params(7)/(params(7)-1)))/(y(28)*y(28))));
T(205) = y(51)*T(204);
T(206) = (-((-(T(93)*(y(28)+y(28))))/(y(28)*y(28)*y(28)*y(28))));
T(207) = y(54)*(-((1-params(4))*T(40)+y(38)*(1-params(4))*T(128)));
T(208) = (-(T(26)*T(105)))/(y(25)*y(25));
T(209) = T(26)*T(105)/y(25);
T(210) = getPowerDeriv(y(4),1-params(6),1);
T(211) = (-1)/(y(30)*y(30));
T(212) = T(26)*T(211)/y(25);
T(213) = (-((-y(31))*(y(30)+y(30))))/(y(30)*y(30)*y(30)*y(30));
T(214) = getPowerDeriv(T(25),(1+params(3))*(-params(6)),2);
T(215) = T(26)*(-((-y(4))*(y(30)+y(30))))/(y(30)*y(30)*y(30)*y(30))/y(25);
T(216) = (-((1-params(9))*(T(97)*T(213)+T(96)*T(96)*T(214))+y(8)*params(9)*(T(98)*T(98)*T(155)+T(63)*T(215))));
T(217) = getPowerDeriv(T(25),(-params(6)),2);
T(218) = (-((1-params(9))*(T(99)*T(213)+T(96)*T(96)*T(217))+y(7)*params(9)*(T(98)*T(98)*T(156)+T(64)*T(215))));
T(219) = getPowerDeriv(y(30),1-params(6),2);
T(220) = getPowerDeriv(T(1),params(6),2);
T(221) = getPowerDeriv(T(1),params(6)*(1+params(3)),2);
T(222) = (-1)/(y(31)*y(31));
T(223) = T(81)*(-y(30))/(y(66)*y(66))/y(63);
T(224) = T(84)*(-y(30))/(y(66)*y(66))/y(63);
T(225) = T(84)*(-1)/(y(66)*y(66))/y(63);
T(226) = (-y(31))/(y(5)*y(5));
T(227) = (-1)/(y(5)*y(5));
T(228) = getPowerDeriv(T(73),params(6)*(1+params(3)),2);
T(229) = T(116)*T(227)+T(115)*T(226)*T(228);
T(230) = getPowerDeriv(T(73),params(6),2);
T(231) = T(118)*T(227)+T(115)*T(226)*T(230);
T(232) = (-((1-params(9))*getPowerDeriv(y(31),1-params(6),2)));
T(233) = (-((-y(30))*(y(31)+y(31))))/(y(31)*y(31)*y(31)*y(31));
T(234) = T(107)*T(107)*T(220)+T(102)*T(233);
T(235) = (-((-y(67))*(y(31)+y(31))))/(y(31)*y(31)*y(31)*y(31));
T(236) = getPowerDeriv(T(7),params(6),2);
T(237) = T(109)*T(235)+T(108)*T(108)*T(236);
T(238) = params(10)*(T(107)*T(107)*T(221)+T(103)*T(233));
T(239) = getPowerDeriv(T(7),params(6)*(1+params(3)),2);
T(240) = T(111)*T(235)+T(108)*T(108)*T(239);
T(241) = (-((-(params(6)/(params(6)-1)))/(y(33)*y(33))));
T(242) = y(42)*T(241);
T(243) = (-((-(T(120)*(y(33)+y(33))))/(y(33)*y(33)*y(33)*y(33))));
T(244) = (-((-y(21))*(y(34)+y(34))))/(y(34)*y(34)*y(34)*y(34));
T(245) = (-1)/(y(37)*y(37));
T(246) = (-(params(2)*params(1)*(-params(2))))/T(44);
T(247) = (-((1-params(4))*y(29)*T(46)*T(47)+y(38)*(1-params(4))*y(29)*(T(47)*T(142)+T(46)*T(127)*T(141))));
T(248) = (-((-y(20))*(y(38)+y(38))))/(y(38)*y(38)*y(38)*y(38));
T(249) = T(127)*T(127)*T(141)+T(47)*T(248);

end
