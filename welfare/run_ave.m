%% technology shock

%AIT for 8 periods
dynareOBC baseline_ea8 shockscale=15 nograph

variablenames = char('i','pi','y','n','r','w');
shockname = char('e_a');
 for i=1:size(variablenames)
        IRFoffset_ave8.(strtrim(variablenames(i,:))).(strtrim(shockname)) = dynareOBC_.IRFOffsets.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
        irfs_ave8.(strtrim(variablenames(i,:))).(strtrim(shockname)) = oo_.irfs.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
 end
save('results/baseline_e_a_ave_8.mat','irfs_ave8','IRFoffset_ave8') 
clear;

%AIT for 4 periods 
dynareOBC baseline_ea4 shockscale=15 nograph

variablenames = char('i','pi','y','n','r','w');
shockname = char('e_a');
 for i=1:size(variablenames)
        IRFoffset_ave4.(strtrim(variablenames(i,:))).(strtrim(shockname)) = dynareOBC_.IRFOffsets.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
        irfs_ave4.(strtrim(variablenames(i,:))).(strtrim(shockname)) = oo_.irfs.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
 end
save('results/baseline_e_a_ave_4.mat','irfs_ave4','IRFoffset_ave4') 
clear;

%Taylor rule
dynareOBC baseline_ea shockscale=15 nograph

variablenames = char('i','pi','y','n','r','w');
shockname = char('e_a');
 for i=1:size(variablenames)
        IRFoffset.(strtrim(variablenames(i,:))).(strtrim(shockname)) = dynareOBC_.IRFOffsets.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
        irfs.(strtrim(variablenames(i,:))).(strtrim(shockname)) = oo_.irfs.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
 end
save('results/baseline_e_a.mat','irfs','IRFoffset') 
clear;

load results/baseline_e_a_ave_8.mat
load results/baseline_e_a_ave_4.mat
load results/baseline_e_a.mat

figure('name','技术冲击');

