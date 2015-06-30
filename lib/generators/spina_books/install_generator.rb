require 'rails/generators/base'
require 'rails/generators/migration'
require 'rails/generators/active_record'

module SpinaBooks
  module Generators
    class InstallGenerator < Rails::Generators::Base

      include Rails::Generators::Migration
      extend ActiveRecord::Generators::Migration

      source_root File.expand_path('../templates', __FILE__)

      def self.next_migration_number(path)
        ActiveRecord::Generators::Base.next_migration_number(path)
      end

      def copy_migration_file
        migration_template "create_spina_books_table.rb", Rails.root.join("db/migrate/create_spina_books_table.rb")
      end

      def copy_icon_uploader
        copy_file "book.rb", Rails.root.join("app/models/spina/book.rb")
        copy_file "icon_uploader.rb", Rails.root.join("app/uploaders/spina/icon_uploader.rb")
      end
    end
  end
end