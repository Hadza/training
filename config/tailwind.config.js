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
        'primary': {
          '300': '#E8E6F6',
          '500': '#8378DF',
          '600': '#726DD9',
          '700': '#5F5FC9',
        },
        'gray': {
          '2': '#1F2D3D',
          '3': '#3C4858',
          '4': '#8492A6',
          '5': '#C2CEDB',
          '6': '#D3DCE6',
          '7': '#E5E9F2',
          '8': '#EFF2F7',
          '9': '#F9FAFC',
        },
        'light-gray': '#F9FAFC',
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
