#!/usr/bin/python

def pgcd(a, b):
    while a > 0 and b > 0:
        reste = a % b
        if reste == 0:
            break
        a = b
        b = reste

    return b


print pgcd(36, 36)
print pgcd(180, 108)
print pgcd(108, 72)
print pgcd(540, 216)
