
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Compréhensions

## Exercice - niveau basique


```
# pour charger l'exercice
from corrections.w4s4_comprehensions import exo_aplatir
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-34779d5f75f9> in <module>()
          1 # pour charger l'exercice
    ----> 2 from corrections.w4s4_comprehensions import exo_aplatir


    ImportError: No module named corrections.w4s4_comprehensions


Il vous est demandé d'écrire une fonction `aplatir` qui prend *un unique* argument `l_conteneurs`, une liste (ou plus généralement un itérable) de conteneurs, et qui retourne la liste de tous les éléments de tous les conteneurs.


```
# par exemple
exo_aplatir.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-2-0506cf21af61> in <module>()
          1 # par exemple
    ----> 2 exo_aplatir.exemple()


    NameError: name 'exo_aplatir' is not defined



```
def aplatir(conteneurs):
    "<votre_code>"
```


```
# vérifier votre code
exo_aplatir.correction(aplatir)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-4-23442a6a48a5> in <module>()
          1 # vérifier votre code
    ----> 2 exo_aplatir.correction(aplatir)


    NameError: name 'exo_aplatir' is not defined


## Exercice - niveau intermédiaire


```
# chargement de l'exercice
from corrections.w4s4_comprehensions import exo_alternat
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-5-6b55edcd6326> in <module>()
          1 # chargement de l'exercice
    ----> 2 from corrections.w4s4_comprehensions import exo_alternat


    ImportError: No module named corrections.w4s4_comprehensions


À présent, on passe en argument deux conteneurs (deux itérables) `c1` et `c2` de même taille à la fonction `alternat`, qui doit construire une liste contenant les éléments pris alternativement dans `c1` et dans `c2`.


```
# exemple
exo_alternat.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-6-54aabcd01bd2> in <module>()
          1 # exemple
    ----> 2 exo_alternat.exemple()


    NameError: name 'exo_alternat' is not defined



```
def alternat(c1, c2):
    "<votre_code>"
```


```
# pour vérifier votre code
exo_alternat.correction(alternat)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-8-3499eda41101> in <module>()
          1 # pour vérifier votre code
    ----> 2 exo_alternat.correction(alternat)


    NameError: name 'exo_alternat' is not defined


## Exercice - niveau intermédiaire

On se donne deux ensembles A et B de tuples de la forme

    (entier, valeur)

On vous demande d'écrire une fonction `intersect` qui retourne l'ensemble des objets `valeur` associés (dans A ou dans B) à un entier qui soit présent dans (un tuple de) A *et* dans (un tuple de) B.


```
# un exemple
from corrections.w4s4_comprehensions import exo_intersect
exo_intersect.exemple()
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-9-76883cb7dc30> in <module>()
          1 # un exemple
    ----> 2 from corrections.w4s4_comprehensions import exo_intersect
          3 exo_intersect.exemple()


    ImportError: No module named corrections.w4s4_comprehensions



```
def intersect(A, B):
    "<votre_code>"
```


```
# pour vérifier votre code
exo_intersect.correction(intersect)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-11-6a1e32c7142e> in <module>()
          1 # pour vérifier votre code
    ----> 2 exo_intersect.correction(intersect)


    NameError: name 'exo_intersect' is not defined

