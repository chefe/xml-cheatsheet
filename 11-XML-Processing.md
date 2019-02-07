# XML Processing

## Pull vs Push processing
* eventbasiert (push)
    * Benachrichtigung bei spezifischen Elementen
    * Framework hat Kontrolle
* instruktionsbasiert (pull)
    * Iteration über die Element
    * Etwickler übernimmt Kontrolle
    * bietet mehr Möglichkeiten

## in-memory vs sequential
* in-memory
    * ist als Baum vorhanden
    * vereinfacht das Arbeiten
    * benötigt 4x mehr Speicher
* sequential
    * geeignet für grosse Dateien
    * keine Rückwärtsnavigation
    * keine Validation des Dokumentes
    * keine Bearbeitung

## Schritte mit SAX
1. Parser erstellen (XMLReader)
2. DefaultHandler überschreiben
3. Parser starten mit Handler
4. auf Events im Handler reagieren

## DOM, JDOM und XDOM
* DOM: generischer Standard
* JDOM: DOM Implementation für Java
* XDOM: DOM Implementation für .NET

## Schritte mit JDOM
1. Daten ins Memory laden (z.B. Eventparser)
2. Auf root-Node gehen
3. durch Tree navigieren

## Schritte bei XSL Transformation mit Java
1. Dateien definieren (In, XSLT, Out)
2. Transformator starten
