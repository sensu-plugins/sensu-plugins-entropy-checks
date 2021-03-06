#! /usr/bin/env ruby
# frozen_string_literal: true

#   entropy-metrics
#
# DESCRIPTION:
#
# OUTPUT:
#   metric data
#
# PLATFORMS:
#   Linux
#
# DEPENDENCIES:
#   gem: sensu-plugin
#   gem: <?>
#
# USAGE:
#
# NOTES:
#
# LICENSE:
#   Copyright 2012 Sonian, Inc <chefs@sonian.net>
#   Released under the same terms as Sensu (the MIT license); see LICENSE
#   for details.
#

require 'sensu-plugin/metric/cli'
require 'socket'

#
# Entropy Graphite
#
class EntropyGraphite < Sensu::Plugin::Metric::CLI::Graphite
  option :scheme,
         description: 'Metric naming scheme, text to prepend to metric',
         short: '-s SCHEME',
         long: '--scheme SCHEME',
         default: "#{Socket.gethostname}.entropy"

  def run
    File.open('/proc/sys/kernel/random/entropy_avail', 'r').each_line do |line|
      entropy = line.strip.split(/\s+/).shift
      output config[:scheme].to_s, entropy
    end
    ok
  end
end
