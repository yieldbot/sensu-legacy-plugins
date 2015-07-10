require 'sensu-legacy-plugins/version'

# Load the defaults
#
module SensuLegacyPlugins
  class << self
      attr_writer :ui
        end

  class << self
      attr_reader :ui
        end
                end
