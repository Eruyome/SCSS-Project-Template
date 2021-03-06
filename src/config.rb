require 'compass/import-once/activate'
# Require any additional compass plugins here.
require 'normalize-scss'
require 'sass-css-importer'
require 'sass-globbing'
require 'stipe'

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "css"
sass_dir = "scss"
images_dir = "images"
javascripts_dir = "js"

# output_style = :expanded or :nested or :compact or :compressed
output_style = :nested

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false

# Compile Production CSS-File
on_stylesheet_saved do
  `bundle exec compass compile -c config_prod.rb --force`
end