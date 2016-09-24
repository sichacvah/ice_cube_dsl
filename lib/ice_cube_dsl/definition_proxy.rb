module IceCubeDsl
  class DefinitionProxy
    def factory
      factory = Factory.new
      factory.instance_eval(&block)
      IceCubeDsl.registry[factory_class] = factory
    end
  end
end
