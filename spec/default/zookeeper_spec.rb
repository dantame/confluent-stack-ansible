require 'spec_helper'

describe 'zookeeper' do
  include_examples 'users', 'data'
  include_examples 'service', 'zookeeper'

  describe package('confluent-kafka-2.11'), :if => os[:family] == 'ubuntu' do
    it { should be_installed }
  end

  describe port(2181) do
    it { should be_listening }
  end
end
