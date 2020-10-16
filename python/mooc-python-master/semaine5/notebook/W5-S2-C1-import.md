
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Précisions sur l'importation

## Complément - niveau basique

### Importations multiples - rechargement

##### Un module n'est chargé qu'une fois

De manière générale, à l'intérieur d'un interpréteur python, un module donné n'est chargé qu'une seule fois. L'idée est naturellement que si plusieurs modules différents importent le même module, (ou si un même module en importe un autre plusieurs fois) on ne paie le prix du chargement du module qu'une seule fois.

Voyons cela sur un exemple simpliste, importons un module pour la première fois


```
import multiple_import
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-c54599f34d91> in <module>()
    ----> 1 import multiple_import


    ImportError: No module named multiple_import


Ce module est très simple, comme vous pouvez le voir


```
from modtools import show_module
show_module(multiple_import )
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-2-d55e1cb95d10> in <module>()
    ----> 1 from modtools import show_module
          2 show_module(multiple_import )


    ImportError: No module named modtools


Si on le charge une deuxième fois (peu importe où, dans le même module, un autre module, une fonction..), vous remarquez qu'il ne produit aucune impression


```
import multiple_import
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-3-11fdaa093ad1> in <module>()
    ----> 1 import multiple_import


    ImportError: No module named multiple_import


Ce qui confirme que le module a déjà été chargé, donc cette instruction `import` n'a aucun effet autre qu'affecter la variable `multiple_import` de nouveau à l'objet module déjà chargé. En résumé, l'instruction `import` fait l'opération d'affectation autant de fois qu'on appelle `import`, mais elle ne charge le module qu'une seule fois à la première importation.

##### Les raisons de ce choix

Le choix de ne charger le module qu'une seule fois est motivé par plusieurs considérations.

D'une part, et principalement, cela permet à deux modules de dépendre l'un de l'autre (ou plus généralement à avoir des cycles de dépendances), sans avoir à prendre de précaution particulière. Pour ceux qui pratiquent C/C++, ceci évite d'avoir à recourir à une pratique comme

    #ifndef _STDLIB_H_
    #define _STDLIB_H_
    <...>
    #endif /* _STDLIB_H_ */

D'autre part, naturellement, cette stratégie améliore les performances.

Marginalement, `import` est une instruction comme une autre, et vous trouverez occasionnellement un avantage à l'utiliser à l'intérieur d'une fonction, **sans aucun surcoût** puisque vous ne payez le prix de l'import qu'au premier appel et non à chaque appel de la fonction.

    def ma_fonction():
        import un_module_improbable
        ....

Cet usage n'est pas recommandé en général, mais de temps en temps peut s'avérer très pratique pour alléger les dépendances entre modules dans des contextes particuliers, comme du code multi-plateformes.

##### Les inconvénients de ce choix - la fonction `reload`

L'inconvénient majeur de cette stratégie de chargement unique est perceptible dans l'interpréteur interactif pendant le développement. Nous avons vu comment IDLE traite le problème en remettant l'interpréteur dans un état vierge lorsqu'on utilise la touche F5. Mais dans l'interpréteur syntaxique "de base" on n'a pas cette possibilité.

Pour cette raison, python fournit une fonction `reload`, qui permet comme son nom l'indique de forcer le rechargement d'un module, comme ceci


```
reload(multiple_import)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-4-de74d0f67cae> in <module>()
    ----> 1 reload(multiple_import)


    NameError: name 'multiple_import' is not defined


Remarquez bien que `reload` est une fonction et non une instruction comme `import` - d'où la syntaxe avec les parenthèses qui n'est pas celle de `import`.

## Complément - niveau avancé

Signalons enfin, pour ceux qui sont intéressés par les détails, les deux variables suivantes.

### `sys.modules`

L'interpréteur utilise cette variable pour conserver la trace des modules actuellement chargés.


```
import sys

import math
math is sys.modules['math']
```




    True



La [documentation sur cette variable](https://docs.python.org/2/library/sys.html#sys.modules) indique qu'il est possible de forcer le rechargement d'un module en l'enlevant de cette `sys.modules.


```
del sys.modules['multiple_import']
import multiple_import
```


    ---------------------------------------------------------------------------

    KeyError                                  Traceback (most recent call last)

    <ipython-input-6-947325519e49> in <module>()
    ----> 1 del sys.modules['multiple_import']
          2 import multiple_import


    KeyError: 'multiple_import'


Notez enfin qu'on y trouve des modules écrits en C aussi bien qu'en python. Pour trouver le fichier python chargé par l'import du module, on peut utiliser la variable `__file__` sur le module. Notez que les modules écrits en C, comme le module `math`, [n'ont pas une telle variable (chercher la discussion sur les modules dans la documentation)](https://docs.python.org/2.7/reference/datamodel.html#the-standard-type-hierarchy).


```
math.__file__
```


    ---------------------------------------------------------------------------

    AttributeError                            Traceback (most recent call last)

    <ipython-input-7-da5fe20062c9> in <module>()
    ----> 1 math.__file__


    AttributeError: 'module' object has no attribute '__file__'



```
multiple_import.__file__
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-8-3dc99cea1ce1> in <module>()
    ----> 1 multiple_import.__file__


    NameError: name 'multiple_import' is not defined


### `sys.builtin_module_names`

Signalons enfin [cette variable](https://docs.python.org/2/library/sys.html#sys.builtin_module_names) qui contient le nom des modules, comme par exemple le garbage collector `gc`, qui sont implémentés en C et font partie intégrante de l'interpréteur.


```
'gc' in sys.builtin_module_names
```




    True



### Pour en savoir plus

Pour aller plus loin, vous pouvez lire [la documentation sur l'instruction `import`](https://docs.python.org/2/reference/simple_stmts.html#the-import-statement)
