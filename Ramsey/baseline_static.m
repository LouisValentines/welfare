function [residual, g1, g2, g3] = baseline_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations.
%                                          Dynare may prepend or append auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g3        [M_.endo_nbr by (M_.endo_nbr)^3] double   Third derivatives matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 43, 1);

%
% Model equations
%

T27 = y(13)/y(14);
T29 = T27^params(6);
T37 = params(43)^(-1);
T57 = (-(1/(y(2)-y(2)*params(2))));
T63 = (y(2)-y(2)*params(2))*(y(2)-y(2)*params(2));
T72 = (-((-y(20))/T63-(-(y(20)*params(1)*params(2)*(-params(2))))/T63));
T100 = 1/y(21);
T104 = getPowerDeriv(y(3)/y(21),(-params(4))/(1-params(4)),1);
T125 = getPowerDeriv(y(4),1+params(3),1);
T128 = y(19)*params(10)*T125/(1+params(3));
T131 = 1/y(17);
T133 = getPowerDeriv(y(4)/y(17),1-params(4),1);
T144 = params(10)*T27^(params(6)*(1+params(3)));
T153 = 1/y(8);
T160 = (-(y(1)*(-((-1)/(y(5)*y(5))))));
T173 = getPowerDeriv(y(7),(-params(5)),1);
T182 = params(1)*params(8)*y(8)^(params(7)-1);
T186 = getPowerDeriv(y(8),params(12)*(1-params(7)),1);
T193 = y(8)^(params(7)/(1-params(4)));
T197 = getPowerDeriv(y(8),params(7)*params(12)/(1-params(4)),1);
T200 = y(8)^(params(7)*params(12)/(1-params(4)));
T210 = (-y(9))/(y(8)*y(8));
T211 = y(9)/y(8);
T214 = 1+params(4)*params(7)/(1-params(4));
T215 = getPowerDeriv(T211,T214,1);
T219 = getPowerDeriv(y(8),1-params(7),1);
T224 = y(8)^params(11);
T226 = (-T224)/(y(8)*y(8));
T227 = T224/y(8);
T230 = getPowerDeriv(T227,(1+params(3))*(-params(6)),1);
T238 = getPowerDeriv(T227,(-params(6)),1);
T248 = getPowerDeriv(T211,(-params(7))/(1-params(4)),1);
T253 = params(7)*(-params(12))/(1-params(4));
T255 = params(8)*y(8)^T253;
T256 = getPowerDeriv(y(8),params(7)/(1-params(4)),1);
T264 = y(13)^(1-params(6));
T266 = y(8)^(params(11)*(1-params(6)));
T268 = getPowerDeriv(y(8),params(6)-1,1);
T276 = y(8)^(params(6)-1);
T278 = getPowerDeriv(y(8),params(11)*(1-params(6)),1);
T285 = params(1)*params(9)*y(8)^(params(6)*(1+params(3)));
T288 = getPowerDeriv(y(8),(1+params(3))*params(6)*params(11),1);
T291 = y(8)^((1+params(3))*params(6)*params(11));
T300 = (-((-(y(5)*params(1)*y(1)))/(y(8)*y(8))));
T305 = params(1)*params(9)*getPowerDeriv(y(8),params(6)*(1+params(3)),1);
T329 = params(8)*getPowerDeriv(y(8),T253,1);
T337 = getPowerDeriv(y(8),params(11),1);
T338 = T337/y(8);
T371 = y(8)^(params(12)*(1-params(7)));
T373 = params(1)*params(8)*getPowerDeriv(y(8),params(7)-1,1);
T382 = (-((-y(5))/(y(8)*y(8))));
T391 = (-((1-params(8))*getPowerDeriv(y(9),1-params(7),1)));
T402 = (-(params(7)/(params(7)-1)/y(11)));
T415 = (-((-(y(10)*params(7)/(params(7)-1)))/(y(11)*y(11))));
T424 = (y(3)/y(21))^((-params(4))/(1-params(4)));
T437 = (-y(14))/(y(13)*y(13));
T438 = y(14)/y(13);
T439 = getPowerDeriv(T438,(1+params(3))*(-params(6)),1);
T445 = T224*(-y(13))/(y(13)*y(13))/y(8);
T452 = getPowerDeriv(T438,(-params(6)),1);
T461 = getPowerDeriv(y(13),1-params(6),1);
T463 = 1/y(14);
T464 = getPowerDeriv(T27,params(6),1);
T470 = y(4)^(1+params(3));
T471 = getPowerDeriv(T27,params(6)*(1+params(3)),1);
T486 = 1/y(13);
T488 = T224*T486/y(8);
T517 = (-((1-params(9))*getPowerDeriv(y(14),1-params(6),1)));
T520 = (-y(13))/(y(14)*y(14));
T526 = getPowerDeriv(1,params(6),1);
T531 = (-(y(4)*y(1)*T464*T520+y(16)*T266*params(1)*params(9)*T276*(-y(14))/(y(14)*y(14))*T526));
T537 = T285/T291;
T538 = getPowerDeriv(1,params(6)*(1+params(3)),1);
T543 = (-(T470*params(10)*T471*T520+y(15)*T537*(-y(14))/(y(14)*y(14))*T538));
T567 = (-(params(6)/(params(6)-1)/y(16)));
T579 = (-((-(y(15)*params(6)/(params(6)-1)))/(y(16)*y(16))));
T589 = (-y(4))/(y(17)*y(17));
T602 = params(9)*T227^(-params(6));
T612 = params(9)*T227^((1+params(3))*(-params(6)));
T620 = 1/y(20);
T623 = params(1)*params(2)/(y(2)-y(2)*params(2));
T639 = (-y(3))/(y(21)*y(21));
T640 = T104*T639;
T645 = (y(4)/y(17))^(1-params(4));
residual(1) = y(41)*(-(1-1/y(5)))+y(36)*(-y(3))+y(35)*(-(y(3)*y(12)))+y(27)*(-(y(4)*T29))+y(23)+y(24)+T37*y(24)*(-(y(5)*params(1)/y(8)));
residual(2) = y(43)*T57+(-y(38))+y(23)*T72+params(43)*y(23)*(-((-(y(20)*(-params(2))))/T63))+T37*y(23)*(-(y(20)*params(1)*params(2)))/T63+params(43)*y(43)*(-((-params(2))/(y(2)-y(2)*params(2))));
residual(3) = y(38)+y(37)*(-(y(21)*y(12)*(1-params(4))*T100*T104))+y(36)*(-y(1))+y(29)+y(35)*(-(y(12)*y(1)));
residual(4) = y(43)*T128+y(29)*(-(y(21)*T131*T133))+y(27)*(-(T29*y(1)))+y(26)*(-(T125*T144));
residual(5) = y(42)*(-T153)+y(41)*T160+y(24)*(-(params(1)*y(1)/y(8)));
residual(6) = y(42);
residual(7) = y(41)*T173;
residual(8) = y(36)*(-(y(11)*T182*T186))+y(35)*(-(y(10)*(-(params(1)*params(8)*T193*T197))/(T200*T200)))+y(34)*T210*T215+y(33)*T219+y(32)*(-(y(19)*params(9)*T226*T230))+y(31)*(-(y(18)*params(9)*T226*T238))+y(30)*(-((1-params(8))*T210*T248+y(17)*T255*T256))+y(28)*(-(T264*params(9)*T266*T268))+y(27)*(-(y(16)*params(1)*params(9)*T276*T278))+y(26)*(-(y(15)*(-(T285*T288))/(T291*T291)))+T37*y(24)*T300+T37*y(26)*(-(y(15)*T305/T291))+T37*y(27)*(-(y(16)*T266*T268*params(1)*params(9)))+params(43)*y(28)*(-(T264*params(9)*T276*T278))+params(43)*y(30)*(-(y(17)*T193*T329))+params(43)*y(31)*(-(y(18)*params(9)*T238*T338))+params(43)*y(32)*(-(y(19)*params(9)*T230*T338))+params(43)*y(33)*(-(params(8)*T186))+T37*y(35)*(-(y(10)*params(1)*params(8)*T256/T200))+T37*y(36)*(-(y(11)*T371*T373))+T37*y(42)*T382;
residual(9) = y(34)*T153*T215+y(33)*T391+y(30)*(-((1-params(8))*T153*T248));
residual(10) = y(35)+y(34)*T402+T37*y(35)*(-(params(1)*params(8)*T193/T200));
residual(11) = y(36)+y(34)*T415+T37*y(36)*(-(T182*T371));
residual(12) = y(37)*(-(T424*y(21)*(1-params(4))))+y(35)*(-(y(3)*y(1)));
residual(13) = y(37)+y(32)*(-((1-params(9))*T437*T439+y(19)*params(9)*T230*T445))+y(31)*(-((1-params(9))*T437*T452+y(18)*params(9)*T238*T445))+y(28)*T461+y(27)*(-(y(4)*y(1)*T463*T464))+y(26)*(-(T470*params(10)*T463*T471))+params(43)*y(28)*(-(T461*params(9)*T266*T276))+params(43)*y(31)*(-(y(18)*params(9)*T238*T488))+params(43)*y(32)*(-(y(19)*params(9)*T230*T488));
residual(14) = y(32)*(-((1-params(9))*T439*T486))+y(31)*(-((1-params(9))*T452*T486))+y(28)*T517+y(27)*T531+y(25)+y(26)*T543+T37*y(26)*(-(y(15)*T537*T463*T538))+T37*y(27)*(-(y(16)*T266*params(1)*params(9)*T276*T463*T526));
residual(15) = y(26)+y(25)*T567+T37*y(26)*(-T537);
residual(16) = y(27)+y(25)*T579+T37*y(27)*(-(T266*params(1)*params(9)*T276));
residual(17) = y(30)+y(29)*(-(y(21)*T133*T589))+params(43)*y(30)*(-(T193*T255));
residual(18) = y(31)+params(43)*y(31)*(-T602);
residual(19) = y(43)*params(10)*T470/(1+params(3))+y(32)+params(43)*y(32)*(-T612);
residual(20) = y(40)*T620+y(23)*T57+T37*y(23)*T623+params(43)*y(40)*(-(T620*params(15)));
residual(21) = T100*y(39)+y(37)*(-(y(12)*(1-params(4))*T424+y(21)*y(12)*(1-params(4))*T640))+y(29)*(-T645)+params(43)*y(39)*(-(T100*params(14)));
residual(22) = 1+y(43);
residual(23) = y(1)-(y(20)/(y(2)-y(2)*params(2))-y(20)*params(1)*params(2)/(y(2)-y(2)*params(2)));
residual(24) = y(1)-y(5)*params(1)*y(1)/y(8);
residual(25) = y(14)-y(15)*params(6)/(params(6)-1)/y(16);
residual(26) = y(15)-(T144*T470+y(15)*T537);
residual(27) = y(16)-(y(4)*T29*y(1)+y(16)*T266*params(1)*params(9)*T276);
residual(28) = T264-((1-params(9))*y(14)^(1-params(6))+T264*params(9)*T266*T276);
residual(29) = y(3)-y(21)*T645;
residual(30) = y(17)-((1-params(8))*T211^((-params(7))/(1-params(4)))+y(17)*T193*T255);
residual(31) = y(18)-((1-params(9))*T438^(-params(6))+y(18)*T602);
residual(32) = y(19)-((1-params(9))*T438^((1+params(3))*(-params(6)))+y(19)*T612);
residual(33) = y(8)^(1-params(7))-((1-params(8))*y(9)^(1-params(7))+params(8)*T371);
residual(34) = T211^T214-y(10)*params(7)/(params(7)-1)/y(11);
residual(35) = y(10)-(y(3)*y(12)*y(1)+y(10)*params(1)*params(8)*T193/T200);
residual(36) = y(11)-(y(3)*y(1)+y(11)*T182*T371);
residual(37) = y(13)-y(21)*y(12)*(1-params(4))*T424;
residual(38) = y(3)-y(2);
residual(39) = log(y(21))-(params(14)*log(y(21))+x(1));
residual(40) = log(y(20))-(params(15)*log(y(20))+x(2));
residual(41) = y(7)^(-params(5))-(1-1/y(5))*y(1);
residual(42) = y(6)-y(5)/y(8);
residual(43) = y(22)-(log(y(2)-y(2)*params(2))-y(19)*params(10)*T470/(1+params(3)));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(43, 43);

  %
  % Jacobian matrix
  %

