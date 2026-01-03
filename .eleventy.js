module.exports = function (eleventyConfig) {
  eleventyConfig.addPassthroughCopy("src/style.css");
  eleventyConfig.addPassthroughCopy("src/*.jpg");
  return {
    dir: {
      input: "src",
      output: "public"
    }
  };
};
