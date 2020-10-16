
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Séquences

## Exercice - niveau basique

### Slicing

Commençons par créer une chaîne de caractères. Ne vous inquiétez pas si vous ne comprenez pas encore le code d'initialisation présenté ci-dessous.

Pour les plus curieux, l'instruction `import`  permet de charger dans votre programme une boîte à outils que l'on appelle un module. Python vient avec de nombreux modules qui forment la librairie standard. Le plus difficile avec les modules de la librairie standard est de savoir qu'ils existent. En effet, il y en a un grand nombre et bien souvent il existe un module pour faire ce que vous souhaitez.

Pour vous familiariser avec les modules de la librairie standard et vous montrer qu'ils peuvent vous faire gagner du temps, nous en introduisons très tôt certains. N'hésitez pas à regarder l'aide Python qui décrit en détail tous les modules de la librairie standard, et en particulier le module `string` que l'on utilise ci-dessous.


```
import string
chaine = string.ascii_lowercase
print chaine
```

    abcdefghijklmnopqrstuvwxyz


Pour chacune des sous-chaînes ci-dessous, écrire une expression de slicing sur `chaine` qui renvoie la sous-chaîne. La cellule de code doit retourner `True`

Par exemple pour obtenir "def":


```
chaine[3:6] == "def"
```




    True



1) Pour obtenir "vwx" (n'hésitez pas à utiliser les indices négatifs)


```
chaine[ <votre_code> ] == "vwx"
```


      File "<ipython-input-3-753d15517c7a>", line 1
        chaine[ <votre_code> ] == "vwx"
                ^
    SyntaxError: invalid syntax



2) Pour obtenir "wxyz" (avec une seule constante)


```
chaine[ <votre_code> ] == "wxyz"
```


      File "<ipython-input-4-7f2f958ba1e1>", line 1
        chaine[ <votre_code> ] == "wxyz"
                ^
    SyntaxError: invalid syntax



3) Pour obtenir "dfhjlnprtvxz" (avec deux constantes)


```
chaine[ <votre_code> ] == "dfhjlnprtvxz"
```


      File "<ipython-input-5-add58d722e3b>", line 1
        chaine[ <votre_code> ] == "dfhjlnprtvxz"
                ^
    SyntaxError: invalid syntax



4) Pour obtenir "xurolifc" (avec deux constantes)


```
chaine[ <votre_code> ] == "xurolifc"
```


      File "<ipython-input-6-d8daa0d0ab97>", line 1
        chaine[ <votre_code> ] == "xurolifc"
                ^
    SyntaxError: invalid syntax



## Exercice - niveau intermédiaire

### Longueur


```
# pour charger l'exercice
from corrections.w2s3_slicing import exo_inconnue
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-7-165fb9258ab8> in <module>()
          1 # pour charger l'exercice
    ----> 2 from corrections.w2s3_slicing import exo_inconnue


    ImportError: No module named corrections.w2s3_slicing


On vous donne une chaîne `composite` dont on sait qu'elle a été calculée à partir de deux chaînes `inconnue` et `connue` comme ceci:

    composite = connue + inconnue + connue

On vous donne également la chaîne `connue`. Imaginez par exemple que vous avez (ce ne sont pas les vraies valeurs):

    connue = 0bf1
    composite = 0bf1a9730e150bf1



L'exercice consiste à retrouver la valeur de `inconnue` à partir de celles de `composite` et `connue`.


```
# charger la valeur des deux chaînes 'connue' et 'composite'
from corrections.w2s3_slicing import connue, composite
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-8-962eadfba0c8> in <module>()
          1 # charger la valeur des deux chaînes 'connue' et 'composite'
    ----> 2 from corrections.w2s3_slicing import connue, composite


    ImportError: No module named corrections.w2s3_slicing


À vous d'écrire du code pour retrouver `inconnue` à partir de `composite` et `connue`. Vous pouvez utiliser du *slicing*, et la fonction `len()`.

Pour être parfaitement clair, dans l'esprit, votre calcul doit pouvoir fonctionner avec n'importe quelles valeurs de `composite` et `connue`, pas seulement celle que vous propose l'exercice. Donc par exemple écrire `inconnue = "61538"` ou même `inconnue = compite[4:12]` ne sont pas des réponses valables.


```
# vous pouvez bien sûr utiliser plusieurs lignes
inconnue = "votre code"
```

Une fois votre code évalué, vous pouvez évaluer la cellule suivante pour vérifier votre résultat.


```
# correction
exo_inconnue.correction(inconnue)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-10-74cd87f77542> in <module>()
          1 # correction
    ----> 2 exo_inconnue.correction(inconnue)


    NameError: name 'exo_inconnue' is not defined


La correction vous montre:
 * dans la première colonne la valeur que vous avez trouvée pour `inconnue`,
 * dans la seconde colonne la vraie valeur de `composite`
 * dans la colonne de droite ce que donnerait `connue + inconnue + connue` avec votre valeur de `inconnue`.

Si la ligne de couleur est en vert c'est que vous avez réussi cet exercice.

Dans le cas contraire, et si votre variable `inconnue` est fausse au point par exemple de ne même pas être une chaîne, vous pouvez voir apparaître le texte d'une exception dans la colonne de droite.
