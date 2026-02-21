const { DateTime } = require("luxon");

module.exports = function(eleventyConfig) {
  // Pass through static files
  eleventyConfig.addPassthroughCopy("src/css");
  eleventyConfig.addPassthroughCopy("src/js");
  eleventyConfig.addPassthroughCopy("src/images");
  eleventyConfig.addPassthroughCopy("admin");

  // Reusable date filter
  eleventyConfig.addFilter("date", (dateObj, format = "yyyy") => {
    if (!dateObj) {
      dateObj = new Date();
    }
    return DateTime.fromJSDate(dateObj).toFormat(format);
  });

  // Custom bold markers filter
  eleventyConfig.addFilter('boldMarkers', function(str) {
    if (!str) return '';
    return str.replace(/\{([^}]+)\}/g, '<strong>$1</strong>');
  });

  // Eleventy directory config
  return {
    dir: {
      input: "src",
      includes: "_includes",
      data: "_data",
      output: "_site"
    },
    markdownTemplateEngine: "njk",
    htmlTemplateEngine: "njk"
  };
};