%% technology shock

%ZLB
dynareOBC baseline_ea shockscale=10 nograph

variablenames = char('i','pi','y','n','r','w');
shockname = char('e_a');
 for i=1:size(variablenames)
        IRFoffset_zlb.(strtrim(variablenames(i,:))).(strtrim(shockname)) = dynareOBC_.IRFOffsets.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
        irfs_zlb.(strtrim(variablenames(i,:))).(strtrim(shockname)) = oo_.irfs.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
 end
save('results/baseline_zlb_e_a.mat','irfs_zlb','IRFoffset_zlb') 
clear;

dynareOBC baseline_ea bypass shockscale=10 nograph

variablenames = char('i','pi','y','n','r','w');
shockname = char('e_a');
 for i=1:size(variablenames)
        IRFoffset.(strtrim(variablenames(i,:))).(strtrim(shockname)) = dynareOBC_.IRFOffsets.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
        irfs.(strtrim(variablenames(i,:))).(strtrim(shockname)) = oo_.irfs.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
 end
save('results/baseline_e_a.mat','irfs','IRFoffset') 
clear;

load results/baseline_zlb_e_a.mat
load results/baseline_e_a.mat

figure('name','技术冲击');

subplot(2,3,1);
plot(irfs_zlb.i.e_a,'k-','LineWidth',2); hold on;
plot(irfs.i.e_a,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
ylabel('对稳态的偏离','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='名义利率';
title(titlename,'FontSize',10);

subplot(2,3,2);
plot(irfs_zlb.pi.e_a,'k-','LineWidth',2); hold on;
plot(irfs.pi.e_a,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='通货膨胀率';
title(titlename,'FontSize',10);


subplot(2,3,3);
plot(irfs_zlb.r.e_a,'k-','LineWidth',2); hold on;
plot(irfs.r.e_a,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='实际利率';
title(titlename,'FontSize',10);

subplot(2,3,4);
plot(irfs_zlb.y.e_a,'k-','LineWidth',2); hold on;
plot(irfs.y.e_a,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
ylabel('对稳态的偏离','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='产出';
title(titlename,'FontSize',10);

subplot(2,3,5);
plot(irfs_zlb.n.e_a,'k-','LineWidth',2); hold on;
plot(irfs.n.e_a,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='劳动';
title(titlename,'FontSize',10);

subplot(2,3,6);
plot(irfs_zlb.w.e_a,'k-','LineWidth',2); hold on;
plot(irfs.w.e_a,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='实际工资';
title(titlename,'FontSize',10);

legend('ZLB','Baseline')
axis tight;


%% preference shock

%ZLB
dynareOBC baseline_enu shockscale=-20 nograph

variablenames = char('i','pi','y','n','r','w');
shockname = char('e_nu');
 for i=1:size(variablenames)
        IRFoffset_zlb.(strtrim(variablenames(i,:))).(strtrim(shockname)) = dynareOBC_.IRFOffsets.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
        irfs_zlb.(strtrim(variablenames(i,:))).(strtrim(shockname)) = oo_.irfs.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
 end
save('results/baseline_zlb_e_nu.mat','irfs_zlb','IRFoffset_zlb') 
clear;

% Without ZLB
dynareOBC baseline_enu bypass shockscale=-20 nograph

variablenames = char('i','pi','y','n','r','w');
shockname = char('e_nu');
 for i=1:size(variablenames)
        IRFoffset.(strtrim(variablenames(i,:))).(strtrim(shockname)) = dynareOBC_.IRFOffsets.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
        irfs.(strtrim(variablenames(i,:))).(strtrim(shockname)) = oo_.irfs.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
 end
save('results/baseline_e_nu.mat','irfs','IRFoffset') 
clear;

load results/baseline_zlb_e_nu.mat
load results/baseline_e_nu.mat

figure('name','偏好冲击');

subplot(2,3,1);
plot(irfs_zlb.i.e_nu,'k-','LineWidth',2); hold on;
plot(irfs.i.e_nu,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
ylabel('对稳态的偏离','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='名义利率';
title(titlename,'FontSize',10);

subplot(2,3,2);
plot(irfs_zlb.pi.e_nu,'k-','LineWidth',2); hold on;
plot(irfs.pi.e_nu,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='通货膨胀率';
title(titlename,'FontSize',10);


subplot(2,3,3);
plot(irfs_zlb.r.e_nu,'k-','LineWidth',2); hold on;
plot(irfs.r.e_nu,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='实际利率';
title(titlename,'FontSize',10);

subplot(2,3,4);
plot(irfs_zlb.y.e_nu,'k-','LineWidth',2); hold on;
plot(irfs.y.e_nu,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
ylabel('对稳态的偏离','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='产出';
title(titlename,'FontSize',10);

subplot(2,3,5);
plot(irfs_zlb.n.e_nu,'k-','LineWidth',2); hold on;
plot(irfs.n.e_nu,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='劳动';
title(titlename,'FontSize',10);

subplot(2,3,6);
plot(irfs_zlb.w.e_nu,'k-','LineWidth',2); hold on;
plot(irfs.w.e_nu,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='实际工资';
title(titlename,'FontSize',10);

legend('ZLB','Baseline')
axis tight;
%% monetary shock

%ZLB
dynareOBC baseline_ei shockscale=-10 nograph

variablenames = char('i','pi','y','n','r','w');
shockname = char('e_i');
 for i=1:size(variablenames)
        IRFoffset_zlb.(strtrim(variablenames(i,:))).(strtrim(shockname)) = dynareOBC_.IRFOffsets.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
        irfs_zlb.(strtrim(variablenames(i,:))).(strtrim(shockname)) = oo_.irfs.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
 end
save('results/baseline_zlb_e_i.mat','irfs_zlb','IRFoffset_zlb') 

clear;

% Without ZLB
dynareOBC baseline_ei bypass shockscale=-10 nograph

variablenames = char('i','pi','y','n','r','w');
shockname = char('e_i');
 for i=1:size(variablenames)
        IRFoffset.(strtrim(variablenames(i,:))).(strtrim(shockname)) = dynareOBC_.IRFOffsets.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
        irfs.(strtrim(variablenames(i,:))).(strtrim(shockname)) = oo_.irfs.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
 end
save('results/baseline_e_i.mat','irfs','IRFoffset') 
clear;
load results/baseline_zlb_e_i.mat
load results/baseline_e_i.mat

figure('name','利率冲击');

subplot(2,3,1);
plot(irfs_zlb.i.e_i,'k-','LineWidth',2); hold on;
plot(irfs.i.e_i,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
ylabel('对稳态的偏离','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='名义利率';
title(titlename,'FontSize',10);

subplot(2,3,2);
plot(irfs_zlb.pi.e_i,'k-','LineWidth',2); hold on;
plot(irfs.pi.e_i,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='通货膨胀率';
title(titlename,'FontSize',10);


subplot(2,3,3);
plot(irfs_zlb.r.e_i,'k-','LineWidth',2); hold on;
plot(irfs.r.e_i,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='实际利率';
title(titlename,'FontSize',10);

subplot(2,3,4);
plot(irfs_zlb.y.e_i,'k-','LineWidth',2); hold on;
plot(irfs.y.e_i,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
ylabel('对稳态的偏离','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='产出';
title(titlename,'FontSize',10);

subplot(2,3,5);
plot(irfs_zlb.n.e_i,'k-','LineWidth',2); hold on;
plot(irfs.n.e_i,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='劳动';
title(titlename,'FontSize',10);

subplot(2,3,6);
plot(irfs_zlb.w.e_i,'k-','LineWidth',2); hold on;
plot(irfs.w.e_i,'r--','LineWidth',2);
xlabel('季度','FontSize',9);grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='实际工资';
title(titlename,'FontSize',10);

legend('ZLB','Baseline')
axis tight;

%% Cleanup
dynare_cleanup(  );
