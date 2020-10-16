
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Méthodes spécifiques aux listes

## Complément - niveau basique

Voici quelques unes des méthodes disponibles sur le type `list`.

### Trouver l'information

Pour commencer, rappelons comment retrouver la liste des méthodes définies sur le type `list`:


```
help(list)
```

    Help on class list in module __builtin__:

    class list(object)
     |  list() -> new empty list
     |  list(iterable) -> new list initialized from iterable's items
     |
     |  Methods defined here:
     |
     |  __add__(...)
     |      x.__add__(y) <==> x+y
     |
     |  __contains__(...)
     |      x.__contains__(y) <==> y in x
     |
     |  __delitem__(...)
     |      x.__delitem__(y) <==> del x[y]
     |
     |  __delslice__(...)
     |      x.__delslice__(i, j) <==> del x[i:j]
     |
     |      Use of negative indices is not supported.
     |
     |  __eq__(...)
     |      x.__eq__(y) <==> x==y
     |
     |  __ge__(...)
     |      x.__ge__(y) <==> x>=y
     |
     |  __getattribute__(...)
     |      x.__getattribute__('name') <==> x.name
     |
     |  __getitem__(...)
     |      x.__getitem__(y) <==> x[y]
     |
     |  __getslice__(...)
     |      x.__getslice__(i, j) <==> x[i:j]
     |
     |      Use of negative indices is not supported.
     |
     |  __gt__(...)
     |      x.__gt__(y) <==> x>y
     |
     |  __iadd__(...)
     |      x.__iadd__(y) <==> x+=y
     |
     |  __imul__(...)
     |      x.__imul__(y) <==> x*=y
     |
     |  __init__(...)
     |      x.__init__(...) initializes x; see help(type(x)) for signature
     |
     |  __iter__(...)
     |      x.__iter__() <==> iter(x)
     |
     |  __le__(...)
     |      x.__le__(y) <==> x<=y
     |
     |  __len__(...)
     |      x.__len__() <==> len(x)
     |
     |  __lt__(...)
     |      x.__lt__(y) <==> x<y
     |
     |  __mul__(...)
     |      x.__mul__(n) <==> x*n
     |
     |  __ne__(...)
     |      x.__ne__(y) <==> x!=y
     |
     |  __repr__(...)
     |      x.__repr__() <==> repr(x)
     |
     |  __reversed__(...)
     |      L.__reversed__() -- return a reverse iterator over the list
     |
     |  __rmul__(...)
     |      x.__rmul__(n) <==> n*x
     |
     |  __setitem__(...)
     |      x.__setitem__(i, y) <==> x[i]=y
     |
     |  __setslice__(...)
     |      x.__setslice__(i, j, y) <==> x[i:j]=y
     |
     |      Use  of negative indices is not supported.
     |
     |  __sizeof__(...)
     |      L.__sizeof__() -- size of L in memory, in bytes
     |
     |  append(...)
     |      L.append(object) -- append object to end
     |
     |  count(...)
     |      L.count(value) -> integer -- return number of occurrences of value
     |
     |  extend(...)
     |      L.extend(iterable) -- extend list by appending elements from the iterable
     |
     |  index(...)
     |      L.index(value, [start, [stop]]) -> integer -- return first index of value.
     |      Raises ValueError if the value is not present.
     |
     |  insert(...)
     |      L.insert(index, object) -- insert object before index
     |
     |  pop(...)
     |      L.pop([index]) -> item -- remove and return item at index (default last).
     |      Raises IndexError if list is empty or index is out of range.
     |
     |  remove(...)
     |      L.remove(value) -- remove first occurrence of value.
     |      Raises ValueError if the value is not present.
     |
     |  reverse(...)
     |      L.reverse() -- reverse *IN PLACE*
     |
     |  sort(...)
     |      L.sort(cmp=None, key=None, reverse=False) -- stable sort *IN PLACE*;
     |      cmp(x, y) -> -1, 0, 1
     |
     |  ----------------------------------------------------------------------
     |  Data and other attributes defined here:
     |
     |  __hash__ = None
     |
     |  __new__ = <built-in method __new__ of type object>
     |      T.__new__(S, ...) -> a new object with type S, a subtype of T



Si vous ignorez pour l'instant les méthodes dont le nom commence et termine par `__` (nous parlerons de ceci en semaine 5),  vous trouvez les méthodes utiles listées entre `append` et `sort`.

