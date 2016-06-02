require 'spec_helper'

describe 'riemann' do
  include_examples 'service', 'riemann'

  describe user('riemann') do
    it { should exist }
    it { should belong_to_group 'riemann' }
  end

  describe package('riemann'), :if => os[:family] == 'ubuntu' do
    it { should be_installed }
  end

  describe port(5555), :if => os[:family] == 'ubuntu' do
    it { should be_listening }
  end

  describe port(5556), :if => os[:family] == 'ubuntu' do
    it { should be_listening }
  end
end
