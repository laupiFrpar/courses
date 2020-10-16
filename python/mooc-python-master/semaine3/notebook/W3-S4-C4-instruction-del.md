
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# L'instruction `del`

## Complément - niveau basique

Voici un récapitulatif sur l'instruction `del` selon le contexte dans lequel elle est utilisée.

### Sur une variable

On peut annuler la définition d'une variable. Dans la suite on capture une exception `NameError` qui est produite lorsqu'une variable est utilisée alors qu'elle n'a aucune valeur. La capture de l'exception permet d'afficher un message plutôt qu'une exception. Nous discuterons du fonctionnement des exceptions en semaine 6.


```
# la variable a n'est pas définie
try:
    print 'a=', a
except NameError as e:
    print "a n'est pas définie"
```

    a= a n'est pas définie



```
# on la définit
a = 10

try:
    print 'a=', a
except NameError as e:
    print "a n'est pas définie"
```

    a= 10



```
# on peut effacer la variable
del a

try:
    print 'a=', a
except NameError as e:
    print "a n'est pas définie"
```

    a= a n'est pas définie


### Sur une liste

On peut enlever d'une liste les éléments qui correspondent à une *slice*


```
# on se donne une liste
l = range(12)
print l
```

    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]



```
# on considère une slice dans cette liste
print 'slice=', l[2:10:3]

# voyons ce que ça donne si on efface cette slice
del l[2:10:3]
print "après del", l
```

    slice= [2, 5, 8]
    après del [0, 1, 3, 4, 6, 7, 9, 10, 11]


### Sur un dictionnaire

Avec `del` on peut enlever une clé, et donc la valeur correspondante, d'un dictionnaire


```
# partons d'un dictionaire simple
d = dict(foo='bar', spam='eggs', a='b')
print d
```

    {'a': 'b', 'foo': 'bar', 'spam': 'eggs'}



```
# on peut enlever une clé avec del
del d['a']
print d
```

    {'foo': 'bar', 'spam': 'eggs'}


### On peut passer à `del` une liste


```
# Voyons où en sont nos données
print 'l', l
print'd', d
```

    l [0, 1, 3, 4, 6, 7, 9, 10, 11]
    d {'foo': 'bar', 'spam': 'eggs'}



```
# on peut invoquer 'del' avec une liste - comme 'print'
del l[3:], d['spam']

print 'l', l
print'd', d
```

    l [0, 1, 3]
    d {'foo': 'bar'}


### Pour en savoir plus

La page sur [l'instruction `del`](https://docs.python.org/2/reference/simple_stmts.html#the-del-statement) dans la documentation python
