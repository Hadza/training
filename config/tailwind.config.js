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
      minWidth: {
        'card-min': '375px',
      },
      maxWidth: {
        'card-max': '400px',
      },
      colors: {
        'primary': {
          '300': '#E8E6F6',
          '500': '#8378DF',
          '600': '#726DD9',
          '700': '#5F5FC9',
        },
        'secondary': {
          '300': '#E9FFF4',
          '500': '#80D3AA'
        },
        'tertiary': {
          '300': '#FFF0FC',
          '500': '#EF9DE0',
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
          '10': '#6B7280'
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
