module IceCubeDsl
  module ClassMethods
    def registry
      @registry ||= {}
    end

    def self.define(&block)
      definition_proxy = DefinitionProxy.new
      definition_proxy.instance_eval(&block)
    end

    def self.build(factory_class, overrides = {})
      instance = factory_class.new
      factory = registry[factory_class]
      attributes = factory.attributes.merge(overrides)
      attributes.each do |attribute_name, val|
        instance.send("#{attribute_name}=", value)
      end
      instance
    end
  end
end
