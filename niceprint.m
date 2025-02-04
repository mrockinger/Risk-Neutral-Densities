function niceprint(x,f0,filename)
% if there is just one argument uses predefined format
% with two arguments uses in addition format
% if there are three arguments, writes into a specific output file
if nargin < 2, f0='%20.6f'; fOut=1; end
if nargin < 3, 
    fOut=1; 
end
if nargin == 3,     
    if isempty(f0), f0='%20.6f'; end
    fOut=fopen(filename,'w'); 
end

[r,c]=size(x);
fmt = repmat(f0,1,c);
fmt = strcat(fmt,' \n');
fprintf(fOut,fmt,x');

if nargin == 3, fclose(fOut); end



