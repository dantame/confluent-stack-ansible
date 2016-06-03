require 'spec_helper'

describe 'kafka' do
  include_examples 'users', 'data'
  include_examples 'service', 'kafka'

  describe package('confluent-kafka-2.11'), :if => os[:family] == 'ubuntu' do
    it { should be_installed }
  end

  describe port(9092) do
    it { should be_listening }
  end
end
