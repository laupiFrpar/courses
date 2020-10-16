
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Instruction `if` et fonction `def`

## Exercice - niveau basique

### Fonction de divisibilité


```
# chargement de l'exercice
from corrections.w2s7_if import exo_divisible
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-a96196b38867> in <module>()
          1 # chargement de l'exercice
    ----> 2 from corrections.w2s7_if import exo_divisible


    ImportError: No module named corrections.w2s7_if


L'exercice consiste à écrire une fonction baptisée `divisible` qui retourne une valeur booléenne qui indique si un des deux arguments est divisible par l'autre.

Vous pouvez supposer les entrées `a` et `b` entiers et non nuls, mais pas forcément positifs.


```
def divisible(a, b):
    "<votre_code>"
```

Vous pouvez à présent tester votre code en évaluant ceci, qui écrira un message d'erreur si un des jeux de test ne donne pas le résultat attendu.


```
# tester votre code
exo_divisible.correction(divisible)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-3-b4e4d7b9e9ef> in <module>()
          1 # tester votre code
    ----> 2 exo_divisible.correction(divisible)


    NameError: name 'exo_divisible' is not defined


**Remarque.** Vu comme le problème est posé, il est assez naturel d'utiliser un `if` pour écrire 'divisible'. Vous remarquerez toutefois qu'un `if` n'est pas strictement indispensable, et nous vous invitons à exhiber une version sans `if` qui est plus pythonique.

## Exercice - niveau basique

### Manipulation de liste


```
# chargeons l'exercice
from corrections.w2s7_if import exo_spam
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-4-278099c092bb> in <module>()
          1 # chargeons l'exercice
    ----> 2 from corrections.w2s7_if import exo_spam


    ImportError: No module named corrections.w2s7_if


Cet exercice consiste à écrire une fonction `spam`, qui prend en argument une liste, et qui retourne la liste modifiée comme suit:
 * si la liste est de taille paire, on intervertit les deux premiers éléments de la liste,
 * si elle est de taille impaire, on lui retire son dernier élément.


```
# voici quelques exemples de ce qui est attendu
exo_spam.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-5-49e2ca334dd7> in <module>()
          1 # voici quelques exemples de ce qui est attendu
    ----> 2 exo_spam.exemple()


    NameError: name 'exo_spam' is not defined



```
# écrivez votre code
def spam(liste):
    "<votre_code>"
```


```
# pour le vérifier, évaluez cette cellule
exo_spam.correction(spam)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-7-e5caa4463e8c> in <module>()
          1 # pour le vérifier, évaluez cette cellule
    ----> 2 exo_spam.correction(spam)


    NameError: name 'exo_spam' is not defined

