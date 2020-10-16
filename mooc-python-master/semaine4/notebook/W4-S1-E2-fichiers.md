
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Fichiers

## Exercice - niveau basique

### Calcul du nombre de lignes, de mots et de caractères


```
# chargement de l'exercice
from corrections.w4s1_files import exo_comptage
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-9a4ade2c4235> in <module>()
          1 # chargement de l'exercice
    ----> 2 from corrections.w4s1_files import exo_comptage


    ImportError: No module named corrections.w4s1_files


On se propose d'écrire une * moulinette* qui annote un fichier avec des nombres de lignes, de mots et de caractères.

Le but de l'exercice est d'écrire une fonction `comptage`:
 * qui prenne en argument un nom de fichier d'entrée (on suppose qu'il existe) et un nom de fichier de sortie (on suppose qu'on a le droit de l'écrire);
 * le fichier d'entrée est laissé intact;
 *  pour chaque ligne en entrée, le fichier de sortie comporte une ligne qui donne le numéro de ligne, le nombre de mots (**séparés par des espaces**), le nombre de caractères (y compris la fin de ligne), et la ligne d'origine;
 * et enfin le fichier de sortie comporte une dernière ligne avec les nombres totaux de lignes, de mots et de caractères, **suivi d'une dernière fin de ligne**.

Dans sa version simple, cet exercice ne s'occupe que de **fichiers sans caractères accentués**.


```
# un exemple de ce qui est attendu
exo_comptage.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-2-c6f9cb87eee6> in <module>()
          1 # un exemple de ce qui est attendu
    ----> 2 exo_comptage.exemple()


    NameError: name 'exo_comptage' is not defined



```
# votre code
def comptage(in_filename, out_filename):
#    print 'in',in_filename
#    print 'out',out_filename
    "<votre_code>"
```

**N'oubliez pas de vérifier** que vous ajoutez bien la **dernière fin de ligne**.


```
# pour vérifier votre code

exo_comptage.correction(comptage)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-4-547d2561ab44> in <module>()
          1 # pour vérifier votre code
          2
    ----> 3 exo_comptage.correction(comptage)


    NameError: name 'exo_comptage' is not defined


La méthode `debug` applique votre fonction au premier fichier d'entrée, et affiche le résultat comme dans l'exemple ci-dessus.


```
# debugging
exo_comptage.debug(comptage)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-5-186ee267493f> in <module>()
          1 # debugging
    ----> 2 exo_comptage.debug(comptage)


    NameError: name 'exo_comptage' is not defined


### Accès aux fichiers d'exemples

Vous pouvez télécharger les fichiers d'exemples&nbsp;:
 * [Romeo and Juliet](data/romeo_and_juliet.txt)
 * [Lorem Ipsum](data/lorem_ipsum.txt)

Ainsi que pour les courageux, des fichiers avec accents&nbsp;:
 * ["Une charogne" en Unicode](data/une_charogne_unicode.txt)
 * ["Une charogne" en Iso-latin-15](data/une_charogne_iso15.txt)

À nouveau ces deux fichiers ne sont pas à prendre en compte dans la version basique de l'exercice. Vous pourrez même vous rendre compte qu'avec python-2, il est assez compliqué d'écrire une fonction `comptage` qui fonctionne correctement avec des entrées mixtes (c'est-à-dire indifféremment avec un fichier unicode ou isolatin) en ce qui concerne le nombre de caractères.
