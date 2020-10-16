
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Rappels sur *docstring*

## Complément - niveau basique

### Comment documenter une fonction

Pour rappel, il est recommandé de toujours documenter les fonctions en ajoutant une chaîne comme première instruction.


```
def flatten(containers):
    "returns a list of the elements of the elements in containers"
    return [element for container in containers for element in container]
```

Cette information peut être consultée, soit interactivement


```
help(flatten)
```

    Help on function flatten in module __main__:

    flatten(containers)
        returns a list of the elements of the elements in containers



Soit programmativement


```
flatten.__doc__
```




    'returns a list of the elements of the elements in containers'



### Sous quel format ?

L'usage est d'utiliser une chaîne simple (délimitée par " ou ') lorsque le *docstring* tient sur une seule ligne, comme ci-dessus.

Lorsque ce n'est pas le cas - et pour du vrai code, c'est rarement le cas - on utilise des chaînes multi-lignes (délimitées par """ou '''). Dans ce cas le format est très flexible, car le *docstring* est normalisé, comme on le voit sur ces deux exemples, où le rendu final est identique:


```
# un style de docstring multi-lignes
def flatten(containers):
    """
provided that containers is a list (or more generally an iterable)
of elements that are themselves iterables, this function
returns a list of the items in these elements
    """
    return [element for container in containers for element in container]

help(flatten)
```

    Help on function flatten in module __main__:

    flatten(containers)
        provided that containers is a list (or more generally an iterable)
        of elements that are themselves iterables, this function
        returns a list of the items in these elements




```
# un autre style, qui donne le même résultat
def flatten(containers):
    """provided that containers is a list (or more generally an iterable)
    of elements that are themselves iterables, this function
    returns a list of the items in these elements
    """
    return [element for container in containers for element in container]

help(flatten)
```

    Help on function flatten in module __main__:

    flatten(containers)
        provided that containers is a list (or more generally an iterable)
        of elements that are themselves iterables, this function
        returns a list of the items in these elements



### Quelle information ?

On remarquera que dans ces exemples, le *docstring* ne répète pas le nom de la fonction ou des arguments (en mots savants, sa *signature*), et que ça n'empêche pas `help` de nous afficher cette information.

Le [PEP 257](http://legacy.python.org/dev/peps/pep-0257/) qui donne les conventions autour du *docstring* précise bien ceci:

    The one-line docstring should NOT be a "signature" reiterating the function/method parameters (which can be obtained by introspection). Don't do:

    def function(a, b):
        """function(a, b) -> list"""

    <...>

    The preferred form for such a docstring would be something like:

    def function(a, b):
        """Do X and return a list."""
    (Of course "Do X" should be replaced by a useful description!)

### Pour en savoir plus

Vous trouverez tous les détails sur *docstring* dans le [PEP 257](http://legacy.python.org/dev/peps/pep-0257/)
