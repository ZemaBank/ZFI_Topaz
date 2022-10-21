require "m2y_topaz/version"
require 'm2y_topaz/configuration/configuration'
require 'm2y_topaz/constants/constants'
require 'm2y_topaz/modules/base'
require 'm2y_topaz/modules/analytics'

module M2yTopaz
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    config = configuration
    yield(config)
  end
end
