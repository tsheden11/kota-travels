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
