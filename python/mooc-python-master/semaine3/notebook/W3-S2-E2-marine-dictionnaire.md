
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Fusionner des données

## Exercices

Cet exercice vient en deux versions, une de niveau basique et une de niveau intermédiaire.

La version basique est une application de la technique d'indexation qu'on a vue dans le complément "Gérer des enregistrements". On peut très bien faire les deux versions dans l'ordre, une fois qu'on a fait la version basique on est en principe un peu plus avancé pour aborder la version intermédiaire.

### Contexte

Nous allons commencer à utiliser des données un peu plus réalistes. Il s'agit de données obtenues auprès de [MarineTraffic](https://www.marinetraffic.com) - et légèrement simplifiées pour les besoins de l'exercice. Ce site expose les coordonnées géographiques de bateaux observées en mer au travers d'un réseau de collecte de type *crowdsourcing*.

De manière à optimiser le volume de données à transférer, l'API de MarineTraffic offre deux modes pour obtenir les données
 * **mode étendu** : chaque mesure (bateau x position x temps) est accompagnée de tous les détails du bateau (`id`, nom, pays de rattachement, etc..)
 * **mode abrégé** : chaque mesure est uniquement attachée à l'`id` du bateau.

En effet, chaque bateau possède un identifiant unique qui est un entier, que l'on note  `id`.

### Chargement des données

Commençons par charger les données de l'exercice


```
from corrections.w3s2_marine_dict import extended, abbreviated
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-d288c210b0e0> in <module>()
    ----> 1 from corrections.w3s2_marine_dict import extended, abbreviated


    ImportError: No module named corrections.w3s2_marine_dict


### Format des données

Le format de ces données est relativement simple, il s'agit dans les deux cas d'une liste d'entrées - une par bateau.

Chaque entrée à son tour est une liste qui contient :

    mode étendu: [id, latitude, longitude, date_heure, nom_bateau, code_pays, ...]
    mode abrégé: [id, latitude, longitude, date_heure]

sachant que les entrées après le code pays dans le format étendu ne nous intéressent pas pour cet exercice.


```
# une entrée étendue est une liste qui ressemble à ceci
sample_extended_entry = extended[3]
print sample_extended_entry
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-2-2b9b868310e8> in <module>()
          1 # une entrée étendue est une liste qui ressemble à ceci
    ----> 2 sample_extended_entry = extended[3]
          3 print sample_extended_entry


    NameError: name 'extended' is not defined



```
# une entrée abrégée ressemble à ceci
sample_abbreviated_entry = abbreviated[0]
print sample_abbreviated_entry
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-3-26f01b14a2ce> in <module>()
          1 # une entrée abrégée ressemble à ceci
    ----> 2 sample_abbreviated_entry = abbreviated[0]
          3 print sample_abbreviated_entry


    NameError: name 'abbreviated' is not defined


On précise également que les deux listes `extended` et `abbreviated`
 * possèdent exactement **le même nombre** d'entrées
 * et correspondent **aux mêmes bateaux**
 * mais naturellement **à des moments différents**
 * et **pas forcément dans le même ordre**.

*******

### Exercice - niveau basique


```
# chargement de l'exercice
from corrections.w3s2_marine_dict import exo_index
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-4-4c6dc80cd0ee> in <module>()
          1 # chargement de l'exercice
    ----> 2 from corrections.w3s2_marine_dict import exo_index


    ImportError: No module named corrections.w3s2_marine_dict


##### But de l'exercice

On vous demande d'écrire une fonction `index` qui calcule, à partir de la liste des données étendues, un dictionnaire qui est&nbsp;:
 * indexé par l'`id` de chaque bateau,
 * et qui a pour valeur la liste qui décrit le bateau correspondant.

De manière plus imagée, si&nbsp;:

    extended = [ bateau1, bateau2, ... ]

et si

    bateau1 = [ id1, latitude, ... ]

on doit obtenir comme résultat de `index` un dictionnaire

    { id1 -> [ id_bateau1, latitude, ... ],
      id2 ...
      }

Bref, on veut pouvoir retrouver les différents éléments de la liste `extended` par accès direct: en ne faisant qu'un seul *lookup* dans l'index produit.


