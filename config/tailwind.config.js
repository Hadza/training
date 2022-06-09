const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*',
    './app/views/**/*',
    './app/components/**/*.rb',
    './app/components/**/*.erb'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Poppins', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        'primary-300': '#E8E6F6',
        'primary-500': '#8378DF',
        'primary-600': '#726DD9',
        'primary-700': '#5F5FC9',
        'light-gray': '#F9FAFC',
        'gray-2': '#1F2D3D',
        'gray-3': '#3C4858',
        'gray-4': '#8492A6',
        'gray-5': '#C2CEDB',
        'gray-6': '#D3DCE6',
        'gray-7': '#E5E9F2',
        'gray-8': '#EFF2F7',
        'gray-9': '#F9FAFC',
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
