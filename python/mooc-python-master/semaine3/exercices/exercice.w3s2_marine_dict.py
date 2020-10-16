#!/usr/bin/python
from pprint import pprint

def print_index(result_index):
    for key, value in result_index.iteritems():
        print "==== cle"
        pprint(key)
        print "==== valeur"
        pprint(value)

def index(extended):
    result = {}

    for bateau in extended:
        result[bateau[0]] = bateau

    return result

def merge(extended, abbreviated):
    extended = index(extended)
    abbreviated = index(abbreviated)
    result = {}

    for key,value in extended.iteritems():
        result[key] = [value[4], value[5],(value[1], value[2], value[3]),(abbreviated[key][1], abbreviated[key][2], abbreviated[key][3])]

    return result

extended = [
    [992271012, 47.64744, -3.509282, u'2013-10-08T21:50:00', u'PENMEN', u'FR', u'', u''],
    [227254910, 49.94479, -5.137455, u'2013-10-08T21:51:00', u'LAURELINE', u'FR', u'', u'CHERBOURG'],
    [227844000, 47.23206, -2.913887, u'2013-10-08T21:51:00', u'NEPTUNE III', u'FR', u'', u''],
    [255801560, 49.3815, -4.412167, u'2013-10-08T21:51:00', u'AUTOPRIDE', u'PT', u'', u'ZEEBRUGGE']
]
abbreviated = [
    [227254910, 49.91799, -5.315172, u'2013-10-08T22:59:00'],
    [255801560, 49.25383, -4.784833, u'2013-10-08T22:59:00'],
    [992271012, 47.64748, -3.509307, u'2013-10-08T22:56:00'],
    [227844000, 47.13057, -3.126982, u'2013-10-08T22:58:00']
]

# print_index(index(abbreviated))
# print_index(index(extended))

result_merge = merge(extended, abbreviated)

for key_value in result_merge.iteritems():
    pprint(key_value)
