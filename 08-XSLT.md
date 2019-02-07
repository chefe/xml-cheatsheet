# XSLT

## XSLT Nutzen
Transformiert Files in anderes Format. Aus vielen Dokumenten
ein neues Dokument erstellen.

## Pull vs. Push
Pull `<apply-template>` Daten werden gebracht.
Push `<foreach>` Daten werden geholt.

## Beispiel für einfaches XSLT
```xml
<?xml version="1.0" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>This is a plain list of James Bond movie titles</h1>
                <ul>
                    <xsl:apply-templates />
                </ul>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="movie">
        <li>
            <xsl:value-of select="title"/>
        </li>
    </xsl:template>
</xsl:stylesheet>
```

## If-Statement
```xml
<xsl:template match="movie">
    <xsl:if test="duration &gt; 130">
        <li style="color:red">
            <xsl:value-of select="title"/>
        </li>
    </xsl:if>
</xsl:template>
```

## Choose-Statement
```xml
<xsl:template match="movie">
    <xsl:choose>
        <xsl:when test="duration &gt; 140">
            <li style="color:red">
                <xsl:value-of select="title"/>
            </li>
        </xsl:when>
        <xsl:when test="duration &gt; 130">
            <li style="color:blue">
                <xsl:value-of select="title"/>
            </li>
        </xsl:when>
        <xsl:otherwise>
            <li style="color:green">
                <xsl:value-of select="title"/>
            </li>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
```

## XHTML generieren
```xml
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
```

## Sortieren
```xml
<xsl:template match="bond_movie">
    <xsl:apply-templates select="movie[starts-with(bond/text(), 'Pierce')]">
        <xsl:sort select="bond_girl" data-type="text/number" order="descending/ascending"/>
    </xsl:apply-templates>
</xsl:template>
```

## Benanntes Templates mit Parameter
```xml
<xsl:template name="header">
    <xsl:param name="color" />
    <tr style="background-color:{$color}">
        <th>Title</th>
    </tr>
</xsl:template>

<xsl:call-template name="header">
    <xsl:with-param name="color">#990066</xsl:with-param>
</xsl:call-template>
```

## Globale Konstante
```xml
<xsl:variable name="version">1.0beta</xsl:variable>
```

## Node in die Ausgabe kopieren
```xml
<copy-of select="path" />
```

## Weiteres Stylesheet einbinden
```xml
<import href="path" />
```

## Daten aus anderer Datei laden
```xml
<img src="{document('bond_movies_media.xml')/bond_movies/movie[@number='_02']/poster/@href}"
alt="{document('bond_movies_media.xml')/bond_movies/movie[@number='_02']/title}"/>
```

## Operatoren

`div, &lt;, &gt;, *, format-number(population,'0.00'), round(population div 0.92)`
