const nunjucks = require('nunjucks');
const env = nunjucks.configure('src/_includes');
const path = require('path');
const fs = require('fs');

// Test _includes files
function walk(dir) {
  let results = [];
  fs.readdirSync(dir).forEach(f => {
    const full = path.join(dir, f);
    if (fs.statSync(full).isDirectory()) results = results.concat(walk(full));
    else if (f.endsWith('.njk')) results.push(full);
  });
  return results;
}

walk('src/_includes').forEach(f => {
  const rel = f.replace('src/_includes/', '');
  try {
    env.getTemplate(rel);
    console.log('OK:', rel);
  } catch(e) {
    console.log('ERROR:', rel, '-', e.message);
  }
});
