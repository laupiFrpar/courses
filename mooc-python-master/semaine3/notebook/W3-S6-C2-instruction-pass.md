
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# L'instruction `pass`

## Complément - niveau basique

Nous avons vu qu'en python les blocs de code sont définis par leur indentation.

### Une fonction vide

Cette convention a une limitation lorsqu'on essaie de définir un bloc vide. Voyons par exemple comment on définirait en C une fonction qui ne fait rien

    /* une fonction C qui ne fait rien */
    void foo () {}

Comme en python on n'a pas d'accolade pour délimiter les blocs de code, il existe une instruction `pass`, qui ne fait rien. À l'aide de cette instruction on peut à présent définir une fonction vide comme ceci&nbsp;:


```
# une fonction python qui ne fait rien
def foo():
    pass
```

### Une boucle vide

Pour prendre un second exemple un peu plus pratique, et pour anticiper un peu sur l'instruction `while` que nous verrons très bientôt, voici un exemple d'une boucle vide, c'est à dire sans corps, qui permet de "dépiler" dans une liste jusqu'à l'obtention d'une certaine valeur:


```
liste = range(10)
print 'avant', liste
while liste.pop() != 5:
    pass
print 'après', liste
```

    avant [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    après [0, 1, 2, 3, 4]


On voit qu'ici encore l'instruction `pass` a toute son utilité.

## Complément - niveau intermédiaire

### Un `if` sans `then`


```
# on utilise dans ces exemples une condition fausse
condition = False
```

Imaginons qu'on parte d'un code hypothétique qui fasse ceci&nbsp;:


```
# la version initiale
if condition:
    print "non"
else:
    print "bingo"
```

    bingo


et que l'on veuille modifier ce code pour simplement supprimer l'impression de `non`. La syntaxe du langage **ne permet pas** de simplement commenter le premier `print`&nbsp;:


```
# si on commente le premier print
# la syntaxe devient incorrecte
if condition:
#    print "non"
else:
    print "bingo"
```


      File "<ipython-input-5-f0df95074632>", line 5
        else:
           ^
    IndentationError: expected an indented block



Évidemment ceci pourrait être récrit autrement en inversant la condition, mais parfois on s'efforce de limiter au maximum l'impact d'une modification sur le code. Dans ce genre de situation on préférera écrire plutôt


```
# on peut s'en sortir en ajoutant une instruction pass
if condition:
#    print "non"
    pass
else:
    print "bingo"
```

    bingo


## Complément - niveau avancé

### Une classe vide

Pour anticiper encore un peu plus sur les classes que nous verrons en cinquième semaine, on peut aussi utiliser `pass` pour définir une classe vide comme ceci


```
class Foo:
    pass
```


```
foo = Foo()
```
