require 'host'
require 'hosts'

module SSHConfig
  YES = "yes"
  NO = "no"

  $hostlist = Hosts.new{}

  def hosts(&blk)
    $hostlist.merge(Hosts.new(&blk))
  end
end
