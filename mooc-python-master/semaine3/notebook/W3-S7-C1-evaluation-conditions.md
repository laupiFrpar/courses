
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Évaluation des tests

## Complément - niveau basique

On a vu dans la vidéo que l'instruction conditionnelle `if` permet d'implémenter simplement des branchements à plusieurs choix, comme dans cet exemple:


```
s = 'berlin'
if 'a' in s:
    print 'avec a'
elif 'b' in s:
    print 'avec b'
elif 'c' in s:
    print 'avec c'
else:
    print 'sans a ni b ni c'
```

    avec b


Comme on s'en doute, les expressions conditionnelles **sont évaluées jusqu'à obtenir un résultat vrai** - ou considéré comme vrai -, et le bloc correspondant est alors exécuté. Le point important ici est qu'**une fois qu'on a obtenu un résultat vrai**, on sort de l'expression conditionnelle **sans évaluer les autres conditions**.

Dans notre exemple, on aura évalué à la sortie `'a' in s`, et aussi `'b' in s`, mais pas `'c' in s`

****

Dans notre exemple, les conditions elles-mêmes ne sont pas *actives*. On veut dire par là: la valeur de `s` reste *identique*, que l'on *évalue ou non* les différentes conditions.

Mais nous allons voir ci-dessous qu'il est relativement facile d'écrire des conditions qui **modifient** les objets mutables sur lesquelles elles opèrent. On dit dans ce cas qu'elles font un **effet de bord**; et c'est pourquoi il est important de bien assimiler la règle des évaluations des expressions dans un `if`.

## Complément - niveau intermédiaire

### Rappel sur la méthode `pop`

Pour illustrer la notions d'**effet de bord**, nous revenons sur la méthode de liste `pop()` qui, on le rappelle, renvoie un élément de liste **après l'avoir effacé** de la liste.


```
# on se donne une liste
liste = ['premier', 'deuxieme', 'troisieme']
print "liste", liste
```

    liste ['premier', 'deuxieme', 'troisieme']



```
# pop(0) renvoie le premier element de la liste, et raccourcit la liste
element = liste.pop(0)
print "après pop(0):", "élément=", element, "et liste=", liste
```

    après pop(0): élément= premier et liste= ['deuxieme', 'troisieme']



```
# et ainsi de suite
element = liste.pop(0)
print "après pop(0):", "élément=", element, "et liste=", liste
```

    après pop(0): élément= deuxieme et liste= ['troisieme']


### Conditions avec effet de bord

Une fois ce rappel fait, voyons maintenant l'exemple suivant:


```
liste = range(5)
print 'liste en entree:', liste, 'de taille', len(liste)
if liste.pop(0) <= 0:
    print 'cas 1'
elif liste.pop(0) <= 1:
    print 'cas 2'
elif liste.pop(0) <= 2:
    print 'cas 3'
else:
    print 'cas 4'
print 'liste en sortie de taille', len(liste)
```

    liste en entree: [0, 1, 2, 3, 4] de taille 5
    cas 1
    liste en sortie de taille 4


Avec cette entrée, le premier test est positif (car `pop(0)` renvoie 0), aussi on n'exécute en tout `pop()` qu'**une seule fois**, et donc à la sortie la liste n'a été raccourcie que d'un élément.

Exécutons à présent le même code avec une entrée différente (vivement les fonctions !)


```
liste = range(5, 10)
print 'en entree: liste=', liste, 'de taille', len(liste)
if liste.pop(0) <= 0:
    print 'cas 1'
elif liste.pop(0) <= 1:
    print 'cas 2'
elif liste.pop(0) <= 2:
    print 'cas 3'
else:
    print 'cas 4'
print 'en sortie: liste=', liste, 'de taille', len(liste)
```

    en entree: liste= [5, 6, 7, 8, 9] de taille 5
    cas 4
    en sortie: liste= [8, 9] de taille 2


On observe que cette fois la liste a été **raccourcie 3 fois**, car les trois tests se sont révélés négatifs.

Cet exemple vous montre qu'il faut être attentif avec des conditions qui font des effets de bord. Bien entendu, ce type de pratique est de manière générale **vivement déconseillé**.

### *Short-circuit*

La logique que l'on vient de voir s'applique aux différentes branches d'un `if`.

En fait, c'est la même logique qui est à l'œuvre aussi lorsque python évalue une condition logique à base de `and` et `or`.

Pour illustrer ceci, nous allons nous définir deux fonctions toutes simples qui renvoient `True` et `False` mais avec une impression de sorte qu'on voit lorsqu'elles sont exécutées&nbsp;:


```
def true():
    print 'true'
    return True
def false():
    print 'false'
    return False
```


```
true()
```

    true





    True



Ceci va nous permettre d'illustrer notre point, qui est que lorsque python évalue un `and` ou un `or`, il **n'évalue la deuxième condition que si c'est nécessaire**. Ainsi par exemple&nbsp;:


```
false() and true()
```

    false





    False



Dans ce cas, python évalue la première partie du `and` - qui provoque l'impression de `false` - et comme le résultat est faux, il n'est **pas nécessaire** d'évaluer la seconde condition, on sait que de toute façon le résultat du `and` est forcément faux. C'est pourquoi vous ne voyez pas l'impression de `true`.

De manière symétrique avec un `or`&nbsp;:


```
true() or false()
```

    true





    True



À nouveau ici il n'est pas nécessaire d'évaluer `false()`, et donc seul `true` est imprimé à l'évaluation.

À titre d'exercice, essayez de dire combien d'impressions sont émises lorsqu'on évalue cette expression un peu plus compliquée&nbsp;:


```
true() and (false() or true()) or (true () and false())
```

    true
    false
    true





    True


