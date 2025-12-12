/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{html,md,njk,js}",
    "./src/_includes/**/*.{html,md,njk}"
  ],
  safelist: [
    'bg-gradient-to-r',
    'from-kota-red',
    'to-kota-orange',
    'hover:from-kota-orange',
    'hover:to-kota-red'
  ],
  theme: {
    extend: {
      colors: {
        'kota-red': '#ff0000',
        'kota-orange': '#ff7900',
        'kota-blue': '#80ddd6',
        'kota-light-green': '#23c9a9',
        'kota-dark-green': '#108773',
      },
      fontFamily: {
        'sans': ['Outfit', 'system-ui', 'sans-serif'],
      },
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
}