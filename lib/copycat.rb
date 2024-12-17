require "copycat/engine"
require "copycat/implementation"
require "copycat/routes"
require "copycat/simple"

module Copycat
  mattr_accessor :username
  mattr_accessor :password
  mattr_accessor :route
  mattr_accessor :everything_is_html_safe
  mattr_accessor :staging_server_endpoint
  mattr_accessor :use_cache

  @@route = 'copycat_translations'
  @@everything_is_html_safe = false

  def self.setup
    yield self
  end
end
