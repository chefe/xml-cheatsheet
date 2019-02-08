# XML Schema

## wohlgeformt vs. gültig
* wohlgeformt = erfüllt Syntax Regeln
* gültig = validiert Schema oder DTD

## Binding ohne Target Namespace
```xml
<european_countries
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:noNamespaceSchemaLocation="demo.xsd">
```

## Binding mit Target Namespace
```xml
<european_countries xmlns="http://ma.ch/co"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://ma.ch/co co.xsd">
```

## Schema ohne Target Namespace
```xml
<xs:schema
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
```

## Schema mit Target Namespace
```xml
<xs:schema elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://mp.ch/countries"
    targetNamespace="http://mp.ch/countries">
```

## Elemente und Attribute qualifizieren
* qualifizieren = im Namespace verfügbar machen
* qualified = muss mit Präfix benutzt werden
* `elementFormDefault="qualified"`
* `attributeFormDefault="unqualified"`

## Datentypen im Schema (Auszug)
```
string, duration, dateTime, time, date,
gYearMonth, gYear, gMonthDay, gDay, gMonth,
Boolean, float, decimal, double, anyURI,
integer, nonPositiveInteger, negativeInteger,
long, int, short, byte, nonNegativeInteger,
positiveInteger, unsignedLong, unsignedInt,
unsignedShort, unsignedByte
```

## Einfacher Datentyp
```xml
<xs:simpleType name="percentType">
	<xs:restriction base="xs:decimal">
		<xs:minInclusive value="0"/>
		<xs:maxInclusive value="100"/>
	</xs:restriction>
</xs:simpleType>
<xs:simpleType name="beer">
	<xs:restriction base="xs:string">
		<xs:enumeration value="Cardinal"/>
		<xs:enumeration value="Eichhof"/>
		<xs:enumeration value="Boxer"/>
	</xs:restriction>
</xs:simpleType>
```

## Constrains
```
enumeration, fractionDigits, length, maxExclusive,
maxInclusive, maxLength, minExclusive, minInclusive,
minLength, pattern, totalDigits, whiteSpace
```

## sequence
```xml
<xs:element name="european_countries">
	<xs:complexType>
		<xs:sequence minOccurs="1" maxOccurs="unbounded">
			<xs:element ref="country"/>
		</xs:sequence>
	</xs:complexType>
</xs:element>
```

## choice
```xml
<xs:element name="person">
	<xs:complexType>
		<xs:choice>
			<xs:element name="employee" type="xs:string"/>
			<xs:element name="player" type="xs:string"/>
		</xs:choice>
	</xs:complexType>
</xs:element>
```

## all
```xml
<xs:element name="country">
	<xs:complexType>
		<xs:all>
			<xs:element name="name" type="xs:string"/>
			<xs:element name="population" type="xs:positiveInteger"/>
		</xs:all>
	</xs:complexType>
</xs:element>
```
* Kann kein Parent oder Child sein

## Attribut auf einfachem Typ
```xml
<xs:element name="product">
	<xs:complexType>
		<xs:simpleContent>
			<xs:extension base="xs:string">
				<xs:attribute name="price" type="xs:decimal" />
			</xs:extension>
		</xs:simpleContent>
	</xs:complexType>
</xs:element>
```

## Attribut auf komplexem Typ
```xml
<xs:element name="european_countries">
	<xs:complexType>
		<xs:sequence minOccurs="1" maxOccurs="unbounded">
			<xs:element ref="country"/>
		</xs:sequence>
		<xs:attribute name="year" type="xs:gYear" use="required"/>
	</xs:complexType>
</xs:element>
```

## Standardwert eines Attributs
```xml
<xs:attribute name="language" type="xs:string" default="EN"/>
```

## Mixed-Content
```xml
<xs:element name="abstract">
	<xs:complexType mixed="true">
		<xs:choice minOccurs="0" maxOccurs="unbounded">
			<xs:element name="i" type="xs:string"/>
		</xs:choice>
	</xs:complexType>
</xs:element>
```

## Wildcard
```xml
<xs:element name="Book">
	<xs:complexType>
		<xs:sequence>
			<xs:element name="title" type="xs:string"/>
			<xs:any namespace="##any" minOccurs="0"/>
		</xs:sequence>
	</xs:complexType>
</xs:element>
```

## Listen
```xml
<!-- Schema -->
<xs:simpleType name="monthType">
	<xs:restriction base="xs:string">
		<xs:enumeration value="January"/>
		<xs:enumeration value="February"/>
		<xs:enumeration value="December"/>
	</xs:restriction>
</xs:simpleType>
<xs:element name="months">
	<xs:simpleType>
		<xs:list itemType="monthType"/>
	</xs:simpleType>
</xs:element>

<!-- Anwendung (Spacing = Trennung) -->
<months>January June December</months>
```

## eindeutige Attribute
```xml
<xs:element name="bond_movies">
	<xs:complexType>
		<xs:sequence>
			<xs:element ref="movie" minOccurs="1" maxOccurs="unbounded"/>
		</xs:sequence>
		<xs:attribute name="month" type="monthType" use="required"/>
		<xs:attribute name="year" type="xs:gYear" use="required"/>
	</xs:complexType>
	<xs:unique name="movieID">
		<xs:selector xpath="movie"/>
		<xs:field xpath="@number"/>
	</xs:unique>
</xs:element>
```

## Keys als Referenzen
```xml
<!-- Schema -->
<xs:element name="bibliography" type="bibliographyType">
	<xs:key name="bKey">
		<xs:selector xpath="*"/>
		<xs:field xpath="@key"/>
	</xs:key>
	<xs:keyref name="bKeyRef" refer="bKey">
		<xs:selector xpath="*/cite"/>
		<xs:field xpath="@item"/>
	</xs:keyref>
</xs:element>

<!-- Anwendung -->
<bibliography>
    <article key="G03">
        <title>XPath processing in a nutshell</title>
        <cite item="HM04"/>
    </article>
    <book key="HM04" isbn="0-596-00764-7">
        <title>XML in a nutshell</title>
        <year>2004</year>
    </book>
</bibliography>
```

## unique vs key
* `unique` = falls existiert dann eindeutig
* `key` = muss existieren und eindeutig sein

## import vs include
* `include`
	* Aufteilen in mehrere Dateien
	* alle definieren den gleichen Namespace
* `import`
	* für anderen Target-Namespace

## Atomic
Elemente ohne Subelemente `<xs:element .. />`.

## XSD Vorteile zu DTDs
* XML verwendet Namespaces
* Komplexere und benutzerdefinierbare Strukturen
* eigene Datentypen können definert werden
* Validation inline möglich
* XSD verwendet XML
* XSD hat Referenzbeziehungen

## Gründe für XML Schemas
* XML Schema kann vom Nutzer definiert werden
* ermöglicht direkte Validierung des Dokument
* Validatoren sind generell Deterministisch
* für Datenstrukturbeschreibung nutzen
* beim schreiben oder lesen für Validierung

## Dokumentation
* `<annotation>` ist Container
* `<appinfo>` für ein Tool
* `<documentation>` für einen Menschen
