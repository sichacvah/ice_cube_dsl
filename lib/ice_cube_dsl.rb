require "ice_cube_dsl/version"
require 'ice_cube_dsl/class_methods'

module IceCubeDsl
  extend ClassMethods
  autoload :Factory, 'ice_cube_dsl/factory'
  autoload :DefinitionProxy, 'ice_cube_dsl/definition_proxy'
end
