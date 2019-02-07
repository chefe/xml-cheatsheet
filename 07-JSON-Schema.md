# JSON Schema

## Restriktionsregeln
```
// Zahlen
maximum, exclusiveMaximum, minimum,
exclusiveMinimum, multipleOf

// Strings
maxLength, minLength, pattern

// Arrays
maxItems, minItems, uniqueItems,
items, additionalItems, contains

// Objekte
maxProperties, minProperties,
required, propertyNames,
properties, additionalProperties
```

## Zus. Items und Properties verhindern
```json
"additionalItems": false,
"additionalProperties": false
```

## Referenzen
```json
"$ref": "#/definitions/person",
"$ref": "../schema.json#/definitions/person",
"$ref": "http://a.ch/s.json#/definitions/person",
```

## Definition erweitern
```json
"type": "object",
"allOf": [
  { "$ref": "#/definitions/person" },
  { "required": ["gender"], "properties": {
    "gender": { "enum": ["female", "male"] }
  }}
]
```

## Beispiel
```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "$id": "http://unique.identifier.uri/movie.json",
  "title": "James Bond Movie Casting",
  "description": "random description",
  "definitions": {
    "person": {
      "type": "object",
      "properties": {
        "name": { "type": "string" },
        "gender": {
          "enum": ["female", "male"]
        }
      },
      "required": ["name", "gender"],
      "additionalProperties": {
        "type": "string"
      }
    }
  },
  "type": "object",
  "required": ["id", "title"],
  "properties": {
    "id": {
      "type": "number",
      "minimum": 10,
      "maximum": 999
    },
    "title": {
      "type": "string",
      "minLength": 4,
      "maxLength": 25,
      "pattern": "007"
    },
    "director": {
      "const": "Marc Forster"
    },
    "bond": {
      "type": "array",
      "items": {
        "oneOf": [
          { "$ref": "#/definitions/person" },
          { "type": "string" }
        ]
      },
      "uniqueItems": true,
      "minItems": 6,
      "maxItems": 6
    },
    "ratings": {
      "type": "array",
      "items": {
        "type": "array",
        "items": [
          { "type": "integer", "minimum": 0 },
          { "type": "integer", "maximum": 5 },
          { "type": "string" }
        ],
        "additionalItems": false
      }
    },
    "year": {
      "oneOf": [
        {
          "type": "integer",
          "minimum": 1900
        }, {
          "type": "string",
          "enum": ["unknown", "TBA"]
        }
      ]
    },
    "duration": {
      "type": "integer",
      "anyOf": [
        { "multiplyOf": 20},
        { "multiplyOf": 30}
      ]
    }
  }
}
```

## Techniken für komplexe Strukturen

* **Reuse**: Wiederverwenden von Referenzen
* **Rekursion**: In sich selbst Wiederverwendent
* **Extend**: Erweitern (`anyOf`)

