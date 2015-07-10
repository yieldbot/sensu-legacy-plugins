require 'sensu-yieldbot-plugins/version'

# Load the defaults
#
module SensuYieldbotPlugins
  class << self
      attr_writer :ui
        end

  class << self
      attr_reader :ui
        end
                end
