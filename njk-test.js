const nunjucks = require('nunjucks');
const env = nunjucks.configure('src/_includes');
const files = [
  'components/molecules/hero-carousel.njk',
  'components/organisms/customize-modal.njk',
  'components/organisms/book-modal.njk',
  'components/organisms/cta-section.njk',
  'layouts/base.njk',
  'layouts/package-detail.njk'
];
files.forEach(f => {
  try {
    env.getTemplate(f);
    console.log('OK:', f);
  } catch(e) {
    console.log('ERROR:', f, '-', e.message);
  }
});
