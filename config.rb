# # Activate and configure extensions
# # https://middlemanapp.com/advanced/configuration/#configuring-extensions

# activate :autoprefixer do |prefix|
#   prefix.browsers = "last 2 versions"
# end

# # Layouts
# # https://middlemanapp.com/basics/layouts/

# # Per-page layout changes
# page '/*.xml', layout: false
# page '/*.json', layout: false
# page '/*.txt', layout: false

# page "/footer.html", :layout => "layout"

# # With alternative layout
# # page '/path/to/file.html', layout: 'other_layout'

# # Proxy pages
# # https://middlemanapp.com/advanced/dynamic-pages/

# # proxy(
# #   '/this-page-has-no-template.html',
# #   '/template-file.html',
# #   locals: {
# #     which_fake_page: 'Rendering a fake page with a local variable'
# #   },
# # )

# # Helpers
# # Methods defined in the helpers block are available in templates
# # https://middlemanapp.com/basics/helper-methods/

# # helpers do
# #   def some_helper
# #     'Helping'
# #   end
# # end

# # Build-specific configuration
# # https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# # configure :build do
# #   activate :minify_css
# #   activate :minify_javascript
# # end
# # # Use “pretty” URLs (without the `.html` suffix)
# # activate :directory_indexes

# # # Append hashes to compiled assets
# # activate :asset_hash

activate :automatic_image_sizes
activate :directory_indexes

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :index_file, 'index.html'
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

page "/footer.html", :layout => "layout"
page "/index.html", :layout => "layout"

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end

# silence i18n warning
::I18n.config.enforce_available_locales = false