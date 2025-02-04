% loads and compares various risk neutral densities
clc; cla; close all; clear all;

DoTraceSubjD=0; %set to 1 if desire to trace Subjective density


z=3800:10:5100; z=z'; %support for RND

load BenchRND;
load MixRND;
load GB2RND;
load SempRND;

if DoTraceSubjD
    load subD;  % % subjective density at a 20 days time horizon estimated via a kernel fit
end

for i=1:1;
   hold on
   plot(z,BenchRND(:,i),'k','LineWidth',2);
   plot(z,MixRND(:,i),'g');
   plot(z,GB2RND(:,i),'r');
   plot(z,SempRND(:,i),'c');

 
if DoTraceSubjD; plot(z,subD,'m'); end
if DoTraceSubjD;
   legend('Bench','Mixture','GB2','Semp','SubjD')
else
   legend('Bench','Mixture','GB2','Semp')
end
   hold off
end

