shared_examples 'service' do |service_name|
  describe service(service_name), :if => os[:family] == 'ubuntu' do
    it { should be_enabled }
    it { should be_running }
  end
end