T792 = T63*T63;
T838 = getPowerDeriv(y(3)/y(21),(-params(4))/(1-params(4)),2);
T858 = getPowerDeriv(y(4),1+params(3),2);
T863 = getPowerDeriv(y(4)/y(17),1-params(4),2);
T921 = getPowerDeriv(y(8),params(12)*(1-params(7)),2);
T948 = getPowerDeriv(T211,T214,2);
T960 = (y(8)*y(8)*(-T337)-(-T224)*(y(8)+y(8)))/(y(8)*y(8)*y(8)*y(8));
T963 = (y(8)*T337-T224)/(y(8)*y(8));
T965 = T963*getPowerDeriv(T227,(1+params(3))*(-params(6)),2);
T974 = T963*getPowerDeriv(T227,(-params(6)),2);
T982 = getPowerDeriv(T211,(-params(7))/(1-params(4)),2);
T988 = getPowerDeriv(y(8),params(7)/(1-params(4)),2);
T996 = getPowerDeriv(y(8),params(6)-1,2);
T1004 = getPowerDeriv(y(8),params(11)*(1-params(6)),2);
T1074 = (y(8)*getPowerDeriv(y(8),params(11),2)-T337)/(y(8)*y(8));
T1153 = (y(8)*T337*(-y(13))/(y(13)*y(13))-T224*(-y(13))/(y(13)*y(13)))/(y(8)*y(8));
T1205 = (T291*T305-T285*T288)/(T291*T291);
T1293 = y(34)*(-((-(params(7)/(params(7)-1)))/(y(11)*y(11))));
T1313 = y(37)*(-((1-params(4))*T424+y(21)*(1-params(4))*T640));
T1327 = getPowerDeriv(T438,(1+params(3))*(-params(6)),2);
T1338 = T224*((-(y(13)*y(13)))-(-y(13))*(y(13)+y(13)))/(y(13)*y(13)*y(13)*y(13))/y(8);
T1345 = getPowerDeriv(T438,(-params(6)),2);
T1357 = getPowerDeriv(y(13),1-params(6),2);
T1359 = getPowerDeriv(T27,params(6),2);
T1366 = getPowerDeriv(T27,params(6)*(1+params(3)),2);
T1382 = T224*(-1)/(y(13)*y(13))/y(8);
T1411 = (-1)/(y(14)*y(14));
T1539 = y(25)*(-((-(params(6)/(params(6)-1)))/(y(16)*y(16))));
  g1(1,3)=(-y(36))+y(35)*(-y(12));
  g1(1,4)=y(27)*(-T29);
  g1(1,5)=y(41)*(-1)/(y(5)*y(5))+T37*y(24)*(-(params(1)/y(8)));
  g1(1,8)=T37*y(24)*(-((-(y(5)*params(1)))/(y(8)*y(8))));
  g1(1,12)=(-y(3))*y(35);
  g1(1,13)=y(27)*(-(y(4)*T463*T464));
  g1(1,14)=y(27)*(-(y(4)*T464*T520));
  g1(1,23)=1;
  g1(1,24)=1+T37*(-(y(5)*params(1)/y(8)));
  g1(1,27)=(-(y(4)*T29));
  g1(1,35)=(-(y(3)*y(12)));
  g1(1,36)=(-y(3));
  g1(1,41)=(-(1-1/y(5)));
  g1(2,2)=y(43)*(-((-(1-params(2)))/T63))+y(23)*(-((-((-y(20))*((y(2)-y(2)*params(2))*(1-params(2))+(y(2)-y(2)*params(2))*(1-params(2)))))/T792-(-((-(y(20)*params(1)*params(2)*(-params(2))))*((y(2)-y(2)*params(2))*(1-params(2))+(y(2)-y(2)*params(2))*(1-params(2)))))/T792))+params(43)*y(23)*(-((-((-(y(20)*(-params(2))))*((y(2)-y(2)*params(2))*(1-params(2))+(y(2)-y(2)*params(2))*(1-params(2)))))/T792))+T37*y(23)*(-((-(y(20)*params(1)*params(2)))*((y(2)-y(2)*params(2))*(1-params(2))+(y(2)-y(2)*params(2))*(1-params(2)))))/T792+params(43)*y(43)*(-((-((-params(2))*(1-params(2))))/T63));
  g1(2,20)=y(23)*(-((-1)/T63-(-(params(1)*params(2)*(-params(2))))/T63))+params(43)*y(23)*(-(params(2)/T63))+T37*y(23)*(-(params(1)*params(2)))/T63;
  g1(2,23)=T72+params(43)*(-((-(y(20)*(-params(2))))/T63))+T37*(-(y(20)*params(1)*params(2)))/T63;
  g1(2,38)=(-1);
  g1(2,43)=T57+params(43)*(-((-params(2))/(y(2)-y(2)*params(2))));
  g1(3,1)=(-y(36))+y(35)*(-y(12));
  g1(3,3)=y(37)*(-(y(21)*y(12)*(1-params(4))*T100*T100*T838));
  g1(3,12)=y(37)*(-(T100*T104*y(21)*(1-params(4))))+y(35)*(-y(1));
  g1(3,21)=y(37)*(-(y(12)*(1-params(4))*T100*T104+y(21)*y(12)*(1-params(4))*(T104*(-1)/(y(21)*y(21))+T100*T639*T838)));
  g1(3,29)=1;
  g1(3,35)=(-(y(12)*y(1)));
  g1(3,36)=(-y(1));
  g1(3,37)=(-(y(21)*y(12)*(1-params(4))*T100*T104));
  g1(3,38)=1;
  g1(4,1)=y(27)*(-T29);
  g1(4,4)=y(43)*y(19)*params(10)*T858/(1+params(3))+y(29)*(-(y(21)*T131*T131*T863))+y(26)*(-(T144*T858));
  g1(4,13)=y(27)*(-(y(1)*T463*T464))+y(26)*(-(T125*params(10)*T463*T471));
  g1(4,14)=y(27)*(-(y(1)*T464*T520))+y(26)*(-(T125*params(10)*T471*T520));
  g1(4,17)=y(29)*(-(y(21)*(T133*(-1)/(y(17)*y(17))+T131*T589*T863)));
  g1(4,19)=y(43)*params(10)*T125/(1+params(3));
  g1(4,21)=y(29)*(-(T131*T133));
  g1(4,26)=(-(T125*T144));
  g1(4,27)=(-(T29*y(1)));
  g1(4,29)=(-(y(21)*T131*T133));
  g1(4,43)=T128;
  g1(5,1)=y(41)*(-1)/(y(5)*y(5))+y(24)*(-(params(1)/y(8)));
  g1(5,5)=y(41)*(-(y(1)*(-((y(5)+y(5))/(y(5)*y(5)*y(5)*y(5))))));
  g1(5,8)=y(24)*(-((-(params(1)*y(1)))/(y(8)*y(8))))+y(42)*(-((-1)/(y(8)*y(8))));
  g1(5,24)=(-(params(1)*y(1)/y(8)));
  g1(5,41)=T160;
  g1(5,42)=(-T153);
  g1(6,42)=1;
  g1(7,7)=y(41)*getPowerDeriv(y(7),(-params(5)),2);
  g1(7,41)=T173;
  g1(8,1)=T37*y(24)*(-((-(y(5)*params(1)))/(y(8)*y(8))));
  g1(8,5)=T37*y(24)*(-((-(params(1)*y(1)))/(y(8)*y(8))))+T37*y(42)*(-((-1)/(y(8)*y(8))));
  g1(8,8)=y(36)*(-(y(11)*(T186*T373+T182*T921)))+y(35)*(-(y(10)*(T200*T200*(-(T197*params(1)*params(8)*T256+params(1)*params(8)*T193*getPowerDeriv(y(8),params(7)*params(12)/(1-params(4)),2)))-(-(params(1)*params(8)*T193*T197))*(T197*T200+T197*T200))/(T200*T200*T200*T200)))+y(34)*(T215*(-((-y(9))*(y(8)+y(8))))/(y(8)*y(8)*y(8)*y(8))+T210*T210*T948)+y(33)*getPowerDeriv(y(8),1-params(7),2)+y(32)*(-(y(19)*params(9)*(T230*T960+T226*T965)))+y(31)*(-(y(18)*params(9)*(T238*T960+T226*T974)))+y(30)*(-((1-params(8))*(T248*(-((-y(9))*(y(8)+y(8))))/(y(8)*y(8)*y(8)*y(8))+T210*T210*T982)+y(17)*(T256*T329+T255*T988)))+y(28)*(-(T264*params(9)*(T268*T278+T266*T996)))+y(27)*(-(y(16)*(T278*T268*params(1)*params(9)+params(1)*params(9)*T276*T1004)))+y(26)*(-(y(15)*(T291*T291*(-(T288*T305+T285*getPowerDeriv(y(8),(1+params(3))*params(6)*params(11),2)))-(-(T285*T288))*(T288*T291+T288*T291))/(T291*T291*T291*T291)))+T37*y(24)*(-((-((-(y(5)*params(1)*y(1)))*(y(8)+y(8))))/(y(8)*y(8)*y(8)*y(8))))+T37*y(26)*(-(y(15)*(T291*params(1)*params(9)*getPowerDeriv(y(8),params(6)*(1+params(3)),2)-T288*T305)/(T291*T291)))+T37*y(27)*(-(y(16)*(T278*T268*params(1)*params(9)+T266*params(1)*params(9)*T996)))+params(43)*y(28)*(-(T264*params(9)*(T268*T278+T276*T1004)))+params(43)*y(30)*(-(y(17)*(T256*T329+T193*params(8)*getPowerDeriv(y(8),T253,2))))+params(43)*y(31)*(-(y(18)*params(9)*(T338*T974+T238*T1074)))+params(43)*y(32)*(-(y(19)*params(9)*(T338*T965+T230*T1074)))+params(43)*y(33)*(-(params(8)*T921))+T37*y(35)*(-(y(10)*(T200*params(1)*params(8)*T988-T197*params(1)*params(8)*T256)/(T200*T200)))+T37*y(36)*(-(y(11)*(T186*T373+T371*params(1)*params(8)*getPowerDeriv(y(8),params(7)-1,2))))+T37*y(42)*(-((-((-y(5))*(y(8)+y(8))))/(y(8)*y(8)*y(8)*y(8))));
  g1(8,9)=y(34)*(T215*(-1)/(y(8)*y(8))+T210*T153*T948)+y(30)*(-((1-params(8))*(T248*(-1)/(y(8)*y(8))+T210*T153*T982)));
  g1(8,10)=y(35)*(-((-(params(1)*params(8)*T193*T197))/(T200*T200)))+T37*y(35)*(-(params(1)*params(8)*T256/T200));
  g1(8,11)=y(36)*(-(T182*T186))+T37*y(36)*(-(T371*T373));
  g1(8,13)=y(28)*(-(params(9)*T266*T268*T461))+params(43)*y(28)*(-(params(9)*T276*T278*T461));
  g1(8,15)=y(26)*(-((-(T285*T288))/(T291*T291)))+T37*y(26)*(-(T305/T291));
  g1(8,16)=y(27)*(-(params(1)*params(9)*T276*T278))+T37*y(27)*(-(T266*T268*params(1)*params(9)));
  g1(8,17)=y(30)*(-(T255*T256))+params(43)*y(30)*(-(T193*T329));
  g1(8,18)=y(31)*(-(params(9)*T226*T238))+params(43)*y(31)*(-(params(9)*T238*T338));
  g1(8,19)=y(32)*(-(params(9)*T226*T230))+params(43)*y(32)*(-(params(9)*T230*T338));
  g1(8,24)=T37*T300;
  g1(8,26)=(-(y(15)*(-(T285*T288))/(T291*T291)))+T37*(-(y(15)*T305/T291));
  g1(8,27)=(-(y(16)*params(1)*params(9)*T276*T278))+T37*(-(y(16)*T266*T268*params(1)*params(9)));
  g1(8,28)=(-(T264*params(9)*T266*T268))+params(43)*(-(T264*params(9)*T276*T278));
  g1(8,30)=(-((1-params(8))*T210*T248+y(17)*T255*T256))+params(43)*(-(y(17)*T193*T329));
  g1(8,31)=(-(y(18)*params(9)*T226*T238))+params(43)*(-(y(18)*params(9)*T238*T338));
  g1(8,32)=(-(y(19)*params(9)*T226*T230))+params(43)*(-(y(19)*params(9)*T230*T338));
  g1(8,33)=T219+params(43)*(-(params(8)*T186));
  g1(8,34)=T210*T215;
  g1(8,35)=(-(y(10)*(-(params(1)*params(8)*T193*T197))/(T200*T200)))+T37*(-(y(10)*params(1)*params(8)*T256/T200));
  g1(8,36)=(-(y(11)*T182*T186))+T37*(-(y(11)*T371*T373));
  g1(8,42)=T37*T382;
  g1(9,8)=y(34)*(T215*(-1)/(y(8)*y(8))+T153*T210*T948)+y(30)*(-((1-params(8))*(T248*(-1)/(y(8)*y(8))+T153*T210*T982)));
  g1(9,9)=y(34)*T153*T153*T948+y(33)*(-((1-params(8))*getPowerDeriv(y(9),1-params(7),2)))+y(30)*(-((1-params(8))*T153*T153*T982));
  g1(9,30)=(-((1-params(8))*T153*T248));
  g1(9,33)=T391;
  g1(9,34)=T153*T215;
  g1(10,8)=T37*y(35)*(-((T200*params(1)*params(8)*T256-params(1)*params(8)*T193*T197)/(T200*T200)));
  g1(10,11)=T1293;
  g1(10,34)=T402;
  g1(10,35)=1+T37*(-(params(1)*params(8)*T193/T200));
  g1(11,8)=T37*y(36)*(-(T182*T186+T371*T373));
  g1(11,10)=T1293;
  g1(11,11)=y(34)*(-((-((-(y(10)*params(7)/(params(7)-1)))*(y(11)+y(11))))/(y(11)*y(11)*y(11)*y(11))));
  g1(11,34)=T415;
  g1(11,36)=1+T37*(-(T182*T371));
  g1(12,1)=(-y(3))*y(35);
  g1(12,3)=y(37)*(-(T100*T104*y(21)*(1-params(4))))+y(35)*(-y(1));
  g1(12,21)=T1313;
  g1(12,35)=(-(y(3)*y(1)));
  g1(12,37)=(-(T424*y(21)*(1-params(4))));
  g1(13,1)=y(27)*(-(y(4)*T463*T464));
  g1(13,4)=y(27)*(-(y(1)*T463*T464))+y(26)*(-(T125*params(10)*T463*T471));
  g1(13,8)=y(32)*(-(y(19)*params(9)*(T445*T965+T230*T1153)))+y(31)*(-(y(18)*params(9)*(T445*T974+T238*T1153)))+params(43)*y(28)*(-(T461*params(9)*(T266*T268+T276*T278)))+params(43)*y(31)*(-(y(18)*params(9)*(T488*T974+T238*(y(8)*T337*T486-T224*T486)/(y(8)*y(8)))))+params(43)*y(32)*(-(y(19)*params(9)*(T488*T965+T230*(y(8)*T337*T486-T224*T486)/(y(8)*y(8)))));
  g1(13,13)=y(32)*(-((1-params(9))*(T439*(-((-y(14))*(y(13)+y(13))))/(y(13)*y(13)*y(13)*y(13))+T437*T437*T1327)+y(19)*params(9)*T230*T1338))+y(31)*(-((1-params(9))*(T452*(-((-y(14))*(y(13)+y(13))))/(y(13)*y(13)*y(13)*y(13))+T437*T437*T1345)+y(18)*params(9)*T238*T1338))+y(28)*T1357+y(27)*(-(y(4)*y(1)*T463*T463*T1359))+y(26)*(-(T470*params(10)*T463*T463*T1366))+params(43)*y(28)*(-(params(9)*T266*T276*T1357))+params(43)*y(31)*(-(y(18)*params(9)*T238*T1382))+params(43)*y(32)*(-(y(19)*params(9)*T230*T1382));
  g1(13,14)=y(32)*(-((1-params(9))*(T439*(-1)/(y(13)*y(13))+T437*T486*T1327)))+y(31)*(-((1-params(9))*(T452*(-1)/(y(13)*y(13))+T437*T486*T1345)))+y(27)*(-(y(4)*y(1)*(T464*T1411+T463*T520*T1359)))+y(26)*(-(T470*params(10)*(T471*T1411+T463*T520*T1366)));
  g1(13,18)=y(31)*(-(params(9)*T238*T445))+params(43)*y(31)*(-(params(9)*T238*T488));
  g1(13,19)=y(32)*(-(params(9)*T230*T445))+params(43)*y(32)*(-(params(9)*T230*T488));
  g1(13,26)=(-(T470*params(10)*T463*T471));
  g1(13,27)=(-(y(4)*y(1)*T463*T464));
  g1(13,28)=T461+params(43)*(-(T461*params(9)*T266*T276));
  g1(13,31)=(-((1-params(9))*T437*T452+y(18)*params(9)*T238*T445))+params(43)*(-(y(18)*params(9)*T238*T488));
  g1(13,32)=(-((1-params(9))*T437*T439+y(19)*params(9)*T230*T445))+params(43)*(-(y(19)*params(9)*T230*T488));
  g1(13,37)=1;
  g1(14,1)=y(27)*(-(y(4)*T464*T520));
  g1(14,4)=y(27)*(-(y(1)*T464*T520))+y(26)*(-(T125*params(10)*T471*T520));
  g1(14,8)=y(27)*(-(y(16)*(-y(14))/(y(14)*y(14))*T526*(params(1)*params(9)*T276*T278+T266*T268*params(1)*params(9))))+y(26)*(-(y(15)*(-y(14))/(y(14)*y(14))*T538*T1205))+T37*y(26)*(-(y(15)*T463*T538*T1205))+T37*y(27)*(-(y(16)*T463*T526*(params(1)*params(9)*T276*T278+T266*T268*params(1)*params(9))));
  g1(14,13)=y(32)*(-((1-params(9))*(T486*T437*T1327+T439*(-1)/(y(13)*y(13)))))+y(31)*(-((1-params(9))*(T486*T437*T1345+T452*(-1)/(y(13)*y(13)))))+y(27)*(-(y(4)*y(1)*(T520*T463*T1359+T464*T1411)))+y(26)*(-(T470*params(10)*(T520*T463*T1366+T471*T1411)));
  g1(14,14)=y(32)*(-((1-params(9))*T486*T486*T1327))+y(31)*(-((1-params(9))*T486*T486*T1345))+y(28)*(-((1-params(9))*getPowerDeriv(y(14),1-params(6),2)))+y(27)*(-(y(4)*y(1)*(T520*T520*T1359+T464*(-((-y(13))*(y(14)+y(14))))/(y(14)*y(14)*y(14)*y(14)))+y(16)*T266*params(1)*params(9)*T276*T526*((-(y(14)*y(14)))-(-y(14))*(y(14)+y(14)))/(y(14)*y(14)*y(14)*y(14))))+y(26)*(-(T470*params(10)*(T520*T520*T1366+T471*(-((-y(13))*(y(14)+y(14))))/(y(14)*y(14)*y(14)*y(14)))+y(15)*T537*T538*((-(y(14)*y(14)))-(-y(14))*(y(14)+y(14)))/(y(14)*y(14)*y(14)*y(14))))+T37*y(26)*(-(y(15)*T537*T538*T1411))+T37*y(27)*(-(y(16)*T266*params(1)*params(9)*T276*T526*T1411));
  g1(14,15)=y(26)*(-(T537*(-y(14))/(y(14)*y(14))*T538))+T37*y(26)*(-(T537*T463*T538));
  g1(14,16)=y(27)*(-(T266*params(1)*params(9)*T276*(-y(14))/(y(14)*y(14))*T526))+T37*y(27)*(-(T266*params(1)*params(9)*T276*T463*T526));
  g1(14,25)=1;
  g1(14,26)=T543+T37*(-(y(15)*T537*T463*T538));
  g1(14,27)=T531+T37*(-(y(16)*T266*params(1)*params(9)*T276*T463*T526));
  g1(14,28)=T517;
  g1(14,31)=(-((1-params(9))*T452*T486));
  g1(14,32)=(-((1-params(9))*T439*T486));
  g1(15,8)=T37*y(26)*(-T1205);
  g1(15,16)=T1539;
  g1(15,25)=T567;
  g1(15,26)=1+T37*(-T537);
  g1(16,8)=T37*y(27)*(-(params(1)*params(9)*T276*T278+T266*T268*params(1)*params(9)));
  g1(16,15)=T1539;
  g1(16,16)=y(25)*(-((-((-(y(15)*params(6)/(params(6)-1)))*(y(16)+y(16))))/(y(16)*y(16)*y(16)*y(16))));
  g1(16,25)=T579;
  g1(16,27)=1+T37*(-(T266*params(1)*params(9)*T276));
  g1(17,4)=y(29)*(-(y(21)*(T589*T131*T863+T133*(-1)/(y(17)*y(17)))));
  g1(17,8)=params(43)*y(30)*(-(T255*T256+T193*T329));
  g1(17,17)=y(29)*(-(y(21)*(T589*T589*T863+T133*(-((-y(4))*(y(17)+y(17))))/(y(17)*y(17)*y(17)*y(17)))));
  g1(17,21)=y(29)*(-(T133*T589));
  g1(17,29)=(-(y(21)*T133*T589));
  g1(17,30)=1+params(43)*(-(T193*T255));
  g1(18,8)=params(43)*y(31)*(-(params(9)*T238*T963));
  g1(18,31)=1+params(43)*(-T602);
  g1(19,4)=y(43)*params(10)*T125/(1+params(3));
  g1(19,8)=params(43)*y(32)*(-(params(9)*T230*T963));
  g1(19,32)=1+params(43)*(-T612);
  g1(19,43)=params(10)*T470/(1+params(3));
  g1(20,2)=y(23)*(-((-(1-params(2)))/T63))+T37*y(23)*(-(params(1)*params(2)*(1-params(2))))/T63;
  g1(20,20)=y(40)*(-1)/(y(20)*y(20))+params(43)*y(40)*(-(params(15)*(-1)/(y(20)*y(20))));
  g1(20,23)=T57+T37*T623;
  g1(20,40)=T620+params(43)*(-(T620*params(15)));
  g1(21,3)=y(37)*(-(y(12)*(1-params(4))*T100*T104+y(21)*y(12)*(1-params(4))*(T639*T100*T838+T104*(-1)/(y(21)*y(21)))));
  g1(21,4)=y(29)*(-(T131*T133));
  g1(21,12)=T1313;
  g1(21,17)=y(29)*(-(T133*T589));
  g1(21,21)=y(39)*(-1)/(y(21)*y(21))+y(37)*(-(y(12)*(1-params(4))*T640+y(12)*(1-params(4))*T640+y(21)*y(12)*(1-params(4))*(T639*T639*T838+T104*(-((-y(3))*(y(21)+y(21))))/(y(21)*y(21)*y(21)*y(21)))))+params(43)*y(39)*(-(params(14)*(-1)/(y(21)*y(21))));
  g1(21,29)=(-T645);
  g1(21,37)=(-(y(12)*(1-params(4))*T424+y(21)*y(12)*(1-params(4))*T640));
  g1(21,39)=T100+params(43)*(-(T100*params(14)));
  g1(22,43)=1;
  g1(23,1)=1;
  g1(23,2)=(-((-(y(20)*(1-params(2))))/T63-(-(y(20)*params(1)*params(2)*(1-params(2))))/T63));
  g1(23,20)=(-(1/(y(2)-y(2)*params(2))-T623));
  g1(24,1)=1-y(5)*params(1)/y(8);
  g1(24,5)=(-(params(1)*y(1)/y(8)));
  g1(24,8)=T300;
  g1(25,14)=1;
  g1(25,15)=T567;
  g1(25,16)=T579;
  g1(26,4)=(-(T125*T144));
  g1(26,8)=(-(y(15)*T1205));
  g1(26,13)=(-(T470*params(10)*T463*T471));
  g1(26,14)=(-(T470*params(10)*T471*T520));
  g1(26,15)=1-T537;
  g1(27,1)=(-(y(4)*T29));
  g1(27,4)=(-(T29*y(1)));
  g1(27,8)=(-(y(16)*(params(1)*params(9)*T276*T278+T266*T268*params(1)*params(9))));
  g1(27,13)=(-(y(4)*y(1)*T463*T464));
  g1(27,14)=(-(y(4)*y(1)*T464*T520));
  g1(27,16)=1-T266*params(1)*params(9)*T276;
  g1(28,8)=(-(T264*params(9)*(T266*T268+T276*T278)));
  g1(28,13)=T461-T461*params(9)*T266*T276;
  g1(28,14)=T517;
  g1(29,3)=1;
  g1(29,4)=(-(y(21)*T131*T133));
  g1(29,17)=(-(y(21)*T133*T589));
  g1(29,21)=(-T645);
  g1(30,8)=(-((1-params(8))*T210*T248+y(17)*(T255*T256+T193*T329)));
  g1(30,9)=(-((1-params(8))*T153*T248));
  g1(30,17)=1-T193*T255;
  g1(31,8)=(-(y(18)*params(9)*T238*T963));
  g1(31,13)=(-((1-params(9))*T437*T452));
  g1(31,14)=(-((1-params(9))*T452*T486));
  g1(31,18)=1-T602;
  g1(32,8)=(-(y(19)*params(9)*T230*T963));
  g1(32,13)=(-((1-params(9))*T437*T439));
  g1(32,14)=(-((1-params(9))*T439*T486));
  g1(32,19)=1-T612;
  g1(33,8)=T219-params(8)*T186;
  g1(33,9)=T391;
  g1(34,8)=T210*T215;
  g1(34,9)=T153*T215;
  g1(34,10)=T402;
  g1(34,11)=T415;
  g1(35,1)=(-(y(3)*y(12)));
  g1(35,3)=(-(y(12)*y(1)));
  g1(35,8)=(-(y(10)*(T200*params(1)*params(8)*T256-params(1)*params(8)*T193*T197)/(T200*T200)));
  g1(35,10)=1-params(1)*params(8)*T193/T200;
  g1(35,12)=(-(y(3)*y(1)));
  g1(36,1)=(-y(3));
  g1(36,3)=(-y(1));
  g1(36,8)=(-(y(11)*(T182*T186+T371*T373)));
  g1(36,11)=1-T182*T371;
  g1(37,3)=(-(y(21)*y(12)*(1-params(4))*T100*T104));
  g1(37,12)=(-(T424*y(21)*(1-params(4))));
  g1(37,13)=1;
  g1(37,21)=(-(y(12)*(1-params(4))*T424+y(21)*y(12)*(1-params(4))*T640));
  g1(38,2)=(-1);
  g1(38,3)=1;
  g1(39,21)=T100-T100*params(14);
  g1(40,20)=T620-T620*params(15);
  g1(41,1)=(-(1-1/y(5)));
  g1(41,5)=T160;
  g1(41,7)=T173;
  g1(42,5)=(-T153);
  g1(42,6)=1;
  g1(42,8)=T382;
  g1(43,2)=(-((1-params(2))/(y(2)-y(2)*params(2))));
  g1(43,4)=T128;
  g1(43,19)=params(10)*T470/(1+params(3));
  g1(43,22)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],43,1849);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],43,79507);
end
end
end
end
