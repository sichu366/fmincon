x0 = [5.70378247466, 7.60090245954, 2.07944154168, -3.91202300543, -0.69314718056, 2.99573227355, 15.2018049191, 8.85366542804, 3.68887945411, -5.52146091786, ];
options = optimset('fmincon');
options.Algorithm = 'SQP';
options.MaxFunEvals = Inf;
options.MaxIter = Inf;
options.GradObj = 'off';
options.GradConstr = 'off';
tic;
[x,fval, exitflag, output] = ...
fmincon(@objfun,x0,[],[],[],[],[],[],@confun,options);
elapsed = toc;
fid = fopen('elapsed.txt', 'w');
fprintf(fid, '%.1f', elapsed);
fclose(fid);
fid = fopen('iterations.txt', 'w');
fprintf(fid, '%d', output.iterations);
fclose(fid);
fid = fopen('cost.txt', 'w');
fprintf(fid, '%.5g', exp(fval));
if exitflag == -2
	fprintf(fid, '(i)');
end
fclose(fid);