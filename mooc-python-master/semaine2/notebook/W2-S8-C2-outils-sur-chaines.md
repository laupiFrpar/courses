
<span style="float:left;">Licence CC BY-NC-ND</span><span style="float:right;">Thierry Parmentelat &amp; Arnaud Legout,<img src="../../media/inria-25.png" style="display:inline"></span><br/>

# Les outils de base sur les strings

## Complément - niveau intermédiaire

### Lire la documentation

Même après des années de pratique, il est difficile de se souvenir de toutes les méthodes travaillant sur les chaînes de caractères. Aussi il est toujours utile de recourir à la documentation embarquée:


```
help(str)
```

    Help on class str in module __builtin__:

    class str(basestring)
     |  str(object='') -> string
     |
     |  Return a nice string representation of the object.
     |  If the argument is a string, the return value is the same object.
     |
     |  Method resolution order:
     |      str
     |      basestring
     |      object
     |
     |  Methods defined here:
     |
     |  __add__(...)
     |      x.__add__(y) <==> x+y
     |
     |  __contains__(...)
     |      x.__contains__(y) <==> y in x
     |
     |  __eq__(...)
     |      x.__eq__(y) <==> x==y
     |
     |  __format__(...)
     |      S.__format__(format_spec) -> string
     |
     |      Return a formatted version of S as described by format_spec.
     |
     |  __ge__(...)
     |      x.__ge__(y) <==> x>=y
     |
     |  __getattribute__(...)
     |      x.__getattribute__('name') <==> x.name
     |
     |  __getitem__(...)
     |      x.__getitem__(y) <==> x[y]
     |
     |  __getnewargs__(...)
     |
     |  __getslice__(...)
     |      x.__getslice__(i, j) <==> x[i:j]
     |
     |      Use of negative indices is not supported.
     |
     |  __gt__(...)
     |      x.__gt__(y) <==> x>y
     |
     |  __hash__(...)
     |      x.__hash__() <==> hash(x)
     |
     |  __le__(...)
     |      x.__le__(y) <==> x<=y
     |
     |  __len__(...)
     |      x.__len__() <==> len(x)
     |
     |  __lt__(...)
     |      x.__lt__(y) <==> x<y
     |
     |  __mod__(...)
     |      x.__mod__(y) <==> x%y
     |
     |  __mul__(...)
     |      x.__mul__(n) <==> x*n
     |
     |  __ne__(...)
     |      x.__ne__(y) <==> x!=y
     |
     |  __repr__(...)
     |      x.__repr__() <==> repr(x)
     |
     |  __rmod__(...)
     |      x.__rmod__(y) <==> y%x
     |
     |  __rmul__(...)
     |      x.__rmul__(n) <==> n*x
     |
     |  __sizeof__(...)
     |      S.__sizeof__() -> size of S in memory, in bytes
     |
     |  __str__(...)
     |      x.__str__() <==> str(x)
     |
     |  capitalize(...)
     |      S.capitalize() -> string
     |
     |      Return a copy of the string S with only its first character
     |      capitalized.
     |
     |  center(...)
     |      S.center(width[, fillchar]) -> string
     |
     |      Return S centered in a string of length width. Padding is
     |      done using the specified fill character (default is a space)
     |
     |  count(...)
     |      S.count(sub[, start[, end]]) -> int
     |
     |      Return the number of non-overlapping occurrences of substring sub in
     |      string S[start:end].  Optional arguments start and end are interpreted
     |      as in slice notation.
     |
     |  decode(...)
     |      S.decode([encoding[,errors]]) -> object
     |
     |      Decodes S using the codec registered for encoding. encoding defaults
     |      to the default encoding. errors may be given to set a different error
     |      handling scheme. Default is 'strict' meaning that encoding errors raise
     |      a UnicodeDecodeError. Other possible values are 'ignore' and 'replace'
     |      as well as any other name registered with codecs.register_error that is
     |      able to handle UnicodeDecodeErrors.
     |
     |  encode(...)
     |      S.encode([encoding[,errors]]) -> object
     |
     |      Encodes S using the codec registered for encoding. encoding defaults
     |      to the default encoding. errors may be given to set a different error
     |      handling scheme. Default is 'strict' meaning that encoding errors raise
     |      a UnicodeEncodeError. Other possible values are 'ignore', 'replace' and
     |      'xmlcharrefreplace' as well as any other name registered with
     |      codecs.register_error that is able to handle UnicodeEncodeErrors.
     |
     |  endswith(...)
     |      S.endswith(suffix[, start[, end]]) -> bool
     |
     |      Return True if S ends with the specified suffix, False otherwise.
     |      With optional start, test S beginning at that position.
     |      With optional end, stop comparing S at that position.
     |      suffix can also be a tuple of strings to try.
     |
     |  expandtabs(...)
     |      S.expandtabs([tabsize]) -> string
     |
     |      Return a copy of S where all tab characters are expanded using spaces.
     |      If tabsize is not given, a tab size of 8 characters is assumed.
     |
     |  find(...)
     |      S.find(sub [,start [,end]]) -> int
     |
     |      Return the lowest index in S where substring sub is found,
     |      such that sub is contained within S[start:end].  Optional
     |      arguments start and end are interpreted as in slice notation.
     |
     |      Return -1 on failure.
     |
     |  format(...)
     |      S.format(*args, **kwargs) -> string
     |
     |      Return a formatted version of S, using substitutions from args and kwargs.
     |      The substitutions are identified by braces ('{' and '}').
     |
     |  index(...)
     |      S.index(sub [,start [,end]]) -> int
     |
     |      Like S.find() but raise ValueError when the substring is not found.
     |
     |  isalnum(...)
     |      S.isalnum() -> bool
     |
     |      Return True if all characters in S are alphanumeric
     |      and there is at least one character in S, False otherwise.
     |
     |  isalpha(...)
     |      S.isalpha() -> bool
     |
     |      Return True if all characters in S are alphabetic
     |      and there is at least one character in S, False otherwise.
     |
     |  isdigit(...)
     |      S.isdigit() -> bool
     |
     |      Return True if all characters in S are digits
     |      and there is at least one character in S, False otherwise.
     |
     |  islower(...)
     |      S.islower() -> bool
     |
     |      Return True if all cased characters in S are lowercase and there is
     |      at least one cased character in S, False otherwise.
     |
     |  isspace(...)
     |      S.isspace() -> bool
     |
     |      Return True if all characters in S are whitespace
     |      and there is at least one character in S, False otherwise.
     |
     |  istitle(...)
     |      S.istitle() -> bool
     |
     |      Return True if S is a titlecased string and there is at least one
     |      character in S, i.e. uppercase characters may only follow uncased
     |      characters and lowercase characters only cased ones. Return False
     |      otherwise.
     |
     |  isupper(...)
     |      S.isupper() -> bool
     |
     |      Return True if all cased characters in S are uppercase and there is
     |      at least one cased character in S, False otherwise.
     |
     |  join(...)
     |      S.join(iterable) -> string
     |
     |      Return a string which is the concatenation of the strings in the
     |      iterable.  The separator between elements is S.
     |
     |  ljust(...)
     |      S.ljust(width[, fillchar]) -> string
     |
     |      Return S left-justified in a string of length width. Padding is
     |      done using the specified fill character (default is a space).
     |
     |  lower(...)
     |      S.lower() -> string
     |
     |      Return a copy of the string S converted to lowercase.
     |
     |  lstrip(...)
     |      S.lstrip([chars]) -> string or unicode
     |
     |      Return a copy of the string S with leading whitespace removed.
     |      If chars is given and not None, remove characters in chars instead.
     |      If chars is unicode, S will be converted to unicode before stripping
     |
     |  partition(...)
     |      S.partition(sep) -> (head, sep, tail)
     |
     |      Search for the separator sep in S, and return the part before it,
     |      the separator itself, and the part after it.  If the separator is not
     |      found, return S and two empty strings.
     |
     |  replace(...)
     |      S.replace(old, new[, count]) -> string
     |
     |      Return a copy of string S with all occurrences of substring
     |      old replaced by new.  If the optional argument count is
     |      given, only the first count occurrences are replaced.
     |
     |  rfind(...)
     |      S.rfind(sub [,start [,end]]) -> int
     |
     |      Return the highest index in S where substring sub is found,
     |      such that sub is contained within S[start:end].  Optional
     |      arguments start and end are interpreted as in slice notation.
     |
     |      Return -1 on failure.
     |
     |  rindex(...)
     |      S.rindex(sub [,start [,end]]) -> int
     |
     |      Like S.rfind() but raise ValueError when the substring is not found.
     |
     |  rjust(...)
     |      S.rjust(width[, fillchar]) -> string
     |
     |      Return S right-justified in a string of length width. Padding is
     |      done using the specified fill character (default is a space)
     |
     |  rpartition(...)
     |      S.rpartition(sep) -> (head, sep, tail)
     |
     |      Search for the separator sep in S, starting at the end of S, and return
     |      the part before it, the separator itself, and the part after it.  If the
     |      separator is not found, return two empty strings and S.
     |
     |  rsplit(...)
     |      S.rsplit([sep [,maxsplit]]) -> list of strings
     |
     |      Return a list of the words in the string S, using sep as the
     |      delimiter string, starting at the end of the string and working
     |      to the front.  If maxsplit is given, at most maxsplit splits are
     |      done. If sep is not specified or is None, any whitespace string
     |      is a separator.
     |
     |  rstrip(...)
     |      S.rstrip([chars]) -> string or unicode
     |
     |      Return a copy of the string S with trailing whitespace removed.
     |      If chars is given and not None, remove characters in chars instead.
     |      If chars is unicode, S will be converted to unicode before stripping
     |
     |  split(...)
     |      S.split([sep [,maxsplit]]) -> list of strings
     |
     |      Return a list of the words in the string S, using sep as the
     |      delimiter string.  If maxsplit is given, at most maxsplit
     |      splits are done. If sep is not specified or is None, any
     |      whitespace string is a separator and empty strings are removed
     |      from the result.
     |
     |  splitlines(...)
     |      S.splitlines(keepends=False) -> list of strings
     |
     |      Return a list of the lines in S, breaking at line boundaries.
     |      Line breaks are not included in the resulting list unless keepends
     |      is given and true.
     |
     |  startswith(...)
     |      S.startswith(prefix[, start[, end]]) -> bool
     |
     |      Return True if S starts with the specified prefix, False otherwise.
     |      With optional start, test S beginning at that position.
     |      With optional end, stop comparing S at that position.
     |      prefix can also be a tuple of strings to try.
     |
     |  strip(...)
     |      S.strip([chars]) -> string or unicode
     |
     |      Return a copy of the string S with leading and trailing
     |      whitespace removed.
     |      If chars is given and not None, remove characters in chars instead.
     |      If chars is unicode, S will be converted to unicode before stripping
     |
     |  swapcase(...)
     |      S.swapcase() -> string
     |
     |      Return a copy of the string S with uppercase characters
     |      converted to lowercase and vice versa.
     |
     |  title(...)
     |      S.title() -> string
     |
     |      Return a titlecased version of S, i.e. words start with uppercase
     |      characters, all remaining cased characters have lowercase.
     |
     |  translate(...)
     |      S.translate(table [,deletechars]) -> string
     |
     |      Return a copy of the string S, where all characters occurring
     |      in the optional argument deletechars are removed, and the
     |      remaining characters have been mapped through the given
     |      translation table, which must be a string of length 256 or None.
     |      If the table argument is None, no translation is applied and
     |      the operation simply removes the characters in deletechars.
     |
     |  upper(...)
     |      S.upper() -> string
     |
     |      Return a copy of the string S converted to uppercase.
     |
     |  zfill(...)
     |      S.zfill(width) -> string
     |
     |      Pad a numeric string S with zeros on the left, to fill a field
     |      of the specified width.  The string S is never truncated.
     |
     |  ----------------------------------------------------------------------
     |  Data and other attributes defined here:
     |
     |  __new__ = <built-in method __new__ of type object>
     |      T.__new__(S, ...) -> a new object with type S, a subtype of T



