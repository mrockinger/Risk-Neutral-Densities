clc, close all, clear all
% program RRA()
% loads and compares various risk neutral densities
% computes the relative risk aversion

dz =10;
z=3800:dz:5100; z=z'; %support for RND
load BenchRND BenchRND;
load MixRND MixRND;

load GB2RND; 
load subD; % subjective density at a 20 days time horizon estimated via a kernel fit

for i=1:1
   hold on
   p = subD; % objective density
   
%   q=BenchRND(:,i); % subjective density 
%   [RRA0, RA1, zmi]=get_RA(z,p,q);
   
MixRND(:,i)

   q = MixRND(:,i); % subjective density 
   [RRA1, RA1, zmi]=get_RA(z,p,q);
   
   q = GB2RND(:,i);
   [RRA2, RA1, zmi]=get_RA(z,p,q);
   
   plot(zmi,RRA1,zmi,RRA2);
   legend('Mixture RND','GB2RND')
      
   hold off
end

