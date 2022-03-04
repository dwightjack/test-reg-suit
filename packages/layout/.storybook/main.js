module.exports = {
  stories: [
    "../../../src/layouts/**/*.stories.mdx",
    "../../../src/layouts/**/*.stories.@(js|jsx|ts|tsx)",
  ],
  addons: ["@storybook/addon-links", "@storybook/addon-essentials"],
  framework: "@storybook/vue3",
};
