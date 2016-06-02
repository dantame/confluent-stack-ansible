require 'spec_helper'

describe 'riemann-tools' do
  include_examples 'service', 'riemann-health'
  include_examples 'service', 'riemann-diskstats'
  include_examples 'service', 'riemann-net'
  include_examples 'service', 'riemann-proc'
  include_examples 'service', 'riemann-fd'
  include_examples 'users', 'monitoring'
end
