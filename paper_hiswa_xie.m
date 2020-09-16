

load('xie_matrix');
load('paper_hiswa_plot_xie2')


figure(2)
plot(y(:,1),z(:,1))
hold on
plot(y(:,2),z(:,2))
hold on
plot(y(:,3),z(:,3))
hold on
plot(y(:,1),A(:,2))
hold on
plot(y(:,1),A(:,3))
hold on
plot(y(:,1),A(:,4))