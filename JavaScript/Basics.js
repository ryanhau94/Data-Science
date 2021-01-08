/*
JavaScript conforms to the ever-evolving ECMAScript standard and browsers use ECMAScript tp interpret JavaScript
One can use Babel to transpiler modern JavaScript ot old JavaScript
*/

var date = new Date()
alert("Today is " + date) // Dialog from browser
console.log("Today is " + date) // Print within console
document.body.innerHTML = "<h1> Today is " + date + "</h1>" // Inject into html
document.body.innerHTML = "<h1> The month today is " + (date.getMonth()+1) + "</h1>" // Inject only specific information

/*
Inline JavaScript in a HTML document: <script> JavaScript Here </script>
Reference from external files: <script src="PATH_TO_JS"></script>

JS render blocking: HTML parsing pauses until it finishes JS download and execution
HTTP/2 new features
With async, the JS file is downloaded alongside the HTML
    <script src="PATH_TO_JS" async></script>
When deferred, JS execution only happens when everything else is loaded
    <script src="PATH_TO_JS" defer></script>
*/