module Algorithms
  class Engine < ::Rails::Engine
    isolate_namespace Algorithms
    config.autoload_paths << "#{config.root}/app/classes"
  end
end
