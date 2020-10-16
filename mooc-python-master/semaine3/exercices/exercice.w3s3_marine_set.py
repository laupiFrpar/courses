#!/usr/bin/python
extended = [
    [356222000, 49.51899, -3.685862, u'2013-10-08T21:51:00', u'SHIMANAMI QUEEN', u'PA', u'', u'CAMPANA'],
    [228183600, 49.80991, -3.13287, u'2013-10-08T21:51:00', u'PONT AVEN', u'FR', u'', u'PORTSMOUTH'],
    [228017700, 47.87564, -3.907262, u'2013-10-08T21:50:00', u'FROMVEUR II', u'FR', u'', u'BREST'],
    [566914000, 49.64962, -3.379822, u'2013-10-08T21:51:00', u'MTM YANGON', u'SG', u'', u'BARCELONA']
]

abbreviated = [
    [228017700, 47.87563, -3.907227, u'2013-10-08T22:56:00'],
    [566914000, 49.78939, -3.029018, u'2013-10-08T22:59:00'],
    [227115520, 48.09115, -4.333058, u'2013-10-08T22:55:00'],
    [228321600, 47.58766, -3.024742, u'2013-10-08T22:53:00'],
]

def diff(extended, abbreviated):
    extended_dict = {}
    for bateau in extended:
        extended_dict[bateau[0]] = bateau[4]
    extended_set = set(extended_dict)

    abbreviated_set = set()
    for bateau in abbreviated:
        abbreviated_set.add(bateau[0])

    extended_only = extended_set - abbreviated_set
    extended_only_name = []

    for bateau in extended_only:
        extended_only_name.append(extended_dict[bateau])

    both = extended_set & abbreviated_set
    both_name = []

    for bateau in both:
        both_name.append(extended_dict[bateau])

    abbreviated_only = abbreviated_set - extended_set

    return (set(sorted(extended_only_name)), set(sorted(both_name)), abbreviated_only)

result = diff(extended, abbreviated)
print result
