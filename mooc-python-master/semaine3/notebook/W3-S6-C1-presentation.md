
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Bonnes pratiques de présentation de code

## Complément - niveau basique

### La PEP-008

On trouve [dans la PEP-008 (en anglais)](http://legacy.python.org/dev/peps/pep-0008/) les conventions de codage qui s'appliquent à toute la librairie standard, et qui sont certainement un bon point de départ pour vous aider à trouver le style de présentation qui vous convient.

Nous vous recommandons en particulier les sections sur
 * [l'indentation](http://legacy.python.org/dev/peps/pep-0008/#code-lay-out)
 * [les espaces](http://legacy.python.org/dev/peps/pep-0008/#whitespace-in-expressions-and-statements)
 * [les commentaires](http://legacy.python.org/dev/peps/pep-0008/#comments)



### Un peu de lecture : le module `pprint`

Voici par exemple le code du module `pprint` (comme PrettyPrint) de la librairie standard, que nous avons déjà rencontré et qui permet d'imprimer des données.

La fonction du module - le pretty printing - est évidemment accessoire ici, mais vous pouvez y voir illustré
 * le *docstring* pour le module, jusqu'en ligne 35,
 * les indentations, comme nous l'avons déjà mentionné sont à 4 espaces, et sans tabulation,
 * l'utilisation des espaces, notamment autour des affectations et opérateurs, des définitions de fonction, des appels de fonctions...
 * les lignes qui restent dans une largeur "raisonnable" (79 caractères)
 * vous pouvez regarder notamment la façon de couper les lignes pour respecter cette limite en largeur.


```
from modtools import show_module_html
import pprint
show_module_html(pprint, lineno_width=3)
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-f04ad527f458> in <module>()
    ----> 1 from modtools import show_module_html
          2 import pprint
          3 show_module_html(pprint, lineno_width=3)


    ImportError: No module named modtools


### Espaces

Comme vous pouvez le voir dans `pprint.py`, les règles principales concernant les espaces sont les suivantes.

* S'agissant des **affectations** et **opérateurs**, on fera

    `x = y + z`

  Et non pas

    ~~`x=y+z`~~

  Ni

    ~~`x = y+z`~~

  Ni encore

    ~~``x=y + z`~~

L'idée étant d'aérer de manière homogène pour faciliter la lecture.

* On **déclare une fonction** comme ceci

    `def foo(x, y, z):`

   Et non pas comme ceci, (qu'on pourrait être tenté de faire)

    ~~`def foo (x, y, z):`~~

   Ni surtout comme ceci

    ~~`def foo (x,y,z):`~~

* La même règle s'applique naturellement aux **appels de fonction**&nbsp;: `foo(x, y, z)` et non pas ~~`foo (x,y,z)`~~ ou ~~`def foo (x, y, z):`~~

Il est important de noter qu'il s'agit ici de **règles d'usage** et non pas de règles syntaxiques; tous les exemples barrés ci-dessus sont en fait **syntaxiquement correct**, l'interpréteur les accepterait sans souci; mais ces règles sont **très largement adoptées**, et obligatoires pour intégrer du code dans la librairie standard.

### Coupures de ligne

Nous allons à présent zoomer dans ce module pour voir quelques exemples de coupure de ligne. Par contraste avec ce qui précède, il s'agit cette fois surtout de **règles syntaxiques**, qui peuvent rendre un code non valide si elles ne sont pas suivies.

##### Coupure de ligne sans *backslash* (\\)


```
show_module_html(pprint,
                 beg="def pprint",
                 end="def pformat",
                 lineno_width=3)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-2-15faef0740e0> in <module>()
    ----> 1 show_module_html(pprint,
          2                  beg="def pprint",
          3                  end="def pformat",
          4                  lineno_width=3)


    NameError: name 'show_module_html' is not defined


La fonction `pprint` (ligne ~55) est une commodité (qui crée une instance de `PrettyPrinter`, sur lequel on envoie la méthode `pprint`).

Vous voyez ici qu'il n'est **pas nécessaire** d'insérer un *backslash* (`\`) à la fin de la ligne 57, car il y a une parenthèse ouvrante qui n'est pas fermée à ce stade.

De manière générale, lorsqu'un parenthèse ouvrante `(` - idem avec les crochets `[` et accolades `{` - n'est pas fermée sur la même ligne, l'interpréteur suppose qu'elle sera fermée plus loin et n'impose pas de *backslash*.

Ainsi par exemple on peut écrire sans *backslash*:

    valeurs = [
       1,
       2,
       3,
       5,
       7,
    ]

Ou encore

    x = un_nom_de_fonction_tres_tres_long(
           argument1, argument2,
           argument3, argument4,
        )

À titre de rappel, signalons aussi les chaînes de caractères à base de `"""` ou `'''` qui permettent elles aussi d'utiliser pluseurs lignes consécutives sans *backslash*, comme

    texte = """ Les sanglots longs
    Des violons
    De l'automne"""

***

##### Coupure de ligne avec *backslash* (\\)

Par contre il est des cas où le backslash est nécessaire&nbsp;:


```
show_module_html(pprint,
                 beg="components), readable, recursive",
                 end="elif _len(object) ",
                 lineno_width=3)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-3-de609ce34512> in <module>()
    ----> 1 show_module_html(pprint,
          2                  beg="components), readable, recursive",
          3                  end="elif _len(object) ",
          4                  lineno_width=3)


    NameError: name 'show_module_html' is not defined


Dans ce fragment au contraire, vous voyez en ligne 290 qu'**il a fallu cette fois** insérer un *backslash* `\` comme caractère de continuation pour que l'instruction puisse se poursuivre en ligne 291.

***

##### Coupures de lignes - épilogue

Dans tous le cas où une instruction est répartie sur plusieurs lignes, c'est naturellement l'indentation de **la première ligne** qui est significative pour savoir à quel bloc rattacher cette instruction.

Notez bien enfin qu'on peut toujours mettre un backslash même lorsque ce n'est pas nécessaire, mais on évite cette pratique en règle générale car les *backslash* nuisent à la lisibilité. (Sauf toutefois dans le cas des chaînes de caractères avec `"""` où le backslash est significatif).

## Complément - niveau intermédiaire

### Les deux-points ':'

Vous pouvez [vous reporter à ce lien](https://docs.python.org/2/faq/design.html#why-are-colons-required-for-the-if-while-def-class-statements) si vous êtes intéressé par la question de savoir pourquoi on a choisi un délimiteur (le caractère deux-points `:`) pour terminer les instructions comme `if`, `for` et `def`.

## Complément - niveau avancé

Signalons enfin, pour ceux qui sont intéressés par les conventions de codage, que tout ceci ne s'applique bien entendu qu'à python. Pour quelques exemples qui s'appliqueraient au langage C, vous pouvez par curiosité voir le [CodingStyle pour le noyau linux](https://www.kernel.org/doc/Documentation/CodingStyle) , qui lui-même fait référence - et pas en bien - aux [Gnu Coding Standards](http://www.gnu.org/prep/standards/standards.html).

Même si le langage est différent, le but des conventions de codage est toujours le même, il s'agit d'améliorer la lisibilité, et il peut être intéressant de voir ce que Linus Torvalds a à dire, dans le style qui est le sien, sur les indentations (le tout premier chapitre).
