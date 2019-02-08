# XML Basics

## Binärdateien
* kompakte Repräsentation
* benötigt wenig Speicher
* weniger Bandbreite für Transport

## Textdateien
* Leserlich für Mensch und Maschine
* einfacheres Parsing
* Metadaten muss von Text separiert werden

## Metadaten
Metadaten sind Informationen für Information. Beinhaltet;
Encoding, Version, Autor, Sprache, Representation, ...

## Markuplanguage
Eine Sprache die Metainformationen von Daten definiert.
SGML (Vor XML) und XML (Extensible Markup Language)

## Vorteile von XML
* Daten- und Dokumentenzentrisch
* keine Vorgaben der Metadaten
* wiederherstellbar
* gut zu parsen durch Regeln
* menschenlesbar

## Anwendungsfälle
* Konfiguration & Logging
* Webservices (UDDI)
* Webinhalte und Zeichensetzung
* Austausch zwischen Business (B2C / B2B)
* Datenaustausch (Data carrier)

## XML-RPC
Hat eine Middleware die XML zum Übertragen nutzt aber
höhere Abstraktion ist nicht in XML.

## SOAP
Nachrichtensystem das XML verwendet. Nachrichten sind
auch in XML.

## WSDL
WSDL beschreibt Services, Endpunkte und Responses,
aus WSDL kann auch code generiert werden.

## Gleichheit
Selbes **Bit-Pattern** entspricht **Gleichheit**.

## Equivalence
Ist die **prozessierte Darstellung** gleich, sind
die Dokumente **equivalent**.

## XML-Prolog
an erste Stelle im Dokument und ist optional

```xml
<?xml version="1.0" encoding="UTF-8"
    standalone="yes" ?>
```

## Sonderzeichen
* `&lt;` (less than | `<`)
* `&gt;` (greater than | `>`)
* `&amp;` (ampersand | `&`)
* `&apros;` (apostrophe | `)
* `&quote;` (quotation mark | `"`)

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
nach Prolog und ist optional

```xml
<?xml-stylesheet type="text/xsl"
    href="transformer.xslt" ?>
<?xml-stylesheet type="text/css"
    href="style.css" ?>
```
