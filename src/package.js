var util = require("util"),
    numeric = require("../numeric");

util.puts(JSON.stringify({
  "name": "numeric",
  "version": numeric.version,
  "description": "Numerical computations in Javascript",
  "keywords": ["linear-algebra", "numeric"],
  "homepage": "https://github.com/clayw/numeric.js",
  "main": "./numeric.js",
  "repository": {
    "type": "git",
    "url": "https://github.com/clayw/numeric.js.git"
  },
  "devDependencies": {
    "uglify-js": "1.2.5"
  }
}, null, 2));
