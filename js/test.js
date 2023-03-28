
let getXMLFile = function(path, callback) {
    let request = new XMLHttpRequest();
    request.open("GET", path);
    request.setRequestHeader("Content-Type", "text/xml");
    request.onreadystatechange = function() {
      if (request.readyState === 4 && request.status === 200)
      {
        callback(request.responseXML);
      }
    };
    request.send();
};

getXMLFile("monsters.xml", function(xml) {
  console.log(xml);
});