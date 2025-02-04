function [RRA, RA, zmi]=get_RA(z,od,rd)
% constructs the coefficient of risk aversion and of relative risk aversion
logd = log(od./rd);                 % ratio of objective to risk-neutral density
RA   = diff(logd)/(z(2)-z(1));      % derivative equals risk aversion
zmi= ( z(1:end-1) + z(2:end) ) / 2; % this is midpoint of each z increment
RRA=zmi.*RA;    