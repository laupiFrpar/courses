
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Dessiner un carré

## Exercice - niveau intermédiaire

Voici un tout petit programme qui dessine un carré

Il utilise le module `turtle`, conçu précisément à des fins pédagogiques. Pour des raisons techniques, le module `turtle` n'est **pas disponible** au travers de la plateforme FUN.

Il est donc inutile d'essayer d'exécuter ce programme depuis le notebook; l'objectif de cet exercice est plutôt de vous entraîner à télécharger ce programme en utilisant le menu *"File -> Download as -> python"*, puis à le charger dans votre IDLE pour l'exécuter sur votre machine.


```
# we need the turtle module
import turtle
```

On commence par définir une fonction qui dessine un carré de coté `length`


```
def square(length):
    "have the turtle draw a square of side <length>"
    for side in range(4):
        turtle.forward(length)
        turtle.left(90)
```

Maintenant on commence par initialiser la tortue


```
turtle.reset()
```


    ---------------------------------------------------------------------------

    TclError                                  Traceback (most recent call last)

    <ipython-input-3-4567ff031fd6> in <module>()
    ----> 1 turtle.reset()


    /usr/lib/python2.7/lib-tk/turtle.pyc in reset()


    /usr/lib/python2.7/lib-tk/turtle.pyc in __init__(self, shape, undobuffersize, visible)
       3700                  visible=_CFG["visible"]):
       3701         if Turtle._screen is None:
    -> 3702             Turtle._screen = Screen()
       3703         RawTurtle.__init__(self, Turtle._screen,
       3704                            shape=shape,


    /usr/lib/python2.7/lib-tk/turtle.pyc in Screen()
       3550     else return the existing one."""
       3551     if Turtle._screen is None:
    -> 3552         Turtle._screen = _Screen()
       3553     return Turtle._screen
       3554


    /usr/lib/python2.7/lib-tk/turtle.pyc in __init__(self)
       3566         # preserved (perhaps by passing it as an optional parameter)
       3567         if _Screen._root is None:
    -> 3568             _Screen._root = self._root = _Root()
       3569             self._root.title(_Screen._title)
       3570             self._root.ondestroy(self._destroy)


    /usr/lib/python2.7/lib-tk/turtle.pyc in __init__(self)
        456     """Root class for Screen based on Tkinter."""
        457     def __init__(self):
    --> 458         TK.Tk.__init__(self)
        459
        460     def setupcanvas(self, width, height, cwidth, cheight):


    /usr/lib/python2.7/lib-tk/Tkinter.pyc in __init__(self, screenName, baseName, className, useTk, sync, use)
       1811                 baseName = baseName + ext
       1812         interactive = 0
    -> 1813         self.tk = _tkinter.create(screenName, baseName, className, interactive, wantobjects, useTk, sync, use)
       1814         if useTk:
       1815             self._loadtk()


    TclError: no display name and no $DISPLAY environment variable


On peut alors dessiner notre carré


```
square(200)
```


    ---------------------------------------------------------------------------

    TclError                                  Traceback (most recent call last)

    <ipython-input-4-2c3e2ab868b7> in <module>()
    ----> 1 square(200)


    <ipython-input-2-a75664393f6c> in square(length)
          2     "have the turtle draw a square of side <length>"
          3     for side in range(4):
    ----> 4         turtle.forward(length)
          5         turtle.left(90)


    /usr/lib/python2.7/lib-tk/turtle.pyc in forward(distance)


    /usr/lib/python2.7/lib-tk/turtle.pyc in __init__(self, shape, undobuffersize, visible)
       3700                  visible=_CFG["visible"]):
       3701         if Turtle._screen is None:
    -> 3702             Turtle._screen = Screen()
       3703         RawTurtle.__init__(self, Turtle._screen,
       3704                            shape=shape,


    /usr/lib/python2.7/lib-tk/turtle.pyc in Screen()
       3550     else return the existing one."""
       3551     if Turtle._screen is None:
    -> 3552         Turtle._screen = _Screen()
       3553     return Turtle._screen
       3554


    /usr/lib/python2.7/lib-tk/turtle.pyc in __init__(self)
       3566         # preserved (perhaps by passing it as an optional parameter)
       3567         if _Screen._root is None:
    -> 3568             _Screen._root = self._root = _Root()
       3569             self._root.title(_Screen._title)
       3570             self._root.ondestroy(self._destroy)


    /usr/lib/python2.7/lib-tk/turtle.pyc in __init__(self)
        456     """Root class for Screen based on Tkinter."""
        457     def __init__(self):
    --> 458         TK.Tk.__init__(self)
        459
        460     def setupcanvas(self, width, height, cwidth, cheight):


    /usr/lib/python2.7/lib-tk/Tkinter.pyc in __init__(self, screenName, baseName, className, useTk, sync, use)
       1811                 baseName = baseName + ext
       1812         interactive = 0
    -> 1813         self.tk = _tkinter.create(screenName, baseName, className, interactive, wantobjects, useTk, sync, use)
       1814         if useTk:
       1815             self._loadtk()


    TclError: no display name and no $DISPLAY environment variable


Et pour finir on attend que l'utilisateur clique dans la fenêtre de la tortue, et alors on termine


```
turtle.exitonclick()
```


    ---------------------------------------------------------------------------

    TclError                                  Traceback (most recent call last)

    <ipython-input-5-d0765ee10b41> in <module>()
    ----> 1 turtle.exitonclick()


    /usr/lib/python2.7/lib-tk/turtle.pyc in exitonclick()


    /usr/lib/python2.7/lib-tk/turtle.pyc in Screen()
       3550     else return the existing one."""
       3551     if Turtle._screen is None:
    -> 3552         Turtle._screen = _Screen()
       3553     return Turtle._screen
       3554


    /usr/lib/python2.7/lib-tk/turtle.pyc in __init__(self)
       3566         # preserved (perhaps by passing it as an optional parameter)
       3567         if _Screen._root is None:
    -> 3568             _Screen._root = self._root = _Root()
       3569             self._root.title(_Screen._title)
       3570             self._root.ondestroy(self._destroy)


    /usr/lib/python2.7/lib-tk/turtle.pyc in __init__(self)
        456     """Root class for Screen based on Tkinter."""
        457     def __init__(self):
    --> 458         TK.Tk.__init__(self)
        459
        460     def setupcanvas(self, width, height, cwidth, cheight):


    /usr/lib/python2.7/lib-tk/Tkinter.pyc in __init__(self, screenName, baseName, className, useTk, sync, use)
       1811                 baseName = baseName + ext
       1812         interactive = 0
    -> 1813         self.tk = _tkinter.create(screenName, baseName, className, interactive, wantobjects, useTk, sync, use)
       1814         if useTk:
       1815             self._loadtk()


    TclError: no display name and no $DISPLAY environment variable


## Exercice - niveau avancé

Naturellement vous pouvez vous amuser à modifier ce code pour dessiner des choses un peu plus amusantes.

Dans ce cas, commencez par chercher "module python turtle" dans votre moteur de recherche favori, pour localiser la documentation du module [`turtle`](https://docs.python.org/2/library/turtle.html).

Vous trouverez quelques exemples pour commencer ici:
 * [turtle_multi_squares.py](media/turtle_multi_squares.py) pour dessiner des carrés à l'emplacement de la souris en utilisant plusieurs tortues;
 * [turtle_fractal.py](media/turtle_fractal.py) pour dessiner une fractale simple;
 * [turtle_fractal_reglable.py](media/turtle_fractal_reglable.py) une variation sur la fractale, plus parametrable.

