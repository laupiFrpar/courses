
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Décoder le module `this`

## Exercice - niveau avancé

### Le module `this` et le *zen de python*

Nous avons déjà eu l'occasion de parler du *zen de python*; on peut lire ce texte en important le module `this` comme ceci


```
import this
```

    The Zen of Python, by Tim Peters

    Beautiful is better than ugly.
    Explicit is better than implicit.
    Simple is better than complex.
    Complex is better than complicated.
    Flat is better than nested.
    Sparse is better than dense.
    Readability counts.
    Special cases aren't special enough to break the rules.
    Although practicality beats purity.
    Errors should never pass silently.
    Unless explicitly silenced.
    In the face of ambiguity, refuse the temptation to guess.
    There should be one-- and preferably only one --obvious way to do it.
    Although that way may not be obvious at first unless you're Dutch.
    Now is better than never.
    Although never is often better than *right* now.
    If the implementation is hard to explain, it's a bad idea.
    If the implementation is easy to explain, it may be a good idea.
    Namespaces are one honking great idea -- let's do more of those!


Il suit du cours qu'une fois cet import effectué nous avons accès à une variable `this`, de type module:


```
this
```




    <module 'this' from '/usr/lib/python2.7/this.pyc'>



### But de l'exercice


```
# chargement de l'exercice
from corrections.w3s5_decode_zen import exo_decode_zen
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-3-41ceb15310a8> in <module>()
          1 # chargement de l'exercice
    ----> 2 from corrections.w3s5_decode_zen import exo_decode_zen


    ImportError: No module named corrections.w3s5_decode_zen


Le but de l'exercice est de deviner le contenu du module, et d'écrire une fonction `decode_zen`, qui retourne le texte du manifeste.

### Indices

Cet exercice peut paraître un peu déconcertant; voici quelques indices optionnels :


```
dir(this)
```




    ['__builtins__',
     '__doc__',
     '__file__',
     '__name__',
     '__package__',
     'c',
     'd',
     'i',
     's']



Vous pouvez ignorer `this.c` et `this.i`, les deux autres variables du module sont importantes pour nous.


```
# le résultat attendu
resultat = exo_decode_zen.resultat(this)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-5-4d063a125d0f> in <module>()
          1 # le résultat attendu
    ----> 2 resultat = exo_decode_zen.resultat(this)


    NameError: name 'exo_decode_zen' is not defined


Ceci devrait vous donner une idée de comment utiliser une des deux variables du module


```
len(this.s) == len(resultat)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-6-25bf5a059a5d> in <module>()
    ----> 1 len(this.s) == len(resultat)


    NameError: name 'resultat' is not defined


À quoi peut bien servir l'autre ?


```
this.d[this.s[0]] == resultat[0]
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-7-3a3082dc6b14> in <module>()
    ----> 1 this.d[this.s[0]] == resultat[0]


    NameError: name 'resultat' is not defined


Le texte comporte certes des caractères alphabétiques


```
len(this.d)
```




    52



mais pas seulement; les autres sont préservés.

### À vous de jouer


```
def decode_zen(this):
    "<votre code>"
```

### Correction


```
exo_decode_zen.correction(decode_zen)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-10-143ce5cee61a> in <module>()
    ----> 1 exo_decode_zen.correction(decode_zen)


    NameError: name 'exo_decode_zen' is not defined

