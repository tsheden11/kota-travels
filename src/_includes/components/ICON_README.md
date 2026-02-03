# Icon System Documentation

## Overview
The Kota Travels icon system uses optimized SVG icons with a Nunjucks macro for easy integration.

## File Structure
```
src/
├── images/icons/          # SVG icon files
│   ├── icon-calendar.svg
│   ├── icon-mail.svg
│   └── ...
├── css/
│   └── design-tokens.css  # CSS variables and icon utilities
└── _includes/components/
    ├── icon.njk          # Nunjucks macro
    └── ICON_README.md    # This file
```

## CSS Setup

### Import Design Tokens
Add to your main layout or base template:

```html
<link rel="stylesheet" href="/css/design-tokens.css">
```

Or import in your main CSS file:
```css
@import url('/css/design-tokens.css');
```

## Using Icons in Templates

### 1. Import the Macro
At the top of any Nunjucks template:

```njk
{% from "src/_includes/components/icon.njk" import icon %}
```

### 2. Use Icons

#### Decorative Icon (default)
```njk
{{ icon("calendar") }}
{{ icon("mail", "icon--lg") }}
{{ icon("heart", "icon--xl text-red-500") }}
```

#### Accessible Icon (with label)
```njk
{{ icon("calendar", "icon", "Select date") }}
{{ icon("mail", "icon--sm", "Email us") }}
```

### 3. Size Classes
Available size utilities (defined in `design-tokens.css`):

- `icon--sm` - 16×16px
- `icon` (default) - 20×20px
- `icon--lg` - 28×28px
- `icon--xl` - 36×36px
- `icon--2xl` - 48×48px

### 4. Color Customization
Icons use `currentColor`, so they inherit text color:

```njk
<div class="text-primary">
  {{ icon("calendar") }}  <!-- Orange/primary color -->
</div>

<button class="text-white bg-secondary">
  {{ icon("mail") }}  <!-- White icon -->
  Contact Us
</button>
```

Or use Tailwind utilities:
```njk
{{ icon("heart", "icon text-red-500") }}
{{ icon("leaf", "icon--lg text-green-600") }}
```

## Available Icons

### Environment Icons
- calendar
- checked
- down, up, left, right
- exclude, include
- full-right
- help
- highlight, highlight-1
- instagram
- leaf, leaf-1
- mail
- pin
- quantity-change
- unchecked
- whatsapp

### Interface Icons
- cycling
- heart
- walking

### Navigation Icons
- clock
- compass
- flag
- globe
- home

## Examples

### Button with Icon
```njk
{% from "src/_includes/components/icon.njk" import icon %}

<button class="btn-primary">
  {{ icon("mail", "icon--sm", "Send message") }}
  <span>Contact Us</span>
</button>
```

### Navigation Link
```njk
<a href="/" class="nav-link">
  {{ icon("home", "icon") }}
  <span>Home</span>
</a>
```

### List Items
```njk
<ul class="feature-list">
  <li>
    {{ icon("checked", "icon text-green-500") }}
    <span>Free cancellation</span>
  </li>
  <li>
    {{ icon("checked", "icon text-green-500") }}
    <span>Best price guarantee</span>
  </li>
</ul>
```

## Best Practices

1. **Accessibility**: 
   - Use the `title` parameter for interactive icons
   - Omit `title` for purely decorative icons
   
2. **Sizing**: 
   - Use size classes for consistency
   - Avoid custom width/height unless necessary
   
3. **Colors**: 
   - Prefer Tailwind color utilities
   - Use CSS variables for custom colors: `color: var(--color-primary)`

4. **Performance**: 
   - Icons are inlined SVG (no extra HTTP requests)
   - Icons use `currentColor` (easy to theme)
   - Optimized for minimal file size

## Customization

### Adding New Icons
1. Place optimized SVG in `src/images/icons/`
2. Name it `icon-{name}.svg`
3. Ensure it uses `currentColor` for fill/stroke
4. Add `aria-hidden="true"` and `focusable="false"` attributes

### Modifying Colors
Edit `src/css/design-tokens.css`:

```css
:root {
  --color-primary: #YOUR_COLOR;
  /* ... */
}
```

## Troubleshooting

**Icon not showing?**
- Check file path: `src/images/icons/icon-{name}.svg`
- Verify macro import at top of template
- Check browser console for 404 errors

**Icon wrong color?**
- Ensure SVG uses `currentColor` not hardcoded colors
- Apply color via parent element or class

**Icon wrong size?**
- Use provided size classes or apply custom CSS
- Icons scale with `width` and `height` properties
