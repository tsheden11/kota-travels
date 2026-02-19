# Icon Usage Documentation

This document outlines how to use the CSS design tokens, Tailwind config, and the icon macro in Nunjucks templates for the Kota Travels project.

## CSS Design Tokens

Design tokens are a way to store design-related values (like colors, spacing, etc.) in a format that can be used across platforms. In this project, the design tokens can be accessed via the Tailwind CSS configuration.

### Example Design Token Usage
Here is an example of how to use a design token for colors in a Tailwind CSS class:

```html
<div class="bg-primary text-white p-4">
    This is a sample box using design tokens.
</div>
```

## Tailwind Configuration

We utilize Tailwind CSS for styling our components. The Tailwind configuration file is located at `tailwind.config.js`. Ensure that you have the design tokens defined properly in your configuration.

### Example Tailwind Config
Here's an example of how to set up your Tailwind config with design tokens:

```javascript
tailwind.config.js

module.exports = {
  theme: {
    extend: {
      colors: {
        primary: '#1a73e8', // Example color token
      },
    },
  },
  variants: {},
  plugins: [],
}
```

## Using Icons with Nunjucks

To use the icons within your Nunjucks templates, we provide an icon macro. Here’s how you can implement it:

### Example Icon Macro Usage
```html
{% import 'macros/icon.njk' as icon %}

<div>
    {{ icon.render('home', { class: 'w-6 h-6 text-primary' }) }}
    <span>Home</span>
</div>
```

In the example above, the `icon.render` function is used to render an icon by its name (e.g., 'home') and pass any additional classes for styling.

## Conclusion

With this document, you should be able to effectively use design tokens, configure Tailwind, and implement icons in your Nunjucks templates. For further assistance, refer to the official documentation of Tailwind CSS and Nunjucks.