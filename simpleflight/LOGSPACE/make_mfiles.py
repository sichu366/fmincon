import os
from simpleflight import simpleflight
from gpkit.tools.fmincon import generate_mfiles

algorithms = ['interior-point', 'SQP']
guesstypes = ['order-of-magnitude-floor', 'order-of-magnitude-round',
              'order-of-magnitude-mix',
              'almost-exact-solution', 'ones']
gradobjs = ['off']
gradconstrs = ['off']
otherinitialguess = [0.01, 1000.0, 1.0, 100.0, 0.1, 10.0, 1000000.0, 1000.0,
                     10.0, 0.001, ];

with open('run_mfiles.m', 'w') as outfile:
    outfile.write('\n')

for algorithm in algorithms:
    for guesstype in guesstypes:
        for gradobj in gradobjs:
            for gradconstr in gradconstrs:
                sf = simpleflight()
                directory = (algorithm + '/' + guesstype + '/' + gradobj + '/' +
                             gradconstr)
                if not os.path.exists(directory):
                        os.makedirs(directory)
                if guesstype == 'order-of-magnitude-mix':
                    generate_mfiles(sf, logspace=True, algorithm=algorithm,
                   guess=otherinitialguess)
                else:
                    generate_mfiles(sf, logspace=True, algorithm=algorithm,
                    guess=guesstype)
                os.rename('main.m', directory + '/main.m')
                os.rename('objfun.m', directory + '/objfun.m')
                os.rename('confun.m', directory + '/confun.m')
                os.rename('lookup.txt', directory + '/lookup.txt')
                with open('run_mfiles.m', 'a') as outfile:
                    outfile.write('disp \'' + directory + '\'\n')
                    outfile.write('cd ' + directory + '\n')
                    outfile.write('main\n')
                    outfile.write('cd ../../../../\n')
