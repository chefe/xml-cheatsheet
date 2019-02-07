# XML Basics

## Vorteile von XML
* Daten- und Dokumentenzentrisch
* keine Vorgaben der Metadaten
* wiederherstellbar
* gut zu parsen durch Regeln
* menschenlesbar

## Anwendungsfälle
* Konfiguration & Logging
* Webservices
* Webinhalte und Zeichensetzung
* Austausch zwischen Business
* Datenaustausch (Data carrier)

## XML-Prolog
```xml
<?xml version="1.0" encoding="UTF-8"
    standalone="yes" ?>
```

## Sonderzeichen
* `&lt;` (less than)
* `&gt;` (greater than)
* `&amp;` (ampersand)
* `&apros;` (apostrophe)
* `&quote;` (quotation mark)

## Data Section
```xml
<conversion>
    <![CDATA[
        1 kilometer < 1 mile
        1 pint < 1 liter
        1 pound < 1 kilogram
    ]]>
</conversion>
```

## Processing Instruction
```xml
<?xml-stylesheet type="text/xsl"
    href="transformer.xslt" ?>
<?xml-stylesheet type="text/css"
    href="style.css" ?>
```