Nous allons tenter ici de citer les méthodes les plus utilisées; nous n'avons le temps que de les utiliser de manière très simple, mais bien souvent il est possible de passer en paramètre des options permettant de ne travailler que sur une sous-chaîne, ou sur la première ou dernière occurrence d'une sous-chaîne; nous vous renvoyons à la documentation pour obtenir toutes les précisions utiles.

### Découpage - assemblage : `split` et `join`

On l'a vu dans la vidéo, la paire `split` et `join` permet de découper une chaine selon un séparateur pour obtenir une liste, et à l'inverse de reconstruire une chaîne à partir d'une liste.

`split` permet donc de découper:


```
'abc=:=def=:=ghi=:=jkl'.split('=:=')
```




    ['abc', 'def', 'ghi', 'jkl']



Et à l'inverse


```
"=:=".join(['abc', 'def', 'ghi', 'jkl'])
```




    'abc=:=def=:=ghi=:=jkl'



Attention toutefois si le séparateur est un terminateur, la liste résultat contient alors une dernière chaîne vide.


```
'abc;def;ghi;jkl;'.split(';')
```




    ['abc', 'def', 'ghi', 'jkl', '']



Qui s'inverse correctement cependant


```
";".join(['abc', 'def', 'ghi', 'jkl', ''])
```




    'abc;def;ghi;jkl;'



