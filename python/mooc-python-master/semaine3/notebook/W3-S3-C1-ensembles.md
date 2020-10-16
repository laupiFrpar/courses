
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Ensembles

## Complément - niveau basique

Ce document résume les opérations courantes disponibles sur le type `set`.
On rappelle que le type `set` est un type **mutable**.

### Création en extension

On crée un ensemble avec les accolades, comme les dictionnaires (mais sans utiliser le caractère `:`) et cela donne par exemple


```
heteroclite = {'marc', 12, 'pierre', (1, 2, 3), 'pierre'}
print heteroclite
```

    set(['marc', 12, 'pierre', (1, 2, 3)])


### Création - la fonction `set`

Il devrait être clair à ce stade que, le nom du type étant `set`, la fonction `set` est un constructeur d'ensembles. On aurait donc aussi bien pu faire


```
heteroclite2 = set(['marc', 12, 'pierre', (1, 2, 3), 'pierre'])
print heteroclite2
```

    set([(1, 2, 3), 12, 'pierre', 'marc'])


### Créer un ensemble vide

Il faut remarquer que l'on ne peut pas créer un ensemble vide en extension. En effet


```
type({})
```




    dict



Ceci est lié à des raisons historiques, les ensembles n'ayant fait leur apparition que tardivement dans le langage en tant que <em>citoyen de première classe</em>.

Pour créer un ensemble vide, la pratique la plus courante est celle-ci&nbsp;:


```
ensemble_vide = set()
print type(ensemble_vide)
```

    <type 'set'>


Ou également, moins élégant mais que l'on trouve parfois dans du vieux code&nbsp;:


```
autre_ensemble_vide = set([])
print type(autre_ensemble_vide)
```

    <type 'set'>


### Un élément dans un ensemble doit être globalement immuable

On a vu précédemment que les clés dans un dictionnaire doivent être globalement immuables. Pour exactement les mêmes raisons, les éléments d'un ensemble doivent aussi être globalement immuables.

    # on ne peut pas insérer un tuple qui contient une liste
    >>> ensemble = {(1, 2, [3, 4])}
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    TypeError: unhashable type: 'list'

Le type `set` étant lui-même mutable, on ne peut pas créer un ensemble d'ensembles

    >>> ensemble = {{1, 2}}
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    TypeError: unhashable type: 'set'

Et c'est une des raisons d'être du type `frozenset`.

### Création - la fonction `frozenset`

Un `frozenset` est un ensemble qu'on ne peut pas modifier, et qui donc peut servir de clé dans un dictionnaire, ou être inclus dans un autre ensemble (mutable ou pas).

Il n'existe pas de raccourci syntaxique comme les `{}` pour créer un ensemble immuable, qui doit être créé avec la fonction `frozenset`. Toutes les opérations documentées dans ce notebook, et qui n'ont pas besoin de modifier l'ensemble, sont disponibles sur un `frozenset`.

Parmi les fonctions exclues sur un `frozenset`, on peut citer:  `update`, `pop`, `clear`, `remove`, `discard`...

### Opérations simples

##### Test d'appartenance


```
(1, 2, 3) in heteroclite
```




    True



##### Cardinal


```
len(heteroclite)
```




    4



##### Manipulations


```
ensemble = {1, 2, 1}
ensemble
```




    {1, 2}




```
# pour nettoyer
ensemble.clear()
ensemble
```




    set()




```
# ajouter un element
ensemble.add(1)
ensemble
```




    {1}




```
# ajouter tous les elements d'un autre *ensemble*
ensemble.update({2, (1, 2, 3), (1, 3, 5)})
ensemble
```




    {1, 2, (1, 2, 3), (1, 3, 5)}




```
# enlever un element avec discard
ensemble.discard((1, 3, 5))
ensemble
```




    {1, 2, (1, 2, 3)}




```
# discard fonctionne même si l'élément n'est pas présent
ensemble.discard('foo')
ensemble
```




    {1, 2, (1, 2, 3)}




```
# enlever un élément avec remove
ensemble.remove((1, 2, 3))
ensemble
```




    {1, 2}




```
# contrairement à discard, l'élément doit être présent,
# sinon il y a une exception
try:
    ensemble.remove('foo')
except KeyError as e:
    print "remove a levé l'exception", e
```

    remove a levé l'exception 'foo'


La capture d'exception avec `try` et `except`  sert à capturer une erreur d'exécution du programme (qu'on appelle exception) pour continuer le programme. Le but de cet exemple est simplement de montrer (d'une manière plus élégante que de voir simplement le programme planter avec une exception non capturée) que l'expression `ensemble.remove('foo')` génère une exception. Si ce concept vous paraît obscur, pas d'inquiétude, nous reviendrons dessus en détail en semaine 6.


```
# pop() ressemble à la méthode éponyme sur les listes
# sauf qu'il n'y a pas d'ordre dans un ensemble
while ensemble:
    element = ensemble.pop()
    print "element", element
print "et bien sûr maintenant l'ensemble est vide", ensemble
```

    element 1
    element 2
    et bien sûr maintenant l'ensemble est vide set([])


### Opérations classiques sur les ensembles

Donnons nous deux ensembles simples.


```
A2 = set([0, 2, 4, 6])
print 'A2', A2
A3 = set([0, 3, 6])
print 'A3', A3
```

    A2 set([0, 2, 4, 6])
    A3 set([0, 3, 6])


N'oubliez pas que les ensembles, comme les dictionnaires, ne sont **pas ordonnés**.

**Remarques**
 * Les notations des opérateurs sur les ensembles rappellent les opérateurs "bit-à-bit" sur les entiers.
 * Ces opérateurs sont également disponibles sous la forme de méthodes

##### Union


```
A2 | A3
```




    {0, 2, 3, 4, 6}



##### Intersection


```
A2 & A3
```




    {0, 6}



##### Différence


```
A2 - A3
```




    {2, 4}




```
A3 - A2
```




    {3}



##### Différence symétrique

On rappelle que $A \Delta B = (A - B) \cup (B - A)$


```
A2 ^ A3
```




    {2, 3, 4}



### Comparaisons

Ici encore on se donne deux ensembles


```
superset = {0, 1, 2, 3}
print 'superset', superset
subset =  {1, 3}
print 'subset', subset
```

    superset set([0, 1, 2, 3])
    subset set([1, 3])


##### Égalité


```
heteroclite == heteroclite2
```




    True



##### Inclusion


```
subset <= superset
```




    True




```
subset < superset
```




    True




```
heteroclite < heteroclite2
```




    False



##### Ensembles disjoints


```
heteroclite.isdisjoint(A3)
```




    True



### Pour en savoir plus

Reportez vous à [la section sur les ensembles](https://docs.python.org/2/library/stdtypes.html#set-types-set-frozenset) dans la documentation python
