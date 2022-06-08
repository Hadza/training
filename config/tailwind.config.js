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
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
