
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Les boucles `for`

## Exercice - niveau basique

### Liste des valeurs d'une fonction


```
# Pour charger l'exercice
from corrections.w2s7_for import exo_liste_P
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-19252423e424> in <module>()
          1 # Pour charger l'exercice
    ----> 2 from corrections.w2s7_for import exo_liste_P


    ImportError: No module named corrections.w2s7_for


On se donne une fonction polynomiale

$P(x) = 2x^2 -3x -2$

On vous demande d'écrire une fonction `liste_P` qui prend en argument une liste de nombres réels $x$ et qui retourne la liste des valeurs $P(x)$.


```
# voici un exemple de ce qui est attendu
exo_liste_P.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-2-29455f178048> in <module>()
          1 # voici un exemple de ce qui est attendu
    ----> 2 exo_liste_P.exemple()


    NameError: name 'exo_liste_P' is not defined


Écrivez votre code dans la cellule suivante (*On vous suggère d'écrire une fonction P qui implémente le poynôme mais ça n'est pas strictement indispensable, seul le résultat de `liste_P` compte*):


```
def P(x):
    "<votre code>"

def liste_P(liste_x):
    "<votre_code>"
```

Et vous pouvez le vérifier en évaluant cette cellule:


```
# pour vérifier votre code
exo_liste_P.correction(liste_P)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-4-4b40b7082fbd> in <module>()
          1 # pour vérifier votre code
    ----> 2 exo_liste_P.correction(liste_P)


    NameError: name 'exo_liste_P' is not defined


******

## Exercice - niveau basique

### Tri de plusieurs listes


```
# pour charger l'exercice
from corrections.w2s7_for import exo_multi_tri
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-5-65437443d623> in <module>()
          1 # pour charger l'exercice
    ----> 2 from corrections.w2s7_for import exo_multi_tri


    ImportError: No module named corrections.w2s7_for


Écrivez une fonction qui
 * accepte en argument une liste de listes,
 * et qui retourne **la même liste**, mais avec toutes les sous-listes **triées en place**.


```
# voici un exemple de ce qui est attendu
exo_multi_tri.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-6-5542ac40c7a4> in <module>()
          1 # voici un exemple de ce qui est attendu
    ----> 2 exo_multi_tri.exemple()


    NameError: name 'exo_multi_tri' is not defined


Écrivez votre code ici


```
def multi_tri(listes):
    "<votre_code>"
```


```
# pour vérifier votre code
exo_multi_tri.correction(multi_tri)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-8-683828a23bdb> in <module>()
          1 # pour vérifier votre code
    ----> 2 exo_multi_tri.correction(multi_tri)


    NameError: name 'exo_multi_tri' is not defined


## Exercice - niveau intermédiaire

### Tri de plusieurs listes, dans des directions différentes


```
# pour charger l'exercice
from corrections.w2s7_for import exo_multi_tri_reverse
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-9-76d984f68eb1> in <module>()
          1 # pour charger l'exercice
    ----> 2 from corrections.w2s7_for import exo_multi_tri_reverse


    ImportError: No module named corrections.w2s7_for


Modifiez votre code pour qu'il accepte cette fois **deux** arguments listes que l'on suppose de tailles égales.

Comme tout à l'heure le premier argument est une liste de listes à trier.

À présent le second argument est une liste (ou un tuple) de booléens, de même cardinal que le premier argument, et qui indiquent l'ordre dans lequel on veut trier la liste d'entrèe de même rang. `True` signifie un tri descendant, `False` un tri ascendant.

Comme dans l'exercice `multi_tri`, il s'agit de modifier en place les données en entrée, et de retourner la liste de départ.


```
# Pour être un peu plus clair, voici à quoi on s'attend
exo_multi_tri_reverse.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-10-9ad383f3d05f> in <module>()
          1 # Pour être un peu plus clair, voici à quoi on s'attend
    ----> 2 exo_multi_tri_reverse.exemple()


    NameError: name 'exo_multi_tri_reverse' is not defined


À vous de jouer


```
def multi_tri_reverse(listes, reverses):
    "<votre_code>"
```


```
# et pour vérifier votre code
exo_multi_tri_reverse.correction(multi_tri_reverse)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-12-70dcaf379dd9> in <module>()
          1 # et pour vérifier votre code
    ----> 2 exo_multi_tri_reverse.correction(multi_tri_reverse)


    NameError: name 'exo_multi_tri_reverse' is not defined


******

## Exercice - niveau intermédiaire

### Produit scalaire


```
# Pour charger l'exercice
from corrections.w2s7_for import exo_produit_scalaire
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-13-2d215cb16d98> in <module>()
          1 # Pour charger l'exercice
    ----> 2 from corrections.w2s7_for import exo_produit_scalaire


    ImportError: No module named corrections.w2s7_for


