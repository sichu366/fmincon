
algorithms = ['interior-point', 'SQP']
guesstypes = ['ones', 'almost-exact-solution', 'order-of-magnitude-floor',
              'order-of-magnitude-round', 'order-of-magnitude-mix']
guesstypesdict = dict(zip(guesstypes, ['A','B','C','D','E']))
gradobjs = ['off']
gradconstrs = ['off']

#with open('run_mfiles.m', 'a') as outfile:
#    outfile.write('\n')
string = ''

for algorithm in algorithms:
    for guesstype in guesstypes:
        for gradobj in gradobjs:
            for gradconstr in gradconstrs:
                directory = (algorithm + '/' + guesstype + '/' + gradobj + '/' +
                             gradconstr + '/')
                string += algorithm.replace('interior-point', 'IP') + '&'
                string += guesstypesdict[guesstype] + '&\n'
                string += '\\input{\\LGdir/' + directory + 'cost.txt} &\n'
                string += '\\input{\\LGdir/' + directory + 'elapsed.txt} &\n'
                string += '\\input{\\LGdir/' + directory + 'iterations.txt} &\n'
                string += '\\input{\\LGdir/' + directory.replace('off', 'on')
                string += 'cost.txt} &\n'
                string += '\\input{\\LGdir/' + directory.replace('off', 'on')
                string += 'elapsed.txt} &\n'
                string += '\\input{\\LGdir/' + directory.replace('off', 'on')
                string += 'iterations.txt} &\n'
                string += '\\input{\\LGdirlog/' + directory + 'cost.txt} &\n'
                string += '\\input{\\LGdirlog/' + directory + 'elapsed.txt} &\n'
                string += '\\input{\\LGdirlog/' + directory + 'iterations.txt}'
                string += '\\\\ \n\n'

with open('table_meat.tex', 'w') as f:
    f.write(string)