### Remplacements : `replace`

`replace` est très pratique pour remplacer une sous-chaîne par une autre, avec une limite éventuelle sur le nombre de remplacements


```
"abcdefabcdefabcdef".replace("abc", "zoo")
```




    'zoodefzoodefzoodef'




```
"abcdefabcdefabcdef".replace("abc", "zoo", 2)
```




    'zoodefzoodefabcdef'



Plusieurs appels à `replace` peuvent être chaînés comme ceci


```
"les [x] qui disent [y]".replace("[x]", "chevaliers").replace("[y]", "Ni")
```




    'les chevaliers qui disent Ni'



### Nettoyage : `strip`

On pourrait par exemple utiliser `replace` pour enlever les espaces dans une chaîne, ce qui peut être utile pour "nettoyer" comme ceci


```
" abc:def:ghi ".replace(" ", "")
```




    'abc:def:ghi'



Toutefois bien souvent on préfère utiliser `strip` qui ne s'occupe que du début et de la fin de la chaîne, et gère aussi les tabulations et autres retour à la ligne


```
" une chaine avec des truc qui depassent \n".strip()
```




    'une chaine avec des truc qui depassent'



### Rechercher une sous-chaîne

Plusieurs outils permettent de chercher une sous-chaîne. Le plus simple est `find` qui renvoie le plus petit index où on trouve la sous-chaîne


