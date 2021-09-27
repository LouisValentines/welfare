%-----------------------------------------------------------------------------------------%
% Some notes and suggestions 2021.07.17
% Apple silicon & MacOS Big Sur 11.4 
% Matlab r2020b & dynare 4.5.7 
% dynareOBC need commercial MILP solver, i.e. gurobi optimizer
% Due to dynareOBC updates later than dynare, may cause some errors, so for 
% run stable not try dynare 4.6x.
%-----------------------------------------------------------------------------------------%
var
//sticky economy
  lamb        // 1  Lagrange multiplier
  c           // 2  household consumption
  y           // 3  output
  n           // 4  hours work
  i           // 5  interest rate
  r           // 6  real interest rate
  m           // 7  real money balance
  pi          // 8  inflation 
  pi_star     // 9  target price
  x1          // 10 auxiliary x1
  x2          // 11 auxiliary x2
  mc          // 12 marginal cost
  w           // 13 real wage
  w_star      // 14 target wage
  h1          // 15 auxiliary h1
  h2          // 16 auxiliary h2
  vp          // 17 price dispersion
  vw          // 18 wage dispersion
  aleph       // 19 wage dispersion
  nu          // 20 preference shock
  a           // 21 technology shock
  //xi          // 22 technology shock
//welfare measurement 
  //welfare     // 23 welfare function
  utility     // 24 utility function
;
%-----------------------------------------------------------------------------------------%
% declare exogenous variables
%-----------------------------------------------------------------------------------------%
varexo
  //e_i         // 1  monetary policy shock
  e_a         // 2  technology shock
  e_nu        // 3  preference shock
;
%-----------------------------------------------------------------------------------------%
% declare parameters and steady state
%-----------------------------------------------------------------------------------------%
parameters
  beta        // 1  discount factor
  b           // 2  household consumption habit
  eta         // 3  Frisch elasticity
  alpha       // 4  share of labour 
  gamma       // 5  elasticity of money balance
  theta       // 6  elasticity of labour substitution
  epsilon     // 7  elasticity of substitution
  alphap      // 8  Cavlo price sticky
  alphaw      // 9  Cavlo wage sticky
  chi         // 10 negtive utility of labour input
  kappaw      // 11 wage setting index
  kappap      // 12 price setting index
  rhoi        // 13 AR(1) persistence parameter
  rhoa        // 14 AR(1) persistence parameter
  rhonu       // 15 AR(1) persistence parameter
  phii        // 16 policy rate smoothing parameter
  phipi       // 17 Taylor rule inflation
  phiy        // 18 Taylor rule output
  pi_target   // 19 trend inflation
  omega       // 20 average window length
  lambs        // 1  Lagrange multiplier
  cs           // 2  household consumption
  ys           // 3  output
  ns           // 4  hours work
  is           // 5  interest rate
  rs           // 6  real interest rate
  ms           // 7  real money balance
  pis          // 8  inflation 
  pi_stars     // 9  target price
  x1s          // 10 auxiliary x1
  x2s          // 11 auxiliary x2
  mcs          // 12 marginal cost
  ws           // 13 real wage
  w_stars      // 14 target wage
  h1s          // 15 auxiliary h1
  h2s          // 16 auxiliary h2
  vps          // 17 price dispersion
  vws          // 18 wage dispersion
  alephs       // 19 wage dispersion
  nus          // 20 preference shock
  as           // 21 technology shock
  //welfares     // 23 welfare function
  utilitys     // 24 utility function


;
  beta     =0.9937;
  alpha    =0.40; 
  b        =0.6403;
  eta      =1.8896;
  gamma    =3.13;
  theta    =9.30;
  epsilon  =6.00;
  alphap   =0.6115;
  alphaw   =0.5858;
  kappaw   =0.5215;
  kappap   =0.5715;
  phii     =0.8624;
  phipi    =1.2791;   // inflation gap reflection parameter
  phiy     =0.2851;   // output gap reflection parameter
  rhoi     =0.6715;
  rhoa     =0.6535;
  rhonu    =0.3897;  
  chi      =7.182975795587264;
      
//trend inflation
  pi_target=0.00; 
  as=1;
  nus=1;
  ns=1.15/3;
  pis=(1+pi_target/100)^(1/4);
  is=pis/beta;
  rs=is/pis;
  pi_stars=((pis^(1-epsilon)-alphap*pis^(kappap*(1-epsilon)))/(1-alphap))^(1/(1-epsilon));
  vps=(1-alphap)*(pis/pi_stars)^(epsilon/(1-alpha))/(1-alphap*pis^(epsilon/(1-alpha)*(1-kappap)));
  mcs=(epsilon-1)/epsilon*(pi_stars/pis)^(1+alpha*epsilon/(1-alpha))*(1-beta*alphap*pis^(epsilon/(1-alpha)*(1-kappap)))/(1-beta*alphap*pis^((1-kappap)*(epsilon-1)));
  ws=(1-alpha)*mcs*(ns/vps)^(1-alpha)/ns*vps;
  w_stars=ws*((1-alphaw*pis^((1-kappaw)*(theta-1)))/(1-alphaw))^(1/(1-theta));
  vws=(1-alphaw)*(w_stars/ws)^(-theta)/(1-alphaw*pis^((1-kappaw)*theta));
  alephs=(1-alphaw)*(w_stars/ws)^(-theta*(1+eta))/(1-alphaw*pis^((1-kappaw)*theta*(1+eta)));
  chi=(theta-1)/theta*w_stars/ns^((1-alpha)+eta)*(w_stars/ws)^(theta*eta)*(1-beta*b)/(1-b)*vps^(1-alpha)*(1-beta*alphaw*pis^((1-kappaw)*theta*(1+eta)))/(1-beta*alphaw*pis^((1-kappaw)*(theta-1)));
  ys=as*(ns/vps)^(1-alpha);
  cs=ys;
  lambs=nus*(1-beta*b)/(cs-b*cs);
  ms=(lambs*(1-1/is))^(-1/gamma);
  x1s=lambs*mcs*ys/(1-alphap*beta*pis^((1-kappap)*epsilon/(1-alpha)));
  x2s=lambs*ys/(1-alphap*beta*pis^((1-kappap)*(epsilon-1)));
  h1s=chi*ns^(1+eta)*(ws/w_stars)^(theta*(1+eta))/(1-alphaw*beta*pis^((1-kappaw)*theta*(1+eta)));
  h2s=lambs*ns*(ws/w_stars)^theta/(1-alphaw*beta*pis^((theta-1)*(1-kappaw)));
