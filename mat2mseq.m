function eqstr = mat2mseq(mat, numformat)


% mat -- A m-by-n matrix
% numformat -- string formatting (see sprintf)

prefix = '¡½(';
coldim = '&';
rowdim = '@';
suffix = ')';

entityform = sprintf('%s%s', numformat, coldim);
sz = size(mat);
rowformat = [repmat(entityform,1, sz(2)-1), numformat];
rows=cell(1,sz(2));
for i = 1:sz(1)
    rows{i}=sprintf(rowformat, mat(i,:));
end
% rows = strcatr(num2str(mat),rowdim);
body = strjoin(rows,rowdim);
% eqstr = [prefix, rows(1:end-1) ]
eqstr = [prefix body suffix];

end