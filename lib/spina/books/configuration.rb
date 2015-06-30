module Spina
  module Books
    include ActiveSupport::Configurable

    config_accessor :title, :controller, :description, :spina_icon, :plugin_type, :css_filename

    self.title = 'Books'
    self.controller = 'books'
    self.description = 'Samsung KidsTime books management for Spina'
    self.spina_icon = 'list-ul'

    self.css_filename = 'books'

    self.plugin_type = 'website_resource'
  end
end