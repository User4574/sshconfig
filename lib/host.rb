module SSHConfig
  class Host
    def initialize(name, &block)
      @name = name
      @directives = {}
      self.instance_eval(&block)
    end

    def method_missing(meth, arg)
      @directives[meth.capitalize] = arg
    end

    def to_s
      "Host #{@name}\n" +
      @directives.map { |k, v| "\t#{k} #{v}" }.join("\n") +
      "\n"
    end
  end
end
