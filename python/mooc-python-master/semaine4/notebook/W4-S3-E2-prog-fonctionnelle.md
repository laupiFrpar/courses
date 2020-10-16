
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Manipulation de fonctions

## Exercice - niveau intermédiaire


```
# Pour charger l'exercice
from corrections.w4s3_functional import exo_numbers
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-da6c0e4b1bcc> in <module>()
          1 # Pour charger l'exercice
    ----> 2 from corrections.w4s3_functional import exo_numbers


    ImportError: No module named corrections.w4s3_functional


On vous demande d'écrire une fonction `numbers` qui prend en argument une liste d'entiers, et qui retourne un tuple contenant
 * la somme
 * le produit
 * le minimum
 * le maximum

des éléments de la liste


```
# par exemple
exo_numbers.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-2-da989102f664> in <module>()
          1 # par exemple
    ----> 2 exo_numbers.exemple()


    NameError: name 'exo_numbers' is not defined



```
def numbers(l):
    "<votre_code>"
```


```
# pour vérifier votre code
exo_numbers.correction(numbers)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-4-54046cfb3eb5> in <module>()
          1 # pour vérifier votre code
    ----> 2 exo_numbers.correction(numbers)


    NameError: name 'exo_numbers' is not defined


## Exercice - niveau avancé


```
# Pour charger l'exercice
from corrections.w4s3_functional import exo_compare
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-5-2e2ae3428fa5> in <module>()
          1 # Pour charger l'exercice
    ----> 2 from corrections.w4s3_functional import exo_compare


    ImportError: No module named corrections.w4s3_functional


À présent nous allons écrire une version très simplifiée de l'outil qui est utilisé dans ce cours pour corriger les exercices. Vous remarquerez que les fonctions de correction, comme par exemple `exo_numbers.correction` ci-dessus, prennent en argument la fonction qu'il est question de corriger.

On vous demande d'écrire une fonction `compare` qui prend en argument
 * deux fonctions `f` et `g`; imaginez que l'une d'entre elles fonctionne et qu'on cherche à valider l'autre; dans cette version simplifiée toutes les fonctions acceptent exactement un argument
 * une liste d'entrées `entrees`; vous pouvez supposer que chacune de ces entrées est dans le domaine de `f` et de `g` (dit autrement, on peut appeler `f` et `g` sur chacune des entrées sans craindre qu'une exception soit levée);

Le résultat attendu pour le retour de `compare` est une liste qui contient autant de booléens que d'éléments dans entrées, chacun indiquant si avec l'entrée correspondante on a pu vérifier que `f(entree) == g(entree)`.

Dans cette première version de l'exercice vous pouvez enfin supposer que les entrées ne sont pas modifiées par `f` ou `g`.

Pour information dans cet exercice:
 * `factorial` correspond à `math.factorial`
 * `fact` et `broken_fact` sont des fonctions implémentées par nos soins, la première est correcte alors que la seconde retourne 0 au lieu de 1 pour l'entrée 0.


```
# par exemple
exo_compare.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-6-be86d0045a90> in <module>()
          1 # par exemple
    ----> 2 exo_compare.exemple()


    NameError: name 'exo_compare' is not defined


Ce qui, dit autrement, veut tout simplement dire que `fact` et `factorial` coïncident sur les entrées 0, 1 et 5.


```
def compare(f, g, entrees):
    "<votre code>"
```


```
# pour vérifier votre code
exo_compare.correction(compare)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-8-fee5a7284608> in <module>()
          1 # pour vérifier votre code
    ----> 2 exo_compare.correction(compare)


    NameError: name 'exo_compare' is not defined

