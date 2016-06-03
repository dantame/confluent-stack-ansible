require 'spec_helper'

describe 'schema registry' do
  include_examples 'users', 'data'
  include_examples 'service', 'schema-registry'

  describe port(8081) do
    it { should be_listening }
  end
end
