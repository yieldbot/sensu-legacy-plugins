require 'json'

# encoding: utf-8
module SensuLegacyPlugins
  # This defines the version of the gem
  module Version
    MAJOR = 0
    MINOR = 0
    PATCH = 2

    STRING = [MAJOR, MINOR, PATCH].compact.join('.')

    NAME   = 'Sensu-Legacy-Plugins'
    BANNER = "#{NAME} v%s"

    module_function

    def version
      format(BANNER, STRING)
    end

    def json_version
      {
        'version' => STRING
      }.to_json
    end
  end
end
