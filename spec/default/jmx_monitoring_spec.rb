require 'spec_helper'

describe 'jmx monitoring' do
  include_examples 'service', 'riemann-jmx'
  include_examples 'users', 'data'
end
