#!/usr/bin/python
from math import factorial

def numbers(l):
    addition = 0
    multiplication = 1

    for i in l:
        addition = addition + i
        multiplication = multiplication * i


    return (addition, multiplication, min(l), max(l))

print numbers([6, 11, 15, 8, 5, 11])

def compare(f, g, entrees):
    resultat = []
    for entree in entrees:
        resultat.append(f(entree) == g(entree))

    return resultat
