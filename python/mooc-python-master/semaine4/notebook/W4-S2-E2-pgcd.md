
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Calculer le PGCD

## Exercice - niveau basique


```
# chargement de l'exercice
from corrections.w4s2_pgcd import exo_pgcd
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-239442c5949e> in <module>()
          1 # chargement de l'exercice
    ----> 2 from corrections.w4s2_pgcd import exo_pgcd


    ImportError: No module named corrections.w4s2_pgcd


On vous demande d'écrire une fonction qui calcule le pgcd de deux entiers, en utilisant [l'algorithme d'Euclide](http://fr.wikipedia.org/wiki/Algorithme_d'Euclide).


```
def pgcd(a, b):
    "<votre code>"
```


```
# pour vérifier votre code
exo_pgcd.correction(pgcd)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-3-112993b927b9> in <module>()
          1 # pour vérifier votre code
    ----> 2 exo_pgcd.correction(pgcd)


    NameError: name 'exo_pgcd' is not defined


**Remarque** on peut tout à fait utiliser une fonction récursive pour implémenter l'algorithme d'Euclide. Par exemple cette version de `pgcd` fonctionne très bien aussi (en supposant a>=b)

    def pgcd(a, b):
       "Le pgcd avec une fonction récursive"
       if not b:
           return a
       return pgcd(b, a % b)

Cependant, il vous est demandé ici d'utiliser une boucle `while`, qui est le sujet de la séquence, pour implémenter `pgcd`.

