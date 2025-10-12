const { DateTime } = require("luxon");

module.exports = function(eleventyConfig) {
  // Pass through static files
  eleventyConfig.addPassthroughCopy("src/_includes/components");
  eleventyConfig.addPassthroughCopy("src/_includes/partials");
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