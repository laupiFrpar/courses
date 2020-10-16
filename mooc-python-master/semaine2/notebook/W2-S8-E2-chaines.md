
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Les chaînes de caractères

## Exercice - niveau basique

### Analyse et mise en forme


```
# Pour charger l'exercice
from corrections.w2s8_strings import exo_libelle
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-245739f85e5e> in <module>()
          1 # Pour charger l'exercice
    ----> 2 from corrections.w2s8_strings import exo_libelle


    ImportError: No module named corrections.w2s8_strings


Un fichier contient, dans chaque ligne, des informations (champs) séparées par des virgules. Les espaces et tabulations présents dans la ligne ne sont pas significatifs et doivent être ignorés.

Dans cet exercice de niveau basique, on suppose que chaque ligne a exactement 3 champs, qui représentent respectivement le nom, le prénom, et le rang d'une personne dans un classement. Une fois les espaces et tabulations ignorés, on ne fait pas de vérification sur le contenu des 3 champs.

On vous demande d'écrire la fonction `libelle`, qui sera appelée pour chaque ligne du fichier. Cette fonction&nbsp;:
 * prend en argument une ligne (chaîne de caractères)
 * retourne une chaîne de caractères mise en forme (voir plus bas)
 * ou bien retourne None si la ligne n'a pas pu être analysée, parce qu'elle ne vérifie pas les hypothèses ci-dessus (c'est notamment le cas si on ne trouve pas exactement les 3 champs)



 La mise en forme consiste à retourner

    Nom.Prenom (message)

 le *message* étant lui-même le *rang* mis en forme pour afficher '1er', '2nd' ou '*n*-eme' selon le cas. Voici quelques exemples


```
# voici quelques exemples de ce qui est attendu
exo_libelle.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-2-5d3e86d70167> in <module>()
          1 # voici quelques exemples de ce qui est attendu
    ----> 2 exo_libelle.exemple()


    NameError: name 'exo_libelle' is not defined



```
# écrivez votre code ici
def libelle(ligne):
    "<votre_code>"
```


```
# pour le vérifier
exo_libelle.correction(libelle)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-4-01d73b0184ae> in <module>()
          1 # pour le vérifier
    ----> 2 exo_libelle.correction(libelle)


    NameError: name 'exo_libelle' is not defined


## Exercice - niveau intermédiaire

### Mise au carré


```
# chargement de l'exercice
from corrections.w2s8_strings import exo_carre
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-5-75151748988a> in <module>()
          1 # chargement de l'exercice
    ----> 2 from corrections.w2s8_strings import exo_carre


    ImportError: No module named corrections.w2s8_strings


On vous demande à présent d'écrire une fonction dans le même esprit que ci-dessus.
Cette fois, chaque ligne contient, séparés par des point-virgules, une liste d'entiers, et on veut obtenir une nouvelle chaîne avec les carrés de ces entiers, séparés par des deux-points.

À nouveau les lignes peuvent être remplies de manière approximative, avec des espaces, des tabulations, ou même des points-virgules en trop, que ce soit au début, à la fin, ou au milieu d'une ligne.


```
# exemples
exo_carre.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-6-04848a9d69f8> in <module>()
          1 # exemples
    ----> 2 exo_carre.exemple()


    NameError: name 'exo_carre' is not defined



```
# écrivez votre code ici
def carre(ligne):
    "<votre_code>"
```


```
# pour corriger
exo_carre.correction(carre)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-8-d4a9996a785a> in <module>()
          1 # pour corriger
    ----> 2 exo_carre.correction(carre)


    NameError: name 'exo_carre' is not defined

