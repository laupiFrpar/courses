
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Les instructions `break` et `continue`

## Complément - niveau basique

### `break` et `continue`

python propose deux instructions très pratiques permettant de contrôler l'exécution à l'intérieur des boucles de répétition (`for` ou `while`)

 * `continue` : pour abandonner l'itération courante et passer à la suivante
 * `break` : pour abandonner complètement la boucle

Voici un exemple simple d'utilisation de ces deux instructions


```
for entier in range(1000):
    # on ignore les nombres non multiples de 10
    if entier % 10 != 0:
        continue
    print "On traite l'entier {}".format(entier)
    # on s'arrête à 50
    if entier >= 50:
        break
print "on est sorti de la boucle"
```

    On traite l'entier 0
    On traite l'entier 10
    On traite l'entier 20
    On traite l'entier 30
    On traite l'entier 40
    On traite l'entier 50
    on est sorti de la boucle


Pour aller plus loin, vous pouvez lire [cette documentation](https://docs.python.org/2.7/tutorial/controlflow.html?highlight=break#break-and-continue-statements-and-else-clauses-on-loops).
