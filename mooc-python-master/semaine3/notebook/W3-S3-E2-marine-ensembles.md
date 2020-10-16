
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Exercice sur les ensembles

## Exercice - niveau intermédiaire


```
# chargement de l'exercice
from corrections.w3s3_marine_set import exo_diff
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-a2e8a77ecc78> in <module>()
          1 # chargement de l'exercice
    ----> 2 from corrections.w3s3_marine_set import exo_diff


    ImportError: No module named corrections.w3s3_marine_set


### Les données

Nous reprenons le même genre de données marines en provenance de MarineTraffic que nous avons vues dans l'exercice précédent.


```
from corrections.w3s3_marine_set import abbreviated, extended
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-2-9061c53cc0a3> in <module>()
    ----> 1 from corrections.w3s3_marine_set import abbreviated, extended


    ImportError: No module named corrections.w3s3_marine_set


### Rappels sur les formats

    étendu: [id, latitude, longitude, date_heure,
             nom_bateau, code_pays...]
    abrégé: [id, latitude, longitude, date_heure]


```
print extended[0]
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-3-411b9959736c> in <module>()
    ----> 1 print extended[0]


    NameError: name 'extended' is not defined



```
print abbreviated[0]
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-4-630b68394f3f> in <module>()
    ----> 1 print abbreviated[0]


    NameError: name 'abbreviated' is not defined


### But de l'exercice


```
# chargement de l'exercice
from corrections.w3s3_marine_set import exo_diff
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-5-a2e8a77ecc78> in <module>()
          1 # chargement de l'exercice
    ----> 2 from corrections.w3s3_marine_set import exo_diff


    ImportError: No module named corrections.w3s3_marine_set


Notez bien une différence importante avec l'exercice précédent: cette fois **il n'y a plus correspondance** entre les bateaux rapportés dans les données étendues et abrégées.

Le but de l'exercice est précisément d'étudier la différence, et pour cela on vous demande d'écrire une fonction

    diff(extended, abbreviated)

qui retourne un tuple à trois éléments
 * l'ensemble (`set`) des **noms** des bateaux présents dans `extended` mais pas dans `abbreviated`
 * l'ensemble des **noms** des bateaux présents dans `extended` et dans `abbreviated`
 * l'ensemble des **id** des bateaux présents dans `abbreviated`
 mais pas dans `extended` (par construction, les données ne nous permettent pas d'obtenir les noms de ces bateaux)


```
# le résultat attendu
result = exo_diff.resultat(extended, abbreviated)

# combien de bateaux sont concernés
def show_result(extended, abbreviated, result):
    """
    Affiche divers décomptes sur les arguments
    en entrée et en sortie de diff
    """
    print 10*'-', "Les entrées"
    print "Dans extended: {} entrées".format(len(extended))
    print "Dans abbreviated: {} entrées".format(len(abbreviated))
    print 10*'-', "Le résultat du diff"
    extended_only, both, abbreviated_only = result
    print 'Dans extended mais pas dans abbreviated', len(extended_only)
    print 'Dans les deux', len(both)
    print 'Dans abbreviated mais pas dans extended', len(abbreviated_only)

show_result(extended, abbreviated, result)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-6-e816ef6fe0c4> in <module>()
          1 # le résultat attendu
    ----> 2 result = exo_diff.resultat(extended, abbreviated)
          3
          4 # combien de bateaux sont concernés
          5 def show_result(extended, abbreviated, result):


    NameError: name 'exo_diff' is not defined


### Votre code


```
def diff(extended, abbreviated):
    "<votre_code>"
```

### Validation


```
exo_diff.correction(diff, extended, abbreviated)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-8-daa21436b051> in <module>()
    ----> 1 exo_diff.correction(diff, extended, abbreviated)


    NameError: name 'exo_diff' is not defined


### Des fichiers de données plus réalistes

Comme pour l'exercice précédent, les données fournies ici sont très simplistes; vous pouvez si vous le voulez essayer votre code avec des données (un peu) plus réalistes en chargeant des fichiers de données plus complets&nbsp;:

 * [data/marine-e2-ext.json](data/marine-e2-ext.json)
 * [data/marine-e2-abb.json](data/marine-e2-abb.json)

Ce qui donnerait en python&nbsp;:


```
# load data from files
import json

with open("data/marine-e2-ext.json") as feed:
    extended_full = json.load(feed)

with open("data/marine-e2-abb.json") as feed:
    abbreviated_full = json.load(feed)
```


```
# le résultat de votre fonction sur des données plus vastes
diff_full = diff(extended_full, abbreviated_full)
show_result(extended_full, abbreviated_full, diff_full)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-10-121309ea832e> in <module>()
          1 # le résultat de votre fonction sur des données plus vastes
          2 diff_full = diff(extended_full, abbreviated_full)
    ----> 3 show_result(extended_full, abbreviated_full, diff_full)


    NameError: name 'show_result' is not defined


Je signale enfin à propos de ces données plus complètes que&nbsp;:
  * on a supprimé les entrées correspondants à des bateaux différents mais de même nom; cette situation peut arriver dans la réalité (c'est pourquoi d'ailleurs les bateaux ont un *id*) mais ici ce n'est pas le cas.
  * il se peut par contre qu'un même bateau fasse l'objet de plusieurs mesures dans `extended` et/ou dans `abbreviated`.
