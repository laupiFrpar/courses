#!/usr/bin/python
#
def comptage(in_filename, out_filename):
    inFile = open(in_filename, 'r')
    outFile = open(out_filename, 'w')
    numberLine = 0
    totalWords = 0
    totalChar = 0

    for line in inFile:
        numberLine = numberLine + 1
        totalWords = totalWords + len(line.split())
        totalChar = totalChar + len(line)
        wline = '{}:{}:{}:{}'.format(numberLine, len(line.split()), len(line), line)
        outFile.write(wline)

    outFile.write('{}:{}:{}\n'.format(numberLine, totalWords, totalChar))
    inFile.close()
    outFile.close()

comptage('/Users/launaypl/Projects/test/python/semaine4/romeo_and_juliet.txt', '/Users/launaypl/Projects/test/python/semaine4/romeo_and_juliet_compte.txt')
