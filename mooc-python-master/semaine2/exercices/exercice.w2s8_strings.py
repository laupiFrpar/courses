#!/usr/bin/python
def test(values):
    for value, expected, functionName in values:
        if 'libelle' == functionName:
            print functionName, "('", value, "')"
            result = libelle(value)

        if 'carre' == functionName:
            print functionName, "('", value, "')"
            result = carre(value)

        resultTest = result == expected
        print "  Resultat attendu:", expected
        print "  Resultat obtenu:", result
        print "  Test:", resultTest

def libelle(ligne):
    liste = ligne.strip().strip(',').split(',')

    if len(liste) < 3:
        return None

    classement = liste[2].strip()

    if classement == '1':
        classement = classement + 'er'
    else:
        if classement == '2':
            classement = classement + 'nd'
        else:
            classement = classement + '-eme'

    return "{nom}.{prenom} ({classement})".format(nom=liste[1].strip(), prenom=liste[0].strip(), classement=classement)

def carre(ligne):
    liste = ligne.strip().strip(';').split(';')
    result = []

    for value in liste:
        if value.strip():
            result.append(str(int(value.strip())**2))

    return ':'.join(result)

values = (
    'Joseph, Dupont, 4',
    'Jean',
    'Jules , Durand, 1',
    ' Ted, Mosby, 2,',
    ' Jacques , Martin, 3 \t',
    'Sheldon, Cooper ,5, ',
    '\t John, Doe\t, ',
    '1;2;3',
    ' 2 ; 5;6;',
    '; 12 ; -23;\t60; 1\t',
    '; -12 ; ; -23; 1 ;;\t'
)

expected = (
    'Dupont.Joseph (4-eme)',
    None,
    'Durand.Jules (1er)',
    'Mosby.Ted (2nd)',
    'Martin.Jacques (3-eme)',
    'Cooper.Sheldon (5-eme)',
    None,
    '1:4:9',
    '4:25:36',
    '144:529:3600:1',
    '144:529:1',
)

functionName = (
    'libelle',
    'libelle',
    'libelle',
    'libelle',
    'libelle',
    'libelle',
    'libelle',
    'carre',
    'carre',
    'carre',
    'carre',
)

test(zip(values,expected,functionName))