On veut écrire une fonction qui retourne le produit scalaire de deux vecteurs. Pour ceci on va matérialiser les deux vecteurs en entrée par deux listes que l'on suppose de même taille. Cela est tout à fait possible avec le bagage que nous avons appris jusqu'ici - bien que nous verrons plus tard d'autres techniques pour faire ceci de manière plus élégante.

On rappelle que le produit de X et Y vaut

$\sum_{i} X_i * Y_i$

On posera que le produit scalaire de deux listes vides vaut `0`.


```
# un petit exemple
exo_produit_scalaire.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-14-0e58987c943c> in <module>()
          1 # un petit exemple
    ----> 2 exo_produit_scalaire.exemple()


    NameError: name 'exo_produit_scalaire' is not defined


Vous devez donc écrire


```
def produit_scalaire(X,Y):
    """retourne le produit scalaire de deux listes de même taille"""
    "<votre_code>"
```


```
# pour vérifier votre code
exo_produit_scalaire.correction(produit_scalaire)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-16-4b0ba3ef2f80> in <module>()
          1 # pour vérifier votre code
    ----> 2 exo_produit_scalaire.correction(produit_scalaire)


    NameError: name 'exo_produit_scalaire' is not defined


*****

## Récréation

Si vous avez correctement implémenté la fonction `liste_P` telle que demandé dans le premier exercice, vous pouvez visualiser le polynôme `P` en utilisant `matplotlib` avec le code suivant&nbsp;:


```
from pylab import arange, plot

# on prend les X de -10 à 10 par pas de 1/2
x = arange (-10., 10., 0.5)
# on calcule la valeur de P sur chaque point
y = liste_P(x)
# et on peut plotter avec pylab
plot (x, y)
```


    ---------------------------------------------------------------------------

    TclError                                  Traceback (most recent call last)

    <ipython-input-17-fc75ae7b3b55> in <module>()
          6 y = liste_P(x)
          7 # et on peut plotter avec pylab
    ----> 8 plot (x, y)


    /usr/lib/python2.7/dist-packages/matplotlib/pyplot.pyc in plot(*args, **kwargs)
       3090 @_autogen_docstring(Axes.plot)
       3091 def plot(*args, **kwargs):
    -> 3092     ax = gca()
       3093     # allow callers to override the hold state by passing hold=True|False
       3094     washold = ax.ishold()


    /usr/lib/python2.7/dist-packages/matplotlib/pyplot.pyc in gca(**kwargs)
        826     matplotlib.figure.Figure.gca : The figure's gca method.
        827     """
    --> 828     ax =  gcf().gca(**kwargs)
        829     return ax
        830


    /usr/lib/python2.7/dist-packages/matplotlib/pyplot.pyc in gcf()
        460         return figManager.canvas.figure
        461     else:
    --> 462         return figure()
        463
        464 fignum_exists = _pylab_helpers.Gcf.has_fignum


    /usr/lib/python2.7/dist-packages/matplotlib/pyplot.pyc in figure(num, figsize, dpi, facecolor, edgecolor, frameon, FigureClass, **kwargs)
        433                                         frameon=frameon,
        434                                         FigureClass=FigureClass,
    --> 435                                         **kwargs)
        436
        437         if figLabel:


    /usr/lib/python2.7/dist-packages/matplotlib/backends/backend_tkagg.pyc in new_figure_manager(num, *args, **kwargs)
         79     FigureClass = kwargs.pop('FigureClass', Figure)
         80     figure = FigureClass(*args, **kwargs)
    ---> 81     return new_figure_manager_given_figure(num, figure)
         82
         83


    /usr/lib/python2.7/dist-packages/matplotlib/backends/backend_tkagg.pyc in new_figure_manager_given_figure(num, figure)
         87     """
         88     _focus = windowing.FocusManager()
    ---> 89     window = Tk.Tk()
         90     window.withdraw()
         91


    /usr/lib/python2.7/lib-tk/Tkinter.pyc in __init__(self, screenName, baseName, className, useTk, sync, use)
       1811                 baseName = baseName + ext
       1812         interactive = 0
    -> 1813         self.tk = _tkinter.create(screenName, baseName, className, interactive, wantobjects, useTk, sync, use)
       1814         if useTk:
       1815             self._loadtk()


    TclError: no display name and no $DISPLAY environment variable

