Gem::Specification.new do |s|
  s.name        = 'sshconfig'
  s.version     = '12'
  s.date        = '2017-01-11'
  s.summary     = "SSH Config DSL"
  s.description = "A DSL to generate SSH config"
  s.authors     = ["Nathan Lasseter"]
  s.email       = 'nathan@bytemark.co.uk'
  s.homepage    = 'https://github.com/User4574/SSHConfig'
  s.files       = [
    "lib/sshconfig.rb",
    "lib/host.rb",
    "lib/hosts.rb",
  ]
  s.executables = [
    "ssh-update-config"
  ]
  s.license     = 'BSD-2-Clause'
end
