%% tecnology shock
% ea_AIT8
dynareOBC baseline_ea8 shockscale=15 nograph
Welfare_AIT8=strmatch('welfare',M_.endo_names,'exact');
Welfare_con_AIT8 = oo_.dr.ys(Welfare_AIT8)+0.5*oo_.dr.ghs2(oo_.dr.inv_order_var(Welfare_AIT8));

lambda_con_ea_AIT8=100*(exp((1-0.9937)*((Welfare_con_AIT8)-(oo_.dr.ys(Welfare_AIT8))))-1);
lambda_un_ea_AIT8=100*(exp((1-0.9937)*((mean(oo_.endo_simul(Welfare_AIT8,:)))-(oo_.dr.ys(Welfare_AIT8))))-1);
save('welfare_results/ea_AIT8.mat','lambda_con_ea_AIT8','lambda_un_ea_AIT8') 
clear;

% ea_AIT4
dynareOBC baseline_ea4 shockscale=15 nograph
Welfare_AIT4=strmatch('welfare',M_.endo_names,'exact');
Welfare_con_AIT4 = oo_.dr.ys(Welfare_AIT4)+0.5*oo_.dr.ghs2(oo_.dr.inv_order_var(Welfare_AIT4));

lambda_con_ea_AIT4=100*(exp((1-0.9937)*((Welfare_con_AIT4)-(oo_.dr.ys(Welfare_AIT4))))-1);
lambda_un_ea_AIT4=100*(exp((1-0.9937)*((mean(oo_.endo_simul(Welfare_AIT4,:)))-(oo_.dr.ys(Welfare_AIT4))))-1);
save('welfare_results/ea_AIT4.mat','lambda_con_ea_AIT4','lambda_un_ea_AIT4') 
clear;

% ea
dynareOBC baseline_ea shockscale=15 nograph
Welfare=strmatch('welfare',M_.endo_names,'exact');
Welfare_con = oo_.dr.ys(Welfare)+0.5*oo_.dr.ghs2(oo_.dr.inv_order_var(Welfare));

lambda_con_ea=100*(exp((1-0.9937)*((Welfare_con)-(oo_.dr.ys(Welfare))))-1);
lambda_un_ea=100*(exp((1-0.9937)*((mean(oo_.endo_simul(Welfare,:)))-(oo_.dr.ys(Welfare))))-1);
save('welfare_results/ea.mat','lambda_con_ea','lambda_un_ea') 
clear;

%% perference shock
% enu_AIT8
dynareOBC baseline_enu8 shockscale=-25 nograph
Welfare_AIT8=strmatch('welfare',M_.endo_names,'exact');
Welfare_con_AIT8 = oo_.dr.ys(Welfare_AIT8)+0.5*oo_.dr.ghs2(oo_.dr.inv_order_var(Welfare_AIT8));

lambda_con_enu_AIT8=100*(exp((1-0.9937)*((Welfare_con_AIT8)-(oo_.dr.ys(Welfare_AIT8))))-1);
lambda_un_enu_AIT8=100*(exp((1-0.9937)*((mean(oo_.endo_simul(Welfare_AIT8,:)))-(oo_.dr.ys(Welfare_AIT8))))-1);
save('welfare_results/enu_AIT8.mat','lambda_con_enu_AIT8','lambda_un_enu_AIT8') 
clear;

% enu_AIT4
dynareOBC baseline_enu4 shockscale=-25 nograph
Welfare_AIT4=strmatch('welfare',M_.endo_names,'exact');
Welfare_con_AIT4 = oo_.dr.ys(Welfare_AIT4)+0.5*oo_.dr.ghs2(oo_.dr.inv_order_var(Welfare_AIT4));

lambda_con_enu_AIT4=100*(exp((1-0.9937)*((Welfare_con_AIT4)-(oo_.dr.ys(Welfare_AIT4))))-1);
lambda_un_enu_AIT4=100*(exp((1-0.9937)*((mean(oo_.endo_simul(Welfare_AIT4,:)))-(oo_.dr.ys(Welfare_AIT4))))-1);
save('welfare_results/enu_AIT4.mat','lambda_con_enu_AIT4','lambda_un_enu_AIT4') 
clear;

%enu
dynareOBC baseline_enu shockscale=-25 nograph
Welfare_enu=strmatch('welfare',M_.endo_names,'exact');
Welfare_con_enu = oo_.dr.ys(Welfare_enu)+0.5*oo_.dr.ghs2(oo_.dr.inv_order_var(Welfare_enu));

lambda_con_enu=100*(exp((1-0.9937)*((Welfare_con_enu)-(oo_.dr.ys(Welfare_enu))))-1);
lambda_un_enu=100*(exp((1-0.9937)*((mean(oo_.endo_simul(Welfare_enu,:)))-(oo_.dr.ys(Welfare_enu))))-1);
save('welfare_results/enu.mat','lambda_con_enu','lambda_un_enu') 
clear;

%% price level targeting
%ea
dynareOBC baseline_eap  shockscale=15 nograph
Welfare_eap=strmatch('welfare',M_.endo_names,'exact');
Welfare_con_eap = oo_.dr.ys(Welfare_eap)+0.5*oo_.dr.ghs2(oo_.dr.inv_order_var(Welfare_eap));

lambda_con_eap=100*(exp((1-0.9937)*((Welfare_con_eap)-(oo_.dr.ys(Welfare_eap))))-1);
lambda_un_eap=100*(exp((1-0.9937)*((mean(oo_.endo_simul(Welfare_eap,:)))-(oo_.dr.ys(Welfare_eap))))-1);
save('welfare_results/eap.mat','lambda_con_eap','lambda_un_eap') 
clear;

%enu
dynareOBC baseline_enup  shockscale=-25 nograph
Welfare_enu=strmatch('welfare',M_.endo_names,'exact');
Welfare_con_enu = oo_.dr.ys(Welfare_enu)+0.5*oo_.dr.ghs2(oo_.dr.inv_order_var(Welfare_enu));

lambda_con_enu=100*(exp((1-0.9937)*((Welfare_con_enu)-(oo_.dr.ys(Welfare_enu))))-1);
lambda_un_enu=100*(exp((1-0.9937)*((mean(oo_.endo_simul(Welfare_enu,:)))-(oo_.dr.ys(Welfare_enu))))-1);
save('welfare_results/enup.mat','lambda_con_enu','lambda_un_enu') 
clear;

clear all;
%% load data set

load welfare_results/ea_AIT8.mat;
load welfare_results/ea_AIT4.mat;
load welfare_results/ea.mat;
load welfare_results/enu_AIT8.mat;
load welfare_results/enu_AIT4.mat;
load welfare_results/enu_zlb.mat;
load welfare_results/enu.mat;
load welfare_results/eap.mat;
load welfare_results/enup.mat;



