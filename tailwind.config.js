module.exports = {
  content: [
    "./src/**/*.{html,js,njk,md}",
    "./_site/**/*.{html,js}"
  ],

  theme: {
    extend: {

      /* ========================
         COLORS
      ======================== */

      colors: {
        primary: "var(--color-primary)",
        primaryLight: "var(--color-primary-light)",
        primarySoft: "var(--color-primary-soft)",

        accentBlue: "var(--color-accent-blue)",
        accentOrange: "var(--color-accent-orange)",

        success: "var(--color-success)",
        danger: "var(--color-danger)",
        warning: "var(--color-warning)",

        text: "var(--color-text)",
        textMuted: "var(--color-text-muted)",

        border: "var(--color-border)",

        surface: "var(--color-surface)",
        background: "var(--color-bg)",

        grey: "var(--color-grey)",
        greyLight: "var(--color-grey-light)",
      },

      /* ========================
         TYPOGRAPHY
      ======================== */

      fontFamily: {
        sans: ["Outfit", "system-ui"]
      },

      fontSize: {
        xs: "var(--text-xs)",
        sm: "var(--text-sm)",
        base: "var(--text-md)",
        lg: "var(--text-lg)",
        xl: "var(--text-xl)",
        "2xl": "var(--text-2xl)",
        "3xl": "var(--text-3xl)",
      },

      /* ========================
         SPACING
      ======================== */

      spacing: {
        xxs: "var(--space-xxs)",
        xs: "var(--space-xs)",
        sm: "var(--space-sm)",
        md: "var(--space-md)",
        lg: "var(--space-lg)",
        xl: "var(--space-xl)",
        "2xl": "var(--space-2xl)",
        "3xl": "var(--space-3xl)",
      },

      /* ========================
         RADIUS
      ======================== */

      borderRadius: {
        xs: "var(--radius-xs)",
        sm: "var(--radius-sm)",
        md: "var(--radius-md)",
        lg: "var(--radius-lg)",
        xl: "var(--radius-xl)",
        pill: "var(--radius-pill)",
      },

      /* ========================
         SHADOWS
      ======================== */

      boxShadow: {
        sm: "var(--shadow-sm)",
        md: "var(--shadow-md)",
        lg: "var(--shadow-lg)",
      },

      /* ========================
         HEIGHT
      ======================== */

      height: {
        input: "var(--input-height)",
        buttonSm: "var(--button-height-sm)",
        buttonMd: "var(--button-height-md)",
        buttonLg: "var(--button-height-lg)",
      },

      maxWidth: {
        container: "var(--container-max-width)"
      }

    },
  },

  plugins: [],
};
