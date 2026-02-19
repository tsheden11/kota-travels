Icon macro & tokens usage
-------------------------

1. CSS
   - Import src/css/design-tokens.css in your base/head include to load fonts and variables.

2. Tailwind
   - tailwind.config.js is added; run your build to pick up the new config. Adjust `content` paths if needed.

3. Icon macro usage (Nunjucks)
   - Inline an icon (decorative):
     {% raw %}{% from "src/_includes/components/icon.njk" import icon %}{% endraw %}
     {% raw %}{{ icon("calendar", "icon icon--lg") }}{% endraw %}
   - With accessible label:
     {% raw %}{{ icon("calendar", "icon", "Calendar") }}{% endraw %}

Replace token values in tailwind.config.js and src/css/design-tokens.css to match your Figma exact values.
