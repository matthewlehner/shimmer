require "sparklets_admin/version"

dir = File.dirname(__FILE__)
$LOAD_PATH.unshift dir unless $LOAD_PATH.include?(dir)

unless defined?(Sass)
  require 'sass'
end

module SparkletsAdmin
  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
    end
  else
    sparklets_path = File.expand_path("../../app/assets/stylesheets", __FILE__)
    ENV["SASS_PATH"] = [ENV["SASS_PATH"], sparklets_path].compact.join(File::PATH_SEPARATOR)
  end
end
