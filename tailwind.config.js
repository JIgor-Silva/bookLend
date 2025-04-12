/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./app/views/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/controllers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/components/**/*.(html.erb|js)", // Se você tiver componentes
    "./config/initializers/simple_form.rb"],
  theme: {
    extend: {},
  },
  plugins: [],
}

