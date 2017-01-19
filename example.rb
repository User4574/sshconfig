# This is ruby
# Lets make a method for later
def old_keys
  kexalgorithms "+diffie-hellman-group1-sha1"
  hostkeyalgorithms "+ssh-dss"
end

hosts {
  # Simple things
  host("example") {
    hostname "example.com"
  }
  host("pi") {
    hostname "192.168.3.14"
    user "root"
  }

  # LOOPS!
  # #contrived
  # Also, that method from earlier
  (1..70).each { |machine|
    host("my#{machine}-1") { hostname "mymachine#{machine}-1.example.co.uk" ; old_keys }
    host("my#{machine}-2") { hostname "mymachine#{machine}-2.example.co.uk" ; old_keys }
  }

  # NO
  # Don't do this
  # Just remember that every directive is a method
  host ('*') {
    strictHostKeyChecking NO
    userKnownHostsFile "/dev/null"
    logLevel "ERROR"
  }
}

# vim: set ft=ruby:
