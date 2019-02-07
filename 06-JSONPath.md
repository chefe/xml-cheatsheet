# JSONPath

## Array-Slice-Operationen
```
[n], [x,y,z], [start:end:step],
[start:], [:n], [-n:]
```

## Vergleichsoperationen
```
==, !=, >, >=, <, <=, =~, &&, ||,
in, nin, subsetof, size, empty
```

## Funktionen in JSONPath
```
min(), max(), avg(), stddev(), length()
```

## Beispiele
```
$..gadgets[0]
$.movies[1::2].title
$.movies[?(@.girl == "Berry")].year
$.movies[?(@.bond == "Sean" || @.year == 81)]
$.movies[?(@.gadgets.size() > 0)]
$.movies[?(@.year < 1968)].title
$.movies[?(@.girl =~ /M.*/i)].girl
$.movies[?(@.year >= 1980 && @.year < 1990) ]
$.movies[?(@.bond nin ["George', 'Timothy"])]
$.movies[?(@.bond in ["Sean", "Roger"])]
[?(@.sizes subsetof ['S', 'M', 'L'])]
```
