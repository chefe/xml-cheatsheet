# Prorammierung in JS

## Same-origin policy
verbietet andere Quellen

## CORS
* Cross-Origin Resource Sharing.
* ermöglicht vertrauenswürdige Origins
* HTTP-Header: `Access-Control-Allow-Origin`

## JSONP
* JSON with Padding
* Daten laden via embedded resources
* umgehen der same-origin policy
* JS kommt zurück, ruft callback auf

## JSON in JavaScript
```js
var movie = { number: 1, title: "Dr. No" };
var movieStr = JSON.stringify(movie);
var movieAgain = JSON.parse(movieStr);
```

## Asynchroner AJAX-Call
```js
var request = new XMLHttpRequest();
request.onreadystatechange = function() {
  if (this.readyState === 4 && this.status === 200) {
    var catalog = JSON.parse(this.responseText);
    console.log(catalog.movies[0].title);
  }
};
request.open('GET', 'https://ma.ch', true);
request.send()
```

## Synchroner AJAX-Call
```js
const catalog = JSON.parse(request.responseText);
const now = new Date().toLocaleTimeString();
catalog.movies[0].title = "Modified at " + now;

// convert to string and upload to server
const data = JSON.stringify(catalog.movies[0]);
request.open("PUT", "https://ma.ch/0", false);
request.send(data);
```
