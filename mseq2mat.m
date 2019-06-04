function mat = mseq2mat(eqstr)


prefix = '¡½(';
coldim = '&';
rowdim = '@';
suffix = ')';

[token] = strtok(eqstr, prefix);
[token] = strtok(token, suffix);
clear remain

rows = strsplit(token, rowdim);
% whos rows
for i = 1:length(rows)
   mat(i,:) =  cellfun(@str2num, (strsplit(rows{i}, coldim)));

end
end