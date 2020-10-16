
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Expressions régulières

Nous vous proposons dans ce notebook quelques exercices sur les expressions régulières. Faisons quelques remarques avant de commencer&nbsp;:
 * nous nous concentrons sur l'écriture de l'expression régulière en elle-même, et pas sur l'utilisation de la librairie&nbsp;;
 * en particulier, tous les exercices font appel à `re.match` entre votre *regexp* et une liste de chaînes d'entrée qui servent de jeux de test - ce qui signifie notamment que vous pouvez ou pas commencer votre regexp par le caractère `^`, cela ne changera rien au résultat de la correction, puisqu'en utilisant `match` on impose que la correspondance doit avoir lieu au debut de la chaîne.

##### Liens utiles

Pour travailler sur ces exercices, vous pouvez profitablement avoir sous la main&nbsp;:
 * la [documentation officielle](https://docs.python.org/2/library/re.html#regular-expression-syntax),
 * et [cet outil interactif sur regexp101.com](http://regex101.com/#python) qui permet d'avoir un retour presque immédiat, et donc d'accélérer la mise au point.

## Exercice - niveau basique

##### Identificateurs python

Écrivez une expression régulière qui décrit ce qu'on peut utiliser comme nom de variable en python.


```
# quelques exemples
from corrections.w6s6_regexp import exo_pythonid
exo_pythonid.exemple()
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-f258f9835193> in <module>()
          1 # quelques exemples
    ----> 2 from corrections.w6s6_regexp import exo_pythonid
          3 exo_pythonid.exemple()


    ImportError: No module named corrections.w6s6_regexp



```
regexp_pythonid = "<votre_code>"
```


```
# pour valider votre code
exo_pythonid.correction(regexp_pythonid)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-3-a2eb8be69937> in <module>()
          1 # pour valider votre code
    ----> 2 exo_pythonid.correction(regexp_pythonid)


    NameError: name 'exo_pythonid' is not defined


## Exercice - niveau intermédiaire

##### Méthodes spéciales

Nous avons vu la semaine passée les méthodes spéciales utilisées par python pour vous permettre de redéfinir le comportement du langage avec les objets de vos classes.

Le but de cet exercice est d'écrire une expression régulière qui décrive une classe de noms de méthodes, susceptibles d'être considérés comme des noms de méthodes spéciales.

Pour préciser l'exercice, on recherche des noms de méthodes qui doivent&nbsp;:
 1. commencer par exactement deux underscores (appelés également tirets-bas) `_`,
 1. se terminer par exactement deux underscores,
 1. contenir dans la partie centrale un identificateur qui pourrait être un identificateur python (mais qui pour respecter les deux premiers points ne peut pas commencer ou finir par un underscore)


```
# quelques exemples
from corrections.w6s6_regexp import exo_specials
exo_specials.exemple()
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-4-d8dc4bb8486c> in <module>()
          1 # quelques exemples
    ----> 2 from corrections.w6s6_regexp import exo_specials
          3 exo_specials.exemple()


    ImportError: No module named corrections.w6s6_regexp



```
regexp_specials = "<votre_regexp>"
```


```
# validation
exo_specials.correction(regexp_specials)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-6-f6cefb230497> in <module>()
          1 # validation
    ----> 2 exo_specials.correction(regexp_specials)


    NameError: name 'exo_specials' is not defined


## Exercice - niveau avancé

Vu comment sont conçus les exercices, vous ne pouvez pas passer à `re.compile` un *flag* comme `re.IGNORECASE` ou autre&nbsp;; sachez cependant que vous pouvez ***embarquer* ces flags dans la *regexp*** elle-même&nbsp;; par exemple pour rendre la regexp insensible à la casse de caractères, au lieu d'appeler `re.compile` avec le flag `re.I`, vous pouvez utiliser `(?i)` comme ceci&nbsp;:


```
import re
re.match("(?i)abc","ABC").group(0)
```




    'ABC'



Remarquez bien que l'emplacement où vous ajoutez le *flag* dans la * regexp* n'a pas d'importance en général (lire la doc pour le flag `x`), le flag agit toujours sur toute la *regexp*.


```
re.match("abc(?i)","ABC").group(0)
```




    'ABC'



Pour plus de précisions sur ce trait, que nous avons laissé de coté dans le complément pour ne pas trop l'alourdir, voyez [la documentation sur les expressions régulières](https://docs.python.org/2/library/re.html#regular-expression-syntax) et cherchez la première occurrence de `iLmsux`.

### Décortiquer une URL

On vous demande d'écrire une expression régulière qui permette d'analyser des URLs.

Voici les conventions que nous avons adoptées pour l'exercice&nbsp;:
 * la chaîne contient les parties suivantes
   * `<protocol>://<location>/<path>`
 * l'url commence par le nom d'un protocole qui doit être parmi `http`, `https`, `ftp`, `ssh`
 * le nom du protocole peut contenir de manière indifférente des minuscules ou des majuscules,
 * ensuite doit venir la séquence `://`
 * ensuite on va trouver une chaîne `<location>` qui contient&nbsp;:
   * potentiellement un nom d'utilisateur, et s'il est présent, potentiellement un mot de passe,
   * obligatoirement un nom de `hostname`,
   * potentiellement un numéro de port;
 * lorsque les 4 parties sont présentes dans `<location>`, cela se présente comme ceci&nbsp;:
   * `<location> = <user>:<password>@<hostname>:<port>`
 * si l'on note entre crochets les parties optionnelles, cela donne&nbsp;:
   * `<location> = [<user>[:<password>]@]<hostname>[:<port>]`
 * le champ `<user>` ne peut contenir que des caractères alphanumériques; si le `@` est présent le champ `<user>` ne peut pas être vide
 * le champ `<password>` peut contenir tout sauf un `:` et de même, si le `:` est présent le champ `<password>` ne peut pas être vide
 * le champ `<hostname>` peut contenir un suite non-vide de caractères alphanumériques, underscores, ou `.`
 * le champ `<port>` ne contient que des chiffres, et il est non vide si le `:` est spécifié
 * le champ `<path>` peut être vide.


Enfin, vous devez définir les groupes `proto`, `user`, `password`, `hostname`, `port` et `path` qui sont utilisés pour vérifier votre résultat. Dans la case `Résultat attendu`, vous trouverez soit `None` si la regexp ne filtre pas l'intégralité de l'entrée, ou bien une liste ordonnée de tuples qui donnent la valeur de ces groupes&nbsp;; vous n'avez rien à faire pour construire ces tuples, c'est l'exercice qui s'en occupe.


```
from corrections.w6s6_regexp import exo_url
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-9-1c08b72a107e> in <module>()
    ----> 1 from corrections.w6s6_regexp import exo_url


    ImportError: No module named corrections.w6s6_regexp



```
exo_url.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-10-d20fe858925a> in <module>()
    ----> 1 exo_url.exemple()


    NameError: name 'exo_url' is not defined



```
# n'hésitez pas à construire votre regexp petit à petit

regexp_url = "<votre_regexp>"
```


```
exo_url.correction(regexp_url)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-12-c6a0a5e4df65> in <module>()
    ----> 1 exo_url.correction(regexp_url)


    NameError: name 'exo_url' is not defined

