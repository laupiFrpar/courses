
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Obtenir une réponse de l'utilisateur

## Complément - niveau basique

Occasionnellement, il peut être utile de poser une question à l'utilisateur.

### La fonction raw_input()

C'est le propos de la fonction `raw_input`. Par exemple:


```
nom_ville = raw_input("entrez le nom de la ville : ")
print "nom_ville", nom_ville
```


    ---------------------------------------------------------------------------

    StdinNotImplementedError                  Traceback (most recent call last)

    <ipython-input-1-2adf758bb6eb> in <module>()
    ----> 1 nom_ville = raw_input("entrez le nom de la ville : ")
          2 print "nom_ville", nom_ville


    /usr/local/lib/python2.7/dist-packages/ipykernel/kernelbase.pyc in raw_input(self, prompt)
        644         if not self._allow_stdin:
        645             raise StdinNotImplementedError(
    --> 646                 "raw_input was called, but this frontend does not support input requests."
        647             )
        648         return self._input_request(prompt,


    StdinNotImplementedError: raw_input was called, but this frontend does not support input requests.


Vous pouvez voir ici comment cette fonction est implémentée dans un notebook.

### Utilitaire `readline`

Nous vous conseillons d'essayer également cette fonction dans un terminal avec l'interpréteur python.

Lorsqu'elle est utilisée dans un terminal, il est utile d'associer à `raw_input` le module `readline`, ainsi l'utilisateur peut utiliser les flêches pour éditer sa réponse, pour revenir en arrière ou remonter dans l'historique de ses réponses, comme ceci


```
# utile seulement dans un terminal
import readline

entree = range(3)
for i in range(3):
    entree[i] = int(raw_input("entrez le nombre numéro {} ".format(i)))
print "entree", entree
```


    ---------------------------------------------------------------------------

    StdinNotImplementedError                  Traceback (most recent call last)

    <ipython-input-2-5128cc22cd3f> in <module>()
          4 entree = range(3)
          5 for i in range(3):
    ----> 6     entree[i] = int(raw_input("entrez le nombre numéro {} ".format(i)))
          7 print "entree", entree


    /usr/local/lib/python2.7/dist-packages/ipykernel/kernelbase.pyc in raw_input(self, prompt)
        644         if not self._allow_stdin:
        645             raise StdinNotImplementedError(
    --> 646                 "raw_input was called, but this frontend does not support input requests."
        647             )
        648         return self._input_request(prompt,


    StdinNotImplementedError: raw_input was called, but this frontend does not support input requests.


### Attention à bien vérifier/convertir

Notez bien que `raw_input` renvoie **une chaîne**; c'est assez évident, mais il est très facile de l'oublier et de passer cette chaîne directement à une fonction qui s'attend à recevoir, par exemple, un nombre entier, auquel cas les choses se passent mal:

    >>> range(raw_input("nombre de lignes: "))
    nombre de lignes: 4
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    TypeError: range() integer end argument expected, got str.

Dans ce cas il faut appeler la fonction `int` pour convertir le résultat en un entier:


```
range(int(raw_input( "nombre de lignes: " )))
```


    ---------------------------------------------------------------------------

    StdinNotImplementedError                  Traceback (most recent call last)

    <ipython-input-3-c35ec3d6ba38> in <module>()
    ----> 1 range(int(raw_input( "nombre de lignes: " )))


    /usr/local/lib/python2.7/dist-packages/ipykernel/kernelbase.pyc in raw_input(self, prompt)
        644         if not self._allow_stdin:
        645             raise StdinNotImplementedError(
    --> 646                 "raw_input was called, but this frontend does not support input requests."
        647             )
        648         return self._input_request(prompt,


    StdinNotImplementedError: raw_input was called, but this frontend does not support input requests.


### Limitations

Cette fonction nous sera utile pour nos premiers pas en python.

En pratique toutefois, on utilise assez peu cette fonction, car les applications "réelles" viennent avec leur propre interface utilisateur, souvent graphique, et disposent donc d'autres moyens que celui-ci pour interagir avec l'utilisateur.

Les applications destinées à fonctionner dans un terminal, quant à elle, reçoivent traditionnellement leurs données de la ligne de commande. C'est le propos du module `argparse` que nous verrons ultérieurement.
