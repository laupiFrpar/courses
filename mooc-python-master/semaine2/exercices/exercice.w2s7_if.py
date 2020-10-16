#!/usr/bin/python

def test(values, expected, functionName):
    for value, expectedValue in zip(values, expected):
        if 'spam' == functionName:
            result = spam(value)
            print "spam(", value, ")"


        if 'divisible' == functionName:
            result = divisible(value[0], value[1])
            print "divisible(", value[0], ",", value[1], ")"

        resultTest = result == expectedValue
        print "  Resultat attendu:", expectedValue
        print "  Resultat obtenu:", result
        print "  Test:", resultTest

def divisible(a, b):
    return a % b == 0 or b % a == 0

def spam(liste):
    if liste:
        if len(liste) % 2 == 0:
            liste[0], liste[1] = liste[1], liste[0]
        else:
            liste.pop()

    return liste

values = ([10, 30], [10, -30], [-10, 30], [-10, 30], [8, 12], [12, -8], [-12, 8], [-12, -8], [10, 1], [30, 10], [30, -10], [-30, 10], [-30, 10])
expected = (True, True, True, True, False, False, False, False, True, True, True, True, True)

test(values, expected, 'divisible')

values = ([], [1], ['spam', 2], ['spam', 2, 'bacon'], [1, 2, 3, 4], [1, 2, 3, 4, 5])
expected = ([], [], [2, 'spam'], ['spam', 2], [2, 1, 3, 4], [1, 2, 3, 4])
test(values, expected, 'spam')