```
# le résultat attendu
result_index = exo_index.resultat(extended)

# à quoi ressemble le résultat pour un bateau au hasard
from pprint import pprint
for key, value in result_index.iteritems():
    print "==== clé"
    pprint(key)
    print "==== valeur"
    pprint(value)
    break
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-5-04ce0b3f4e41> in <module>()
          1 # le résultat attendu
    ----> 2 result_index = exo_index.resultat(extended)
          3
          4 # à quoi ressemble le résultat pour un bateau au hasard
          5 from pprint import pprint


    NameError: name 'exo_index' is not defined


##### Votre code


```
def index(extended):
    "<votre_code>"
```

##### Validation


```
exo_index.correction(index, abbreviated)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-7-0a09619f16b7> in <module>()
    ----> 1 exo_index.correction(index, abbreviated)


    NameError: name 'exo_index' is not defined


Vous remarquerez d'ailleurs que la seule chose qu'on utilise dans cet exercice, c'est que l'id des bateaux arrive en première position (dans la liste qui matérialise le bateau), aussi votre code doit marcher à l'identique avec les bateaux étendus&nbsp;:


```
exo_index.correction(index, extended)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-8-df3e4493e5b4> in <module>()
    ----> 1 exo_index.correction(index, extended)


    NameError: name 'exo_index' is not defined


### Exercice - niveau intermédiaire


```
# chargement de l'exercice
from corrections.w3s2_marine_dict import exo_merge
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-9-9ff277b3a3ed> in <module>()
          1 # chargement de l'exercice
    ----> 2 from corrections.w3s2_marine_dict import exo_merge


    ImportError: No module named corrections.w3s2_marine_dict


##### But de l'exercice

On vous demande d'écrire une fonction `merge` qui fasse une consolidation des données, de façon à obtenir en sortie un dictionnaire:

    id -> [ nom_bateau, code_pays, position_etendu, position_abrege ]

dans lequel les deux objets `position` sont tous les deux des tuples de la forme

    (latitude, longitude, date_heure)

Voici par exemple un couple clé-valeur dans le résultat attendu. Profitons-en pour découvrir un utilitaire parfois pratique: le [module `pprint` pour pretty-printer](https://docs.python.org/2/library/pprint.html)


```
# le résultat attendu
result_merge = exo_merge.resultat(extended, abbreviated)

# a quoi ressemble le résultat pour un bateau au hasard
from pprint import pprint
for key_value in result_merge.iteritems():
    pprint(key_value)
    break
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-10-e28cc2a5a15d> in <module>()
          1 # le résultat attendu
    ----> 2 result_merge = exo_merge.resultat(extended, abbreviated)
          3
          4 # a quoi ressemble le résultat pour un bateau au hasard
          5 from pprint import pprint


    NameError: name 'exo_merge' is not defined


##### Votre code


```
def merge(extended, abbreviated):
    "<votre_code>"
```

##### Validation


```
exo_merge.correction(merge, extended, abbreviated)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-12-6ad4b3dd64fb> in <module>()
    ----> 1 exo_merge.correction(merge, extended, abbreviated)


    NameError: name 'exo_merge' is not defined


### Les fichiers de données complets

Signalons enfin pour ceux qui sont intéressés que les données chargées dans cet exercice sont disponibles au format JSON - qui est précisément celui exposé par marinetraffic.

Nous avons beaucoup simplifié les données d'entrée pour vous permettre une mise au point plus facile. Si vous voulez vous amuser à charger des données un peu plus significatives, sachez que

  * vous avez accès aux fichiers de données plus complets&nbsp;:
    * [data/marine-e1-ext.json](data/marine-e1-ext.json)
    * [data/marine-e1-abb.json](data/marine-e1-abb.json)
  * pour charger ces fichiers, qui sont donc au [format JSON](http://en.wikipedia.org/wiki/JSON), la connaissance intime de ce format n'est pas nécessaire, on peut tout simplement utiliser le [module `json`](https://docs.python.org/2/library/json.html). Voici le code utilisé dans l'exercice pour charger ces JSON en mémoire; il utilise des notions que nous verrons dans les semaines à venir:


```
# load data from files
import json

with open("data/marine-e1-ext.json") as feed:
    extended_full = json.load(feed)

with open("data/marine-e1-abb.json") as feed:
    abbreviated_full = json.load(feed)
```

Une fois que vous avez un code qui fonctionne vous pouvez le lancer sur ces données plus copieuses en faisant


```
exo_merge.correction(merge, extended_full, abbreviated_full)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-14-8dafc13b8edd> in <module>()
    ----> 1 exo_merge.correction(merge, extended_full, abbreviated_full)


    NameError: name 'exo_merge' is not defined