Certaines de ces méthodes ont été vues dans la vidéo sur les séquences, c'est le cas notamment de `count` et `index`.

 Nous allons à présent décrire les autres, partiellement et brièvement. Un autre complément décrit la méthode `sort`. Reportez-vous au lien donné en fin de notebook pour obtenir une information plus complète.

Donnons nous pour commencer une liste témoin


```
liste = range(4)
print 'liste', liste
```

    liste [0, 1, 2, 3]


**Avertissement** soyez bien attentifs au nombre de fois où vous exécutez les cellules de ce notebook; par exemple une liste renversée deux fois peut donner l'impression que `reverse` ne marche pas :) N'hésitez pas à utiliser le menu `Cell -> Run All' pour réexécuter une seule fois le notebook entier.

### `append`

La méthode `append` permet d'ajouter un élément à la fin d'une liste:


```
liste.append('ap')
print 'liste', liste
```

    liste [0, 1, 2, 3, 'ap']


### `extend`

La méthode `extend` réalise la même opération mais avec tous les éléments de la liste qu'on lui passe en argument&nbsp;:


```
liste.extend(['ex1', 'ex2'])
print 'liste', liste
```

    liste [0, 1, 2, 3, 'ap', 'ex1', 'ex2']


Ces deux méthodes `append` et `extend` sont donc assez voisines; avant de voir d'autres méthodes de `list`, prenons un peu le temps de comparer leur comportement avec l'addition `+` de liste. L'élément clé ici, on l'a déjà vu dans la vidéo, est que la liste est un objet **mutable**. `append` et `extend` **modifient** la liste sur laquelle elles travaillent, alors que l'addition **crée un nouvel objet**


```
l1 = range(5)
l2 = l1 + ['ap', 'ex1' , 'ex2']
print 'l1', l1
print 'l2', l2
```

    l1 [0, 1, 2, 3, 4]
    l2 [0, 1, 2, 3, 4, 'ap', 'ex1', 'ex2']


Comme on le voit, après une addition, les deux termes de l'addition sont inchangés; c'est pour cela que l'addition est disponible sur tous les types séquences, mais que `append` et `extend` ne sont par exemple **pas disponibles** sur les chaînes de caractères, qui sont **immuables**.

### `insert`

La méthode `insert` permet, comme le nom le suggère, d'insérer un élément à une certaine position; comme toujours les indices commencent à zéro et donc


```
liste.insert(2, 'remplace 2')
print 'liste', liste
```

    liste [0, 1, 'remplace 2', 2, 3, 'ap', 'ex1', 'ex2']


On peut remarquer qu'un résultat analogue peut être obtenu avec une affectation de slice; par exemple pour insérer au rang 5 (i.e. avant 'ap'), on pourrait aussi bien faire


```
liste[5:5] = ['sl']
print 'liste', liste
```

    liste [0, 1, 'remplace 2', 2, 3, 'sl', 'ap', 'ex1', 'ex2']


### `remove`

La méthode `remove` détruit la première occurence d'un objet dans la liste.


```
liste.remove(3)
print 'liste', liste
```

    liste [0, 1, 'remplace 2', 2, 'sl', 'ap', 'ex1', 'ex2']


### `pop`

La méthode `pop` prend en argument un indice; elle permet d'extraire l'élément à cet indice. En un seul appel on obtient la valeur de l'élément et on l'enlève de la liste:


```
popped = liste.pop(0)
print 'popped', popped, 'liste', liste
```

    popped 0 liste [1, 'remplace 2', 2, 'sl', 'ap', 'ex1', 'ex2']


Si l'indice n'est pas précisé, c'est le dernier élément de la liste qui est visé


```
popped = liste.pop()
print 'popped', popped, 'liste', liste
```

    popped ex2 liste [1, 'remplace 2', 2, 'sl', 'ap', 'ex1']


### `reverse`

Enfin `reverse` renverse la liste, le premier élément devient le dernier:


```
liste.reverse()
print 'liste', liste
```

    liste ['ex1', 'ap', 'sl', 2, 'remplace 2', 1]


On peut remarquer ici que le résultat se rapproche de ce qu'on peut obtenir avec une opération de slicing comme ceci


```
liste2 = liste[::-1]
print 'liste2', liste2
```

    liste2 [1, 'remplace 2', 2, 'sl', 'ap', 'ex1']


**à la différence toutefois** qu'avec le slicing c'est une copie de la liste initiale qui est retournée, la liste de départ n'est quant à elle pas modifiée.

### Pour en savoir plus

https://docs.python.org/2/tutorial/datastructures.html#more-on-lists
