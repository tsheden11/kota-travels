/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{html,njk,md,js}",
    "./src/_includes/**/*.{html,njk}",
    "./src/_layouts/**/*.{html,njk}",
  ],
  safelist: [
    'text-kota-red',
    'text-kota-orange',
    'text-kota-blue',
    'text-kota-light-green',
    'text-kota-dark-green',
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