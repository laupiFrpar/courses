
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Passage d'arguments

## Exercice - niveau basique


```
# pour charger l'exercice
from corrections.w4s8_fun_args import exo_distance
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-00e7bd0f0803> in <module>()
          1 # pour charger l'exercice
    ----> 2 from corrections.w4s8_fun_args import exo_distance


    ImportError: No module named corrections.w4s8_fun_args


Vous devez écrire une fonction `distance` qui prend un nombre quelconque d'arguments numériques non complexes, et qui retourne la racine carrée de la somme des carrés des arguments.

Plus précisément :
$distance$ ($x_1$, ..., $x_n$) = $\sqrt{\sum x_i^2}$

Par convention on fixe que $ distance() = 0 $


```
# des exemples
exo_distance.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-2-9e10120fcc48> in <module>()
          1 # des exemples
    ----> 2 exo_distance.exemple()


    NameError: name 'exo_distance' is not defined



```
# ATTENTION vous devez aussi définir les arguments de la fonction
def distance(votre, signature):
    "<votre code>"
```


```
# la correction
exo_distance.correction(distance)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-4-baccc3b9c1ba> in <module>()
          1 # la correction
    ----> 2 exo_distance.correction(distance)


    NameError: name 'exo_distance' is not defined


## Exercice - niveau intermédaire


```
# pour charger l'exercice
from corrections.w4s8_fun_args import exo_doubler_premier
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-5-cc89dc0e88c0> in <module>()
          1 # pour charger l'exercice
    ----> 2 from corrections.w4s8_fun_args import exo_doubler_premier


    ImportError: No module named corrections.w4s8_fun_args


On vous demande d'écrire une fonction qui prend en argument
 * une fonction `f`, dont vous savez seulement que le premier argument est numérique, et qu'elle ne prend **que des arguments positionnels** (sans valeur par défaut)
 * un nombre quelconque - mais au moins 1 - d'arguments positionnels `args`, dont on sait qu'ils pourraient être passés à `f`

Et on attend en retour le résultat de `f` appliqués à tous ces arguments, mais avec le premier d'entre eux multiplé par deux.

Formellement: doubler_premier(f, $x_1$, $x_2$,..., $x_n$) = f($2*x_1$, $x_2$,..., $x_n$)


```
# quelques exemples de ce qui est attendu.
# add et mul sont les opérateurs binaires du module operator,
# soit l'addition et la multiplication respectivement.
# distance est la fonction de l'exercice précédent.
exo_doubler_premier.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-6-943f5a2bcfbb> in <module>()
          3 # soit l'addition et la multiplication respectivement.
          4 # distance est la fonction de l'exercice précédent.
    ----> 5 exo_doubler_premier.exemple()


    NameError: name 'exo_doubler_premier' is not defined



```
# ATTENTION vous devez aussi définir les arguments de la fonction
def doubler_premier(votre, signature):
    "<votre_code>"
```


```
exo_doubler_premier.correction(doubler_premier)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-8-643a41320213> in <module>()
    ----> 1 exo_doubler_premier.correction(doubler_premier)


    NameError: name 'exo_doubler_premier' is not defined


## Exercice - niveau intermédaire


```
# Pour charger l'exercice
from corrections.w4s8_fun_args import exo_doubler_premier_kwds
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-9-9576a2c14fcc> in <module>()
          1 # Pour charger l'exercice
    ----> 2 from corrections.w4s8_fun_args import exo_doubler_premier_kwds


    ImportError: No module named corrections.w4s8_fun_args


Vous devez maintenant écrire une deuxième version qui peut fonctionner avec une fonction quelconque (elle peut avoir des arguments nommés avec valeurs par défaut).

La fonction `doubler_premier_kwds` que l'on vous demande d'écrire maintenant prend donc un premier arguments `f` qui est une fonction, un second argument positionnel qui est le premier argument à `f` (et donc qu'il faut doubler), et le reste des arguments à f, qui donc, à nouveau, peuvent être nommés ou non.


```
# quelques exemples de ce qui est attendu
# avec ces deux fonctions

def addn(x, y=0, z=0):
    return x + y + z

def muln(x=1, y=1, z=1):
    return x * y * z

exo_doubler_premier_kwds.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-10-53125c6b7f17> in <module>()
          8     return x * y * z
          9
    ---> 10 exo_doubler_premier_kwds.exemple()


    NameError: name 'exo_doubler_premier_kwds' is not defined


Vous remarquerez que l'on n'a pas mentionné dans cette liste d'exemples

    doubler_premier_kwds (muln, x=1, y=1)

que l'on ne demande pas de supporter puisqu'il est bien précisé que doubler_premier a deux arguments positionnels.


```
# ATTENTION vous devez aussi définir les arguments de la fonction
def doubler_premier_kwds(votre, signature):
    "<votre code>"
```


```
exo_doubler_premier_kwds.correction(doubler_premier_kwds)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-12-dcf4c249d6b9> in <module>()
    ----> 1 exo_doubler_premier_kwds.correction(doubler_premier_kwds)


    NameError: name 'exo_doubler_premier_kwds' is not defined


## Exercice - niveau avancé


```
# Pour charger l'exercice
from corrections.w4s8_fun_args import exo_compare_args
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-13-0b0389fa42ca> in <module>()
          1 # Pour charger l'exercice
    ----> 2 from corrections.w4s8_fun_args import exo_compare_args


    ImportError: No module named corrections.w4s8_fun_args


### `compare` revisitée

Nous avons déjà fait un peu plus tôt cette semaine, au sujet de la programmation fonctionnelle, un exercice au sujet d'une fonction `compare` qui comparait le résultat de deux fonctions, toutes deux à un argument, sur une liste de valeurs d'entrée.

Nous reprenons ici la même idée, mais en levant l'hypothèse que les deux fonctions attendent un seul argument. Il faut écrire une nouvelle fonction `compare_args` qui prend en entrée
 * deux fonctions `f` et `g` comme la dernière fois,
 * mais cette fois une liste (ou un tuple) `argument_tuples` de **tuples** d'arguments d'entrée

 Et comme la fois précédente on attend en retour une liste `retour` de booléens, de même taille que `argument_tuples`, telle que, si `len(argument_tuples)` vaut $n$:

$\forall i \in \{1,...,n\}$, si `argument_tuples[i]` == [ $a_1$,...,$a_j$ ], alors

`retour(i) == True` $\Longleftrightarrow$  f ($a_1$,...,$a_j$) == g ($a_1$,...,$a_j$)

Pour information, dans tous cet exercice:
 * `factorial` correspond à `math.factorial`
 * `fact` et `broken_fact` sont des fonctions implémentées par nos soins, la première est correcte alors que la seconde retourne 0 au lieu de 1 pour l'entrée 0.
 * `add` correspond à l'addition binaire `operator.add`
 * `plus` et `broken_plus` sont des additions binaires écrites par nous, l'une étant correcte et l'autre étant fausse lorsque le premier argument est nul.


```
exo_compare_args.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-14-7124e2bb72b7> in <module>()
    ----> 1 exo_compare_args.exemple()


    NameError: name 'exo_compare_args' is not defined



```
# ATTENTION vous devez aussi définir les arguments de la fonction
def compare_args(votre, signature):
    "<votre_code>"
```


```
exo_compare_args.correction(compare_args)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-16-d8838c8fc8bc> in <module>()
    ----> 1 exo_compare_args.correction(compare_args)


    NameError: name 'exo_compare_args' is not defined