//welfare measurement 
  utilitys=log(cs-b*cs)-chi*ns^(1+eta)*alephs/(1+eta);
%-----------------------------------------------------------------------------------------%
% model sect
%-----------------------------------------------------------------------------------------%
model;
  [name='(2)home Euler equation']
   lamb=nu/(c-b*c(-1))-beta*b*nu(1)/(c(1)-b*c);
 
  [name='(3)home Euler equation']
   lamb=beta*lamb(1)*i/pi(1);
 
  [name='(4)optimal wage decision']
   w_star=theta/(theta-1)*h1/h2;
 
  [name='(5)auxiliary h1']
   h1=chi*(w/w_star)^(theta*(1+eta))*n^(1+eta)+alphaw*beta*pi(1)^(theta*(1+eta))/pi^(kappaw*theta*(1+eta))*(w_star(1)/w_star)^(theta*(1+eta))*h1(1);
 
  [name='(6)auxiliary h2']
   h2=lamb*(w/w_star)^theta*n+alphaw*beta*pi(1)^(theta-1)*pi^((1-theta)*kappaw)*(w_star(1)/w_star)^theta*h2(1);
   
  [name='(7)wage index']
   w^(1-theta)=(1-alphaw)*w_star^(1-theta)+pi^(theta-1)*pi(-1)^(kappaw*(1-theta))*alphaw*w(-1)^(1-theta);
 
  [name='(8)production technology']
   y=a*(n/vp)^(1-alpha);
 
  [name='(9)the price dispersion']
   vp=(pi_star/pi)^(-epsilon/(1-alpha))*(1-alphap)+alphap*pi(-1)^(-kappap*epsilon/(1-alpha))*pi^(epsilon/(1-alpha))*vp(-1);
   
  [name='(10)the wage dispersion']
   vw=(1-alphaw)*(w_star/w)^(-theta)+alphaw*(w(-1)/w*pi(-1)^kappaw/pi)^(-theta)*vw(-1);
  
  [name='(11)the wage dispersion']
   aleph=(1-alphaw)*(w_star/w)^(-theta*(1+eta))+alphaw*(w(-1)/w*pi(-1)^kappaw/pi)^(-theta*(1+eta))*aleph(-1);
 
  [name='(12)inflatin evolution']
   pi^(1-epsilon)=(1-alphap)*pi_star^(1-epsilon)+alphap*pi(-1)^(kappap*(1-epsilon));
 
  [name='(13)optimal price decision']
   (pi_star/pi)^(1+alpha*epsilon/(1-alpha))=epsilon/(epsilon-1)*x1/x2;
 
  [name='(14)auxiliary variable x1']
   x1=lamb*mc*y+alphap*beta*pi(1)^(epsilon/(1-alpha))/pi^(kappap*epsilon/(1-alpha))*x1(1);
 
  [name='(15) auxiliary variable x2']
   x2=lamb*y+alphap*beta*pi(1)^(epsilon-1)*pi^(kappap*(1-epsilon))*x2(1);
 
  [name='(16)wage decision']
   w=(1-alpha)*mc*a*(y/a)^(-alpha/(1-alpha));
 
  [name='(17)resource constraint']
   y=c;
 
  [name='(18)technology shock']
   log(a)=rhoa*log(a(-1))+e_a;
 
  [name='(19)perference shock']
   log(nu)=rhonu*log(nu(-1))+e_nu;
 
  [name='(20)money balance demand']
   m^(-gamma)=lamb*(1-1/i);
  
  [name='(21)Fisher equation']
   r=i/pi(1);
     
//welfare measure
 
  [name='(22)utility function']
   utility=log(c-b*c(-1))-chi*n^(1+eta)*aleph/(1+eta);

  //[name='(23)welfare function']
  // welfare=utility+beta*welfare(1);
 end;
 
%-----------------------------------------------------------------------------------------%
%initial value
%-----------------------------------------------------------------------------------------%
steady_state_model;
  nu=nus;
  a=as;
  pi=pis;
  i=is;
  r=rs;
  pi_star=pi_stars;
  vp=vps;
  mc=mcs;
  w=ws;
  w_star=w_stars;
  vw=vws;
  aleph=alephs;
  n=ns;
  y=ys;
  c=cs;
  lamb=lambs;
  m=ms;
  x1=x1s;
  x2=x2s;
  h1=h1s;
  h2=h2s;
//welfare measurement 
  utility=utilitys;
  //welfare=welfares;
  end;
%-----------------------------------------------------------------------------------------%
shocks;
  %//var e_i  ;  stderr 0;//.0017;
  var e_a  ;  stderr 0.0248;
  %var e_nu ;  stderr 0.0296;
  end;
planner_objective utility;
ramsey_model(planner_discount=beta,instruments=(i));
stoch_simul(order=2,irf=40,nograph);
evaluate_planner_objective;