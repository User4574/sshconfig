module SSHConfig
  class Hosts
    attr_reader :hosts

    def initialize(&block)
      @hosts = []
      self.instance_eval(&block)
    end

    def merge(morehosts)
      @hosts += morehosts.hosts
    end

    def host(name)
      @hosts << Host.new(name, &Proc.new)
    end

    def to_s
      @hosts.map(&:to_s).join("\n")
    end
  end
end
