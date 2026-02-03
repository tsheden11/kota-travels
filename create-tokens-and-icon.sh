#!/usr/bin/env bash
# Creates tailwind.config.js, design tokens CSS, and a Nunjucks icon macro, then commits them locally.
# Usage:
#   git checkout feature/redesign/icons   # or be on the branch you want
#   chmod +x create-tokens-and-icon.sh
#   ./create-tokens-and-icon.sh
set -euo pipefail

echo "Creating files..."

# tailwind.config.js
cat > tailwind.config.js <<'JS'
/** Tailwind config scaffolded from Figma tokens (replace values with your exact tokens) */
module.exports = {
  content: [
    "./src/**/*.{html,js,njk,md}",
    "./_site/**/*.{html,js}" /* adjust if your build output differs */
  ],
  theme: {
    extend: {
      colors: {
        // Replace these with your Figma palette
        primary: "#F59E0B",    // example amber
        secondary: "#0EA5A4",  // example teal
        accent: "#10B981",
        neutral: {
          50:  "#F9FAFB",
          100: "#F3F4F6",
          200: "#E5E7EB",
          300: "#D1D5DB",
          400: "#9CA3AF",
          500: "#6B7280",
          600: "#4B5563",
          700: "#374151",
          800: "#1F2937",
        },
        success: "#059669",
        warning: "#F59E0B",
        danger:  "#EF4444",
      },
      fontFamily: {
        // Ensure you load the 'Outfit' font (or change to your Figma font)
        sans: ["Outfit", "ui-sans-serif", "system-ui", "-apple-system", "Segoe UI", "Roboto", "Helvetica Neue", "Arial"],
      },
      borderRadius: {
        sm: "4px",
        md: "8px",
        lg: "16px",
        full: "9999px",
      },
      boxShadow: {
        sm: "0 1px 2px rgba(16,24,40,0.05)",
        md: "0 6px 20px rgba(2,6,23,0.08)",
      },
      spacing: {
        18: "4.5rem",
        22: "5.5rem",
      }
    },
  },
  plugins: [],
};
JS

# design tokens CSS (variables + font)
mkdir -p src/css
cat > src/css/design-tokens.css <<'CSS'
/* Design tokens exported from Figma (edit values to match your file) */
@import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap');

:root{
  /* Colors */
  --color-primary: #F59E0B;
  --color-secondary: #0EA5A4;
  --color-accent: #10B981;
  --color-success: #059669;
  --color-warning: #F59E0B;
  --color-danger:  #EF4444;

  --neutral-50:  #F9FAFB;
  --neutral-100: #F3F4F6;
  --neutral-200: #E5E7EB;
  --neutral-300: #D1D5DB;
  --neutral-400: #9CA3AF;
  --neutral-500: #6B7280;
  --neutral-600: #4B5563;
  --neutral-700: #374151;
  --neutral-800: #1F2937;

  /* Typography */
  --font-family-sans: "Outfit", system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
  --font-size-base: 16px;
  --font-size-lg: 20px;
  --font-size-xl: 24px;
  --line-height-base: 1.5;

  /* Radii */
  --radius-sm: 4px;
  --radius-md: 8px;
  --radius-lg: 16px;

  /* Elevation */
  --shadow-sm: 0 1px 2px rgba(16,24,40,0.05);
  --shadow-md: 0 6px 20px rgba(2,6,23,0.08);
}

/* Base type */
html { font-size: var(--font-size-base); -webkit-font-smoothing:antialiased; -moz-osx-font-smoothing:grayscale; }
body { font-family: var(--font-family-sans); line-height: var(--line-height-base); color: var(--neutral-800); background: white; }

/* Utility helper for icons when used inline via the macro */
.icon { display:inline-block; width:1.25rem; height:1.25rem; vertical-align:middle; }
.icon--lg { width:1.75rem; height:1.75rem; }
.icon--xl { width:2.25rem; height:2.25rem; }
CSS

# Nunjucks icon macro
mkdir -p src/_includes/components
cat > src/_includes/components/icon.njk <<'NJK'
{# icon.njk - macro for inlining icons from src/images/icons/icon-<name>.svg #}
{%- macro icon(name, className='', title='') -%}
  {%- set file = "src/images/icons/icon-" + name + ".svg" -%}
  {%- if title and title | trim -%}
    <span class="{{ className }}" role="img" aria-label="{{ title }}">
      {% include file %}
    </span>
  {%- else -%}
    <span class="{{ className }}" aria-hidden="true">
      {% include file %}
    </span>
  {%- endif -%}
{%- endmacro -%}
NJK

# Create a small README snippet showing usage for convenience
cat > src/_includes/components/ICON_README.md <<'MD'
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
MD

# Git commit
git add tailwind.config.js src/css/design-tokens.css src/_includes/components/icon.njk src/_includes/components/ICON_README.md
git commit -m "chore: add design tokens and icon macro (tailwind config, CSS variables, icon include)"

echo "Files created and committed locally:"
git --no-pager show --name-only --pretty="" HEAD
echo "Branch: $(git rev-parse --abbrev-ref HEAD)"
echo "No push performed. Run 'git push' when you're ready."
SCRIPT