```
"abcdefcdefghefghijk".find("def")
```




    3




```
"abcdefcdefghefghijk".find("zoo")
```




    -1



`rfind` fonctionne comme `find` mais en partant de la fin de la chaîne


```
"abcdefcdefghefghijk".rfind("fg")
```




    13



La méthode `index` se comporte comme `find` mais en cas d'absence elle lève une exception (nous verrons ce concept plus tard) plutôt que de renvoyer -1


```
"abcdefcdefghefghijk".index("def")
```




    3



La méthode `count` compte le nombre d'occurrences d'une sous-chaîne


```
"abcdefcdefghefghijk".count("ef")
```




    3



Signalons enfin les méthodes de commodité suivantes


```
"abcdefcdefghefghijk".startswith("abcd")
```




    True




```
"abcdefcdefghefghijk".endswith("ghijk")
```




    True



S'agissant des deux dernières, remarquons que

chaine.startswith (sous_chaine) $\Longleftrightarrow$ chaine.find(sous_chaine) == 0

chaine.endswith (sous_chaine) $\Longleftrightarrow$ chaine.rfind(sous_chaine) == (len(chaine)-len(sous_chaine))

### Capitalisation

Voici pour conclure quelques méthodes utiles qui parlent d'elles-mêmes


```
"monty PYTHON".upper()
```




    'MONTY PYTHON'




```
"monty PYTHON".lower()
```




    'monty python'




```
"monty PYTHON".swapcase()
```




    'MONTY python'




```
"monty PYTHON".capitalize()
```




    'Monty python'




```
"monty PYTHON".title()
```




    'Monty Python'



### Pour en savoir plus

Tous ces outils sont [documentés en détail ici (en anglais)](https://docs.python.org/2/library/stdtypes.html#string-methods)

### Expressions régulières

Signalons enfin que python propose également un module d'expressions régulières, qui permettent de faire des calculs beaucoup plus élaborés. Cette technique bien connue a été rendue populaire historiquement au travers notamment du langage Perl.

Cette technique est très puissante, et permet d'aborder des cas qui vont bien au-delà de ce qui est présenté ici, pour reconnaître les chaînes qui obéissent à des règles lexicales précises. Étant d'une utilisation très spécifique, nous avons choisi d'aborder ce sujet en dernière semaine lors de la session consacrée aux sujets avancés.
