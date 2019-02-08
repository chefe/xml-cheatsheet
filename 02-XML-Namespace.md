# XML Namespace

## URN / URL / URI
* Uniform Resource Identifier (URL oder URN)
* Uniform Resource Location (Wo zu finden)
* Uniform Resource Number (eindeutiger Identifier)

## Default-Namespace
```xml
<svg xmlns="http://www.w3.org/2000/svg">
    <!-- ... -->
</svg>
```
* Attribute nicht implizit im default-NS!

## Expliziter Namespace
```xml
<hr:svg xmlns:hr="http://www.w3.org/2000/svg">
    <hr:g>
        <!-- ... -->
    </hr:g>
</hr:svg>
```

## Namespace-Urls
```
http://www.w3.org/1999/XSL/Transform
http://www.w3.org/1999/XSL/Format
http://www.w3.org/2001/XMLSchema
http://www.w3.org/2000/svg
http://www.w3.org/1999/02/22-rdf-syntax-ns
http://www.w3.org/2001/SMIL20
http://www.w3.org/2001/vxml
http://www.w3.org/1999/xlink
http://www.w3.org/2002/xforms
http://www.w3.org/1999/xhtml
http://www.w3.org/1998/Math/MathML
```
