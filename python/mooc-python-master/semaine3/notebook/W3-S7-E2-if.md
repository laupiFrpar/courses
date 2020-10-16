
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# L'instruction `if`

## Exercice - niveau basique

### Répartiteur (1)


```
# on charge l'exercice
from corrections.w3s7_if import exo_dispatch1
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-1-a4099a8fea4b> in <module>()
          1 # on charge l'exercice
    ----> 2 from corrections.w3s7_if import exo_dispatch1


    ImportError: No module named corrections.w3s7_if


On vous demande d'écrire une fonction `dispatch1` qui prend en argument deux entiers `a` et `b` et qui renvoie selon les cas

$\begin{array}{c|c|c}
\ & a\  pair & a\ impair \\
\hline
b\ pair & a^2+b^2 & (a-1)*b\\
\hline
b\ impair & a*(b-1)& a^2-b^2\\
\end{array}
$


```
# un petit exemples
exo_dispatch1.exemple()
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-2-984ed0b3e075> in <module>()
          1 # un petit exemples
    ----> 2 exo_dispatch1.exemple()


    NameError: name 'exo_dispatch1' is not defined



```
def dispatch1(a, b):
    "<votre_code>"
```


```
# pour vérifier votre code
exo_dispatch1.correction(dispatch1)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-4-163d69d7d720> in <module>()
          1 # pour vérifier votre code
    ----> 2 exo_dispatch1.correction(dispatch1)


    NameError: name 'exo_dispatch1' is not defined


## Exercice - niveau basique

### Répartiteur (2)


```
# chargement de l'exercice
from corrections.w3s7_if import exo_dispatch2
```


    ---------------------------------------------------------------------------

    ImportError                               Traceback (most recent call last)

    <ipython-input-5-84c09f77113a> in <module>()
          1 # chargement de l'exercice
    ----> 2 from corrections.w3s7_if import exo_dispatch2


    ImportError: No module named corrections.w3s7_if


Dans une seconde version de cet exercice, on vous demande d'écrire une fonction `dispatch2` qui prend en arguments
 * `a` et `b` deux entiers
 * `A` et `B` deux ensembles (chacun pouvant être matérialisé par un ensemble, une liste ou un tuple)

et qui renvoie selons les cas

$\begin{array}{c|c|c}
\ & a \in A & a\notin A \\
\hline
b\in B & a^2+b^2 & (a-1)*b\\
\hline
b\notin B & a*(b-1)& a^2+b^2\\
\end{array}
$


```
def dispatch2(a, b, A, B):
    "<votre_code>"
```


```
# pour vérifier votre code
exo_dispatch2.correction(dispatch2)
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    <ipython-input-7-befe0e9244b2> in <module>()
          1 # pour vérifier votre code
    ----> 2 exo_dispatch2.correction(dispatch2)


    NameError: name 'exo_dispatch2' is not defined

