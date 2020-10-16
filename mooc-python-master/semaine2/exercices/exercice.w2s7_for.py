#!/usr/bin/python
from fractions import Fraction

def test(values):
    for value, expected, functionName in values:
        if 'liste_P' == functionName:
            print functionName, "(", value, ")"
            result = liste_P(value)

        if 'multi_tri' == functionName:
            print functionName, "(", value, ")"
            result = multi_tri(value)

        if 'multi_tri_reverse' == functionName:
            print functionName, "(", value[0], ',', value[1], ")"
            result = multi_tri_reverse(value[0], value[1])

        if 'produit_scalaire' == functionName:
            print functionName, "(", value[0], ',', value[1], ")"
            result = produit_scalaire(value[0], value[1])

        resultTest = result == expected
        print "  Resultat attendu:", expected
        print "  Resultat obtenu:", result
        print "  Test:", resultTest

def P(x):
    return 2 * x**2 - 3 * x - 2

def liste_P(liste_x):
    liste_result = []

    for x in liste_x:
        liste_result.append(P(x))

    return liste_result

def multi_tri(listes):
    for liste in listes:
        liste.sort()

    return listes

def multi_tri_reverse(listes, reverses):
    for liste, sort_dir in zip(listes, reverses):
        liste.sort(reverse=sort_dir)

    return listes

def produit_scalaire(X, Y):
    result = 0
    facteurs = zip(X,Y)

    if facteurs:
        for facteur in facteurs:
            result += facteur[0] * facteur[1]

    return result

values = ([
    [0, 1, 2, 3, 4],
    [ -7, -5, -3, -1, 1, 3, 5, 7],
    [-100, 0, 100], [[40, 12, 25],
    ['spam', 'egg', 'bacon']],
    [[32, 45], [200, 12], [-25, 37]],
    [[], [0, 1, 2, 3, 4, 5, 2.5], [4, 2, 3, 1]],
    [[[1, 2], [3, 4]], [True, False]],
    [[[1, 2], [3, 4]], (True, True)],
    [[[1, 3, 2], [3, 4]], [False, True]],
    [[[1, 2], [3, 5, 4]], [False, False]],
    [[ [1, 3], [9, 5], [4, 2]], (True, False, True)],
    [[[], ['a', 'z', 'c']], [False, True]],
    [(1, 2),(3, 4)],
    [[3, 4, 5, 6, 7, 8], [5, 6, 7, 8, 9, 10]],
    [[-2, 10], [20, 4]],
    [[Fraction(2, 15), Fraction(3, 4)], [Fraction(-7, 19), Fraction(4, 13)]],
    [[], []],
])
expected = ([
    [-2, -3, 0, 7, 18],
    [ 117, 63, 25, 3, -3, 7, 33, 75],
    [20298, -2, 19698],
    [[12, 25, 40],
    [ 'bacon', 'egg', 'spam']],
    [[32, 45], [12, 200], [-25, 37]],
    [[], [0, 1, 2, 2.5, 3, 4, 5], [1, 2, 3, 4]],
    [[2, 1], [3, 4]],
    [[2, 1], [4, 3]],
    [[1, 2, 3], [4, 3]],
    [[1, 2], [3, 4, 5]],
    [[3, 1], [5, 9], [4, 2]],
    [[], ['z', 'c', 'a']],
    11,
    265,
    0,
    Fraction(673, 3705),
    0
])
functionName = ([
    'liste_P',
    'liste_P',
    'liste_P',
    'multi_tri',
    'multi_tri',
    'multi_tri',
    'multi_tri_reverse',
    'multi_tri_reverse',
    'multi_tri_reverse',
    'multi_tri_reverse',
    'multi_tri_reverse',
    'multi_tri_reverse',
    'produit_scalaire',
    'produit_scalaire',
    'produit_scalaire',
    'produit_scalaire',
    'produit_scalaire',
])

test(zip(values, expected, functionName))
