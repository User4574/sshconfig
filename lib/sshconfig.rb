require 'host'
require 'hosts'

module SSHConfig
  YES = "yes"
  NO = "no"

  $hostlist = Hosts.new{}

  def hosts
    $hostlist.merge(Hosts.new(&Proc.new))
  end
end
