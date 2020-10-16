#!/usr/bin/python
def test(values):
    for value, expected, functionName in values:
        print functionName, value

        if 'dispatch1' == functionName:

            result = dispatch1(value[0], value[1])

        if 'dispatch2' == functionName:
            result = dispatch2(value[0], value[1], value[2], value[3])

        resultTest = result == expected
        print "  Resultat attendu:", expected
        print "  Resultat obtenu:", result
        print "  Test:", resultTest

def dispatch1(a, b):
    if a % 2 == 0:
        if b % 2 == 0:
            return a ** 2 + b ** 2
        else:
            return a * (b - 1)
    else:
        if b % 2 == 0:
            return (a - 1) * b
        else:
            return a ** 2 - b ** 2

def dispatch2(a, b, A, B):
    if a in A:
        if b in B:
            return a ** 2 + b ** 2
        else:
            return a * (b - 1)
    else:
        if b in B:
            return (a - 1) * b
        else:
            return a ** 2 + b ** 2

values = (
    (3, 7),
    (3, 8),
    (3, 9),
    (4, 7),
    (4, 8),
    (4, 9),
    (5, 7),
    (5, 8),
    (5, 9),
    (3, 7, (2, 4, 6), {8, 10, 6}),
    (3, 8, (2, 4, 6), {8, 10, 6}),
    (3, 9, (2, 4, 6), {8, 10, 6}),
    (4, 7, [2, 4, 6], {8, 10, 6}),
    (4, 8, [2, 4, 6], {8, 10, 6}),
    (4, 9, [2, 4, 6], {8, 10, 6}),
)

expected = (
    -40,
    16,
    -72,
    24,
    80,
    32,
    -24,
    32,
    -56,
    58,
    16,
    90,
    24,
    80,
    32,
)

functionName = (
    'dispatch1',
    'dispatch1',
    'dispatch1',
    'dispatch1',
    'dispatch1',
    'dispatch1',
    'dispatch1',
    'dispatch1',
    'dispatch1',
    'dispatch2',
    'dispatch2',
    'dispatch2',
    'dispatch2',
    'dispatch2',
    'dispatch2',
)

test(zip(values, expected, functionName))
