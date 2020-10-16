#!/usr/bin/python
import string
chaine = string.ascii_lowercase
print chaine

print chaine[3:6] == "def"
print chaine[-5:-2] == "vwx"
print chaine[22:] == "wxyz"
print chaine[3::2] == "dfhjlnprtvxz"
print chaine[-3::-3] == "xurolifc"

connue = "0bf1"
composite = "0bf1a9730e150bf1"

inconnue = composite[len(connue):(len(composite) - len(connue))]
print inconnue
