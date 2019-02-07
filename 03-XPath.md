# XPath

## Filtern nach Node Type
```
text(), processing-instruction()
comment(), node(), *
```

## Beispiele
```
/movie[position() = 6]
/child::movie[attribute::number="_05"]
/movie[@number="_05"]
//*[text() = "Maud Adams"]/../@number
distinct-values(//bond)
count(//bond[text() = "Sean Connery"])
//country[pop div 100 * pu15 < 100]
```

## XPath Achsen
```
ancestor, ancestor-or-self, attribute, child,
descendant, descendant-or-self, following,
following-sibling, namespace, parent,
preceding, preceding-sibling, self
```

## XPath Expression
```
for $i in distinct-values(//bond)
    return concat($i, " played ",
        count(/movie[bond = $i]))
```

## Conditional Queries mit XPath
```
if(count(/movie[regie = "John"]) > 1)
    then "more than one"
    else "exactly one"
    (: oder auch else() :)
```

## Funktionen in XPath
```
abs(), max(), min(), count(),
sum(), distinct-values()
```