subplot(2,3,1);
plot(irfs_ave8.i.e_a,'k-','LineWidth',2); hold on;
plot(irfs_ave4.i.e_a, 'Color', [0.3,0.8,0.9], 'Linestyle','-.','LineWidth',2);
plot(irfs.i.e_a,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
ylabel('对稳态的偏离','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='名义利率';
title(titlename,'FontSize',10);

subplot(2,3,2);
plot(irfs_ave8.pi.e_a,'k-','LineWidth',2); hold on;
plot(irfs_ave4.pi.e_a, 'Color', [0.3,0.8,0.9], 'Linestyle','-.','LineWidth',2);
plot(irfs.pi.e_a,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='通货膨胀率';
title(titlename,'FontSize',10);


subplot(2,3,3);
plot(irfs_ave8.r.e_a,'k-','LineWidth',2); hold on;
plot(irfs_ave4.r.e_a, 'Color', [0.3,0.8,0.9], 'Linestyle','-.','LineWidth',2);
plot(irfs.r.e_a,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='实际利率';
title(titlename,'FontSize',10);

subplot(2,3,4);
plot(irfs_ave8.y.e_a,'k-','LineWidth',2); hold on;
plot(irfs_ave4.y.e_a, 'Color', [0.3,0.8,0.9], 'Linestyle','-.','LineWidth',2);
plot(irfs.y.e_a,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
ylabel('对稳态的偏离','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='产出';
title(titlename,'FontSize',10);

subplot(2,3,5);
plot(irfs_ave8.n.e_a,'k-','LineWidth',2); hold on;
plot(irfs_ave4.n.e_a, 'Color', [0.3,0.8,0.9], 'Linestyle','-.','LineWidth',2);
plot(irfs.n.e_a,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='劳动';
title(titlename,'FontSize',10);

subplot(2,3,6);
plot(irfs_ave8.w.e_a,'k-','LineWidth',2); hold on;
plot(irfs_ave4.w.e_a, 'Color', [0.3,0.8,0.9], 'Linestyle','-.','LineWidth',2);
plot(irfs.w.e_a,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='工资';
title(titlename,'FontSize',10);

legend('AIT-8','AIT-4','Baseline')
axis tight;


%% preference shock

%AIT 8 periods
dynareOBC baseline_enu8 shockscale=-25 nograph

variablenames = char('i','pi','y','n','r','w');
shockname = char('e_nu');
 for i=1:size(variablenames)
        IRFoffset_ave8.(strtrim(variablenames(i,:))).(strtrim(shockname)) = dynareOBC_.IRFOffsets.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
        irfs_ave8.(strtrim(variablenames(i,:))).(strtrim(shockname)) = oo_.irfs.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
 end
save('results/baseline_e_nu_ave_8.mat','irfs_ave8','IRFoffset_ave8') 
clear;

%AIT 4 periods
dynareOBC baseline_enu4 shockscale=-25 nograph

variablenames = char('i','pi','y','n','r','w');
shockname = char('e_nu');
 for i=1:size(variablenames)
        IRFoffset_ave4.(strtrim(variablenames(i,:))).(strtrim(shockname)) = dynareOBC_.IRFOffsets.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
        irfs_ave4.(strtrim(variablenames(i,:))).(strtrim(shockname)) = oo_.irfs.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
 end
save('results/baseline_e_nu_ave_4.mat','irfs_ave4','IRFoffset_ave4') 
clear;

%Taylor rule
dynareOBC baseline_enu shockscale=-25 nograph

variablenames = char('i','pi','y','n','r','w');
shockname = char('e_nu');
 for i=1:size(variablenames)
        IRFoffset.(strtrim(variablenames(i,:))).(strtrim(shockname)) = dynareOBC_.IRFOffsets.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
        irfs.(strtrim(variablenames(i,:))).(strtrim(shockname)) = oo_.irfs.([strtrim(variablenames(i,:)),'_',strtrim(shockname)]);
 end
save('results/baseline_e_nu.mat','irfs','IRFoffset') 
clear;

load results/baseline_e_nu_ave_8.mat
load results/baseline_e_nu_ave_4.mat
load results/baseline_e_nu.mat

figure('name','偏好冲击');

subplot(2,3,1);
plot(irfs_ave8.i.e_nu,'k-','LineWidth',2); hold on;
plot(irfs_ave4.i.e_nu, 'Color', [0.3,0.8,0.9], 'Linestyle','-.','LineWidth',2);
plot(irfs.i.e_nu,'r--','LineWidth',2);

xlabel('季度','FontSize',9);
ylabel('对稳态的偏离','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='名义利率';
title(titlename,'FontSize',10);

subplot(2,3,2);
plot(irfs_ave8.pi.e_nu,'k-','LineWidth',2); hold on;
plot(irfs_ave4.pi.e_nu, 'Color', [0.3,0.8,0.9], 'Linestyle','-.','LineWidth',2);
plot(irfs.pi.e_nu,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='通货膨胀率';
title(titlename,'FontSize',10);


subplot(2,3,3);
plot(irfs_ave8.r.e_nu,'k-','LineWidth',2); hold on;
plot(irfs_ave4.r.e_nu, 'Color', [0.3,0.8,0.9], 'Linestyle','-.','LineWidth',2);
plot(irfs.r.e_nu,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='实际利率';
title(titlename,'FontSize',10);

subplot(2,3,4);
plot(irfs_ave8.y.e_nu,'k-','LineWidth',2); hold on;
plot(irfs_ave4.y.e_nu, 'Color', [0.3,0.8,0.9], 'Linestyle','-.','LineWidth',2);
plot(irfs.y.e_nu,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
ylabel('对稳态的偏离','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='产出';
title(titlename,'FontSize',10);

subplot(2,3,5);
plot(irfs_ave8.n.e_nu,'k-','LineWidth',2); hold on;
plot(irfs_ave4.n.e_nu, 'Color', [0.3,0.8,0.9], 'Linestyle','-.','LineWidth',2);
plot(irfs.n.e_nu,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='劳动';
title(titlename,'FontSize',10);

subplot(2,3,6);
plot(irfs_ave8.w.e_nu,'k-','LineWidth',2); hold on;
plot(irfs_ave4.w.e_nu, 'Color', [0.3,0.8,0.9], 'Linestyle','-.','LineWidth',2);
plot(irfs.w.e_nu,'r--','LineWidth',2);
xlabel('季度','FontSize',9);
grid on;
set(gca, 'GridLineStyle', '--'); 
titlename='工资';
title(titlename,'FontSize',10);

legend('AIT-8','AIT-4','Baseline')
axis tight;
%% Cleanup
dynare_cleanup(  );
