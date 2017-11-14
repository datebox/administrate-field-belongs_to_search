require 'administrate/field/belongs_to'
require 'rails'

module Administrate
  module Field
    class BelongsToSearch < Administrate::Field::BelongsTo
      class Engine < ::Rails::Engine
        initializer 'administrate-field-belongs_to_search.add_assets' do |app|
          app.config.assets.precompile << 'belongs_to_search.js' if app.config.respond_to? :assets
          Administrate::Engine.add_javascript 'belongs_to_search.js' if defined?(Administrate::Engine)
        end
      end

      def associated_class
        super
      end
    end
  end
end
