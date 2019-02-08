# JSON Basics

## Vorteile
* Einfacher zum lesen und schreiben
  - | json lib. ebenfalls leichtgewichtig
  - | rendering / parsing / processing schnell
* Mensch lesbar (plain text)
  - | Alles strukturiert durch textual Charakter
* Sprachunabhängig
  - | Selbe Datentypen wie beinahe alle Sprachen
  - | JSON mapping auf Objekte ist einfache
* Sehr leichtgewichtig

## Nachteile
* JSON ist **keine Dokumenten Markupsprache**
* **Namespaces** werden **nicht** unterstützt
* Datenvalidierung (JSONSchema) noch im draft
* JSONPath stark limitiert

## Anwendungsfälle
* Data Exchange
* Data Storing
* JSON-WSP (Web Service Protocol)
  - | entspricht WSTL von XML
* Web Services und AJAX (Hauptnutzen)
  - | da JSON kompakt
  - | JavaScript kann gut mit JSON umgehen
* JSON-RPC (Remote Procedural Call)

## Datentypen
* Strings (`"Foo Bar"`)
* Numbers (`12`, `-13.222`, `23e-2`)
* Booleans (`true`, `false`)
* Null (`null`)
* Arrays (`[ ... ]`)
* Objects (`{ ... }`)

## Unterschied JavaScript zu JSON
* JavaScript erlaubt nicht alle Unicode Zeichen
* JavaScript hat Keys mit `"`
* JavaScript kann Funktionen als Wert haben
* JSON benötigt immer `"`

## XML vs. JSON
* JSON kompakter, einfacher und leserlicher
* JSON als Datenexchangeformat
* XML als Markupsprache
* JSON data-zentrischer Nutzen
* XML Daten- und Dokumentzentrisch und Hyprid
* XMLSchema kennt Objektreferenzen
* XMLSchema kennt komplexe Datentypen
* JSONSchema bietet nur wenige Möglichkeiten
* XPath und XQuery stabil und reifer als JSONPath
* XSLT ermöglicht XML transformationen
* Input für XSLT kann neu JSON sein
